package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import io.sentry.d;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class SnackbarManager {
    public static SnackbarManager b;
    public final Object a = new Object();

    public SnackbarManager() {
        new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.SnackbarManager.1
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                if (message.what != 0) {
                    return false;
                }
                SnackbarManager snackbarManager = SnackbarManager.this;
                if (message.obj != null) {
                    d.i();
                    return false;
                }
                synchronized (snackbarManager.a) {
                    throw null;
                }
            }
        });
    }
}
