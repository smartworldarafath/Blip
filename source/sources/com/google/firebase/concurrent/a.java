package com.google.firebase.concurrent;

import android.os.Process;
import android.os.StrictMode;
import java.util.concurrent.Callable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ a(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Object obj = this.l;
        Object obj2 = this.k;
        switch (i) {
            case 0:
                CustomThreadFactory customThreadFactory = (CustomThreadFactory) obj2;
                Runnable runnable = (Runnable) obj;
                Process.setThreadPriority(customThreadFactory.c);
                StrictMode.ThreadPolicy threadPolicy = customThreadFactory.d;
                if (threadPolicy != null) {
                    StrictMode.setThreadPolicy(threadPolicy);
                }
                runnable.run();
                return;
            default:
                Callable callable = (Callable) obj2;
                DelegatingScheduledFuture delegatingScheduledFuture = DelegatingScheduledFuture.this;
                try {
                    Object call = callable.call();
                    int i2 = DelegatingScheduledFuture.r;
                    delegatingScheduledFuture.j(call);
                    return;
                } catch (Exception e) {
                    int i3 = DelegatingScheduledFuture.r;
                    delegatingScheduledFuture.k(e);
                    return;
                }
        }
    }
}
