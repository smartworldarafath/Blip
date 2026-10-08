package androidx.media3.exoplayer.analytics;

import android.os.Looper;
import android.util.SparseArray;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import defpackage.b7;
import defpackage.d7;
import defpackage.f7;
import defpackage.g7;
import defpackage.n5;
import defpackage.p;
import defpackage.u2;
import java.io.IOException;
import java.util.AbstractCollection;
import java.util.List;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DefaultAnalyticsCollector implements AnalyticsCollector {
    public final Clock j;
    public final Timeline.Period k;
    public final Timeline.Window l;
    public final MediaPeriodQueueTracker m;
    public final SparseArray n;
    public ListenerSet o;
    public Player p;
    public HandlerWrapper q;
    public boolean r;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MediaPeriodQueueTracker {
        public final Timeline.Period a;
        public ImmutableList b = ImmutableList.r();
        public ImmutableMap c = ImmutableMap.d();
        public MediaSource.MediaPeriodId d;
        public MediaSource.MediaPeriodId e;
        public MediaSource.MediaPeriodId f;

        public MediaPeriodQueueTracker(Timeline.Period period) {
            this.a = period;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MediaSource.MediaPeriodId b(Player player, ImmutableList immutableList, MediaSource.MediaPeriodId mediaPeriodId, Timeline.Period period) {
            Object l;
            int i;
            Timeline K = player.K();
            int l2 = player.l();
            if (K.p()) {
                l = null;
            } else {
                l = K.l(l2);
            }
            if (!player.f() && !K.p()) {
                i = K.f(l2, period, false).b(Util.D(player.S()) - period.e);
            } else {
                i = -1;
            }
            int i2 = i;
            for (int i3 = 0; i3 < immutableList.size(); i3++) {
                MediaSource.MediaPeriodId mediaPeriodId2 = (MediaSource.MediaPeriodId) immutableList.get(i3);
                if (c(mediaPeriodId2, l, player.f(), player.C(), player.q(), i2)) {
                    return mediaPeriodId2;
                }
            }
            if (!immutableList.isEmpty() || mediaPeriodId == null || !c(mediaPeriodId, l, player.f(), player.C(), player.q(), i2)) {
                return null;
            }
            return mediaPeriodId;
        }

        public static boolean c(MediaSource.MediaPeriodId mediaPeriodId, Object obj, boolean z, int i, int i2, int i3) {
            Object obj2 = mediaPeriodId.a;
            int i4 = mediaPeriodId.b;
            if (!obj2.equals(obj)) {
                return false;
            }
            if (!z || i4 != i || mediaPeriodId.c != i2) {
                if (z || i4 != -1 || mediaPeriodId.e != i3) {
                    return false;
                }
                return true;
            }
            return true;
        }

        public final void a(ImmutableMap.Builder builder, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
            if (mediaPeriodId != null) {
                if (timeline.b(mediaPeriodId.a) != -1) {
                    builder.b(mediaPeriodId, timeline);
                    return;
                }
                Timeline timeline2 = (Timeline) this.c.get(mediaPeriodId);
                if (timeline2 != null) {
                    builder.b(mediaPeriodId, timeline2);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void d(Timeline timeline) {
            ImmutableList immutableList;
            ImmutableMap.Builder builder = new ImmutableMap.Builder(4);
            if (this.b.isEmpty()) {
                a(builder, this.e, timeline);
                if (!Objects.equals(this.f, this.e)) {
                    a(builder, this.f, timeline);
                }
                if (!Objects.equals(this.d, this.e) && !Objects.equals(this.d, this.f)) {
                    a(builder, this.d, timeline);
                }
            } else {
                int i = 0;
                while (true) {
                    int size = this.b.size();
                    immutableList = this.b;
                    if (i >= size) {
                        break;
                    }
                    a(builder, (MediaSource.MediaPeriodId) immutableList.get(i), timeline);
                    i++;
                }
                if (!immutableList.contains(this.d)) {
                    a(builder, this.d, timeline);
                }
            }
            this.c = builder.a(true);
        }
    }

    public DefaultAnalyticsCollector(Clock clock) {
        clock.getClass();
        this.j = clock;
        String str = Util.a;
        Looper myLooper = Looper.myLooper();
        this.o = new ListenerSet((myLooper == null ? Looper.getMainLooper() : myLooper).getThread());
        Timeline.Period period = new Timeline.Period();
        this.k = period;
        this.l = new Timeline.Window();
        this.m = new MediaPeriodQueueTracker(period);
        this.n = new SparseArray();
    }

    @Override // androidx.media3.common.Player.Listener
    public final void A(PlaybackException playbackException) {
        AnalyticsListener.EventTime G;
        MediaSource.MediaPeriodId mediaPeriodId;
        if ((playbackException instanceof ExoPlaybackException) && (mediaPeriodId = ((ExoPlaybackException) playbackException).q) != null) {
            G = I(mediaPeriodId);
        } else {
            G = G();
        }
        N(G, 10, new u2(29));
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void B(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        AnalyticsListener.EventTime J = J(i, mediaPeriodId);
        N(J, 1003, new p(J, loadEventInfo, mediaLoadData, iOException, z));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void C(int i, int i2) {
        N(L(), 24, new b7(8));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void D(Player.Commands commands) {
        N(G(), 13, new f7(6));
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void E(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        N(J(i, mediaPeriodId), 1002, new f7(0));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void F(boolean z) {
        N(G(), 7, new u2(26));
    }

    public final AnalyticsListener.EventTime G() {
        return I(this.m.d);
    }

    public final AnalyticsListener.EventTime H(Timeline timeline, int i, MediaSource.MediaPeriodId mediaPeriodId) {
        MediaSource.MediaPeriodId mediaPeriodId2;
        boolean z;
        if (timeline.p()) {
            mediaPeriodId2 = null;
        } else {
            mediaPeriodId2 = mediaPeriodId;
        }
        ((SystemClock) this.j).getClass();
        long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
        if (timeline.equals(this.p.K()) && i == this.p.D()) {
            z = true;
        } else {
            z = false;
        }
        long j = 0;
        if (mediaPeriodId2 != null && mediaPeriodId2.c()) {
            if (z && this.p.C() == mediaPeriodId2.b && this.p.q() == mediaPeriodId2.c) {
                j = this.p.S();
            }
        } else if (z) {
            j = this.p.w();
        } else if (!timeline.p()) {
            j = Util.N(timeline.m(i, this.l, 0L).j);
        }
        return new AnalyticsListener.EventTime(elapsedRealtime, timeline, i, mediaPeriodId2, j, this.p.K(), this.p.D(), this.m.d, this.p.S(), this.p.g());
    }

    public final AnalyticsListener.EventTime I(MediaSource.MediaPeriodId mediaPeriodId) {
        Timeline timeline;
        this.p.getClass();
        if (mediaPeriodId == null) {
            timeline = null;
        } else {
            timeline = (Timeline) this.m.c.get(mediaPeriodId);
        }
        if (mediaPeriodId != null && timeline != null) {
            return H(timeline, timeline.g(mediaPeriodId.a, this.k).c, mediaPeriodId);
        }
        int D = this.p.D();
        Timeline K = this.p.K();
        if (D >= K.o()) {
            K = Timeline.a;
        }
        return H(K, D, null);
    }

    public final AnalyticsListener.EventTime J(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        this.p.getClass();
        if (mediaPeriodId != null) {
            if (((Timeline) this.m.c.get(mediaPeriodId)) != null) {
                return I(mediaPeriodId);
            }
            return H(Timeline.a, i, mediaPeriodId);
        }
        Timeline K = this.p.K();
        if (i >= K.o()) {
            K = Timeline.a;
        }
        return H(K, i, null);
    }

    public final AnalyticsListener.EventTime K() {
        return I(this.m.e);
    }

    public final AnalyticsListener.EventTime L() {
        return I(this.m.f);
    }

    public final void M(final int i, final long j, final long j2) {
        MediaSource.MediaPeriodId mediaPeriodId;
        MediaPeriodQueueTracker mediaPeriodQueueTracker = this.m;
        if (mediaPeriodQueueTracker.b.isEmpty()) {
            mediaPeriodId = null;
        } else {
            mediaPeriodId = (MediaSource.MediaPeriodId) Iterables.b(mediaPeriodQueueTracker.b);
        }
        final AnalyticsListener.EventTime I = I(mediaPeriodId);
        N(I, 1006, new ListenerSet.Event(i, j, j2) { // from class: e7
            public final /* synthetic */ int k;
            public final /* synthetic */ long l;

            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void b(Object obj) {
                ((AnalyticsListener) obj).o(AnalyticsListener.EventTime.this, this.k, this.l);
            }
        });
    }

    public final void N(AnalyticsListener.EventTime eventTime, int i, ListenerSet.Event event) {
        this.n.put(i, eventTime);
        this.o.f(i, event);
    }

    public final void O(Player player, Looper looper) {
        boolean z;
        boolean z2 = true;
        if (this.p != null && !this.m.b.isEmpty()) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.n(z);
        player.getClass();
        this.p = player;
        this.q = ((SystemClock) this.j).a(looper, null);
        ListenerSet listenerSet = this.o;
        n5 n5Var = new n5(3, this, player);
        listenerSet.getClass();
        Clock clock = this.j;
        if (clock == null) {
            z2 = false;
        }
        Preconditions.n(z2);
        this.o = new ListenerSet(listenerSet.d, looper, looper.getThread(), clock, n5Var, listenerSet.i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void P(List list, MediaSource.MediaPeriodId mediaPeriodId) {
        Player player = this.p;
        player.getClass();
        MediaPeriodQueueTracker mediaPeriodQueueTracker = this.m;
        mediaPeriodQueueTracker.getClass();
        mediaPeriodQueueTracker.b = ImmutableList.m(list);
        if (!((AbstractCollection) list).isEmpty()) {
            mediaPeriodQueueTracker.e = (MediaSource.MediaPeriodId) list.get(0);
            mediaPeriodId.getClass();
            mediaPeriodQueueTracker.f = mediaPeriodId;
        }
        if (mediaPeriodQueueTracker.d == null) {
            mediaPeriodQueueTracker.d = MediaPeriodQueueTracker.b(player, mediaPeriodQueueTracker.b, mediaPeriodQueueTracker.e, mediaPeriodQueueTracker.a);
        }
        mediaPeriodQueueTracker.d(player.K());
    }

    @Override // androidx.media3.common.Player.Listener
    public final void a(VideoSize videoSize) {
        AnalyticsListener.EventTime L = L();
        N(L, 25, new g7(L, videoSize));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void b(int i) {
        N(L(), 21, new b7(19));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void c(CueGroup cueGroup) {
        N(G(), 27, new b7(9));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void d(Metadata metadata) {
        N(G(), 28, new u2(25));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void e(boolean z) {
        N(L(), 23, new b7(28));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void f(List list) {
        N(G(), 27, new b7(2));
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void g(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        N(J(i, mediaPeriodId), 1001, new f7(1));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void h(PlaybackException playbackException) {
        AnalyticsListener.EventTime G;
        MediaSource.MediaPeriodId mediaPeriodId;
        if ((playbackException instanceof ExoPlaybackException) && (mediaPeriodId = ((ExoPlaybackException) playbackException).q) != null) {
            G = I(mediaPeriodId);
        } else {
            G = G();
        }
        N(G, 10, new p(G, playbackException, 3));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void i(int i) {
        N(G(), 6, new u2(28));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void j(int i, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2) {
        if (i == 1) {
            this.r = false;
        }
        Player player = this.p;
        player.getClass();
        MediaPeriodQueueTracker mediaPeriodQueueTracker = this.m;
        mediaPeriodQueueTracker.d = MediaPeriodQueueTracker.b(player, mediaPeriodQueueTracker.b, mediaPeriodQueueTracker.e, mediaPeriodQueueTracker.a);
        AnalyticsListener.EventTime G = G();
        N(G, 11, new d7(G, i, positionInfo, positionInfo2));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void l(boolean z) {
        N(G(), 3, new b7(29));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void m(int i, boolean z) {
        N(G(), 5, new b7(0));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void n(final int i) {
        final AnalyticsListener.EventTime G = G();
        N(G, 4, new ListenerSet.Event() { // from class: c7
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void b(Object obj) {
                ((AnalyticsListener) obj).n(AnalyticsListener.EventTime.this, i);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void o(int i, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime J = J(i, mediaPeriodId);
        N(J, 1004, new n5(1, J, mediaLoadData));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void p(boolean z) {
        N(G(), 9, new b7(25));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void q(PlaybackParameters playbackParameters) {
        N(G(), 12, new u2(23));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void r(int i) {
        Player player = this.p;
        player.getClass();
        MediaPeriodQueueTracker mediaPeriodQueueTracker = this.m;
        mediaPeriodQueueTracker.d = MediaPeriodQueueTracker.b(player, mediaPeriodQueueTracker.b, mediaPeriodQueueTracker.e, mediaPeriodQueueTracker.a);
        mediaPeriodQueueTracker.d(player.K());
        N(G(), 0, new f7(7));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void s(MediaMetadata mediaMetadata) {
        N(G(), 14, new b7(20));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void t(TrackSelectionParameters trackSelectionParameters) {
        N(G(), 19, new b7(27));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void u(int i) {
        N(G(), 8, new b7(6));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void w(Tracks tracks) {
        N(G(), 2, new b7(4));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void x(MediaItem mediaItem, int i) {
        N(G(), 1, new f7(8));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void y(int i, boolean z) {
        N(G(), -1, new u2(24));
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void z(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i2) {
        N(J(i, mediaPeriodId), 1000, new b7(26));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void v() {
    }

    @Override // androidx.media3.common.Player.Listener
    public final void k(Player.Events events) {
    }
}
