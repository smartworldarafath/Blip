package defpackage;

import android.content.ClipData;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.PlaybackMetrics;
import android.view.ContentInfo;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class o6 {
    public static /* bridge */ /* synthetic */ MediaMetricsManager e(Object obj) {
        return (MediaMetricsManager) obj;
    }

    public static /* bridge */ /* synthetic */ PlaybackMetrics.Builder l(Object obj) {
        return (PlaybackMetrics.Builder) obj;
    }

    public static /* synthetic */ ContentInfo.Builder n(ClipData clipData, int i) {
        return new ContentInfo.Builder(clipData, i);
    }

    public static /* bridge */ /* synthetic */ ContentInfo o(Object obj) {
        return (ContentInfo) obj;
    }
}
