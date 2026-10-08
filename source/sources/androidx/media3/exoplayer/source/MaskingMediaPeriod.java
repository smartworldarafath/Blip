package androidx.media3.exoplayer.source;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MaskingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    public final MediaSource.MediaPeriodId j;
    public final long k;
    public final Allocator l;
    public MediaSource m;
    public MediaPeriod n;
    public MediaPeriod.Callback o;
    public long p = -9223372036854775807L;
    public boolean q;

    public MaskingMediaPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        this.j = mediaPeriodId;
        this.l = allocator;
        this.k = j;
    }

    public final void a(MediaSource.MediaPeriodId mediaPeriodId) {
        long j = this.p;
        if (j == -9223372036854775807L) {
            j = this.k;
        }
        MediaSource mediaSource = this.m;
        mediaSource.getClass();
        MediaPeriod b = mediaSource.b(mediaPeriodId, this.l, j);
        this.n = b;
        if (this.q) {
            b.d();
        }
        if (this.o != null) {
            this.n.p(this, j);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final boolean b(LoadingInfo loadingInfo) {
        MediaPeriod mediaPeriod = this.n;
        if (mediaPeriod != null && mediaPeriod.b(loadingInfo)) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public final void c(MediaPeriod mediaPeriod) {
        MediaPeriod.Callback callback = this.o;
        String str = Util.a;
        callback.c(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void d() {
        this.q = true;
        MediaPeriod mediaPeriod = this.n;
        if (mediaPeriod != null) {
            mediaPeriod.d();
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long e() {
        MediaPeriod mediaPeriod = this.n;
        String str = Util.a;
        return mediaPeriod.e();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void g() {
        MediaPeriod mediaPeriod = this.n;
        if (mediaPeriod != null) {
            mediaPeriod.g();
            return;
        }
        MediaSource mediaSource = this.m;
        if (mediaSource != null) {
            mediaSource.d();
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long h(long j, SeekParameters seekParameters) {
        MediaPeriod mediaPeriod = this.n;
        String str = Util.a;
        return mediaPeriod.h(j, seekParameters);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long i(long j) {
        MediaPeriod mediaPeriod = this.n;
        String str = Util.a;
        return mediaPeriod.i(j);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void j(long j) {
        MediaPeriod mediaPeriod = this.n;
        String str = Util.a;
        mediaPeriod.j(j);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long k(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        long j2 = this.p;
        if (j2 != -9223372036854775807L && j == this.k) {
            j = j2;
        }
        this.p = -9223372036854775807L;
        MediaPeriod mediaPeriod = this.n;
        String str = Util.a;
        return mediaPeriod.k(exoTrackSelectionArr, zArr, sampleStreamArr, zArr2, j);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public final void l(SequenceableLoader sequenceableLoader) {
        MediaPeriod.Callback callback = this.o;
        String str = Util.a;
        callback.l(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final boolean m() {
        MediaPeriod mediaPeriod = this.n;
        if (mediaPeriod != null && mediaPeriod.m()) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long o() {
        MediaPeriod mediaPeriod = this.n;
        String str = Util.a;
        return mediaPeriod.o();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void p(MediaPeriod.Callback callback, long j) {
        this.o = callback;
        MediaPeriod mediaPeriod = this.n;
        if (mediaPeriod != null) {
            long j2 = this.p;
            if (j2 == -9223372036854775807L) {
                j2 = this.k;
            }
            mediaPeriod.p(this, j2);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final TrackGroupArray q() {
        MediaPeriod mediaPeriod = this.n;
        String str = Util.a;
        return mediaPeriod.q();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long t() {
        MediaPeriod mediaPeriod = this.n;
        String str = Util.a;
        return mediaPeriod.t();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void u(long j) {
        MediaPeriod mediaPeriod = this.n;
        String str = Util.a;
        mediaPeriod.u(j);
    }
}
