package io.sentry.android.core.internal.util;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import defpackage.r;
import io.sentry.util.thread.IThreadChecker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidThreadChecker implements IThreadChecker {
    public static final AndroidThreadChecker a;
    public static volatile long b;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, io.sentry.android.core.internal.util.AndroidThreadChecker] */
    static {
        ?? obj = new Object();
        new Handler(Looper.getMainLooper()).post(new r(3));
        a = obj;
        b = Process.myTid();
    }

    @Override // io.sentry.util.thread.IThreadChecker
    public final String a() {
        if (c()) {
            return "main";
        }
        return Thread.currentThread().getName();
    }

    @Override // io.sentry.util.thread.IThreadChecker
    public final long b() {
        return Process.myTid();
    }

    @Override // io.sentry.util.thread.IThreadChecker
    public final boolean c() {
        long id;
        long id2;
        Thread currentThread = Thread.currentThread();
        int i = Build.VERSION.SDK_INT;
        if (i >= 36) {
            id = currentThread.threadId();
        } else {
            id = currentThread.getId();
        }
        Thread thread = Looper.getMainLooper().getThread();
        if (i >= 36) {
            id2 = thread.threadId();
        } else {
            id2 = thread.getId();
        }
        if (id2 == id) {
            return true;
        }
        return false;
    }
}
