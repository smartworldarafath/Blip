package io.sentry.android.replay.capture;

import io.sentry.android.replay.ScreenshotRecorderConfig;
import io.sentry.protocol.SentryId;
import java.util.Date;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ long k;
    public final /* synthetic */ Date l;
    public final /* synthetic */ SentryId m;
    public final /* synthetic */ ScreenshotRecorderConfig n;
    public final /* synthetic */ Function1 o;
    public final /* synthetic */ BaseCaptureStrategy p;

    public /* synthetic */ a(BaseCaptureStrategy baseCaptureStrategy, long j, Date date, SentryId sentryId, ScreenshotRecorderConfig screenshotRecorderConfig, Function1 function1, int i) {
        this.j = i;
        this.p = baseCaptureStrategy;
        this.k = j;
        this.l = date;
        this.m = sentryId;
        this.n = screenshotRecorderConfig;
        this.o = function1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Function1 function1 = this.o;
        ScreenshotRecorderConfig screenshotRecorderConfig = this.n;
        BaseCaptureStrategy baseCaptureStrategy = this.p;
        switch (i) {
            case 0:
                BufferCaptureStrategy bufferCaptureStrategy = (BufferCaptureStrategy) baseCaptureStrategy;
                int i2 = BufferCaptureStrategy.w;
                function1.b(BaseCaptureStrategy.h(bufferCaptureStrategy, this.k, this.l, this.m, bufferCaptureStrategy.j(), screenshotRecorderConfig.b, screenshotRecorderConfig.a, screenshotRecorderConfig.e, screenshotRecorderConfig.f));
                return;
            default:
                SessionCaptureStrategy sessionCaptureStrategy = (SessionCaptureStrategy) baseCaptureStrategy;
                int i3 = SessionCaptureStrategy.u;
                function1.b(BaseCaptureStrategy.h(sessionCaptureStrategy, this.k, this.l, this.m, sessionCaptureStrategy.j(), screenshotRecorderConfig.b, screenshotRecorderConfig.a, screenshotRecorderConfig.e, screenshotRecorderConfig.f));
                return;
        }
    }
}
