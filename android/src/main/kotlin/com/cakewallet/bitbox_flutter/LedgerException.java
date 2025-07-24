package com.cakewallet.bitbox_flutter;

public class LedgerException extends Exception{
    final int errorCode;

    public LedgerException(int errorCode, String errorMessage) {
        super(errorMessage);
        this.errorCode = errorCode;
    }

    public String getErrorCode() {
        return String.valueOf(errorCode);
    }
}
