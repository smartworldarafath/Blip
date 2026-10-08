package androidx.media3.exoplayer.audio;

import android.media.AudioRouting;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import android.os.Build;
import android.os.Handler;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.audio.AudioTimestampPoller;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutput;
import androidx.media3.exoplayer.audio.AudioTrackPositionTracker;
import defpackage.u3;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioTrackAudioOutput {
    public static final Object q = new Object();
    public static ScheduledExecutorService r;
    public static int s;
    public final AudioTrack a;
    public final AudioOutputProvider.OutputConfig b;
    public final float c;
    public final CapabilityChangeListener d;
    public OnRoutingChangedListenerApi24 e;
    public final AudioTrackPositionTracker f;
    public final boolean g;
    public final int h;
    public final StreamEventCallbackV29 i;
    public final ListenerSet j = new ListenerSet(Thread.currentThread());
    public boolean k;
    public long l;
    public long m;
    public long n;
    public int o;
    public int p;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface CapabilityChangeListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class OnRoutingChangedListenerApi24 {
        public final AudioTrack a;
        public final CapabilityChangeListener b;
        public final Handler c;
        public b d;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [android.media.AudioRouting$OnRoutingChangedListener, androidx.media3.exoplayer.audio.b] */
        public OnRoutingChangedListenerApi24(AudioTrack audioTrack, CapabilityChangeListener capabilityChangeListener) {
            this.a = audioTrack;
            this.b = capabilityChangeListener;
            Handler k = Util.k(null);
            this.c = k;
            ?? r0 = new AudioRouting.OnRoutingChangedListener() { // from class: androidx.media3.exoplayer.audio.b
                @Override // android.media.AudioRouting.OnRoutingChangedListener
                public final void onRoutingChanged(AudioRouting audioRouting) {
                    AudioTrackAudioOutput.OnRoutingChangedListenerApi24 onRoutingChangedListenerApi24 = AudioTrackAudioOutput.OnRoutingChangedListenerApi24.this;
                    if (onRoutingChangedListenerApi24.d == null) {
                        return;
                    }
                    BackgroundExecutor.a().execute(new c(onRoutingChangedListenerApi24, audioRouting, 0));
                }
            };
            this.d = r0;
            audioTrack.addOnRoutingChangedListener((AudioRouting.OnRoutingChangedListener) r0, k);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class PositionTrackerListener implements AudioTrackPositionTracker.Listener {
        public PositionTrackerListener() {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class StreamEventCallbackV29 {
        public final Handler a;
        public final AudioTrack$StreamEventCallback b;

        public StreamEventCallbackV29() {
            Handler k = Util.k(null);
            this.a = k;
            AudioTrack$StreamEventCallback audioTrack$StreamEventCallback = new AudioTrack$StreamEventCallback() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput.StreamEventCallbackV29.1
                public final void onDataRequest(AudioTrack audioTrack, int i) {
                    AudioTrackAudioOutput.this.j.f(-1, new a(2));
                }

                public final void onPresentationEnded(AudioTrack audioTrack) {
                    AudioTrackAudioOutput.this.j.f(-1, new a(3));
                }

                public final void onTearDown(AudioTrack audioTrack) {
                    AudioTrackAudioOutput.this.j.f(-1, new a(2));
                }
            };
            this.b = audioTrack$StreamEventCallback;
            AudioTrackAudioOutput.this.a.registerStreamEventCallback(new u3(0, k), audioTrack$StreamEventCallback);
        }
    }

    public AudioTrackAudioOutput(AudioTrack audioTrack, AudioOutputProvider.OutputConfig outputConfig, CapabilityChangeListener capabilityChangeListener, float f, Clock clock) {
        StreamEventCallbackV29 streamEventCallbackV29;
        this.a = audioTrack;
        this.b = outputConfig;
        this.c = f;
        this.d = capabilityChangeListener;
        int i = outputConfig.a;
        boolean A = Util.A(i);
        this.g = A;
        if (A) {
            this.h = Util.n(i) * Integer.bitCount(outputConfig.c);
        } else {
            this.h = -1;
        }
        this.f = new AudioTrackPositionTracker(new PositionTrackerListener(), clock, audioTrack, outputConfig.a, this.h, outputConfig.f);
        if (capabilityChangeListener != null) {
            this.e = new OnRoutingChangedListenerApi24(audioTrack, capabilityChangeListener);
        }
        if (c()) {
            streamEventCallbackV29 = new StreamEventCallbackV29();
        } else {
            streamEventCallbackV29 = null;
        }
        this.i = streamEventCallbackV29;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x024f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long a() {
        long j;
        AudioTrackPositionTracker audioTrackPositionTracker;
        Clock clock;
        int i;
        AudioTrack audioTrack;
        long j2;
        boolean z;
        AudioTrackPositionTracker audioTrackPositionTracker2;
        long b;
        long j3;
        long H;
        int i2;
        String str;
        long j4;
        boolean z2;
        AudioTimestampPoller.AudioTimestampWrapper audioTimestampWrapper;
        AudioTimestampPoller.AudioTimestampWrapper audioTimestampWrapper2;
        boolean timestamp;
        boolean z3;
        long j5;
        AudioTimestamp audioTimestamp;
        AudioTimestampPoller.AudioTimestampWrapper audioTimestampWrapper3;
        int i3;
        int i4;
        Method method;
        long intValue;
        long b2 = b();
        AudioTrackPositionTracker audioTrackPositionTracker3 = this.f;
        Clock clock2 = audioTrackPositionTracker3.b;
        int i5 = audioTrackPositionTracker3.e;
        AudioTimestampPoller audioTimestampPoller = audioTrackPositionTracker3.h;
        AudioTrack audioTrack2 = audioTrackPositionTracker3.d;
        if (audioTrack2.getPlayState() == 3) {
            long[] jArr = audioTrackPositionTracker3.c;
            ((SystemClock) clock2).getClass();
            j2 = 1000;
            long nanoTime = System.nanoTime() / 1000;
            if (nanoTime - audioTrackPositionTracker3.l >= 30000) {
                long H2 = Util.H(i5, audioTrackPositionTracker3.a());
                if (H2 == 0) {
                    j = b2;
                    audioTrackPositionTracker = audioTrackPositionTracker3;
                    clock = clock2;
                    i = i5;
                    audioTrack = audioTrack2;
                } else {
                    int i6 = audioTrackPositionTracker3.s;
                    float f = audioTrackPositionTracker3.i;
                    if (f != 1.0f) {
                        H2 = Math.round(H2 / f);
                    }
                    jArr[i6] = H2 - nanoTime;
                    audioTrackPositionTracker3.s = (audioTrackPositionTracker3.s + 1) % 10;
                    int i7 = audioTrackPositionTracker3.t;
                    if (i7 < 10) {
                        audioTrackPositionTracker3.t = i7 + 1;
                    }
                    audioTrackPositionTracker3.l = nanoTime;
                    audioTrackPositionTracker3.k = 0L;
                    int i8 = 0;
                    while (true) {
                        int i9 = audioTrackPositionTracker3.t;
                        if (i8 >= i9) {
                            break;
                        }
                        audioTrackPositionTracker3.k = (jArr[i8] / i9) + audioTrackPositionTracker3.k;
                        i8++;
                        jArr = jArr;
                    }
                }
            }
            long j6 = audioTrackPositionTracker3.n;
            if (!audioTrackPositionTracker3.g || (method = audioTrackPositionTracker3.m) == null) {
                str = "AudioTrackAudioOutput";
                j4 = 500000;
            } else {
                j4 = 500000;
                if (nanoTime - audioTrackPositionTracker3.o < 500000) {
                    str = "AudioTrackAudioOutput";
                } else {
                    try {
                        Integer num = (Integer) method.invoke(audioTrack2, null);
                        String str2 = Util.a;
                        intValue = (num.intValue() * 1000) - audioTrackPositionTracker3.f;
                        audioTrackPositionTracker3.n = intValue;
                        str = "AudioTrackAudioOutput";
                    } catch (Exception unused) {
                        str = "AudioTrackAudioOutput";
                    }
                    try {
                        long max = Math.max(intValue, 0L);
                        audioTrackPositionTracker3.n = max;
                        if (max > 10000000) {
                            Log.f(str, "Ignoring impossibly large audio latency: " + max);
                            audioTrackPositionTracker3.n = 0L;
                        }
                    } catch (Exception unused2) {
                        audioTrackPositionTracker3.m = null;
                        audioTrackPositionTracker3.o = nanoTime;
                        if (j6 == audioTrackPositionTracker3.n) {
                        }
                        float f2 = audioTrackPositionTracker3.i;
                        long b3 = audioTrackPositionTracker3.b(nanoTime);
                        audioTimestampWrapper = audioTimestampPoller.a;
                        audioTimestampWrapper2 = audioTimestampPoller.a;
                        clock = clock2;
                        int i10 = audioTimestampPoller.b;
                        audioTrack = audioTrack2;
                        if (z2) {
                        }
                        audioTimestampPoller.g = nanoTime;
                        AudioTrack audioTrack3 = audioTimestampWrapper.a;
                        AudioTimestamp audioTimestamp2 = audioTimestampWrapper.b;
                        timestamp = audioTrack3.getTimestamp(audioTimestamp2);
                        if (!timestamp) {
                        }
                        if (!z3) {
                        }
                        audioTimestampWrapper3 = audioTimestampWrapper2;
                        i3 = 4;
                        i4 = audioTimestampPoller.d;
                        if (i4 != 0) {
                        }
                        ((SystemClock) clock).getClass();
                        long nanoTime2 = System.nanoTime() / j2;
                        if (audioTimestampPoller.d != 2) {
                        }
                        if (!z) {
                        }
                        j3 = b;
                        H = Util.H(i, j);
                        if (j3 < H) {
                        }
                    }
                    audioTrackPositionTracker3.o = nanoTime;
                }
            }
            if (j6 == audioTrackPositionTracker3.n) {
                z2 = true;
            } else {
                z2 = false;
            }
            float f22 = audioTrackPositionTracker3.i;
            long b32 = audioTrackPositionTracker3.b(nanoTime);
            audioTimestampWrapper = audioTimestampPoller.a;
            audioTimestampWrapper2 = audioTimestampPoller.a;
            clock = clock2;
            int i102 = audioTimestampPoller.b;
            audioTrack = audioTrack2;
            if (z2 && nanoTime - audioTimestampPoller.g < audioTimestampPoller.f) {
                j = b2;
                audioTrackPositionTracker = audioTrackPositionTracker3;
                i = i5;
            } else {
                audioTimestampPoller.g = nanoTime;
                AudioTrack audioTrack32 = audioTimestampWrapper.a;
                AudioTimestamp audioTimestamp22 = audioTimestampWrapper.b;
                timestamp = audioTrack32.getTimestamp(audioTimestamp22);
                if (!timestamp) {
                    j = b2;
                    long j7 = audioTimestamp22.framePosition;
                    j5 = b32;
                    long j8 = audioTimestampWrapper.d;
                    if (j8 > j7) {
                        z3 = timestamp;
                        if (audioTimestampWrapper.f) {
                            audioTimestampWrapper.g += j8;
                            audioTimestampWrapper.f = false;
                        } else {
                            audioTimestampWrapper.c++;
                        }
                    } else {
                        z3 = timestamp;
                    }
                    audioTimestampWrapper.d = j7;
                    audioTimestampWrapper.e = j7 + audioTimestampWrapper.g + (audioTimestampWrapper.c << 32);
                } else {
                    j = b2;
                    z3 = timestamp;
                    j5 = b32;
                }
                if (!z3) {
                    AudioTrackPositionTracker.Listener listener = audioTimestampPoller.c;
                    long j9 = audioTimestamp22.nanoTime / 1000;
                    audioTimestamp = audioTimestamp22;
                    long H3 = Util.H(i102, audioTimestampWrapper2.e) + Util.s(nanoTime - (audioTimestampWrapper2.b.nanoTime / 1000), f22);
                    if (Math.abs(j9 - nanoTime) > 5000000) {
                        long j10 = audioTimestampWrapper.e;
                        PositionTrackerListener positionTrackerListener = (PositionTrackerListener) listener;
                        positionTrackerListener.getClass();
                        i = i5;
                        audioTrackPositionTracker = audioTrackPositionTracker3;
                        String str3 = "Spurious audio timestamp (system clock mismatch): " + j10 + ", " + j9 + ", " + nanoTime + ", " + j5 + ", " + AudioTrackAudioOutput.this.b();
                        HashSet hashSet = MediaLibraryInfo.a;
                        Log.f(str, str3);
                        audioTimestampPoller.a(4);
                    } else {
                        audioTrackPositionTracker = audioTrackPositionTracker3;
                        i = i5;
                        long j11 = j5;
                        if (Math.abs(H3 - j11) > 5000000) {
                            long j12 = audioTimestampWrapper.e;
                            PositionTrackerListener positionTrackerListener2 = (PositionTrackerListener) listener;
                            positionTrackerListener2.getClass();
                            audioTimestampWrapper3 = audioTimestampWrapper2;
                            String str4 = "Spurious audio timestamp (frame position mismatch): " + j12 + ", " + j9 + ", " + nanoTime + ", " + j11 + ", " + AudioTrackAudioOutput.this.b();
                            HashSet hashSet2 = MediaLibraryInfo.a;
                            Log.f(str, str4);
                            i3 = 4;
                            audioTimestampPoller.a(4);
                        } else {
                            audioTimestampWrapper3 = audioTimestampWrapper2;
                            i3 = 4;
                            if (audioTimestampPoller.d == 4) {
                                audioTimestampPoller.a(0);
                            }
                        }
                        i4 = audioTimestampPoller.d;
                        if (i4 != 0) {
                            if (i4 != 1) {
                                if (i4 != 2) {
                                    if (i4 != 3) {
                                        if (i4 != i3) {
                                            io.sentry.d.d();
                                            return 0L;
                                        }
                                    } else if (z3) {
                                        audioTimestampPoller.a(0);
                                    }
                                } else if (!z3) {
                                    audioTimestampPoller.a(0);
                                }
                            } else if (z3) {
                                long j13 = audioTimestampWrapper.e;
                                long j14 = audioTimestampPoller.h;
                                if (j13 > j14) {
                                    AudioTimestampPoller.AudioTimestampWrapper audioTimestampWrapper4 = audioTimestampWrapper3;
                                    if (Math.abs((Util.s(nanoTime - (audioTimestampWrapper4.b.nanoTime / 1000), f22) + Util.H(i102, audioTimestampWrapper4.e)) - (Util.s(nanoTime - audioTimestampPoller.i, f22) + Util.H(i102, j14))) < 1000) {
                                        audioTimestampPoller.a(2);
                                    }
                                }
                                if (nanoTime - audioTimestampPoller.e > 2000000) {
                                    audioTimestampPoller.a(3);
                                } else {
                                    audioTimestampPoller.h = audioTimestampWrapper.e;
                                    audioTimestampPoller.i = audioTimestamp.nanoTime / 1000;
                                }
                            } else {
                                audioTimestampPoller.a(0);
                            }
                        } else {
                            AudioTimestamp audioTimestamp3 = audioTimestamp;
                            if (z3) {
                                long j15 = audioTimestamp3.nanoTime;
                                if (j15 / 1000 >= audioTimestampPoller.e) {
                                    audioTimestampPoller.h = audioTimestampWrapper.e;
                                    audioTimestampPoller.i = j15 / 1000;
                                    audioTimestampPoller.a(1);
                                }
                            } else if (nanoTime - audioTimestampPoller.e > j4) {
                                audioTimestampPoller.a(3);
                            }
                        }
                    }
                } else {
                    audioTrackPositionTracker = audioTrackPositionTracker3;
                    i = i5;
                    audioTimestamp = audioTimestamp22;
                }
                audioTimestampWrapper3 = audioTimestampWrapper2;
                i3 = 4;
                i4 = audioTimestampPoller.d;
                if (i4 != 0) {
                }
            }
        } else {
            j = b2;
            audioTrackPositionTracker = audioTrackPositionTracker3;
            clock = clock2;
            i = i5;
            audioTrack = audioTrack2;
            j2 = 1000;
        }
        ((SystemClock) clock).getClass();
        long nanoTime22 = System.nanoTime() / j2;
        if (audioTimestampPoller.d != 2) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            audioTrackPositionTracker2 = audioTrackPositionTracker;
            float f3 = audioTrackPositionTracker2.i;
            AudioTimestampPoller.AudioTimestampWrapper audioTimestampWrapper5 = audioTimestampPoller.a;
            b = Util.s(nanoTime22 - (audioTimestampWrapper5.b.nanoTime / j2), f3) + Util.H(audioTimestampPoller.b, audioTimestampWrapper5.e);
        } else {
            audioTrackPositionTracker2 = audioTrackPositionTracker;
            b = audioTrackPositionTracker2.b(nanoTime22);
        }
        j3 = b;
        H = Util.H(i, j);
        if (j3 < H) {
            audioTrackPositionTracker2.e();
            audioTimestampPoller.a(0);
            return H;
        }
        int playState = audioTrack.getPlayState();
        if (playState == 3) {
            if (z || ((i2 = audioTimestampPoller.d) != 0 && i2 != 1)) {
                audioTrackPositionTracker2.d(j3);
            }
            long j16 = audioTrackPositionTracker2.z;
            if (j16 != -9223372036854775807L) {
                long j17 = j3 - audioTrackPositionTracker2.y;
                long s2 = Util.s(nanoTime22 - j16, audioTrackPositionTracker2.i);
                long j18 = audioTrackPositionTracker2.y + s2;
                long abs = Math.abs(j18 - j3);
                if (j17 != 0 && abs < 1000000) {
                    long j19 = (s2 * 10) / 100;
                    j3 = Util.h(j3, j18 - j19, j18 + j19);
                }
            }
            audioTrackPositionTracker2.z = nanoTime22;
            audioTrackPositionTracker2.y = j3;
        } else if (playState == 1) {
            audioTrackPositionTracker2.d(j3);
        }
        return j3;
    }

    public final long b() {
        if (this.g) {
            long j = this.l;
            long j2 = this.h;
            String str = Util.a;
            return ((j + j2) - 1) / j2;
        }
        return this.m;
    }

    public final boolean c() {
        boolean isOffloadedPlayback;
        if (Build.VERSION.SDK_INT >= 29) {
            isOffloadedPlayback = this.a.isOffloadedPlayback();
            if (isOffloadedPlayback) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean d(int i, long j, ByteBuffer byteBuffer) {
        int write;
        CapabilityChangeListener capabilityChangeListener;
        AudioTrackAudioOutputProvider audioTrackAudioOutputProvider;
        AudioCapabilitiesReceiver audioCapabilitiesReceiver;
        Object[] objArr;
        AudioOutputProvider.OutputConfig outputConfig = this.b;
        boolean z = this.g;
        if (!z && this.o == 0) {
            this.o = DefaultAudioSink.i(outputConfig.a, byteBuffer);
        }
        ListenerSet listenerSet = this.j;
        listenerSet.getClass();
        Thread currentThread = Thread.currentThread();
        Thread thread = listenerSet.a;
        AudioTrack audioTrack = this.a;
        boolean z2 = false;
        boolean z3 = false;
        if (currentThread == thread) {
            b();
            int underrunCount = audioTrack.getUnderrunCount();
            if (underrunCount > this.p) {
                objArr = true;
            } else {
                objArr = false;
            }
            this.p = underrunCount;
            if (objArr != false) {
                listenerSet.f(-1, new a(z2 ? 1 : 0));
            }
        }
        int remaining = byteBuffer.remaining();
        if (outputConfig.d) {
            if (j == Long.MIN_VALUE) {
                j = this.n;
            } else {
                this.n = j;
            }
            write = audioTrack.write(byteBuffer, byteBuffer.remaining(), 1, j * 1000);
        } else {
            write = audioTrack.write(byteBuffer, byteBuffer.remaining(), 1);
        }
        if (write < 0) {
            if (write == -6 || write == -32) {
                z3 = true;
            }
            if (z3 && (capabilityChangeListener = this.d) != null && (audioCapabilitiesReceiver = (audioTrackAudioOutputProvider = AudioTrackAudioOutputProvider.this).i) != null) {
                AudioCapabilities audioCapabilities = AudioCapabilities.f;
                audioTrackAudioOutputProvider.h = audioCapabilities;
                audioCapabilitiesReceiver.b(audioCapabilities);
            }
            throw new AudioOutput$WriteException(write, z3);
        }
        if (write == remaining) {
            z2 = true;
        }
        if (z) {
            this.l += write;
            return z2;
        }
        if (z2) {
            this.m = (this.o * i) + this.m;
        }
        return z2;
    }
}
