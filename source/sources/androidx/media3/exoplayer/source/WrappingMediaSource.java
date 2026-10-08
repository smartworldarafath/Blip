package androidx.media3.exoplayer.source;

import android.os.Handler;
import android.util.Pair;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.CompositeMediaSource;
import androidx.media3.exoplayer.source.MaskingMediaSource;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import com.google.common.base.Preconditions;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WrappingMediaSource extends CompositeMediaSource<Void> {
    public final MediaSource k;

    public WrappingMediaSource(MediaSource mediaSource) {
        this.k = mediaSource;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final MediaItem c() {
        return this.k.c();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final boolean e() {
        return this.k.e();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final Timeline f() {
        return this.k.f();
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void n(TransferListener transferListener) {
        this.j = Util.k(null);
        MaskingMediaSource maskingMediaSource = (MaskingMediaSource) this;
        if (!maskingMediaSource.l) {
            maskingMediaSource.q = true;
            maskingMediaSource.s();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.MediaSource$MediaSourceCaller] */
    public final void s() {
        HashMap hashMap = this.i;
        Preconditions.e(!hashMap.containsKey(null));
        ?? r2 = new MediaSource.MediaSourceCaller() { // from class: androidx.media3.exoplayer.source.a
            /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:9:0x00cf  */
            @Override // androidx.media3.exoplayer.source.MediaSource.MediaSourceCaller
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final void a(Timeline timeline) {
                MaskingMediaSource.MaskingTimeline maskingTimeline;
                MediaSource.MediaPeriodId a;
                MaskingMediaSource.MaskingTimeline maskingTimeline2;
                MaskingMediaSource maskingMediaSource = (MaskingMediaSource) WrappingMediaSource.this;
                Timeline.Period period = maskingMediaSource.n;
                Timeline.Window window = maskingMediaSource.m;
                if (maskingMediaSource.r) {
                    MaskingMediaSource.MaskingTimeline maskingTimeline3 = maskingMediaSource.o;
                    maskingMediaSource.o = new MaskingMediaSource.MaskingTimeline(timeline, maskingTimeline3.c, maskingTimeline3.d);
                    MaskingMediaPeriod maskingMediaPeriod = maskingMediaSource.p;
                    if (maskingMediaPeriod != null) {
                        maskingMediaSource.u(maskingMediaPeriod.p);
                    }
                } else if (timeline.p()) {
                    if (maskingMediaSource.s) {
                        MaskingMediaSource.MaskingTimeline maskingTimeline4 = maskingMediaSource.o;
                        maskingTimeline2 = new MaskingMediaSource.MaskingTimeline(timeline, maskingTimeline4.c, maskingTimeline4.d);
                    } else {
                        maskingTimeline2 = new MaskingMediaSource.MaskingTimeline(timeline, Timeline.Window.n, MaskingMediaSource.MaskingTimeline.e);
                    }
                    maskingMediaSource.o = maskingTimeline2;
                } else {
                    timeline.n(0, window);
                    long j = window.j;
                    Object obj = window.a;
                    MaskingMediaPeriod maskingMediaPeriod2 = maskingMediaSource.p;
                    if (maskingMediaPeriod2 != null) {
                        long j2 = maskingMediaPeriod2.k;
                        maskingMediaSource.o.g(maskingMediaPeriod2.j.a, period);
                        long j3 = period.e + j2;
                        maskingMediaSource.o.m(0, window, 0L);
                        if (j3 != window.j) {
                            j = j3;
                        }
                    }
                    Pair i = timeline.i(maskingMediaSource.m, maskingMediaSource.n, 0, j);
                    Object obj2 = i.first;
                    long longValue = ((Long) i.second).longValue();
                    if (maskingMediaSource.s) {
                        MaskingMediaSource.MaskingTimeline maskingTimeline5 = maskingMediaSource.o;
                        maskingTimeline = new MaskingMediaSource.MaskingTimeline(timeline, maskingTimeline5.c, maskingTimeline5.d);
                    } else {
                        maskingTimeline = new MaskingMediaSource.MaskingTimeline(timeline, obj, obj2);
                    }
                    maskingMediaSource.o = maskingTimeline;
                    MaskingMediaPeriod maskingMediaPeriod3 = maskingMediaSource.p;
                    if (maskingMediaPeriod3 != null && maskingMediaSource.u(longValue)) {
                        MediaSource.MediaPeriodId mediaPeriodId = maskingMediaPeriod3.j;
                        Object obj3 = mediaPeriodId.a;
                        if (maskingMediaSource.o.d != null && obj3.equals(MaskingMediaSource.MaskingTimeline.e)) {
                            obj3 = maskingMediaSource.o.d;
                        }
                        a = mediaPeriodId.a(obj3);
                        maskingMediaSource.s = true;
                        maskingMediaSource.r = true;
                        maskingMediaSource.o(maskingMediaSource.o);
                        if (a == null) {
                            MaskingMediaPeriod maskingMediaPeriod4 = maskingMediaSource.p;
                            maskingMediaPeriod4.getClass();
                            maskingMediaPeriod4.a(a);
                            return;
                        }
                        return;
                    }
                }
                a = null;
                maskingMediaSource.s = true;
                maskingMediaSource.r = true;
                maskingMediaSource.o(maskingMediaSource.o);
                if (a == null) {
                }
            }
        };
        CompositeMediaSource.ForwardingEventListener forwardingEventListener = new CompositeMediaSource.ForwardingEventListener(this);
        MediaSource mediaSource = this.k;
        hashMap.put(null, new CompositeMediaSource.MediaSourceAndListener(mediaSource, r2, forwardingEventListener));
        Handler handler = this.j;
        handler.getClass();
        BaseMediaSource baseMediaSource = (BaseMediaSource) mediaSource;
        baseMediaSource.h(handler, forwardingEventListener);
        Handler handler2 = this.j;
        handler2.getClass();
        baseMediaSource.d.a(handler2, forwardingEventListener);
        PlayerId playerId = this.g;
        playerId.getClass();
        BandwidthMeter bandwidthMeter = this.h;
        bandwidthMeter.getClass();
        baseMediaSource.m(r2, playerId, bandwidthMeter);
        if (this.b.isEmpty()) {
            baseMediaSource.i(r2);
        }
    }
}
