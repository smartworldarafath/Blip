package androidx.media3.exoplayer;

import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StandaloneMediaClock implements MediaClock {
    public final Clock j;
    public boolean k;
    public long l;
    public long m;
    public PlaybackParameters n = PlaybackParameters.d;

    public StandaloneMediaClock(Clock clock) {
        this.j = clock;
    }

    public final void a(long j) {
        this.l = j;
        if (this.k) {
            ((SystemClock) this.j).getClass();
            this.m = android.os.SystemClock.elapsedRealtime();
        }
    }

    public final void b() {
        if (!this.k) {
            ((SystemClock) this.j).getClass();
            this.m = android.os.SystemClock.elapsedRealtime();
            this.k = true;
        }
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final void c(PlaybackParameters playbackParameters) {
        if (this.k) {
            a(k());
        }
        this.n = playbackParameters;
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final PlaybackParameters e() {
        return this.n;
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final long k() {
        long j;
        long j2 = this.l;
        if (this.k) {
            ((SystemClock) this.j).getClass();
            long elapsedRealtime = android.os.SystemClock.elapsedRealtime() - this.m;
            if (this.n.a == 1.0f) {
                j = Util.D(elapsedRealtime);
            } else {
                j = elapsedRealtime * r6.c;
            }
            return j + j2;
        }
        return j2;
    }
}
