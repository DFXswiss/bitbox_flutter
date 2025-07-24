package com.cakewallet.bitbox_flutter.operations;

import android.content.Context;

import com.cakewallet.bitbox_flutter.LedgerException;
import com.cakewallet.bitbox_flutter.BitboxManager;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

public class TransferInOperation extends UsbMethodCallOperation {

    private final BitboxManager manager;

    public TransferInOperation(BitboxManager manager) {
        super(manager.getUsbManager());
        this.manager = manager;
    }

    @Override
    public void onMethodCall(Context context, MethodCall methodCall, MethodChannel.Result result) {
        int length = methodCall.argument("length");
        int timeout = methodCall.argument("timeout");
        try {
            byte[] data = this.manager.transferIn(length, timeout);
            result.success(data);
        } catch (LedgerException ex) {
            result.error(ex.getErrorCode(), ex.getMessage(), null);
        }
    }
}
