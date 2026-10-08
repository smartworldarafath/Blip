package androidx.media3.exoplayer;

import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BaseRenderer implements Renderer, RendererCapabilities {
    public DefaultTrackSelector B;
    public final int k;
    public RendererConfiguration m;
    public int n;
    public PlayerId o;
    public Clock p;
    public int q;
    public SampleStream r;
    public Format[] s;
    public long t;
    public long u;
    public boolean w;
    public boolean x;
    public MediaSource.MediaPeriodId z;
    public final Object j = new Object();
    public final FormatHolder l = new Object();
    public long v = Long.MIN_VALUE;
    public Timeline y = Timeline.a;
    public long A = -9223372036854775807L;

    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.media3.exoplayer.FormatHolder, java.lang.Object] */
    public BaseRenderer(int i) {
        this.k = i;
    }

    public final int C(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
        boolean z;
        if ((i & 1) != 0) {
            z = true;
        } else {
            z = false;
        }
        SampleStream sampleStream = this.r;
        sampleStream.getClass();
        int e = sampleStream.e(formatHolder, decoderInputBuffer, i);
        if (e == -4) {
            if (decoderInputBuffer.e(4)) {
                if (!z) {
                    this.v = Long.MIN_VALUE;
                }
                if (this.w) {
                    return -4;
                }
                return -3;
            }
            long j = decoderInputBuffer.n + this.t;
            decoderInputBuffer.n = j;
            if (!z) {
                this.v = Math.max(this.v, j);
                return e;
            }
        } else if (e == -5) {
            Format format = formatHolder.b;
            format.getClass();
            long j2 = format.u;
            if (j2 != Long.MAX_VALUE) {
                Format.Builder a = format.a();
                a.t = j2 + this.t;
                formatHolder.b = new Format(a);
            }
        }
        return e;
    }

    public final void D(Format[] formatArr, SampleStream sampleStream, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId) {
        Preconditions.n(!this.w);
        this.r = sampleStream;
        this.z = mediaPeriodId;
        F();
        if (this.v == Long.MIN_VALUE) {
            this.v = j;
        }
        this.s = formatArr;
        this.t = j2;
        A(formatArr, j, j2, mediaPeriodId);
    }

    public final void E(long j, boolean z, boolean z2) {
        this.w = false;
        this.u = j;
        this.v = j;
        if (!z2) {
            SampleStream sampleStream = this.r;
            sampleStream.getClass();
            if (sampleStream.d(j - this.t) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        v(j, z, z2);
    }

    public final void F() {
        MediaSource.MediaPeriodId mediaPeriodId;
        if (!this.y.p() && (mediaPeriodId = this.z) != null) {
            int b = this.y.b(mediaPeriodId.a);
            if (b == -1) {
                this.A = -9223372036854775807L;
                return;
            }
            Timeline.Period f = this.y.f(b, new Timeline.Period(), false);
            this.A = f.d;
            int i = mediaPeriodId.b;
            if (i != -1) {
                this.A = f.g.a(i).f[mediaPeriodId.c];
                return;
            }
            int i2 = mediaPeriodId.e;
            if (i2 != -1) {
                f.g.a(i2).getClass();
                this.A = 0L;
                return;
            }
            return;
        }
        this.A = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean b() {
        return s();
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int n() {
        return 0;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public MediaClock q() {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ExoPlaybackException r(Exception exc, Format format, boolean z, int i) {
        int i2;
        int i3;
        if (format != null && !this.x) {
            this.x = true;
            try {
                i2 = f(format) & 7;
            } catch (ExoPlaybackException unused) {
            } finally {
                this.x = false;
            }
            String name = getName();
            int i4 = this.n;
            MediaSource.MediaPeriodId mediaPeriodId = this.z;
            if (format != null) {
                i3 = 4;
            } else {
                i3 = i2;
            }
            return new ExoPlaybackException(1, exc, i, name, i4, format, i3, mediaPeriodId, z);
        }
        i2 = 4;
        String name2 = getName();
        int i42 = this.n;
        MediaSource.MediaPeriodId mediaPeriodId2 = this.z;
        if (format != null) {
        }
        return new ExoPlaybackException(1, exc, i, name2, i42, format, i3, mediaPeriodId2, z);
    }

    public final boolean s() {
        if (this.v == Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    public abstract void t();

    public abstract void v(long j, boolean z, boolean z2);

    public void B() {
    }

    public void w() {
    }

    public void x() {
    }

    public void y() {
    }

    public void z() {
    }

    @Override // androidx.media3.exoplayer.PlayerMessage.Target
    public void o(int i, Object obj) {
    }

    public void u(boolean z, boolean z2) {
    }

    public void A(Format[] formatArr, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId) {
    }
}
