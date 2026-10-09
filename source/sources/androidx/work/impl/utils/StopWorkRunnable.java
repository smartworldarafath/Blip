package androidx.work.impl.utils;

import androidx.work.Logger;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkerWrapper;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StopWorkRunnable implements Runnable {
    public final Processor j;
    public final StartStopToken k;
    public final boolean l;
    public final int m;

    public StopWorkRunnable(Processor processor, StartStopToken startStopToken, boolean z, int i) {
        processor.getClass();
        startStopToken.getClass();
        this.j = processor;
        this.k = startStopToken;
        this.l = z;
        this.m = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean d;
        WorkerWrapper b;
        boolean z = this.l;
        Processor processor = this.j;
        StartStopToken startStopToken = this.k;
        if (z) {
            int i = this.m;
            processor.getClass();
            String str = startStopToken.a.a;
            synchronized (processor.k) {
                b = processor.b(str);
            }
            d = Processor.d(str, b, i);
        } else {
            int i2 = this.m;
            processor.getClass();
            String str2 = startStopToken.a.a;
            synchronized (processor.k) {
                try {
                    if (processor.f.get(str2) != null) {
                        Logger.d().a(Processor.l, "Ignored stopWork. WorkerWrapper " + str2 + " is in foreground");
                    } else {
                        Set set = (Set) processor.h.get(str2);
                        if (set != null && set.contains(startStopToken)) {
                            d = Processor.d(str2, processor.b(str2), i2);
                        }
                    }
                    d = false;
                } finally {
                }
            }
        }
        Logger.d().a(Logger.f("StopWorkRunnable"), "StopWorkRunnable for " + this.k.a.a + "; Processor.stopWork = " + d);
    }
}
