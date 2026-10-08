package androidx.media3.common.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Util;
import io.sentry.d;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ToInt16PcmAudioProcessor extends BaseAudioProcessor {
    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public final AudioProcessor.AudioFormat a(AudioProcessor.AudioFormat audioFormat) {
        int i = audioFormat.c;
        if (Util.A(i)) {
            if (i != 2) {
                return new AudioProcessor.AudioFormat(audioFormat.a, audioFormat.b, 2);
            }
            return AudioProcessor.AudioFormat.e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0176 A[ADDED_TO_REGION, LOOP:9: B:60:0x0176->B:61:0x0178, LOOP_START, PHI: r2
  0x0176: PHI (r2v1 int) = (r2v0 int), (r2v2 int) binds: [B:17:0x004f, B:61:0x0178] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.media3.common.audio.AudioProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(ByteBuffer byteBuffer) {
        int i;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i2 = limit - position;
        int i3 = this.b.c;
        if (i3 != 3) {
            if (i3 != 4) {
                if (i3 != 21) {
                    if (i3 != 22) {
                        if (i3 != 268435456) {
                            if (i3 != 1342177280) {
                                if (i3 != 1610612736) {
                                    if (i3 != 1879048192) {
                                        if (i3 != 1895825408) {
                                            if (i3 != 1912602624) {
                                                d.d();
                                                return;
                                            }
                                        }
                                    }
                                    i2 /= 4;
                                }
                            }
                        }
                        ByteBuffer f = f(i2);
                        i = this.b.c;
                        if (i != 3) {
                            if (i != 4) {
                                if (i != 21) {
                                    if (i != 22) {
                                        if (i != 268435456) {
                                            if (i != 1342177280) {
                                                if (i != 1610612736) {
                                                    if (i != 1879048192) {
                                                        if (i != 1895825408) {
                                                            if (i == 1912602624) {
                                                                while (position < limit) {
                                                                    short max = (short) (Math.max(-1.0d, Math.min(Double.longBitsToDouble(Long.reverseBytes(byteBuffer.getLong(position))), 1.0d)) * 32767.0d);
                                                                    f.put((byte) (max & 255));
                                                                    f.put((byte) ((max >> 8) & 255));
                                                                    position += 8;
                                                                }
                                                            } else {
                                                                d.d();
                                                                return;
                                                            }
                                                        } else {
                                                            while (position < limit) {
                                                                short f2 = (short) (Util.f(Float.intBitsToFloat(Integer.reverseBytes(byteBuffer.getInt(position))), -1.0f, 1.0f) * 32767.0f);
                                                                f.put((byte) (f2 & 255));
                                                                f.put((byte) ((f2 >> 8) & 255));
                                                                position += 4;
                                                            }
                                                        }
                                                    } else {
                                                        while (position < limit) {
                                                            short max2 = (short) (Math.max(-1.0d, Math.min(byteBuffer.getDouble(position), 1.0d)) * 32767.0d);
                                                            f.put((byte) (max2 & 255));
                                                            f.put((byte) ((max2 >> 8) & 255));
                                                            position += 8;
                                                        }
                                                    }
                                                } else {
                                                    while (position < limit) {
                                                        f.put(byteBuffer.get(position + 1));
                                                        f.put(byteBuffer.get(position));
                                                        position += 4;
                                                    }
                                                }
                                            } else {
                                                while (position < limit) {
                                                    f.put(byteBuffer.get(position + 1));
                                                    f.put(byteBuffer.get(position));
                                                    position += 3;
                                                }
                                            }
                                        } else {
                                            while (position < limit) {
                                                f.put(byteBuffer.get(position + 1));
                                                f.put(byteBuffer.get(position));
                                                position += 2;
                                            }
                                        }
                                    } else {
                                        while (position < limit) {
                                            f.put(byteBuffer.get(position + 2));
                                            f.put(byteBuffer.get(position + 3));
                                            position += 4;
                                        }
                                    }
                                } else {
                                    while (position < limit) {
                                        f.put(byteBuffer.get(position + 1));
                                        f.put(byteBuffer.get(position + 2));
                                        position += 3;
                                    }
                                }
                            } else {
                                while (position < limit) {
                                    short f3 = (short) (Util.f(byteBuffer.getFloat(position), -1.0f, 1.0f) * 32767.0f);
                                    f.put((byte) (f3 & 255));
                                    f.put((byte) ((f3 >> 8) & 255));
                                    position += 4;
                                }
                            }
                        } else {
                            while (position < limit) {
                                f.put((byte) 0);
                                f.put((byte) ((byteBuffer.get(position) & 255) - 128));
                                position++;
                            }
                        }
                        byteBuffer.position(byteBuffer.limit());
                        f.flip();
                    }
                }
                i2 /= 3;
            }
            i2 /= 2;
            ByteBuffer f4 = f(i2);
            i = this.b.c;
            if (i != 3) {
            }
            byteBuffer.position(byteBuffer.limit());
            f4.flip();
        }
        i2 *= 2;
        ByteBuffer f42 = f(i2);
        i = this.b.c;
        if (i != 3) {
        }
        byteBuffer.position(byteBuffer.limit());
        f42.flip();
    }
}
