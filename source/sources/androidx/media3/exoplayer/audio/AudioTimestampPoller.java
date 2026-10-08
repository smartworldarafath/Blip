package androidx.media3.exoplayer.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.media3.exoplayer.audio.AudioTrackPositionTracker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AudioTimestampPoller {
    public final AudioTimestampWrapper a;
    public final int b;
    public final AudioTrackPositionTracker.Listener c;
    public int d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AudioTimestampWrapper {
        public final AudioTrack a;
        public final AudioTimestamp b = new AudioTimestamp();
        public long c;
        public long d;
        public long e;
        public boolean f;
        public long g;

        public AudioTimestampWrapper(AudioTrack audioTrack) {
            this.a = audioTrack;
        }
    }

    public AudioTimestampPoller(AudioTrack audioTrack, AudioTrackPositionTracker.Listener listener) {
        this.a = new AudioTimestampWrapper(audioTrack);
        this.b = audioTrack.getSampleRate();
        this.c = listener;
        a(0);
    }

    public final void a(int i) {
        this.d = i;
        if (i != 0) {
            if (i != 1) {
                if (i != 2 && i != 3) {
                    if (i == 4) {
                        this.f = 500000L;
                        return;
                    } else {
                        io.sentry.d.d();
                        return;
                    }
                }
                this.f = 10000000L;
                return;
            }
            this.f = 10000L;
            return;
        }
        this.g = 0L;
        this.h = -1L;
        this.i = -9223372036854775807L;
        this.e = System.nanoTime() / 1000;
        this.f = 10000L;
    }
}
