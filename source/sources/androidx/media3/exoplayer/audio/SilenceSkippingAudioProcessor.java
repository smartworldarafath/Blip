package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.BaseAudioProcessor;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import defpackage.u2;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SilenceSkippingAudioProcessor extends BaseAudioProcessor {
    public int n;
    public boolean o;
    public int p;
    public long q;
    public byte[] s;
    public byte[] v;
    public int r = 0;
    public int t = 0;
    public int u = 0;
    public final long l = 100000;
    public final float i = 0.2f;
    public final long m = 2000000;
    public final int k = 10;
    public final short j = 1024;

    public SilenceSkippingAudioProcessor() {
        byte[] bArr = Util.b;
        this.s = bArr;
        this.v = bArr;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final AudioProcessor.AudioFormat a(AudioProcessor.AudioFormat audioFormat) {
        if (audioFormat.c == 2) {
            if (audioFormat.a == -1) {
                return AudioProcessor.AudioFormat.e;
            }
            return audioFormat;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void c() {
        if (h()) {
            int i = this.b.b * 2;
            this.n = i;
            int i2 = ((((int) ((this.l * r0.a) / 1000000)) / 2) / i) * i * 2;
            if (this.s.length != i2) {
                this.s = new byte[i2];
                this.v = new byte[i2];
            }
        }
        this.p = 0;
        this.q = 0L;
        this.r = 0;
        this.t = 0;
        this.u = 0;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void d() {
        if (this.u > 0) {
            o(true);
            this.r = 0;
        }
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void e() {
        this.o = false;
        byte[] bArr = Util.b;
        this.s = bArr;
        this.v = bArr;
    }

    public final int g(int i) {
        boolean z;
        int length = ((((int) ((this.m * this.b.a) / 1000000)) - this.r) * this.n) - (this.s.length / 2);
        if (length >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        int min = (int) Math.min((i * this.i) + 0.5f, length);
        int i2 = this.n;
        return (min / i2) * i2;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.common.audio.AudioProcessor
    public final boolean h() {
        if (super.h() && this.o) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void j(ByteBuffer byteBuffer) {
        boolean z;
        int limit;
        boolean z2;
        boolean z3;
        int position;
        while (byteBuffer.hasRemaining() && !this.g.hasRemaining()) {
            int i = this.p;
            short s = this.j;
            boolean z4 = true;
            if (i != 0) {
                if (i == 1) {
                    if (this.t < this.s.length) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.n(z);
                    int limit2 = byteBuffer.limit();
                    int position2 = byteBuffer.position() + 1;
                    while (true) {
                        if (position2 < byteBuffer.limit()) {
                            if (Math.abs((byteBuffer.get(position2) << 8) | (byteBuffer.get(position2 - 1) & 255)) > s) {
                                int i2 = this.n;
                                limit = (position2 / i2) * i2;
                                break;
                            }
                            position2 += 2;
                        } else {
                            limit = byteBuffer.limit();
                            break;
                        }
                    }
                    int position3 = limit - byteBuffer.position();
                    int i3 = this.t;
                    int i4 = this.u;
                    int i5 = i3 + i4;
                    byte[] bArr = this.s;
                    if (i5 < bArr.length) {
                        i3 = bArr.length;
                    } else {
                        i5 = i4 - (bArr.length - i3);
                    }
                    int i6 = i3 - i5;
                    if (limit < limit2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    int min = Math.min(position3, i6);
                    byteBuffer.limit(byteBuffer.position() + min);
                    byteBuffer.get(this.s, i5, min);
                    int i7 = this.u + min;
                    this.u = i7;
                    if (i7 <= this.s.length) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    Preconditions.n(z3);
                    if (!z2 || position3 >= i6) {
                        z4 = false;
                    }
                    o(z4);
                    if (z4) {
                        this.p = 0;
                        this.r = 0;
                    }
                    byteBuffer.limit(limit2);
                } else {
                    io.sentry.d.d();
                    return;
                }
            } else {
                int limit3 = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit3, byteBuffer.position() + this.s.length));
                int limit4 = byteBuffer.limit() - 1;
                while (true) {
                    if (limit4 >= byteBuffer.position()) {
                        if (Math.abs((byteBuffer.get(limit4) << 8) | (byteBuffer.get(limit4 - 1) & 255)) > s) {
                            int i8 = this.n;
                            position = ((limit4 / i8) * i8) + i8;
                            break;
                        }
                        limit4 -= 2;
                    } else {
                        position = byteBuffer.position();
                        break;
                    }
                }
                if (position == byteBuffer.position()) {
                    this.p = 1;
                } else {
                    byteBuffer.limit(Math.min(position, byteBuffer.capacity()));
                    f(byteBuffer.remaining()).put(byteBuffer).flip();
                }
                byteBuffer.limit(limit3);
            }
        }
    }

    public final void o(boolean z) {
        int length;
        int g;
        boolean z2;
        boolean z3;
        int i = this.u;
        byte[] bArr = this.s;
        if (i != bArr.length && !z) {
            return;
        }
        boolean z4 = false;
        if (this.r == 0) {
            if (z) {
                p(i, 3);
                length = i;
            } else {
                if (i >= bArr.length / 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                Preconditions.n(z3);
                length = this.s.length / 2;
                p(length, 0);
            }
            g = length;
        } else if (z) {
            int length2 = i - (bArr.length / 2);
            int length3 = (bArr.length / 2) + length2;
            int g2 = g(length2) + (this.s.length / 2);
            p(g2, 2);
            g = g2;
            length = length3;
        } else {
            length = i - (bArr.length / 2);
            g = g(length);
            p(g, 1);
        }
        if (length % this.n == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            if (i >= g) {
                z4 = true;
            }
            Preconditions.n(z4);
            this.u -= length;
            int i2 = this.t + length;
            this.t = i2;
            this.t = i2 % this.s.length;
            this.r = (g / this.n) + this.r;
            this.q += (length - g) / r2;
            return;
        }
        u2.l(Strings.a("bytesConsumed is not aligned to frame size: %s", Integer.valueOf(length)));
    }

    public final void p(int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        if (i == 0) {
            return;
        }
        boolean z4 = true;
        if (this.u >= i) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        int i3 = this.t;
        if (i2 == 2) {
            int i4 = this.u;
            int i5 = i3 + i4;
            byte[] bArr = this.s;
            if (i5 <= bArr.length) {
                System.arraycopy(bArr, i5 - i, this.v, 0, i);
            } else {
                int length = i4 - (bArr.length - i3);
                byte[] bArr2 = this.v;
                if (length >= i) {
                    System.arraycopy(bArr, length - i, bArr2, 0, i);
                } else {
                    int i6 = i - length;
                    System.arraycopy(bArr, bArr.length - i6, bArr2, 0, i6);
                    System.arraycopy(this.s, 0, this.v, i6, length);
                }
            }
        } else {
            int i7 = i3 + i;
            byte[] bArr3 = this.s;
            int length2 = bArr3.length;
            byte[] bArr4 = this.v;
            if (i7 <= length2) {
                System.arraycopy(bArr3, i3, bArr4, 0, i);
            } else {
                int length3 = bArr3.length - i3;
                System.arraycopy(bArr3, i3, bArr4, 0, length3);
                System.arraycopy(this.s, 0, this.v, length3, i - length3);
            }
        }
        if (i % this.n == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.c(i, "sizeToOutput is not aligned to frame size: %s", z2);
        if (this.t < this.s.length) {
            z3 = true;
        } else {
            z3 = false;
        }
        Preconditions.n(z3);
        byte[] bArr5 = this.v;
        if (i % this.n != 0) {
            z4 = false;
        }
        Preconditions.c(i, "byteOutput size is not aligned to frame size %s", z4);
        if (i2 != 3) {
            for (int i8 = 0; i8 < i; i8 += 2) {
                int i9 = i8 + 1;
                int i10 = (bArr5[i9] << 8) | (bArr5[i8] & 255);
                int i11 = this.k;
                if (i2 == 0) {
                    i11 = ((((i8 * 1000) / (i - 1)) * (i11 - 100)) / 1000) + 100;
                } else if (i2 == 2) {
                    i11 += (((i8 * 1000) * (100 - i11)) / (i - 1)) / 1000;
                }
                int i12 = (i10 * i11) / 100;
                if (i12 >= 32767) {
                    bArr5[i8] = -1;
                    bArr5[i9] = Byte.MAX_VALUE;
                } else if (i12 <= -32768) {
                    bArr5[i8] = 0;
                    bArr5[i9] = Byte.MIN_VALUE;
                } else {
                    bArr5[i8] = (byte) (i12 & 255);
                    bArr5[i9] = (byte) (i12 >> 8);
                }
            }
        }
        f(i).put(bArr5, 0, i).flip();
    }
}
