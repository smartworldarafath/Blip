package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.exoplayer.MediaSourceList;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class s implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ MediaSourceList.ForwardingEventListener k;
    public final /* synthetic */ Pair l;
    public final /* synthetic */ LoadEventInfo m;
    public final /* synthetic */ MediaLoadData n;

    public /* synthetic */ s(MediaSourceList.ForwardingEventListener forwardingEventListener, Pair pair, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i) {
        this.j = i;
        this.k = forwardingEventListener;
        this.l = pair;
        this.m = loadEventInfo;
        this.n = mediaLoadData;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        MediaLoadData mediaLoadData = this.n;
        LoadEventInfo loadEventInfo = this.m;
        Pair pair = this.l;
        MediaSourceList.ForwardingEventListener forwardingEventListener = this.k;
        switch (i) {
            case 0:
                ((DefaultAnalyticsCollector) MediaSourceList.this.i).E(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData);
                return;
            default:
                ((DefaultAnalyticsCollector) MediaSourceList.this.i).g(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData);
                return;
        }
    }
}
