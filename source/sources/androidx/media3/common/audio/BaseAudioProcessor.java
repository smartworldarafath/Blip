package androidx.media3.common.audio;

import androidx.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BaseAudioProcessor implements AudioProcessor {
    public AudioProcessor.AudioFormat b;
    public AudioProcessor.AudioFormat c;
    public AudioProcessor.AudioFormat d;
    public AudioProcessor.AudioFormat e;
    public ByteBuffer f;
    public ByteBuffer g;
    public boolean h;

    public BaseAudioProcessor() {
        ByteBuffer byteBuffer = AudioProcessor.a;
        this.f = byteBuffer;
        this.g = byteBuffer;
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.e;
        this.d = audioFormat;
        this.e = audioFormat;
        this.b = audioFormat;
        this.c = audioFormat;
    }

    public abstract AudioProcessor.AudioFormat a(AudioProcessor.AudioFormat audioFormat);

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean b() {
        if (this.h && this.g == AudioProcessor.a) {
            return true;
        }
        return false;
    }

    public final ByteBuffer f(int i) {
        if (this.f.capacity() < i) {
            this.f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f.clear();
        }
        ByteBuffer byteBuffer = this.f;
        this.g = byteBuffer;
        return byteBuffer;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean h() {
        if (this.e != AudioProcessor.AudioFormat.e) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public ByteBuffer i() {
        ByteBuffer byteBuffer = this.g;
        this.g = AudioProcessor.a;
        return byteBuffer;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void k(AudioProcessor.StreamMetadata streamMetadata) {
        this.g = AudioProcessor.a;
        this.h = false;
        this.b = this.d;
        this.c = this.e;
        c();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void l() {
        this.h = true;
        d();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final AudioProcessor.AudioFormat m(AudioProcessor.AudioFormat audioFormat) {
        this.d = audioFormat;
        this.e = a(audioFormat);
        if (h()) {
            return this.e;
        }
        return AudioProcessor.AudioFormat.e;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void reset() {
        ByteBuffer byteBuffer = AudioProcessor.a;
        this.g = byteBuffer;
        this.h = false;
        this.f = byteBuffer;
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.e;
        this.d = audioFormat;
        this.e = audioFormat;
        this.b = audioFormat;
        this.c = audioFormat;
        e();
    }

    public void c() {
    }

    public void d() {
    }

    public void e() {
    }
}
