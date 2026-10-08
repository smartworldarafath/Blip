package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import io.sentry.Breadcrumb;
import io.sentry.SentryLevel;
import io.sentry.android.core.AppComponentsBreadcrumbsIntegration;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class li implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ long l;
    public final /* synthetic */ int m;

    public /* synthetic */ li(VideoRendererEventListener.EventDispatcher eventDispatcher, int i, long j) {
        this.j = 0;
        this.k = eventDispatcher;
        this.m = i;
        this.l = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        int i2 = this.m;
        long j = this.l;
        Object obj = this.k;
        switch (i) {
            case 0:
                VideoRendererEventListener videoRendererEventListener = ((VideoRendererEventListener.EventDispatcher) obj).b;
                String str = Util.a;
                videoRendererEventListener.n(i2, j);
                return;
            case 1:
                VideoRendererEventListener videoRendererEventListener2 = ((VideoRendererEventListener.EventDispatcher) obj).b;
                String str2 = Util.a;
                videoRendererEventListener2.j(i2, j);
                return;
            default:
                AppComponentsBreadcrumbsIntegration appComponentsBreadcrumbsIntegration = (AppComponentsBreadcrumbsIntegration) obj;
                if (appComponentsBreadcrumbsIntegration.k != null) {
                    Breadcrumb breadcrumb = new Breadcrumb(j);
                    breadcrumb.n = "system";
                    breadcrumb.p = "device.event";
                    breadcrumb.m = "Low memory";
                    breadcrumb.c("LOW_MEMORY", "action");
                    breadcrumb.c(Integer.valueOf(i2), "level");
                    breadcrumb.r = SentryLevel.WARNING;
                    appComponentsBreadcrumbsIntegration.k.a(breadcrumb, AppComponentsBreadcrumbsIntegration.n);
                    return;
                }
                return;
        }
    }

    public /* synthetic */ li(Object obj, long j, int i, int i2) {
        this.j = i2;
        this.k = obj;
        this.l = j;
        this.m = i;
    }
}
