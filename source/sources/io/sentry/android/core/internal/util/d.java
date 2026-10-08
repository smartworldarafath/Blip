package io.sentry.android.core.internal.util;

import android.os.Handler;
import android.view.Choreographer;
import android.view.Window;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.android.core.internal.util.SentryFrameMetricsCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ SentryFrameMetricsCollector k;
    public final /* synthetic */ Object l;

    public /* synthetic */ d(SentryFrameMetricsCollector sentryFrameMetricsCollector, Object obj, int i) {
        this.j = i;
        this.k = sentryFrameMetricsCollector;
        this.l = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Object obj = this.l;
        SentryFrameMetricsCollector sentryFrameMetricsCollector = this.k;
        switch (i) {
            case 0:
                Window window = (Window) obj;
                if (sentryFrameMetricsCollector.k.add(window)) {
                    try {
                        SentryFrameMetricsCollector.WindowFrameMetricsManager windowFrameMetricsManager = sentryFrameMetricsCollector.q;
                        f fVar = sentryFrameMetricsCollector.r;
                        Handler handler = sentryFrameMetricsCollector.m;
                        windowFrameMetricsManager.getClass();
                        if (fVar != null) {
                            window.addOnFrameMetricsAvailableListener(fVar, handler);
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        sentryFrameMetricsCollector.l.b(SentryLevel.ERROR, "Failed to add frameMetricsAvailableListener", th);
                        return;
                    }
                }
                return;
            case 1:
                Window window2 = (Window) obj;
                try {
                    if (sentryFrameMetricsCollector.k.remove(window2)) {
                        SentryFrameMetricsCollector.WindowFrameMetricsManager windowFrameMetricsManager2 = sentryFrameMetricsCollector.q;
                        f fVar2 = sentryFrameMetricsCollector.r;
                        windowFrameMetricsManager2.getClass();
                        if (fVar2 != null) {
                            window2.removeOnFrameMetricsAvailableListener(fVar2);
                            return;
                        }
                        return;
                    }
                    return;
                } catch (Throwable th2) {
                    sentryFrameMetricsCollector.l.b(SentryLevel.ERROR, "Failed to remove frameMetricsAvailableListener", th2);
                    return;
                }
            default:
                ILogger iLogger = (ILogger) obj;
                try {
                    sentryFrameMetricsCollector.s = Choreographer.getInstance();
                    return;
                } catch (Throwable th3) {
                    iLogger.b(SentryLevel.ERROR, "Error retrieving Choreographer instance. Slow and frozen frames will not be reported.", th3);
                    return;
                }
        }
    }
}
