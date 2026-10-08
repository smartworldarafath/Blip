package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SinglePeriodTimeline extends Timeline {
    public static final Object g = new Object();
    public final long b;
    public final long c;
    public final boolean d;
    public final MediaItem e;
    public final MediaItem.LiveConfiguration f;

    static {
        MediaItem.Builder builder = new MediaItem.Builder();
        builder.a = "SinglePeriodTimeline";
        builder.b = Uri.EMPTY;
        builder.a();
    }

    public SinglePeriodTimeline(long j, boolean z, boolean z2, MediaItem mediaItem) {
        MediaItem.LiveConfiguration liveConfiguration;
        if (z2) {
            liveConfiguration = mediaItem.c;
        } else {
            liveConfiguration = null;
        }
        this.b = j;
        this.c = j;
        this.d = z;
        mediaItem.getClass();
        this.e = mediaItem;
        this.f = liveConfiguration;
    }

    @Override // androidx.media3.common.Timeline
    public final int b(Object obj) {
        if (g != obj) {
            return -1;
        }
        return 0;
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Period f(int i, Timeline.Period period, boolean z) {
        Object obj;
        Preconditions.h(i, 1);
        if (z) {
            obj = g;
        } else {
            obj = null;
        }
        AdPlaybackState adPlaybackState = AdPlaybackState.c;
        period.getClass();
        period.a = null;
        period.b = obj;
        period.c = 0;
        period.d = this.b;
        period.e = 0L;
        period.g = adPlaybackState;
        period.f = false;
        return period;
    }

    @Override // androidx.media3.common.Timeline
    public final int h() {
        return 1;
    }

    @Override // androidx.media3.common.Timeline
    public final Object l(int i) {
        Preconditions.h(i, 1);
        return g;
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Window m(int i, Timeline.Window window, long j) {
        Preconditions.h(i, 1);
        Object obj = Timeline.Window.n;
        window.b(this.e, this.d, false, this.f, 0L, this.c);
        return window;
    }

    @Override // androidx.media3.common.Timeline
    public final int o() {
        return 1;
    }
}
