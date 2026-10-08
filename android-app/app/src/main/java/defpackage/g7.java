package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g7 implements ListenerSet.Event {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ VideoSize k;

    public /* synthetic */ g7(VideoSize videoSize) {
        this.k = videoSize;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void b(Object obj) {
        switch (this.j) {
            case 0:
                VideoSize videoSize = this.k;
                ((AnalyticsListener) obj).a(videoSize);
                int i = videoSize.a;
                return;
            default:
                ((Player.Listener) obj).a(this.k);
                return;
        }
    }

    public /* synthetic */ g7(AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
        this.k = videoSize;
    }
}
