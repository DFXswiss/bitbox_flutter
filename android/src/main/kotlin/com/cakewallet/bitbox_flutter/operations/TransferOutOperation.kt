package com.cakewallet.bitbox_flutter.operations;

import android.content.Context;

import com.cakewallet.bitbox_flutter.LedgerException;
import com.cakewallet.bitbox_flutter.BitboxManager;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

public class TransferOutOperation extends UsbMethodCallOperation {

    private final BitboxManager manager;

    public TransferOutOperation(BitboxManager manager) {
        super(manager.getUsbManager());
        this.manager = manager;
    }

    @Override
    public void onMethodCall(Context context, MethodCall methodCall, MethodChannel.Result result) {
        byte[] data = methodCall.argument("data");
        int timeout = methodCall.argument("timeout");
        try {
            int length = this.manager.transferOut(data, timeout);
            result.success(length);
        } catch (LedgerException ex) {
            result.error(ex.getErrorCode(), ex.getMessage(), null);
        }
    }
}
