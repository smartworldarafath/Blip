package androidx.media3.common.util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ConditionVariable {
    public final Clock a;
    public boolean b;

    public ConditionVariable() {
        this(Clock.a);
    }

    public final synchronized void a() {
        boolean z = false;
        while (!this.b) {
            try {
                this.a.getClass();
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized boolean b(long j) {
        if (j <= 0) {
            return this.b;
        }
        ((SystemClock) this.a).getClass();
        long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
        long j2 = j + elapsedRealtime;
        if (j2 < elapsedRealtime) {
            a();
        } else {
            boolean z = false;
            while (!this.b && elapsedRealtime < j2) {
                try {
                    this.a.getClass();
                    wait(j2 - elapsedRealtime);
                } catch (InterruptedException unused) {
                    z = true;
                }
                ((SystemClock) this.a).getClass();
                elapsedRealtime = android.os.SystemClock.elapsedRealtime();
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
        return this.b;
    }

    public final synchronized boolean c() {
        if (this.b) {
            return false;
        }
        this.b = true;
        notifyAll();
        return true;
    }

    public ConditionVariable(Clock clock) {
        this.a = clock;
    }
}
