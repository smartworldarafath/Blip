package androidx.media3.exoplayer;

import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.audio.MediaCodecAudioRenderer;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultMediaClock implements MediaClock {
    public final StandaloneMediaClock j;
    public final PlaybackParametersListener k;
    public Renderer l;
    public MediaClock m;
    public boolean n = true;
    public boolean o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface PlaybackParametersListener {
    }

    public DefaultMediaClock(PlaybackParametersListener playbackParametersListener, Clock clock) {
        this.k = playbackParametersListener;
        this.j = new StandaloneMediaClock(clock);
    }

    public final void a(Renderer renderer) {
        MediaClock mediaClock;
        MediaClock q = renderer.q();
        if (q != null && q != (mediaClock = this.m)) {
            if (mediaClock == null) {
                this.m = q;
                this.l = renderer;
                ((MediaCodecAudioRenderer) q).c(this.j.n);
                return;
            }
            throw new ExoPlaybackException(2, new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final void c(PlaybackParameters playbackParameters) {
        MediaClock mediaClock = this.m;
        if (mediaClock != null) {
            mediaClock.c(playbackParameters);
            playbackParameters = this.m.e();
        }
        this.j.c(playbackParameters);
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final PlaybackParameters e() {
        MediaClock mediaClock = this.m;
        if (mediaClock != null) {
            return mediaClock.e();
        }
        return this.j.n;
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final long k() {
        if (this.n) {
            return this.j.k();
        }
        MediaClock mediaClock = this.m;
        mediaClock.getClass();
        return mediaClock.k();
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final boolean m() {
        if (this.n) {
            this.j.getClass();
            return false;
        }
        MediaClock mediaClock = this.m;
        mediaClock.getClass();
        return mediaClock.m();
    }
}
