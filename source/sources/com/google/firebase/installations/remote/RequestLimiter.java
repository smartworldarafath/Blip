package com.google.firebase.installations.remote;

import com.google.firebase.installations.Utils;
import com.google.firebase.installations.time.SystemClock;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class RequestLimiter {
    public final Utils a;
    public long b;
    public int c;

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.firebase.installations.time.SystemClock, java.lang.Object] */
    public RequestLimiter() {
        if (SystemClock.a == null) {
            Pattern pattern = Utils.b;
            SystemClock.a = new Object();
        }
        SystemClock systemClock = SystemClock.a;
        if (Utils.c == null) {
            Utils.c = new Utils(systemClock);
        }
        this.a = Utils.c;
    }

    public final synchronized boolean a() {
        boolean z;
        if (this.c != 0) {
            ((SystemClock) this.a.a).getClass();
            if (System.currentTimeMillis() <= this.b) {
                z = false;
            }
        }
        z = true;
        return z;
    }

    public final synchronized void b(int i) {
        long min;
        if ((i < 200 || i >= 300) && i != 401 && i != 404) {
            this.c++;
            synchronized (this) {
                if (i != 429 && (i < 500 || i >= 600)) {
                    min = 86400000;
                    ((SystemClock) this.a.a).getClass();
                    this.b = System.currentTimeMillis() + min;
                }
                double pow = Math.pow(2.0d, this.c);
                this.a.getClass();
                min = (long) Math.min(pow + ((long) (Math.random() * 1000.0d)), 1800000.0d);
                ((SystemClock) this.a.a).getClass();
                this.b = System.currentTimeMillis() + min;
            }
            return;
        }
        synchronized (this) {
            this.c = 0;
        }
        return;
    }
}
