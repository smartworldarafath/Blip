package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.ShuffleOrder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractConcatenatedTimeline extends Timeline {
    public static final /* synthetic */ int d = 0;
    public final int b;
    public final ShuffleOrder c;

    public AbstractConcatenatedTimeline(ShuffleOrder shuffleOrder) {
        this.c = shuffleOrder;
        this.b = ((ShuffleOrder.DefaultShuffleOrder) shuffleOrder).b.length;
    }

    @Override // androidx.media3.common.Timeline
    public final int a(boolean z) {
        if (this.b != 0) {
            int i = 0;
            if (z) {
                int[] iArr = ((ShuffleOrder.DefaultShuffleOrder) this.c).b;
                if (iArr.length > 0) {
                    i = iArr[0];
                } else {
                    i = -1;
                }
            }
            do {
                PlaylistTimeline playlistTimeline = (PlaylistTimeline) this;
                Timeline[] timelineArr = playlistTimeline.i;
                if (timelineArr[i].p()) {
                    i = q(i, z);
                } else {
                    return timelineArr[i].a(z) + playlistTimeline.h[i];
                }
            } while (i != -1);
        }
        return -1;
    }

    @Override // androidx.media3.common.Timeline
    public final int b(Object obj) {
        int intValue;
        int b;
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            Object obj2 = pair.first;
            Object obj3 = pair.second;
            PlaylistTimeline playlistTimeline = (PlaylistTimeline) this;
            Integer num = (Integer) playlistTimeline.k.get(obj2);
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            if (intValue != -1 && (b = playlistTimeline.i[intValue].b(obj3)) != -1) {
                return playlistTimeline.g[intValue] + b;
            }
        }
        return -1;
    }

    @Override // androidx.media3.common.Timeline
    public final int c(boolean z) {
        int i;
        int i2 = this.b;
        if (i2 != 0) {
            if (z) {
                int[] iArr = ((ShuffleOrder.DefaultShuffleOrder) this.c).b;
                if (iArr.length > 0) {
                    i = iArr[iArr.length - 1];
                } else {
                    i = -1;
                }
            } else {
                i = i2 - 1;
            }
            do {
                PlaylistTimeline playlistTimeline = (PlaylistTimeline) this;
                Timeline[] timelineArr = playlistTimeline.i;
                if (timelineArr[i].p()) {
                    i = r(i, z);
                } else {
                    return timelineArr[i].c(z) + playlistTimeline.h[i];
                }
            } while (i != -1);
        }
        return -1;
    }

    @Override // androidx.media3.common.Timeline
    public final int e(int i, int i2, boolean z) {
        PlaylistTimeline playlistTimeline = (PlaylistTimeline) this;
        int[] iArr = playlistTimeline.h;
        int i3 = 0;
        int c = Util.c(iArr, i + 1, false, false);
        int i4 = iArr[c];
        Timeline[] timelineArr = playlistTimeline.i;
        Timeline timeline = timelineArr[c];
        int i5 = i - i4;
        if (i2 != 2) {
            i3 = i2;
        }
        int e = timeline.e(i5, i3, z);
        if (e != -1) {
            return i4 + e;
        }
        int q = q(c, z);
        while (q != -1 && timelineArr[q].p()) {
            q = q(q, z);
        }
        if (q != -1) {
            return timelineArr[q].a(z) + iArr[q];
        }
        if (i2 != 2) {
            return -1;
        }
        return a(z);
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Period f(int i, Timeline.Period period, boolean z) {
        PlaylistTimeline playlistTimeline = (PlaylistTimeline) this;
        int[] iArr = playlistTimeline.g;
        int c = Util.c(iArr, i + 1, false, false);
        int i2 = playlistTimeline.h[c];
        playlistTimeline.i[c].f(i - iArr[c], period, z);
        period.c += i2;
        if (z) {
            Object obj = playlistTimeline.j[c];
            Object obj2 = period.b;
            obj2.getClass();
            period.b = Pair.create(obj, obj2);
        }
        return period;
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Period g(Object obj, Timeline.Period period) {
        int intValue;
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        PlaylistTimeline playlistTimeline = (PlaylistTimeline) this;
        Integer num = (Integer) playlistTimeline.k.get(obj2);
        if (num == null) {
            intValue = -1;
        } else {
            intValue = num.intValue();
        }
        int i = playlistTimeline.h[intValue];
        playlistTimeline.i[intValue].g(obj3, period);
        period.c += i;
        period.b = obj;
        return period;
    }

    @Override // androidx.media3.common.Timeline
    public final int k(int i, int i2, boolean z) {
        PlaylistTimeline playlistTimeline = (PlaylistTimeline) this;
        int[] iArr = playlistTimeline.h;
        int i3 = 0;
        int c = Util.c(iArr, i + 1, false, false);
        int i4 = iArr[c];
        Timeline[] timelineArr = playlistTimeline.i;
        Timeline timeline = timelineArr[c];
        int i5 = i - i4;
        if (i2 != 2) {
            i3 = i2;
        }
        int k = timeline.k(i5, i3, z);
        if (k != -1) {
            return i4 + k;
        }
        int r = r(c, z);
        while (r != -1 && timelineArr[r].p()) {
            r = r(r, z);
        }
        if (r != -1) {
            return timelineArr[r].c(z) + iArr[r];
        }
        if (i2 != 2) {
            return -1;
        }
        return c(z);
    }

    @Override // androidx.media3.common.Timeline
    public final Object l(int i) {
        PlaylistTimeline playlistTimeline = (PlaylistTimeline) this;
        int[] iArr = playlistTimeline.g;
        int c = Util.c(iArr, i + 1, false, false);
        return Pair.create(playlistTimeline.j[c], playlistTimeline.i[c].l(i - iArr[c]));
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Window m(int i, Timeline.Window window, long j) {
        PlaylistTimeline playlistTimeline = (PlaylistTimeline) this;
        int[] iArr = playlistTimeline.h;
        int c = Util.c(iArr, i + 1, false, false);
        int i2 = iArr[c];
        int i3 = playlistTimeline.g[c];
        playlistTimeline.i[c].m(i - i2, window, j);
        Object obj = playlistTimeline.j[c];
        Object obj2 = Timeline.Window.n;
        Object obj3 = window.a;
        if (obj2 != obj3) {
            obj = Pair.create(obj, obj3);
        }
        window.a = obj;
        window.l += i3;
        window.m += i3;
        return window;
    }

    public final int q(int i, boolean z) {
        if (z) {
            ShuffleOrder.DefaultShuffleOrder defaultShuffleOrder = (ShuffleOrder.DefaultShuffleOrder) this.c;
            int i2 = defaultShuffleOrder.c[i] + 1;
            int[] iArr = defaultShuffleOrder.b;
            if (i2 >= iArr.length) {
                return -1;
            }
            return iArr[i2];
        }
        if (i >= this.b - 1) {
            return -1;
        }
        return i + 1;
    }

    public final int r(int i, boolean z) {
        if (z) {
            ShuffleOrder.DefaultShuffleOrder defaultShuffleOrder = (ShuffleOrder.DefaultShuffleOrder) this.c;
            int i2 = defaultShuffleOrder.c[i] - 1;
            if (i2 < 0) {
                return -1;
            }
            return defaultShuffleOrder.b[i2];
        }
        if (i <= 0) {
            return -1;
        }
        return i - 1;
    }
}
