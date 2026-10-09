package androidx.media3.exoplayer;

import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.source.BaseMediaSource;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MaskingMediaSource;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MediaSourceList {
    public final PlayerId a;
    public final BandwidthMeter b;
    public final MediaSourceListInfoRefreshListener f;
    public final AnalyticsCollector i;
    public final HandlerWrapper j;
    public boolean l;
    public ShuffleOrder k = new ShuffleOrder.DefaultShuffleOrder();
    public final IdentityHashMap d = new IdentityHashMap();
    public final HashMap e = new HashMap();
    public final ArrayList c = new ArrayList();
    public final HashMap g = new HashMap();
    public final HashSet h = new HashSet();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ForwardingEventListener implements MediaSourceEventListener, DrmSessionEventListener {
        public final MediaSourceHolder j;

        public ForwardingEventListener(MediaSourceHolder mediaSourceHolder) {
            this.j = mediaSourceHolder;
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void B(int i, MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData, final IOException iOException, final boolean z) {
            final Pair a = a(i, mediaPeriodId);
            if (a != null) {
                MediaSourceList.this.j.d(new Runnable() { // from class: androidx.media3.exoplayer.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnalyticsCollector analyticsCollector = MediaSourceList.this.i;
                        Pair pair = a;
                        ((DefaultAnalyticsCollector) analyticsCollector).B(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData, iOException, z);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void E(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            Pair a = a(i, mediaPeriodId);
            if (a != null) {
                MediaSourceList.this.j.d(new s(this, a, loadEventInfo, mediaLoadData, 0));
            }
        }

        public final Pair a(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            MediaSource.MediaPeriodId mediaPeriodId2;
            MediaSourceHolder mediaSourceHolder = this.j;
            MediaSource.MediaPeriodId mediaPeriodId3 = null;
            if (mediaPeriodId != null) {
                int i2 = 0;
                while (true) {
                    if (i2 < mediaSourceHolder.c.size()) {
                        if (((MediaSource.MediaPeriodId) mediaSourceHolder.c.get(i2)).d == mediaPeriodId.d) {
                            Object obj = mediaPeriodId.a;
                            Object obj2 = mediaSourceHolder.b;
                            int i3 = AbstractConcatenatedTimeline.d;
                            mediaPeriodId2 = mediaPeriodId.a(Pair.create(obj2, obj));
                            break;
                        }
                        i2++;
                    } else {
                        mediaPeriodId2 = null;
                        break;
                    }
                }
                if (mediaPeriodId2 == null) {
                    return null;
                }
                mediaPeriodId3 = mediaPeriodId2;
            }
            return Pair.create(Integer.valueOf(i + mediaSourceHolder.d), mediaPeriodId3);
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void g(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            Pair a = a(i, mediaPeriodId);
            if (a != null) {
                MediaSourceList.this.j.d(new s(this, a, loadEventInfo, mediaLoadData, 1));
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void o(int i, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            Pair a = a(i, mediaPeriodId);
            if (a != null) {
                MediaSourceList.this.j.d(new q(this, a, mediaLoadData, 1));
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void z(int i, MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData, final int i2) {
            final Pair a = a(i, mediaPeriodId);
            if (a != null) {
                MediaSourceList.this.j.d(new Runnable() { // from class: androidx.media3.exoplayer.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnalyticsCollector analyticsCollector = MediaSourceList.this.i;
                        Pair pair = a;
                        ((DefaultAnalyticsCollector) analyticsCollector).z(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData, i2);
                    }
                });
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MediaSourceAndListener {
        public final MediaSource a;
        public final r b;
        public final ForwardingEventListener c;

        public MediaSourceAndListener(MediaSource mediaSource, r rVar, ForwardingEventListener forwardingEventListener) {
            this.a = mediaSource;
            this.b = rVar;
            this.c = forwardingEventListener;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MediaSourceHolder implements MediaSourceInfoHolder {
        public final MaskingMediaSource a;
        public int d;
        public boolean e;
        public final ArrayList c = new ArrayList();
        public final Object b = new Object();

        public MediaSourceHolder(MediaSource mediaSource, boolean z) {
            this.a = new MaskingMediaSource(mediaSource, z);
        }

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public final Object a() {
            return this.b;
        }

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public final Timeline b() {
            return this.a.o;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface MediaSourceListInfoRefreshListener {
    }

    public MediaSourceList(MediaSourceListInfoRefreshListener mediaSourceListInfoRefreshListener, AnalyticsCollector analyticsCollector, HandlerWrapper handlerWrapper, PlayerId playerId, BandwidthMeter bandwidthMeter) {
        this.a = playerId;
        this.b = bandwidthMeter;
        this.f = mediaSourceListInfoRefreshListener;
        this.i = analyticsCollector;
        this.j = handlerWrapper;
    }

    public final Timeline a(int i, ArrayList arrayList, ShuffleOrder shuffleOrder) {
        if (!arrayList.isEmpty()) {
            this.k = shuffleOrder;
            for (int i2 = i; i2 < arrayList.size() + i; i2++) {
                MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) arrayList.get(i2 - i);
                ArrayList arrayList2 = this.c;
                if (i2 > 0) {
                    MediaSourceHolder mediaSourceHolder2 = (MediaSourceHolder) arrayList2.get(i2 - 1);
                    mediaSourceHolder.d = mediaSourceHolder2.a.o.b.o() + mediaSourceHolder2.d;
                    mediaSourceHolder.e = false;
                    mediaSourceHolder.c.clear();
                } else {
                    mediaSourceHolder.d = 0;
                    mediaSourceHolder.e = false;
                    mediaSourceHolder.c.clear();
                }
                int o = mediaSourceHolder.a.o.b.o();
                for (int i3 = i2; i3 < arrayList2.size(); i3++) {
                    ((MediaSourceHolder) arrayList2.get(i3)).d += o;
                }
                arrayList2.add(i2, mediaSourceHolder);
                this.e.put(mediaSourceHolder.b, mediaSourceHolder);
                if (this.l) {
                    e(mediaSourceHolder);
                    if (this.d.isEmpty()) {
                        this.h.add(mediaSourceHolder);
                    } else {
                        MediaSourceAndListener mediaSourceAndListener = (MediaSourceAndListener) this.g.get(mediaSourceHolder);
                        if (mediaSourceAndListener != null) {
                            ((BaseMediaSource) mediaSourceAndListener.a).i(mediaSourceAndListener.b);
                        }
                    }
                }
            }
        }
        return b();
    }

    public final Timeline b() {
        ArrayList arrayList = this.c;
        if (arrayList.isEmpty()) {
            return Timeline.a;
        }
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) arrayList.get(i2);
            mediaSourceHolder.d = i;
            i += mediaSourceHolder.a.o.b.o();
        }
        return new PlaylistTimeline(arrayList, this.k);
    }

    public final void c() {
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) it.next();
            if (mediaSourceHolder.c.isEmpty()) {
                MediaSourceAndListener mediaSourceAndListener = (MediaSourceAndListener) this.g.get(mediaSourceHolder);
                if (mediaSourceAndListener != null) {
                    ((BaseMediaSource) mediaSourceAndListener.a).i(mediaSourceAndListener.b);
                }
                it.remove();
            }
        }
    }

    public final void d(MediaSourceHolder mediaSourceHolder) {
        if (mediaSourceHolder.e && mediaSourceHolder.c.isEmpty()) {
            MediaSourceAndListener mediaSourceAndListener = (MediaSourceAndListener) this.g.remove(mediaSourceHolder);
            mediaSourceAndListener.getClass();
            ForwardingEventListener forwardingEventListener = mediaSourceAndListener.c;
            BaseMediaSource baseMediaSource = (BaseMediaSource) mediaSourceAndListener.a;
            baseMediaSource.p(mediaSourceAndListener.b);
            baseMediaSource.r(forwardingEventListener);
            baseMediaSource.d.b(forwardingEventListener);
            this.h.remove(mediaSourceHolder);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.media3.exoplayer.r, androidx.media3.exoplayer.source.MediaSource$MediaSourceCaller] */
    public final void e(MediaSourceHolder mediaSourceHolder) {
        MaskingMediaSource maskingMediaSource = mediaSourceHolder.a;
        ?? r1 = new MediaSource.MediaSourceCaller() { // from class: androidx.media3.exoplayer.r
            @Override // androidx.media3.exoplayer.source.MediaSource.MediaSourceCaller
            public final void a(Timeline timeline) {
                HandlerWrapper handlerWrapper = ((ExoPlayerImplInternal) MediaSourceList.this.f).p;
                handlerWrapper.j(2);
                handlerWrapper.i(22);
            }
        };
        ForwardingEventListener forwardingEventListener = new ForwardingEventListener(mediaSourceHolder);
        this.g.put(mediaSourceHolder, new MediaSourceAndListener(maskingMediaSource, r1, forwardingEventListener));
        String str = Util.a;
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            myLooper = Looper.getMainLooper();
        }
        maskingMediaSource.h(new Handler(myLooper, null), forwardingEventListener);
        Looper myLooper2 = Looper.myLooper();
        if (myLooper2 == null) {
            myLooper2 = Looper.getMainLooper();
        }
        maskingMediaSource.d.a(new Handler(myLooper2, null), forwardingEventListener);
        maskingMediaSource.m(r1, this.a, this.b);
    }

    public final void f(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            ArrayList arrayList = this.c;
            MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) arrayList.remove(i3);
            this.e.remove(mediaSourceHolder.b);
            int i4 = -mediaSourceHolder.a.o.b.o();
            for (int i5 = i3; i5 < arrayList.size(); i5++) {
                ((MediaSourceHolder) arrayList.get(i5)).d += i4;
            }
            mediaSourceHolder.e = true;
            if (this.l) {
                d(mediaSourceHolder);
            }
        }
    }
}
