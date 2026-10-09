package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.collect.ImmutableList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class q implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ q(Object obj, Object obj2, Object obj3, int i) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Object obj = this.m;
        Object obj2 = this.l;
        Object obj3 = this.k;
        switch (i) {
            case 0:
                AnalyticsCollector analyticsCollector = ((MediaPeriodQueue) obj3).c;
                DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) analyticsCollector;
                defaultAnalyticsCollector.P(((ImmutableList.Builder) obj2).i(), (MediaSource.MediaPeriodId) obj);
                return;
            default:
                Pair pair = (Pair) obj2;
                AnalyticsCollector analyticsCollector2 = MediaSourceList.this.i;
                DefaultAnalyticsCollector defaultAnalyticsCollector2 = (DefaultAnalyticsCollector) analyticsCollector2;
                defaultAnalyticsCollector2.o(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, (MediaLoadData) obj);
                return;
        }
    }
}
