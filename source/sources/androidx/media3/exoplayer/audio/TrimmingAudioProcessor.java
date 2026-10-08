package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.BaseAudioProcessor;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TrimmingAudioProcessor extends BaseAudioProcessor {
    public int i;
    public int j;
    public boolean k;
    public int l;
    public byte[] m;
    public int n;
    public long o;

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final AudioProcessor.AudioFormat a(AudioProcessor.AudioFormat audioFormat) {
        if (Util.A(audioFormat.c)) {
            this.k = true;
            if (this.i == 0 && this.j == 0) {
                return AudioProcessor.AudioFormat.e;
            }
            return audioFormat;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.common.audio.AudioProcessor
    public final boolean b() {
        if (super.b() && this.n == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void c() {
        if (this.k) {
            this.k = false;
            int i = this.j;
            int i2 = this.b.d;
            this.m = new byte[i * i2];
            this.l = this.i * i2;
        }
        this.n = 0;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void d() {
        if (this.k) {
            if (this.n > 0) {
                this.o += r0 / this.b.d;
            }
            this.n = 0;
        }
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void e() {
        this.m = Util.b;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.common.audio.AudioProcessor
    public final ByteBuffer i() {
        int i;
        if (super.b() && (i = this.n) > 0) {
            f(i).put(this.m, 0, this.n).flip();
            this.n = 0;
        }
        return super.i();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void j(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i != 0) {
            int min = Math.min(i, this.l);
            this.o += min / this.b.d;
            this.l -= min;
            byteBuffer.position(position + min);
            if (this.l > 0) {
                return;
            }
            int i2 = i - min;
            int length = (this.n + i2) - this.m.length;
            ByteBuffer f = f(length);
            int g = Util.g(length, 0, this.n);
            f.put(this.m, 0, g);
            int g2 = Util.g(length - g, 0, i2);
            byteBuffer.limit(byteBuffer.position() + g2);
            f.put(byteBuffer);
            byteBuffer.limit(limit);
            int i3 = i2 - g2;
            int i4 = this.n - g;
            this.n = i4;
            byte[] bArr = this.m;
            System.arraycopy(bArr, g, bArr, 0, i4);
            byteBuffer.get(this.m, this.n, i3);
            this.n += i3;
            f.flip();
        }
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final long n(long j) {
        return Math.max(0L, j - Util.H(this.b.a, this.j + this.i));
    }
}
