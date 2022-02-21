package com.bytearch.fastcloud.core.idgenerator.exception;

public class IDGeneratorException extends RuntimeException {
    private static final long serialVersionUID = 864036999341803894L;

    public IDGeneratorException() {
        super();
    }

    public IDGeneratorException(String msg) {
        super(msg);
    }

    public IDGeneratorException(String message, Throwable cause) {
        super(message, cause);
    }
}