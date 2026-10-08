package androidx.media3.exoplayer.audio;

import android.media.AudioTrack;
import android.os.Build;
import android.os.Handler;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.audio.MediaCodecAudioRenderer;
import java.lang.reflect.Method;
import java.math.RoundingMode;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioTrackPositionTracker {
    public boolean A;
    public long B;
    public final Listener a;
    public final Clock b;
    public final long[] c;
    public final AudioTrack d;
    public final int e;
    public final long f;
    public final boolean g;
    public final AudioTimestampPoller h;
    public float i;
    public long j;
    public long k;
    public long l;
    public Method m;
    public long n;
    public long o;
    public long p;
    public long q;
    public long r;
    public int s;
    public int t;
    public long u;
    public long v;
    public long w;
    public long x;
    public long y;
    public long z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Listener {
    }

    public AudioTrackPositionTracker(Listener listener, Clock clock, AudioTrack audioTrack, int i, int i2, int i3) {
        long j;
        this.a = listener;
        this.b = clock;
        this.d = audioTrack;
        try {
            this.m = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.c = new long[10];
        this.z = -9223372036854775807L;
        this.y = -9223372036854775807L;
        this.h = new AudioTimestampPoller(audioTrack, listener);
        int sampleRate = audioTrack.getSampleRate();
        this.e = sampleRate;
        boolean A = Util.A(i);
        this.g = A;
        if (A) {
            j = Util.H(sampleRate, i3 / i2);
        } else {
            j = -9223372036854775807L;
        }
        this.f = j;
        this.q = 0L;
        this.r = 0L;
        this.A = false;
        this.B = 0L;
        this.u = -9223372036854775807L;
        this.v = -9223372036854775807L;
        this.o = 0L;
        this.n = 0L;
        this.i = 1.0f;
        this.j = -9223372036854775807L;
    }

    public final long a() {
        if (this.u != -9223372036854775807L) {
            return Math.min(this.x, c());
        }
        ((SystemClock) this.b).getClass();
        long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
        if (elapsedRealtime - this.p >= 5) {
            int playState = this.d.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = r4.getPlaybackHeadPosition() & 4294967295L;
                if (Build.VERSION.SDK_INT <= 29) {
                    if (playbackHeadPosition == 0 && this.q > 0 && playState == 3) {
                        if (this.v == -9223372036854775807L) {
                            this.v = elapsedRealtime;
                        }
                    } else {
                        this.v = -9223372036854775807L;
                    }
                }
                long j = this.q;
                if (j > playbackHeadPosition) {
                    if (this.A) {
                        this.B += j;
                        this.A = false;
                    } else {
                        this.r++;
                    }
                }
                this.q = playbackHeadPosition;
            }
            this.p = elapsedRealtime;
        }
        return this.q + this.B + (this.r << 32);
    }

    public final long b(long j) {
        long s;
        int i = this.t;
        int i2 = this.e;
        if (i == 0) {
            if (this.u != -9223372036854775807L) {
                s = Util.H(i2, c());
            } else {
                s = Util.H(i2, a());
            }
        } else {
            s = Util.s(j + this.k, this.i);
        }
        long max = Math.max(0L, s - this.n);
        if (this.u != -9223372036854775807L) {
            return Math.min(Util.H(i2, this.x), max);
        }
        return max;
    }

    public final long c() {
        if (this.d.getPlayState() == 2) {
            return this.w;
        }
        ((SystemClock) this.b).getClass();
        return this.w + Util.J(Util.s(Util.D(android.os.SystemClock.elapsedRealtime()) - this.u, this.i), this.e, 1000000L, RoundingMode.UP);
    }

    public final void d(long j) {
        long j2 = this.j;
        if (j2 != -9223372036854775807L && j >= j2) {
            long j3 = j - j2;
            float f = this.i;
            String str = Util.a;
            if (f != 1.0f) {
                j3 = Math.round(j3 / f);
            }
            ((SystemClock) this.b).getClass();
            final long currentTimeMillis = System.currentTimeMillis() - Util.N(j3);
            this.j = -9223372036854775807L;
            ListenerSet listenerSet = AudioTrackAudioOutput.this.j;
            listenerSet.getClass();
            if (Thread.currentThread() == listenerSet.a) {
                listenerSet.f(-1, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.audio.d
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void b(Object obj) {
                        AudioSink$Listener audioSink$Listener;
                        DefaultAudioSink.AudioOutputListener audioOutputListener = (DefaultAudioSink.AudioOutputListener) ((AudioOutput$Listener) obj);
                        DefaultAudioSink defaultAudioSink = audioOutputListener.a;
                        if (audioOutputListener == defaultAudioSink.j && (audioSink$Listener = defaultAudioSink.n) != null) {
                            MediaCodecAudioRenderer mediaCodecAudioRenderer = ((MediaCodecAudioRenderer.AudioSinkListener) audioSink$Listener).a;
                            mediaCodecAudioRenderer.c1 = true;
                            final AudioRendererEventListener.EventDispatcher eventDispatcher = mediaCodecAudioRenderer.R0;
                            Handler handler = eventDispatcher.a;
                            if (handler != null) {
                                final long j4 = currentTimeMillis;
                                handler.post(new Runnable() { // from class: p3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AudioRendererEventListener audioRendererEventListener = AudioRendererEventListener.EventDispatcher.this.b;
                                        String str2 = Util.a;
                                        audioRendererEventListener.x(j4);
                                    }
                                });
                            }
                        }
                    }
                });
            }
        }
    }

    public final void e() {
        this.k = 0L;
        this.t = 0;
        this.s = 0;
        this.l = 0L;
        this.y = -9223372036854775807L;
        this.z = -9223372036854775807L;
    }
}
