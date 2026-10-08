package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.BaseAudioProcessor;
import androidx.media3.common.util.Util;
import com.google.common.primitives.Ints;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ToFloatPcmAudioProcessor extends BaseAudioProcessor {
    public static void g(int i, ByteBuffer byteBuffer) {
        int floatToIntBits;
        float f = (float) (i * 4.656612875245797E-10d);
        if (Float.isNaN(f)) {
            floatToIntBits = 0;
        } else {
            floatToIntBits = Float.floatToIntBits(f);
        }
        byteBuffer.putInt(floatToIntBits);
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final AudioProcessor.AudioFormat a(AudioProcessor.AudioFormat audioFormat) {
        int i = audioFormat.c;
        if (Util.A(i)) {
            if (i != 4) {
                return new AudioProcessor.AudioFormat(audioFormat.a, audioFormat.b, 4);
            }
            return AudioProcessor.AudioFormat.e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void j(ByteBuffer byteBuffer) {
        ByteBuffer f;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        int i2 = this.b.c;
        if (i2 != 2) {
            if (i2 != 3) {
                if (i2 != 21) {
                    if (i2 != 22) {
                        if (i2 != 268435456) {
                            if (i2 != 1342177280) {
                                if (i2 != 1610612736) {
                                    if (i2 != 1879048192) {
                                        if (i2 != 1895825408) {
                                            if (i2 == 1912602624) {
                                                f = f(i / 2);
                                                while (position < limit) {
                                                    f.putFloat((float) Double.longBitsToDouble(Long.reverseBytes(byteBuffer.getLong(position))));
                                                    position += 8;
                                                }
                                            } else {
                                                io.sentry.d.d();
                                                return;
                                            }
                                        } else {
                                            f = f(i);
                                            while (position < limit) {
                                                f.putFloat(Float.intBitsToFloat(Integer.reverseBytes(byteBuffer.getInt(position))));
                                                position += 4;
                                            }
                                        }
                                    } else {
                                        f = f(i / 2);
                                        while (position < limit) {
                                            f.putFloat((float) byteBuffer.getDouble(position));
                                            position += 8;
                                        }
                                    }
                                } else {
                                    f = f(i);
                                    while (position < limit) {
                                        g(Integer.reverseBytes(byteBuffer.getInt(position)), f);
                                        position += 4;
                                    }
                                }
                            } else {
                                f = f((i / 3) * 4);
                                while (position < limit) {
                                    g(Ints.c(byteBuffer.get(position), byteBuffer.get(position + 1), byteBuffer.get(position + 2), (byte) 0), f);
                                    position += 3;
                                }
                            }
                        } else {
                            f = f(i * 2);
                            while (position < limit) {
                                g(Short.reverseBytes(byteBuffer.getShort(position)) << 16, f);
                                position += 2;
                            }
                        }
                    } else {
                        f = f(i);
                        while (position < limit) {
                            g(byteBuffer.getInt(position), f);
                            position += 4;
                        }
                    }
                } else {
                    f = f((i / 3) * 4);
                    while (position < limit) {
                        g(Ints.c(byteBuffer.get(position + 2), byteBuffer.get(position + 1), byteBuffer.get(position), (byte) 0), f);
                        position += 3;
                    }
                }
            } else {
                f = f(i * 4);
                while (position < limit) {
                    g(((byteBuffer.get(position) & 255) - 128) << 24, f);
                    position++;
                }
            }
        } else {
            f = f(i * 2);
            while (position < limit) {
                g(byteBuffer.getShort(position) << 16, f);
                position += 2;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        f.flip();
    }
}
