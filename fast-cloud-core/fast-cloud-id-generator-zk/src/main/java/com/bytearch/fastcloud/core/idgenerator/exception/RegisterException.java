package com.bytearch.fastcloud.core.idgenerator.exception;

public class RegisterException extends RuntimeException {
    private static final long serialVersionUID = -6417179023552012152L;

    public RegisterException(final String errorMessage, final Object... args) {
        super(String.format(errorMessage, args));
    }

    public RegisterException(final Exception cause) {
        super(cause);
    }
}
