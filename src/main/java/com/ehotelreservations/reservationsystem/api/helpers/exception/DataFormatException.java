package com.ehotelreservations.reservationsystem.api.helpers.exception;

/**
 * for HTTP 400 errors
 */
public final class DataFormatException extends RuntimeException {
    /**
     * Generated serialID
     */
    private static final long serialVersionUID = -8681252588091277172L;

    public DataFormatException() {
        super();
    }

    public DataFormatException(String message, Throwable cause) {
        super(message, cause);
    }

    public DataFormatException(String message) {
        super(message);
    }

    public DataFormatException(Throwable cause) {
        super(cause);
    }
}