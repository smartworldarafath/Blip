package androidx.work.impl.background.greedy;

import androidx.work.RunnableScheduler;
import androidx.work.impl.DefaultRunnableScheduler;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkLauncherImpl;
import defpackage.f3;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TimeLimiter {
    public final RunnableScheduler a;
    public final WorkLauncherImpl b;
    public final Object c;
    public final LinkedHashMap d;

    public TimeLimiter(DefaultRunnableScheduler defaultRunnableScheduler, WorkLauncherImpl workLauncherImpl) {
        defaultRunnableScheduler.getClass();
        this.a = defaultRunnableScheduler;
        this.b = workLauncherImpl;
        this.c = new Object();
        this.d = new LinkedHashMap();
    }

    public final void a(StartStopToken startStopToken) {
        Runnable runnable;
        startStopToken.getClass();
        synchronized (this.c) {
            runnable = (Runnable) this.d.remove(startStopToken);
        }
        if (runnable != null) {
            ((DefaultRunnableScheduler) this.a).a.removeCallbacks(runnable);
        }
    }

    public final void b(StartStopToken startStopToken) {
        startStopToken.getClass();
        f3 f3Var = new f3(20, this, startStopToken);
        synchronized (this.c) {
        }
        ((DefaultRunnableScheduler) this.a).a.postDelayed(f3Var, 5400000L);
    }
}
