package androidx.media3.exoplayer.source;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.source.CompositeMediaSource;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.upstream.Allocator;
import com.google.common.base.Preconditions;
import java.util.HashMap;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MaskingMediaSource extends WrappingMediaSource {
    public final boolean l;
    public final Timeline.Window m;
    public final Timeline.Period n;
    public MaskingTimeline o;
    public MaskingMediaPeriod p;
    public boolean q;
    public boolean r;
    public boolean s;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MaskingTimeline extends ForwardingTimeline {
        public static final Object e = new Object();
        public final Object c;
        public final Object d;

        public MaskingTimeline(Timeline timeline, Object obj, Object obj2) {
            super(timeline);
            this.c = obj;
            this.d = obj2;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final int b(Object obj) {
            Object obj2;
            if (e == obj && (obj2 = this.d) != null) {
                obj = obj2;
            }
            return this.b.b(obj);
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final Timeline.Period f(int i, Timeline.Period period, boolean z) {
            this.b.f(i, period, z);
            if (Objects.equals(period.b, this.d) && z) {
                period.b = e;
            }
            return period;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final Object l(int i) {
            Object l = this.b.l(i);
            if (Objects.equals(l, this.d)) {
                return e;
            }
            return l;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final Timeline.Window m(int i, Timeline.Window window, long j) {
            this.b.m(i, window, j);
            if (Objects.equals(window.a, this.c)) {
                window.a = Timeline.Window.n;
            }
            return window;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PlaceholderTimeline extends Timeline {
        public final MediaItem b;

        public PlaceholderTimeline(MediaItem mediaItem) {
            this.b = mediaItem;
        }

        @Override // androidx.media3.common.Timeline
        public final int b(Object obj) {
            if (obj == MaskingTimeline.e) {
                return 0;
            }
            return -1;
        }

        @Override // androidx.media3.common.Timeline
        public final Timeline.Period f(int i, Timeline.Period period, boolean z) {
            Integer num;
            Object obj = null;
            if (z) {
                num = 0;
            } else {
                num = null;
            }
            if (z) {
                obj = MaskingTimeline.e;
            }
            AdPlaybackState adPlaybackState = AdPlaybackState.c;
            period.getClass();
            period.a = num;
            period.b = obj;
            period.c = 0;
            period.d = -9223372036854775807L;
            period.e = 0L;
            period.g = adPlaybackState;
            period.f = true;
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public final int h() {
            return 1;
        }

        @Override // androidx.media3.common.Timeline
        public final Object l(int i) {
            return MaskingTimeline.e;
        }

        @Override // androidx.media3.common.Timeline
        public final Timeline.Window m(int i, Timeline.Window window, long j) {
            Object obj = Timeline.Window.n;
            window.b(this.b, false, true, null, 0L, -9223372036854775807L);
            window.i = true;
            return window;
        }

        @Override // androidx.media3.common.Timeline
        public final int o() {
            return 1;
        }
    }

    public MaskingMediaSource(MediaSource mediaSource, boolean z) {
        super(mediaSource);
        boolean z2;
        if (z && mediaSource.e()) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.l = z2;
        this.m = new Timeline.Window();
        this.n = new Timeline.Period();
        Timeline f = mediaSource.f();
        if (f != null) {
            this.o = new MaskingTimeline(f, null, null);
            this.s = true;
        } else {
            this.o = new MaskingTimeline(new PlaceholderTimeline(mediaSource.c()), Timeline.Window.n, MaskingTimeline.e);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void a(MediaItem mediaItem) {
        TimelineWithUpdatedMediaItem timelineWithUpdatedMediaItem;
        if (this.s) {
            MaskingTimeline maskingTimeline = this.o;
            Timeline timeline = maskingTimeline.b;
            if (timeline instanceof TimelineWithUpdatedMediaItem) {
                timelineWithUpdatedMediaItem = new TimelineWithUpdatedMediaItem(((TimelineWithUpdatedMediaItem) timeline).b, mediaItem);
            } else {
                timelineWithUpdatedMediaItem = new TimelineWithUpdatedMediaItem(timeline, mediaItem);
            }
            this.o = new MaskingTimeline(timelineWithUpdatedMediaItem, maskingTimeline.c, maskingTimeline.d);
        } else {
            this.o = new MaskingTimeline(new PlaceholderTimeline(mediaItem), Timeline.Window.n, MaskingTimeline.e);
        }
        this.k.a(mediaItem);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void g(MediaPeriod mediaPeriod) {
        MaskingMediaPeriod maskingMediaPeriod = (MaskingMediaPeriod) mediaPeriod;
        if (maskingMediaPeriod.n != null) {
            MediaSource mediaSource = maskingMediaPeriod.m;
            mediaSource.getClass();
            mediaSource.g(maskingMediaPeriod.n);
        }
        if (mediaPeriod == this.p) {
            this.p = null;
        }
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void q() {
        this.r = false;
        this.q = false;
        HashMap hashMap = this.i;
        for (CompositeMediaSource.MediaSourceAndListener mediaSourceAndListener : hashMap.values()) {
            MediaSource mediaSource = mediaSourceAndListener.a;
            CompositeMediaSource.ForwardingEventListener forwardingEventListener = mediaSourceAndListener.c;
            BaseMediaSource baseMediaSource = (BaseMediaSource) mediaSource;
            baseMediaSource.p(mediaSourceAndListener.b);
            baseMediaSource.r(forwardingEventListener);
            baseMediaSource.d.b(forwardingEventListener);
        }
        hashMap.clear();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public final MaskingMediaPeriod b(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        boolean z;
        MaskingMediaPeriod maskingMediaPeriod = new MaskingMediaPeriod(mediaPeriodId, allocator, j);
        if (maskingMediaPeriod.m == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        maskingMediaPeriod.m = this.k;
        if (this.r) {
            Object obj = mediaPeriodId.a;
            if (this.o.d != null && obj.equals(MaskingTimeline.e)) {
                obj = this.o.d;
            }
            maskingMediaPeriod.a(mediaPeriodId.a(obj));
            return maskingMediaPeriod;
        }
        this.p = maskingMediaPeriod;
        if (!this.q) {
            this.q = true;
            s();
        }
        return maskingMediaPeriod;
    }

    public final boolean u(long j) {
        MaskingMediaPeriod maskingMediaPeriod = this.p;
        int b = this.o.b(maskingMediaPeriod.j.a);
        if (b == -1) {
            return false;
        }
        MaskingTimeline maskingTimeline = this.o;
        Timeline.Period period = this.n;
        maskingTimeline.f(b, period, false);
        long j2 = period.d;
        if (j2 != -9223372036854775807L && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        maskingMediaPeriod.p = j;
        return true;
    }
}
