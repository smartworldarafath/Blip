package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MediaPeriodQueue {
    public final AnalyticsCollector c;
    public final HandlerWrapper d;
    public final b e;
    public long f;
    public int g;
    public boolean h;
    public MediaPeriodHolder i;
    public final MediaPeriodHolder[] j;
    public final MediaPeriodHolder[] k;
    public MediaPeriodHolder l;
    public MediaPeriodHolder m;
    public int n;
    public Object o;
    public long p;
    public final Timeline.Period a = new Timeline.Period();
    public final Timeline.Window b = new Timeline.Window();
    public ArrayList q = new ArrayList();

    public MediaPeriodQueue(AnalyticsCollector analyticsCollector, HandlerWrapper handlerWrapper, b bVar, int i) {
        this.c = analyticsCollector;
        this.d = handlerWrapper;
        this.e = bVar;
        this.j = new MediaPeriodHolder[i];
        this.k = new MediaPeriodHolder[i];
    }

    public static boolean n(MediaPeriodHolder[] mediaPeriodHolderArr, long[] jArr, MediaPeriodHolder mediaPeriodHolder, long j) {
        for (int i = 0; i < mediaPeriodHolderArr.length; i++) {
            MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodHolderArr[i];
            if (mediaPeriodHolder2 != null) {
                for (MediaPeriodHolder mediaPeriodHolder3 = mediaPeriodHolder.m; mediaPeriodHolder3 != null; mediaPeriodHolder3 = mediaPeriodHolder3.m) {
                    if (mediaPeriodHolder3 == mediaPeriodHolder2) {
                        return true;
                    }
                }
                if (mediaPeriodHolder2 != mediaPeriodHolder) {
                    continue;
                } else {
                    long j2 = jArr[i];
                    if (j2 == Long.MIN_VALUE || j2 >= j) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static MediaSource.MediaPeriodId u(Timeline timeline, Object obj, long j, long j2, Timeline.Window window, Timeline.Period period) {
        timeline.g(obj, period);
        timeline.n(period.c, window);
        timeline.b(obj);
        int i = period.g.a;
        if (i != 0) {
            if (i == 1) {
                period.f(0);
            }
            period.g.getClass();
            period.g(0);
        }
        timeline.g(obj, period);
        int c = period.c(j);
        if (c == -1) {
            return new MediaSource.MediaPeriodId(period.b(j), j2, obj);
        }
        return new MediaSource.MediaPeriodId(obj, c, period.e(c), j2, -1);
    }

    public final MediaPeriodHolder a() {
        MediaPeriodHolder mediaPeriodHolder;
        if (this.i == null) {
            return null;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            MediaPeriodHolder[] mediaPeriodHolderArr = this.j;
            if (i2 >= mediaPeriodHolderArr.length) {
                break;
            }
            if (this.i.equals(mediaPeriodHolderArr[i2])) {
                mediaPeriodHolderArr[i2] = this.i.m;
            }
            i2++;
        }
        this.i.getClass();
        while (true) {
            MediaPeriodHolder[] mediaPeriodHolderArr2 = this.k;
            int length = mediaPeriodHolderArr2.length;
            mediaPeriodHolder = this.i;
            if (i >= length) {
                break;
            }
            if (mediaPeriodHolder.equals(mediaPeriodHolderArr2[i])) {
                mediaPeriodHolderArr2[i] = this.i.m;
            }
            i++;
        }
        mediaPeriodHolder.getClass();
        this.i.i();
        int i3 = this.n - 1;
        this.n = i3;
        if (i3 == 0) {
            this.l = null;
            MediaPeriodHolder mediaPeriodHolder2 = this.i;
            this.o = mediaPeriodHolder2.b;
            this.p = mediaPeriodHolder2.g.a.d;
        }
        this.i = this.i.m;
        r();
        return this.i;
    }

    public final void b() {
        if (this.n == 0) {
            return;
        }
        MediaPeriodHolder mediaPeriodHolder = this.i;
        mediaPeriodHolder.getClass();
        this.o = mediaPeriodHolder.b;
        this.p = mediaPeriodHolder.g.a.d;
        while (mediaPeriodHolder != null) {
            mediaPeriodHolder.i();
            mediaPeriodHolder = mediaPeriodHolder.m;
        }
        this.i = null;
        this.l = null;
        Arrays.fill(this.j, (Object) null);
        Arrays.fill(this.k, (Object) null);
        this.n = 0;
        r();
    }

    public final MediaPeriodHolder c() {
        MediaPeriodHolder mediaPeriodHolder = this.i;
        while (mediaPeriodHolder != null) {
            for (MediaPeriodHolder mediaPeriodHolder2 : this.k) {
                if (mediaPeriodHolder == mediaPeriodHolder2) {
                    return mediaPeriodHolder;
                }
            }
            mediaPeriodHolder = mediaPeriodHolder.m;
        }
        return mediaPeriodHolder;
    }

    public final MediaPeriodHolder d() {
        MediaPeriodHolder mediaPeriodHolder = this.i;
        while (mediaPeriodHolder != null) {
            for (MediaPeriodHolder mediaPeriodHolder2 : this.j) {
                if (mediaPeriodHolder == mediaPeriodHolder2) {
                    return mediaPeriodHolder;
                }
            }
            mediaPeriodHolder = mediaPeriodHolder.m;
        }
        return mediaPeriodHolder;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final MediaPeriodInfo e(Timeline timeline, MediaPeriodHolder mediaPeriodHolder, long j) {
        Timeline timeline2;
        long j2;
        MediaPeriodInfo mediaPeriodInfo;
        Timeline.Period period;
        MediaSource.MediaPeriodId mediaPeriodId;
        Object obj;
        long j3;
        long j4;
        long j5;
        long j6;
        Pair j7;
        long w;
        MediaPeriodInfo mediaPeriodInfo2 = mediaPeriodHolder.g;
        long j8 = (mediaPeriodHolder.p + mediaPeriodInfo2.e) - j;
        boolean z = mediaPeriodInfo2.g;
        Timeline.Window window = this.b;
        long j9 = 0;
        long j10 = -9223372036854775807L;
        if (z) {
            MediaPeriodInfo mediaPeriodInfo3 = mediaPeriodHolder.g;
            MediaSource.MediaPeriodId mediaPeriodId2 = mediaPeriodInfo3.a;
            long j11 = mediaPeriodInfo3.d;
            int d = timeline.d(timeline.b(mediaPeriodId2.a), this.a, this.b, this.g, this.h);
            if (d == -1) {
                mediaPeriodInfo = null;
            } else {
                Timeline.Period period2 = this.a;
                int i = timeline.f(d, period2, true).c;
                Object obj2 = period2.b;
                obj2.getClass();
                long j12 = mediaPeriodId2.d;
                mediaPeriodInfo = null;
                if (timeline.m(i, window, 0L).l == d) {
                    int i2 = period2.c;
                    if (period2.d == -9223372036854775807L) {
                        timeline.n(i2, window);
                        if (window.g && !window.i) {
                            j6 = Math.max(0L, j8);
                            mediaPeriodId = mediaPeriodId2;
                            long j13 = j6;
                            period = period2;
                            j7 = timeline.j(this.b, this.a, i, -9223372036854775807L, j13);
                            if (j7 != null) {
                                Object obj3 = j7.first;
                                long longValue = ((Long) j7.second).longValue();
                                MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodHolder.m;
                                if (mediaPeriodHolder2 != null && mediaPeriodHolder2.b.equals(obj3)) {
                                    w = mediaPeriodHolder2.g.a.d;
                                } else {
                                    w = w(obj3);
                                    if (w == -1) {
                                        w = this.f;
                                        this.f = 1 + w;
                                    }
                                }
                                obj = obj3;
                                j3 = w;
                                j5 = j13;
                                j4 = longValue;
                                j9 = -9223372036854775807L;
                            }
                        }
                    }
                    j6 = -9223372036854775807L;
                    mediaPeriodId = mediaPeriodId2;
                    long j132 = j6;
                    period = period2;
                    j7 = timeline.j(this.b, this.a, i, -9223372036854775807L, j132);
                    if (j7 != null) {
                    }
                } else {
                    period = period2;
                    mediaPeriodId = mediaPeriodId2;
                    obj = obj2;
                    j3 = j12;
                    j4 = 0;
                    j5 = -9223372036854775807L;
                }
                MediaSource.MediaPeriodId u = u(timeline, obj, j4, j3, this.b, this.a);
                if (j9 != -9223372036854775807L && j11 != -9223372036854775807L) {
                    int i3 = timeline.g(mediaPeriodId.a, period).g.a;
                    period.g.getClass();
                    if (i3 > 0) {
                        period.g(0);
                    }
                }
                return h(timeline, u, j9, j4, j5);
            }
            return mediaPeriodInfo;
        }
        MediaSource.MediaPeriodId mediaPeriodId3 = mediaPeriodInfo2.a;
        Object obj4 = mediaPeriodId3.a;
        int i4 = mediaPeriodId3.e;
        Timeline.Period period3 = this.a;
        timeline.g(obj4, period3);
        if (mediaPeriodId3.c()) {
            int i5 = mediaPeriodId3.b;
            int i6 = period3.g.a(i5).a;
            if (i6 != -1) {
                int a = period3.g.a(i5).a(mediaPeriodId3.c);
                if (a < i6) {
                    return i(timeline, mediaPeriodId3.a, i5, a, mediaPeriodInfo2.d, mediaPeriodId3.d);
                }
                long j14 = mediaPeriodInfo2.d;
                if (j14 == -9223372036854775807L) {
                    int i7 = period3.c;
                    if (period3.d == -9223372036854775807L) {
                        timeline.n(i7, window);
                        if (window.g && !window.i) {
                            j10 = Math.max(0L, j8);
                        }
                    }
                    long j15 = j10;
                    timeline2 = timeline;
                    Pair j16 = timeline2.j(this.b, period3, period3.c, -9223372036854775807L, j15);
                    if (j16 != null) {
                        j14 = ((Long) j16.second).longValue();
                        j2 = j15;
                    }
                } else {
                    timeline2 = timeline;
                    j2 = -9223372036854775807L;
                }
                int i8 = mediaPeriodId3.b;
                timeline2.g(obj4, period3);
                period3.d(i8);
                period3.g.a(i8).getClass();
                return j(timeline2, mediaPeriodId3.a, Math.max(0L, j14), j2, mediaPeriodInfo2.d, mediaPeriodId3.d);
            }
            return null;
        }
        if (i4 != -1) {
            period3.f(i4);
        }
        int e = period3.e(i4);
        period3.g(i4);
        if (e != period3.g.a(i4).a) {
            return i(timeline, mediaPeriodId3.a, mediaPeriodId3.e, e, mediaPeriodInfo2.e, mediaPeriodId3.d);
        }
        timeline.g(obj4, period3);
        period3.d(i4);
        period3.g.a(i4).getClass();
        return j(timeline, mediaPeriodId3.a, 0L, -9223372036854775807L, mediaPeriodInfo2.e, mediaPeriodId3.d);
    }

    public final MediaPeriodHolder f() {
        MediaPeriodHolder[] mediaPeriodHolderArr = this.j;
        if (mediaPeriodHolderArr.length == 0) {
            return null;
        }
        MediaPeriodHolder mediaPeriodHolder = mediaPeriodHolderArr[0];
        for (MediaPeriodHolder mediaPeriodHolder2 = this.i; mediaPeriodHolder2 != null; mediaPeriodHolder2 = mediaPeriodHolder2.m) {
            int length = mediaPeriodHolderArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (mediaPeriodHolder2 != mediaPeriodHolderArr[i]) {
                    i++;
                } else {
                    mediaPeriodHolder = mediaPeriodHolder2;
                    break;
                }
            }
        }
        return mediaPeriodHolder;
    }

    public final long g(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        Object obj = mediaPeriodId.a;
        Timeline.Period period = this.a;
        timeline.g(obj, period);
        if (mediaPeriodId.c()) {
            return period.a(mediaPeriodId.b, mediaPeriodId.c);
        }
        int i = mediaPeriodId.e;
        if (i != -1) {
            period.d(i);
            return 0L;
        }
        return period.d;
    }

    public final MediaPeriodInfo h(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, long j3) {
        timeline.g(mediaPeriodId.a, this.a);
        boolean c = mediaPeriodId.c();
        Object obj = mediaPeriodId.a;
        if (c) {
            return i(timeline, obj, mediaPeriodId.b, mediaPeriodId.c, j, mediaPeriodId.d);
        }
        return j(timeline, obj, j2, j3, j, mediaPeriodId.d);
    }

    public final MediaPeriodInfo i(Timeline timeline, Object obj, int i, int i2, long j, long j2) {
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(obj, i, i2, j2, -1);
        Timeline.Period period = this.a;
        long a = timeline.g(obj, period).a(i, i2);
        if (i2 == period.e(i)) {
            period.g.getClass();
        }
        period.g(i);
        long j3 = 0;
        if (a != -9223372036854775807L && 0 >= a) {
            j3 = Math.max(0L, a - 1);
        }
        return new MediaPeriodInfo(mediaPeriodId, j3, -9223372036854775807L, j, a, false, false, false, false);
    }

    public final MediaPeriodInfo j(Timeline timeline, Object obj, long j, long j2, long j3, long j4) {
        boolean z;
        long j5;
        Timeline.Period period = this.a;
        timeline.g(obj, period);
        int b = period.b(j);
        if (b != -1) {
            period.g(b);
        }
        if (b != -1) {
            period.g(b);
        }
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(b, j4, obj);
        if (!mediaPeriodId.c() && b == -1) {
            z = true;
        } else {
            z = false;
        }
        boolean p = p(timeline, mediaPeriodId);
        boolean o = o(timeline, mediaPeriodId, z);
        long g = g(timeline, mediaPeriodId);
        if (g != -9223372036854775807L && j >= g) {
            j5 = Math.max(0L, g - 1);
        } else {
            j5 = j;
        }
        return new MediaPeriodInfo(mediaPeriodId, j5, j2, j3, g, false, z, p, o);
    }

    public final MediaPeriodHolder k() {
        return this.i;
    }

    public final MediaPeriodHolder l(int i) {
        return this.k[i];
    }

    public final MediaPeriodInfo m(Timeline timeline, MediaPeriodInfo mediaPeriodInfo) {
        boolean z;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.a;
        boolean c = mediaPeriodId.c();
        int i = mediaPeriodId.e;
        if (!c && i == -1) {
            z = true;
        } else {
            z = false;
        }
        boolean z2 = z;
        boolean p = p(timeline, mediaPeriodId);
        boolean o = o(timeline, mediaPeriodId, z2);
        long g = g(timeline, mediaPeriodId);
        Object obj = mediaPeriodId.a;
        Timeline.Period period = this.a;
        timeline.g(obj, period);
        if (mediaPeriodId.c()) {
            period.g(mediaPeriodId.b);
        } else if (i != -1) {
            period.g(i);
        }
        return new MediaPeriodInfo(mediaPeriodId, mediaPeriodInfo.b, mediaPeriodInfo.c, mediaPeriodInfo.d, g, false, z2, p, o);
    }

    public final boolean o(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, boolean z) {
        int b = timeline.b(mediaPeriodId.a);
        if (!timeline.m(timeline.f(b, this.a, false).c, this.b, 0L).g) {
            if (timeline.d(b, this.a, this.b, this.g, this.h) == -1 && z) {
                return true;
            }
        }
        return false;
    }

    public final boolean p(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        boolean z;
        if (!mediaPeriodId.c() && mediaPeriodId.e == -1) {
            z = true;
        } else {
            z = false;
        }
        Object obj = mediaPeriodId.a;
        if (z) {
            if (timeline.m(timeline.g(obj, this.a).c, this.b, 0L).m == timeline.b(obj)) {
                return true;
            }
        }
        return false;
    }

    public final void q() {
        MediaPeriodHolder mediaPeriodHolder = this.m;
        if (mediaPeriodHolder == null || mediaPeriodHolder.h()) {
            this.m = null;
            for (int i = 0; i < this.q.size(); i++) {
                MediaPeriodHolder mediaPeriodHolder2 = (MediaPeriodHolder) this.q.get(i);
                if (!mediaPeriodHolder2.h()) {
                    this.m = mediaPeriodHolder2;
                    return;
                }
            }
        }
    }

    public final void r() {
        MediaSource.MediaPeriodId mediaPeriodId;
        MediaPeriodHolder mediaPeriodHolder;
        ImmutableList.Builder k = ImmutableList.k();
        for (MediaPeriodHolder mediaPeriodHolder2 = this.i; mediaPeriodHolder2 != null; mediaPeriodHolder2 = mediaPeriodHolder2.m) {
            k.d(mediaPeriodHolder2.g.a);
        }
        MediaPeriodHolder[] mediaPeriodHolderArr = this.j;
        if (mediaPeriodHolderArr.length != 0 && (mediaPeriodHolder = mediaPeriodHolderArr[0]) != null) {
            mediaPeriodId = mediaPeriodHolder.g.a;
        } else {
            mediaPeriodId = null;
        }
        this.d.d(new q(this, k, mediaPeriodId, 0));
    }

    public final void s(long j) {
        boolean z;
        MediaPeriodHolder mediaPeriodHolder = this.l;
        if (mediaPeriodHolder != null) {
            if (mediaPeriodHolder.m == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
            if (mediaPeriodHolder.e) {
                mediaPeriodHolder.a.u(j - mediaPeriodHolder.p);
            }
        }
    }

    public final int t(MediaPeriodHolder mediaPeriodHolder) {
        MediaPeriodHolder[] mediaPeriodHolderArr;
        MediaPeriodHolder[] mediaPeriodHolderArr2;
        mediaPeriodHolder.getClass();
        if (mediaPeriodHolder == this.l) {
            return 0;
        }
        this.l = mediaPeriodHolder;
        int i = 0;
        while (true) {
            mediaPeriodHolder = mediaPeriodHolder.m;
            if (mediaPeriodHolder == null) {
                break;
            }
            int i2 = 0;
            while (true) {
                mediaPeriodHolderArr = this.j;
                int length = mediaPeriodHolderArr.length;
                mediaPeriodHolderArr2 = this.k;
                if (i2 >= length) {
                    break;
                }
                if (mediaPeriodHolder == mediaPeriodHolderArr[i2]) {
                    MediaPeriodHolder mediaPeriodHolder2 = this.i;
                    mediaPeriodHolderArr[i2] = mediaPeriodHolder2;
                    mediaPeriodHolderArr2[i2] = mediaPeriodHolder2;
                    i = 3;
                }
                i2++;
            }
            for (int i3 = 0; i3 < mediaPeriodHolderArr2.length; i3++) {
                if (mediaPeriodHolder == mediaPeriodHolderArr2[i3]) {
                    mediaPeriodHolderArr2[i3] = mediaPeriodHolderArr[i3];
                    i |= 2;
                }
            }
            mediaPeriodHolder.i();
            this.n--;
        }
        MediaPeriodHolder mediaPeriodHolder3 = this.l;
        mediaPeriodHolder3.getClass();
        if (mediaPeriodHolder3.m != null) {
            mediaPeriodHolder3.b();
            mediaPeriodHolder3.m = null;
            mediaPeriodHolder3.c();
        }
        r();
        return i;
    }

    public final MediaSource.MediaPeriodId v(PlaybackInfo playbackInfo, Timeline timeline, Object obj, long j, boolean z, boolean z2) {
        long w;
        long j2;
        int b;
        Object obj2 = obj;
        Timeline.Period period = this.a;
        int i = timeline.g(obj2, period).c;
        Object obj3 = this.o;
        if (obj3 != null && (b = timeline.b(obj3)) != -1 && timeline.f(b, period, false).c == i) {
            w = this.p;
        } else {
            MediaPeriodHolder mediaPeriodHolder = this.i;
            while (true) {
                if (mediaPeriodHolder != null) {
                    if (mediaPeriodHolder.b.equals(obj2)) {
                        w = mediaPeriodHolder.g.a.d;
                        break;
                    }
                    mediaPeriodHolder = mediaPeriodHolder.m;
                } else {
                    MediaPeriodHolder mediaPeriodHolder2 = this.i;
                    while (true) {
                        if (mediaPeriodHolder2 != null) {
                            int b2 = timeline.b(mediaPeriodHolder2.b);
                            if (b2 != -1 && timeline.f(b2, period, false).c == i) {
                                w = mediaPeriodHolder2.g.a.d;
                                break;
                            }
                            mediaPeriodHolder2 = mediaPeriodHolder2.m;
                        } else {
                            w = w(obj2);
                            if (w == -1) {
                                w = this.f;
                                this.f = 1 + w;
                                if (this.i == null) {
                                    this.o = obj2;
                                    this.p = w;
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!z && !z2) {
            MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.b;
            long j3 = w;
            MediaSource.MediaPeriodId u = u(timeline, obj2, j, j3, this.b, this.a);
            if (mediaPeriodId.c() && mediaPeriodId.equals(u)) {
                return mediaPeriodId;
            }
            timeline.g(obj2, period);
            return new MediaSource.MediaPeriodId(period.b(j), j3, obj2);
        }
        long j4 = w;
        timeline.g(obj2, period);
        int i2 = period.c;
        Timeline.Window window = this.b;
        timeline.n(i2, window);
        int b3 = timeline.b(obj);
        boolean z3 = false;
        while (true) {
            if (b3 >= window.l) {
                boolean z4 = true;
                timeline.f(b3, period, true);
                if (period.g.a <= 0) {
                    z4 = false;
                }
                z3 |= z4;
                j2 = 0;
                if (period.c(period.d) != -1) {
                    obj2 = period.b;
                    obj2.getClass();
                }
                if (z3 && (!z4 || period.d != 0)) {
                    break;
                }
                b3--;
            } else {
                j2 = 0;
                break;
            }
        }
        MediaSource.MediaPeriodId u2 = u(timeline, obj2, j, j4, this.b, this.a);
        Object obj4 = u2.a;
        int i3 = u2.b;
        if (i3 != -1 && !z) {
            timeline.g(obj4, period);
            period.g.a(i3).getClass();
            if (j2 != j) {
                return new MediaSource.MediaPeriodId(period.b(j), u2.d, obj4);
            }
        }
        return u2;
    }

    public final long w(Object obj) {
        for (int i = 0; i < this.q.size(); i++) {
            MediaPeriodHolder mediaPeriodHolder = (MediaPeriodHolder) this.q.get(i);
            if (mediaPeriodHolder.b.equals(obj)) {
                return mediaPeriodHolder.g.a.d;
            }
        }
        return -1L;
    }

    public final int x(Timeline timeline) {
        Timeline timeline2;
        MediaPeriodHolder mediaPeriodHolder;
        MediaPeriodHolder mediaPeriodHolder2 = this.i;
        if (mediaPeriodHolder2 == null) {
            return 0;
        }
        int b = timeline.b(mediaPeriodHolder2.b);
        while (true) {
            timeline2 = timeline;
            b = timeline2.d(b, this.a, this.b, this.g, this.h);
            while (true) {
                mediaPeriodHolder = mediaPeriodHolder2.m;
                if (mediaPeriodHolder == null || mediaPeriodHolder2.g.g) {
                    break;
                }
                mediaPeriodHolder2 = mediaPeriodHolder;
            }
            if (b == -1 || mediaPeriodHolder == null || timeline2.b(mediaPeriodHolder.b) != b) {
                break;
            }
            mediaPeriodHolder2 = mediaPeriodHolder;
            timeline = timeline2;
        }
        int t = t(mediaPeriodHolder2);
        mediaPeriodHolder2.g = m(timeline2, mediaPeriodHolder2.g);
        return t;
    }

    public final int y(Timeline timeline, long j, long[] jArr, long[] jArr2) {
        long j2;
        int i;
        MediaPeriodInfo mediaPeriodInfo;
        long j3;
        int i2;
        int i3;
        MediaPeriodHolder mediaPeriodHolder = null;
        for (MediaPeriodHolder mediaPeriodHolder2 = this.i; mediaPeriodHolder2 != null; mediaPeriodHolder2 = mediaPeriodHolder2.m) {
            MediaPeriodInfo mediaPeriodInfo2 = mediaPeriodHolder2.g;
            MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo2.a;
            if (mediaPeriodHolder == null) {
                mediaPeriodInfo = m(timeline, mediaPeriodInfo2);
                j2 = -9223372036854775807L;
                i = 0;
            } else {
                MediaPeriodInfo e = e(timeline, mediaPeriodHolder, j);
                if (e != null) {
                    long j4 = e.b;
                    long j5 = mediaPeriodInfo2.c;
                    j2 = -9223372036854775807L;
                    long j6 = mediaPeriodInfo2.b;
                    i = 0;
                    if (mediaPeriodId.equals(e.a)) {
                        if (j6 != j4) {
                            if (j5 != -9223372036854775807L) {
                                long j7 = e.c;
                                if (j7 != -9223372036854775807L) {
                                    if (Math.abs((j4 - j7) - (j6 - j5)) >= 5000000) {
                                    }
                                }
                            }
                        }
                        if (j6 != j4) {
                            mediaPeriodInfo = e.b(j6, j5);
                        } else {
                            mediaPeriodInfo = e;
                        }
                    }
                }
                return t(mediaPeriodHolder);
            }
            long j8 = mediaPeriodInfo2.d;
            long j9 = mediaPeriodInfo2.e;
            MediaPeriodInfo a = mediaPeriodInfo.a(j8);
            mediaPeriodHolder2.g = a;
            long j10 = mediaPeriodInfo.e;
            if (j9 != j10) {
                if (j10 == j2) {
                    j3 = Long.MAX_VALUE;
                } else {
                    j3 = j10 + mediaPeriodHolder2.p;
                }
                if (!a.f && n(this.j, jArr, mediaPeriodHolder2, j3)) {
                    i2 = 1;
                } else {
                    i2 = i;
                }
                boolean n = n(this.k, jArr2, mediaPeriodHolder2, j3);
                int t = t(mediaPeriodHolder2);
                if (t != 0) {
                    return t;
                }
                if (i2 != 0 && (j9 != j2 || mediaPeriodId.e != -1)) {
                    i3 = 1;
                } else {
                    i3 = i;
                }
                if (n) {
                    return i3 | 2;
                }
                return i3;
            }
            mediaPeriodHolder = mediaPeriodHolder2;
        }
        return 0;
    }
}
