package com.bytearch.fast.cloud;

import java.util.concurrent.*;

public class TestThreadPool {

    public static void main(String[] args) {
        ExecutorService executorService = getThreadPool(10);

        for (int i = 0; i < 100000; i++) {
            int finalI = i;
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
            if (i % 20 == 0) {
                try {
                    Thread.sleep(1);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
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
        int cores = 150;
        int threads = 800;
        int alive = 60 * 1000;


        return new ThreadPoolExecutor(cores, threads, alive, TimeUnit.MILLISECONDS,
                queues == 0 ? new SynchronousQueue<Runnable>() :
                        (queues < 0 ? new LinkedBlockingQueue<Runnable>()
                                : new LinkedBlockingQueue<Runnable>(queues)));
    }

    public static void doSomething(final int i) {
        try {
            Thread.sleep(5);
            System.out.println("thread:" + Thread.currentThread().getName() +  ", active:" + Thread.activeCount() + ", do:" + i);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
