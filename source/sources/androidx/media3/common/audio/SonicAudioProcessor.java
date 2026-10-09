package androidx.media3.common.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.Sonic;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SonicAudioProcessor implements AudioProcessor {
    public int b;
    public float c;
    public float d;
    public AudioProcessor.AudioFormat e;
    public AudioProcessor.AudioFormat f;
    public AudioProcessor.AudioFormat g;
    public AudioProcessor.AudioFormat h;
    public boolean i;
    public Sonic j;
    public ByteBuffer k;
    public ByteBuffer l;
    public long m;
    public long n;
    public boolean o;

    public final long a(long j) {
        if (this.n >= 1024) {
            long j2 = this.m;
            this.j.getClass();
            long o = j2 - ((r2.j * r2.b) * r2.i.o());
            int i = this.h.a;
            int i2 = this.g.a;
            long j3 = this.n;
            if (i == i2) {
                return Util.J(j, o, j3, RoundingMode.DOWN);
            }
            return Util.J(j, o * i, j3 * i2, RoundingMode.DOWN);
        }
        return (long) (this.c * j);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final boolean b() {
        boolean z;
        if (this.o) {
            Sonic sonic = this.j;
            if (sonic != null) {
                if (sonic.k >= 0) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.n(z);
                if (sonic.k * sonic.b * sonic.i.o() == 0) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final boolean h() {
        if (this.f.a != -1) {
            if (Math.abs(this.c - 1.0f) >= 1.0E-4f || Math.abs(this.d - 1.0f) >= 1.0E-4f || this.f.a != this.e.a) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final ByteBuffer i() {
        boolean z;
        Sonic sonic = this.j;
        if (sonic != null) {
            Sonic.SonicImpl sonicImpl = sonic.i;
            int i = sonic.b;
            boolean z2 = true;
            if (sonic.k >= 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
            int o = sonic.k * i * sonicImpl.o();
            if (o > 0) {
                if (this.k.capacity() < o) {
                    this.k = ByteBuffer.allocateDirect(o).order(ByteOrder.nativeOrder());
                } else {
                    this.k.clear();
                }
                ByteBuffer byteBuffer = this.k;
                if (sonic.k < 0) {
                    z2 = false;
                }
                Preconditions.n(z2);
                int min = Math.min(byteBuffer.remaining() / (sonicImpl.o() * i), sonic.k);
                sonicImpl.b(min, byteBuffer);
                sonic.k -= min;
                System.arraycopy(sonicImpl.i(), min * i, sonicImpl.i(), 0, sonic.k * i);
                this.k.flip();
                this.n += o;
                this.l = this.k;
            }
        }
        ByteBuffer byteBuffer2 = this.l;
        this.l = AudioProcessor.a;
        return byteBuffer2;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void j(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        Sonic sonic = this.j;
        sonic.getClass();
        this.m += byteBuffer.remaining();
        int remaining = byteBuffer.remaining();
        int i = sonic.b;
        Sonic.SonicImpl sonicImpl = sonic.i;
        int o = remaining / (i * sonicImpl.o());
        sonicImpl.p(o);
        sonicImpl.a(remaining, byteBuffer);
        sonic.j += o;
        sonic.b();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void k(AudioProcessor.StreamMetadata streamMetadata) {
        boolean z;
        if (h()) {
            AudioProcessor.AudioFormat audioFormat = this.e;
            this.g = audioFormat;
            AudioProcessor.AudioFormat audioFormat2 = this.f;
            this.h = audioFormat2;
            if (this.i) {
                int i = audioFormat.a;
                int i2 = audioFormat.b;
                float f = this.c;
                float f2 = this.d;
                int i3 = audioFormat2.a;
                if (audioFormat.c == 4) {
                    z = true;
                } else {
                    z = false;
                }
                this.j = new Sonic(i, i2, f, f2, i3, z);
            } else {
                Sonic sonic = this.j;
                if (sonic != null) {
                    sonic.j = 0;
                    sonic.k = 0;
                    sonic.l = 0;
                    sonic.m = 0;
                    sonic.n = 0;
                    sonic.o = 0;
                    sonic.p = 0;
                    sonic.q = 0.0d;
                    sonic.i.flush();
                }
            }
        }
        this.l = AudioProcessor.a;
        this.m = 0L;
        this.n = 0L;
        this.o = false;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void l() {
        Sonic sonic = this.j;
        if (sonic != null) {
            int i = sonic.j;
            float f = sonic.c;
            float f2 = sonic.d;
            double d = f / f2;
            int i2 = sonic.k + ((int) (((((((i - r6) / d) + sonic.o) + sonic.q) + sonic.l) / (sonic.e * f2)) + 0.5d));
            sonic.q = 0.0d;
            Sonic.SonicImpl sonicImpl = sonic.i;
            int i3 = sonic.h * 2;
            sonicImpl.p(i3 + i);
            sonicImpl.d(i * sonic.b, i3);
            sonic.j = i3 + sonic.j;
            sonic.b();
            if (sonic.k > i2) {
                sonic.k = Math.max(i2, 0);
            }
            sonic.j = 0;
            sonic.o = 0;
            sonic.l = 0;
        }
        this.o = true;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final AudioProcessor.AudioFormat m(AudioProcessor.AudioFormat audioFormat) {
        int i = audioFormat.c;
        if (i != 2 && i != 4) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        int i2 = this.b;
        if (i2 == -1) {
            i2 = audioFormat.a;
        }
        this.e = audioFormat;
        AudioProcessor.AudioFormat audioFormat2 = new AudioProcessor.AudioFormat(i2, audioFormat.b, i);
        this.f = audioFormat2;
        this.i = true;
        return audioFormat2;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final long n(long j) {
        if (this.n >= 1024) {
            long j2 = this.m;
            this.j.getClass();
            long o = j2 - ((r2.j * r2.b) * r2.i.o());
            int i = this.h.a;
            int i2 = this.g.a;
            long j3 = this.n;
            if (i == i2) {
                return Util.J(j, j3, o, RoundingMode.DOWN);
            }
            return Util.J(j, j3 * i2, o * i, RoundingMode.DOWN);
        }
        return (long) (j / this.c);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void reset() {
        this.c = 1.0f;
        this.d = 1.0f;
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.e;
        this.e = audioFormat;
        this.f = audioFormat;
        this.g = audioFormat;
        this.h = audioFormat;
        ByteBuffer byteBuffer = AudioProcessor.a;
        this.k = byteBuffer;
        this.l = byteBuffer;
        this.b = -1;
        this.i = false;
        this.j = null;
        this.m = 0L;
        this.n = 0L;
        this.o = false;
    }
}
