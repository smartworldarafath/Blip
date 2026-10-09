package androidx.work.impl.background.greedy;

import androidx.work.Clock;
import androidx.work.Logger;
import androidx.work.RunnableScheduler;
import androidx.work.SystemClock;
import androidx.work.impl.DefaultRunnableScheduler;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DelayedWorkTracker {
    public static final String e = Logger.f("DelayedWorkTracker");
    public final GreedyScheduler a;
    public final RunnableScheduler b;
    public final Clock c;
    public final HashMap d = new HashMap();

    public DelayedWorkTracker(GreedyScheduler greedyScheduler, DefaultRunnableScheduler defaultRunnableScheduler, SystemClock systemClock) {
        this.a = greedyScheduler;
        this.b = defaultRunnableScheduler;
        this.c = systemClock;
    }
}
