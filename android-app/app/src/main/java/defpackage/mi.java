package defpackage;

import android.content.res.Configuration;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.SentryLevel;
import io.sentry.android.core.AppComponentsBreadcrumbsIntegration;
import io.sentry.protocol.Device;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class mi implements Runnable {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ long k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ mi(VideoRendererEventListener.EventDispatcher eventDispatcher, Object obj, long j) {
        this.l = eventDispatcher;
        this.m = obj;
        this.k = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Device.DeviceOrientation deviceOrientation;
        String str;
        int i = this.j;
        Object obj = this.m;
        long j = this.k;
        Object obj2 = this.l;
        switch (i) {
            case 0:
                VideoRendererEventListener videoRendererEventListener = ((VideoRendererEventListener.EventDispatcher) obj2).b;
                String str2 = Util.a;
                videoRendererEventListener.B(j, obj);
                return;
            default:
                AppComponentsBreadcrumbsIntegration appComponentsBreadcrumbsIntegration = (AppComponentsBreadcrumbsIntegration) obj2;
                Configuration configuration = (Configuration) obj;
                if (appComponentsBreadcrumbsIntegration.k != null) {
                    int i2 = appComponentsBreadcrumbsIntegration.j.getResources().getConfiguration().orientation;
                    if (i2 != 1) {
                        if (i2 != 2) {
                            deviceOrientation = null;
                        } else {
                            deviceOrientation = Device.DeviceOrientation.LANDSCAPE;
                        }
                    } else {
                        deviceOrientation = Device.DeviceOrientation.PORTRAIT;
                    }
                    if (deviceOrientation != null) {
                        str = deviceOrientation.name().toLowerCase(Locale.ROOT);
                    } else {
                        str = "undefined";
                    }
                    Breadcrumb breadcrumb = new Breadcrumb(j);
                    breadcrumb.n = "navigation";
                    breadcrumb.p = "device.orientation";
                    breadcrumb.c(str, "position");
                    breadcrumb.r = SentryLevel.INFO;
                    Hint hint = new Hint();
                    hint.d(configuration, "android:configuration");
                    appComponentsBreadcrumbsIntegration.k.a(breadcrumb, hint);
                    return;
                }
                return;
        }
    }

    public /* synthetic */ mi(AppComponentsBreadcrumbsIntegration appComponentsBreadcrumbsIntegration, long j, Configuration configuration) {
        this.l = appComponentsBreadcrumbsIntegration;
        this.k = j;
        this.m = configuration;
    }
}
