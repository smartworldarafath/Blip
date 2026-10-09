package androidx.media3.exoplayer;

import androidx.media3.common.Format;
import androidx.media3.exoplayer.metadata.MetadataRenderer;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.text.TextRenderer;
import androidx.media3.exoplayer.trackselection.BaseTrackSelection;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class RendererHolder {
    public final Renderer a;
    public final int b;
    public final Renderer c;
    public int d = 0;
    public boolean e = false;
    public boolean f = false;

    public RendererHolder(Renderer renderer, Renderer renderer2, int i) {
        this.a = renderer;
        this.b = i;
        this.c = renderer2;
    }

    public static void b(Renderer renderer) {
        boolean z;
        if (((BaseRenderer) renderer).q == 2) {
            BaseRenderer baseRenderer = (BaseRenderer) renderer;
            if (baseRenderer.q == 2) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
            baseRenderer.q = 1;
            baseRenderer.z();
        }
    }

    public static Format[] d(ExoTrackSelection exoTrackSelection) {
        int i;
        if (exoTrackSelection != null) {
            i = ((BaseTrackSelection) exoTrackSelection).c.length;
        } else {
            i = 0;
        }
        Format[] formatArr = new Format[i];
        for (int i2 = 0; i2 < i; i2++) {
            exoTrackSelection.getClass();
            formatArr[i2] = ((BaseTrackSelection) exoTrackSelection).d[i2];
        }
        return formatArr;
    }

    public static boolean m(Renderer renderer) {
        if (((BaseRenderer) renderer).q != 0) {
            return true;
        }
        return false;
    }

    public static void q(Renderer renderer, long j) {
        ((BaseRenderer) renderer).w = true;
        if (renderer instanceof TextRenderer) {
            TextRenderer textRenderer = (TextRenderer) renderer;
            Preconditions.n(textRenderer.w);
            textRenderer.U = j;
        }
    }

    public final void a(Renderer renderer, DefaultMediaClock defaultMediaClock) {
        boolean z;
        boolean z2 = true;
        if (this.a != renderer && this.c != renderer) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.n(z);
        if (!m(renderer)) {
            return;
        }
        if (renderer == defaultMediaClock.l) {
            defaultMediaClock.m = null;
            defaultMediaClock.l = null;
            defaultMediaClock.n = true;
        }
        b(renderer);
        BaseRenderer baseRenderer = (BaseRenderer) renderer;
        if (baseRenderer.q != 1) {
            z2 = false;
        }
        Preconditions.n(z2);
        baseRenderer.l.a();
        baseRenderer.q = 0;
        baseRenderer.r = null;
        baseRenderer.s = null;
        baseRenderer.w = false;
        baseRenderer.t();
        baseRenderer.z = null;
        baseRenderer.A = -9223372036854775807L;
    }

    public final int c() {
        int i;
        boolean m = m(this.a);
        Renderer renderer = this.c;
        if (renderer != null && m(renderer)) {
            i = 1;
        } else {
            i = 0;
        }
        return (m ? 1 : 0) + i;
    }

    public final Renderer e(MediaPeriodHolder mediaPeriodHolder) {
        SampleStream sampleStream;
        if (mediaPeriodHolder != null && (sampleStream = mediaPeriodHolder.c[this.b]) != null) {
            Renderer renderer = this.a;
            if (((BaseRenderer) renderer).r == sampleStream) {
                return renderer;
            }
            Renderer renderer2 = this.c;
            if (renderer2 != null && ((BaseRenderer) renderer2).r == sampleStream) {
                return renderer2;
            }
        }
        return null;
    }

    public final int f() {
        return ((BaseRenderer) this.a).k;
    }

    public final boolean g(MediaPeriodHolder mediaPeriodHolder, Renderer renderer) {
        if (renderer != null) {
            SampleStream[] sampleStreamArr = mediaPeriodHolder.c;
            int i = this.b;
            SampleStream sampleStream = sampleStreamArr[i];
            BaseRenderer baseRenderer = (BaseRenderer) renderer;
            SampleStream sampleStream2 = baseRenderer.r;
            if (sampleStream2 != null) {
                if (sampleStream2 == sampleStream) {
                    if (sampleStream != null && !baseRenderer.s()) {
                        MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodHolder.m;
                        if (mediaPeriodHolder.g.f && mediaPeriodHolder2 != null && mediaPeriodHolder2.e && ((renderer instanceof TextRenderer) || (renderer instanceof MetadataRenderer) || baseRenderer.v >= mediaPeriodHolder2.e())) {
                            return true;
                        }
                    } else {
                        return true;
                    }
                }
                for (MediaPeriodHolder mediaPeriodHolder3 = mediaPeriodHolder.m; mediaPeriodHolder3 != null; mediaPeriodHolder3 = mediaPeriodHolder3.m) {
                    if (Objects.equals(mediaPeriodHolder3.c[i], baseRenderer.r)) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        }
        return true;
    }

    public final boolean h() {
        boolean z;
        Renderer renderer = this.a;
        if (m(renderer)) {
            z = renderer.b();
        } else {
            z = true;
        }
        Renderer renderer2 = this.c;
        if (renderer2 != null && m(renderer2)) {
            return renderer2.b() & z;
        }
        return z;
    }

    public final boolean i() {
        int i = this.d;
        if (i != 2 && i != 4 && i != 3) {
            return false;
        }
        return true;
    }

    public final boolean j(MediaPeriodHolder mediaPeriodHolder) {
        boolean z;
        boolean z2;
        int i = this.d;
        if ((i == 2 || i == 4) && e(mediaPeriodHolder) == this.a) {
            z = true;
        } else {
            z = false;
        }
        if (this.d == 3 && e(mediaPeriodHolder) == this.c) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z && !z2) {
            return false;
        }
        return true;
    }

    public final boolean k(MediaPeriodHolder mediaPeriodHolder) {
        if (e(mediaPeriodHolder) != null) {
            return true;
        }
        return false;
    }

    public final boolean l() {
        int i = this.d;
        if (i != 0 && i != 2 && i != 4) {
            Renderer renderer = this.c;
            renderer.getClass();
            return m(renderer);
        }
        return m(this.a);
    }

    public final void n(boolean z) {
        boolean z2 = true;
        if (z) {
            if (this.e) {
                BaseRenderer baseRenderer = (BaseRenderer) this.a;
                if (baseRenderer.q != 0) {
                    z2 = false;
                }
                Preconditions.n(z2);
                baseRenderer.l.a();
                baseRenderer.x();
                this.e = false;
                return;
            }
            return;
        }
        if (this.f) {
            Renderer renderer = this.c;
            renderer.getClass();
            BaseRenderer baseRenderer2 = (BaseRenderer) renderer;
            if (baseRenderer2.q != 0) {
                z2 = false;
            }
            Preconditions.n(z2);
            baseRenderer2.l.a();
            baseRenderer2.x();
            this.f = false;
        }
    }

    public final int o(Renderer renderer, MediaPeriodHolder mediaPeriodHolder, TrackSelectorResult trackSelectorResult, DefaultMediaClock defaultMediaClock) {
        Renderer renderer2;
        boolean z;
        int i;
        SampleStream[] sampleStreamArr = mediaPeriodHolder.c;
        if (renderer == null || !m(renderer) || (renderer == (renderer2 = this.a) && ((i = this.d) == 2 || i == 4))) {
            return 1;
        }
        if (renderer == this.c && this.d == 3) {
            return 1;
        }
        BaseRenderer baseRenderer = (BaseRenderer) renderer;
        SampleStream sampleStream = baseRenderer.r;
        int i2 = this.b;
        boolean z2 = false;
        if (sampleStream != sampleStreamArr[i2]) {
            z = true;
        } else {
            z = false;
        }
        boolean b = trackSelectorResult.b(i2);
        if (!b || z) {
            if (!baseRenderer.w) {
                Format[] d = d(trackSelectorResult.c[i2]);
                SampleStream sampleStream2 = sampleStreamArr[i2];
                sampleStream2.getClass();
                baseRenderer.D(d, sampleStream2, mediaPeriodHolder.e(), mediaPeriodHolder.p, mediaPeriodHolder.g.a);
                return 3;
            }
            if (!renderer.b()) {
                return 0;
            }
            a(renderer, defaultMediaClock);
            if (!b || i()) {
                if (renderer == renderer2) {
                    z2 = true;
                }
                n(z2);
                return 1;
            }
        }
        return 1;
    }

    public final void p() {
        if (!m(this.a)) {
            n(true);
        }
        Renderer renderer = this.c;
        if (renderer != null && !m(renderer)) {
            n(false);
        }
    }

    public final void r() {
        BaseRenderer baseRenderer;
        int i;
        BaseRenderer baseRenderer2 = (BaseRenderer) this.a;
        int i2 = baseRenderer2.q;
        boolean z = false;
        if (i2 == 1 && this.d != 4) {
            if (i2 == 1) {
                z = true;
            }
            Preconditions.n(z);
            baseRenderer2.q = 2;
            baseRenderer2.y();
            return;
        }
        Renderer renderer = this.c;
        if (renderer != null && (i = (baseRenderer = (BaseRenderer) renderer).q) == 1 && this.d != 3) {
            if (i == 1) {
                z = true;
            }
            Preconditions.n(z);
            baseRenderer.q = 2;
            baseRenderer.y();
        }
    }
}
