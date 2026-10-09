package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.BaseAudioProcessor;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.primitives.ImmutableIntArray;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ChannelMappingAudioProcessor extends BaseAudioProcessor {
    public ImmutableIntArray i;
    public ImmutableIntArray j;

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final AudioProcessor.AudioFormat a(AudioProcessor.AudioFormat audioFormat) {
        boolean z;
        boolean z2;
        int i = audioFormat.c;
        ImmutableIntArray immutableIntArray = this.i;
        if (immutableIntArray == null) {
            return AudioProcessor.AudioFormat.e;
        }
        int i2 = audioFormat.b;
        if (Util.A(i)) {
            int i3 = immutableIntArray.k;
            if (i2 != i3) {
                z = true;
            } else {
                z = false;
            }
            for (int i4 = 0; i4 < i3; i4++) {
                int a = immutableIntArray.a(i4);
                if (a < i2) {
                    if (a != i4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z |= z2;
                } else {
                    throw new AudioProcessor.UnhandledAudioFormatException("Channel map (" + immutableIntArray + ") trying to access non-existent input channel.", audioFormat);
                }
            }
            if (z) {
                return new AudioProcessor.AudioFormat(audioFormat.a, i3, i);
            }
            return AudioProcessor.AudioFormat.e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void c() {
        this.j = this.i;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final void e() {
        this.j = null;
        this.i = null;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void j(ByteBuffer byteBuffer) {
        int i;
        boolean z;
        int i2;
        int i3;
        ImmutableIntArray immutableIntArray = this.j;
        immutableIntArray.getClass();
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer f = f(((limit - position) / this.b.d) * this.c.d);
        while (position < limit) {
            for (int i4 = 0; i4 < immutableIntArray.k; i4++) {
                int n = (Util.n(this.b.c) * immutableIntArray.a(i4)) + position;
                int i5 = this.b.c;
                if (i5 != 2) {
                    if (i5 != 3) {
                        if (i5 != 4) {
                            if (i5 != 21) {
                                if (i5 != 22) {
                                    if (i5 != 268435456) {
                                        if (i5 != 1342177280) {
                                            if (i5 != 1610612736) {
                                                if (i5 != 1879048192) {
                                                    if (i5 != 1895825408) {
                                                        if (i5 != 1912602624) {
                                                            throw new IllegalStateException("Unexpected encoding: " + this.b.c);
                                                        }
                                                    }
                                                }
                                                f.putDouble(byteBuffer.getDouble(n));
                                            }
                                        }
                                    }
                                }
                                f.putInt(byteBuffer.getInt(n));
                            }
                            ByteOrder order = byteBuffer.order();
                            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                            if (order == byteOrder) {
                                i = n;
                            } else {
                                i = n + 2;
                            }
                            byte b = byteBuffer.get(i);
                            byte b2 = byteBuffer.get(n + 1);
                            if (byteBuffer.order() == byteOrder) {
                                n += 2;
                            }
                            int i6 = ((((b << 24) & (-16777216)) | ((b2 << 16) & 16711680)) | ((byteBuffer.get(n) << 8) & 65280)) >> 8;
                            boolean z2 = true;
                            if ((i6 & (-16777216)) != 0 && (i6 & (-8388608)) != -8388608) {
                                z = false;
                            } else {
                                z = true;
                            }
                            Preconditions.g(z, "Value out of range of 24-bit integer: %s", Integer.toHexString(i6));
                            if (f.remaining() < 3) {
                                z2 = false;
                            }
                            Preconditions.e(z2);
                            if (f.order() == byteOrder) {
                                i2 = (i6 & 16711680) >> 16;
                            } else {
                                i2 = i6 & 255;
                            }
                            byte b3 = (byte) i2;
                            byte b4 = (byte) ((i6 & 65280) >> 8);
                            if (f.order() == byteOrder) {
                                i3 = i6 & 255;
                            } else {
                                i3 = (i6 & 16711680) >> 16;
                            }
                            f.put(b3).put(b4).put((byte) i3);
                        }
                        f.putFloat(byteBuffer.getFloat(n));
                    } else {
                        f.put(byteBuffer.get(n));
                    }
                }
                f.putShort(byteBuffer.getShort(n));
            }
            position += this.b.d;
        }
        byteBuffer.position(limit);
        f.flip();
    }
}
