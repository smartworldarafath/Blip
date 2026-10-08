package okio;

import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Timeout {
    public static final Timeout$Companion$NONE$1 d = new Object();
    public boolean a;
    public long b;
    public long c;

    public Timeout a() {
        this.a = false;
        return this;
    }

    public Timeout b() {
        this.c = 0L;
        return this;
    }

    public long c() {
        if (this.a) {
            return this.b;
        }
        u2.l("No deadline");
        return 0L;
    }

    public Timeout d(long j) {
        this.a = true;
        this.b = j;
        return this;
    }

    public boolean e() {
        return this.a;
    }

    public void f() {
        if (!Thread.currentThread().isInterrupted()) {
            if (this.a && this.b - System.nanoTime() <= 0) {
                throw new InterruptedIOException("deadline reached");
            }
            return;
        }
        throw new InterruptedIOException("interrupted");
    }

    public Timeout g(long j) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        timeUnit.getClass();
        if (j >= 0) {
            this.c = timeUnit.toNanos(j);
            return this;
        }
        fe.l(q.h(j, "timeout < 0: "));
        return null;
    }
}
