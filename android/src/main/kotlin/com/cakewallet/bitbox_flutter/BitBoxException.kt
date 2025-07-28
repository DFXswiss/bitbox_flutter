package com.cakewallet.bitbox_flutter

class BitBoxException(val errorCode: Int, errorMessage: String?) : Exception(errorMessage) {
    fun getErrorCode(): String {
        return errorCode.toString()
    }
}
