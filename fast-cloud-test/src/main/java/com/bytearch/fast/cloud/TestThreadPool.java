package com.bytearch.fast.cloud;

import java.util.concurrent.*;

public class TestThreadPool {

    public static void main(String[] args) {
        ExecutorService executorService = getThreadPool(10);

        for (int i = 0; i < 10000; i++) {
            int finalI = i;
            try {
                Thread.sleep(1);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            try {
                executorService.execute(new Runnable() {
                    @Override
                    public void run() {
                        doSomething(finalI);
                    }
                });
            } catch (Exception e) {
                System.out.println("emsg:" + e.getMessage());
            }
        }

        System.out.println("all done!");
        try {
            Thread.sleep(1000000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }

    public static ExecutorService getThreadPool(int queues) {
        int cores = 50;
        int threads = 400;
        int alive = 60 * 1000;


        return new ThreadPoolExecutor(cores, threads, alive, TimeUnit.MILLISECONDS,
                queues == 0 ? new SynchronousQueue<Runnable>() :
                        (queues < 0 ? new LinkedBlockingQueue<Runnable>()
                                : new LinkedBlockingQueue<Runnable>(queues)));
    }

    public static void doSomething(final int i) {
        try {
            Thread.sleep(10);
            System.out.println("thread:" + Thread.currentThread().getName() +  ", active:" + Thread.activeCount() + ", do:" + i);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
