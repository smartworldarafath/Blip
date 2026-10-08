package androidx.media3.exoplayer.source;

import android.net.Uri;
import android.os.Looper;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManagerProvider;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.ProgressiveMediaExtractor;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.media3.extractor.SeekMap;
import defpackage.p;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProgressiveMediaSource extends BaseMediaSource {
    public final DataSource.Factory i;
    public final ProgressiveMediaExtractor.Factory j;
    public final LoadErrorHandlingPolicy l;
    public final int m;
    public final boolean n;
    public boolean q;
    public boolean r;
    public boolean s;
    public TransferListener t;
    public MediaItem u;
    public final DrmSessionManager k = DrmSessionManager.a;
    public boolean o = true;
    public long p = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.media3.exoplayer.source.ProgressiveMediaSource$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends ForwardingTimeline {
        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final Timeline.Period f(int i, Timeline.Period period, boolean z) {
            super.f(i, period, z);
            period.f = true;
            return period;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final Timeline.Window m(int i, Timeline.Window window, long j) {
            super.m(i, window, j);
            window.i = true;
            return window;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory {
        public final DefaultDataSource.Factory a;
        public final p b;
        public final DefaultDrmSessionManagerProvider c;
        public final DefaultLoadErrorHandlingPolicy d;
        public final int e;
        public final boolean f;

        /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy] */
        public Factory(DefaultDataSource.Factory factory) {
            p pVar = new p(15, new DefaultExtractorsFactory());
            DefaultDrmSessionManagerProvider defaultDrmSessionManagerProvider = new DefaultDrmSessionManagerProvider();
            ?? obj = new Object();
            this.a = factory;
            this.b = pVar;
            this.c = defaultDrmSessionManagerProvider;
            this.d = obj;
            this.e = 1048576;
            this.f = true;
        }
    }

    public ProgressiveMediaSource(MediaItem mediaItem, DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2, LoadErrorHandlingPolicy loadErrorHandlingPolicy, int i, boolean z) {
        this.u = mediaItem;
        this.i = factory;
        this.j = factory2;
        this.l = loadErrorHandlingPolicy;
        this.m = i;
        this.n = z;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final synchronized void a(MediaItem mediaItem) {
        this.u = mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final MediaPeriod b(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        DataSource a = this.i.a();
        TransferListener transferListener = this.t;
        if (transferListener != null) {
            a.b(transferListener);
        }
        MediaItem.LocalConfiguration localConfiguration = c().b;
        localConfiguration.getClass();
        Uri uri = localConfiguration.a;
        this.g.getClass();
        return new ProgressiveMediaPeriod(uri, a, new BundledExtractorsAdapter((DefaultExtractorsFactory) ((p) this.j).k), this.k, new DrmSessionEventListener.EventDispatcher(this.d.c, 0, mediaPeriodId), this.l, new MediaSourceEventListener.EventDispatcher(this.c.c, 0, mediaPeriodId), this, allocator, this.m, this.n, Util.D(localConfiguration.e), null);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final synchronized MediaItem c() {
        return this.u;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void g(MediaPeriod mediaPeriod) {
        ProgressiveMediaPeriod progressiveMediaPeriod = (ProgressiveMediaPeriod) mediaPeriod;
        if (progressiveMediaPeriod.G) {
            for (SampleQueue sampleQueue : progressiveMediaPeriod.D) {
                sampleQueue.i();
                if (sampleQueue.h != null) {
                    DrmSessionEventListener.EventDispatcher eventDispatcher = sampleQueue.e;
                    sampleQueue.h = null;
                    sampleQueue.g = null;
                }
            }
        }
        progressiveMediaPeriod.u.c(progressiveMediaPeriod);
        progressiveMediaPeriod.z.removeCallbacksAndMessages(null);
        progressiveMediaPeriod.A = null;
        progressiveMediaPeriod.a0 = true;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void n(TransferListener transferListener) {
        this.t = transferListener;
        Looper.myLooper().getClass();
        this.g.getClass();
        this.k.getClass();
        s();
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void q() {
        this.k.getClass();
    }

    public final void s() {
        Timeline singlePeriodTimeline = new SinglePeriodTimeline(this.p, this.q, this.r, c());
        if (this.o) {
            singlePeriodTimeline = new ForwardingTimeline(singlePeriodTimeline);
        }
        o(singlePeriodTimeline);
    }

    public final void t(long j, SeekMap seekMap, boolean z) {
        if (!this.s || !seekMap.d()) {
            this.s = !seekMap.d();
            if (j == -9223372036854775807L) {
                j = this.p;
            }
            boolean b = seekMap.b();
            if (!this.o && this.p == j && this.q == b && this.r == z) {
                return;
            }
            this.p = j;
            this.q = b;
            this.r = z;
            this.o = false;
            s();
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void d() {
    }
}
