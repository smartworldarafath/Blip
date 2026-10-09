package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AacUtil {
    public static final int[] a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    public static final int[] b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Config {
        public final int a;
        public final int b;
        public final String c;

        public Config(String str, int i, int i2) {
            this.a = i;
            this.b = i2;
            this.c = str;
        }
    }

    public static int a(ParsableBitArray parsableBitArray) {
        int g = parsableBitArray.g(4);
        if (g == 15) {
            if (parsableBitArray.b() >= 24) {
                return parsableBitArray.g(24);
            }
            throw ParserException.a(null, "AAC header insufficient data");
        }
        if (g < 13) {
            return a[g];
        }
        throw ParserException.a(null, "AAC header wrong Sampling Frequency Index");
    }

    public static Config b(ParsableBitArray parsableBitArray, boolean z) {
        int g = parsableBitArray.g(5);
        if (g == 31) {
            g = parsableBitArray.g(6) + 32;
        }
        int a2 = a(parsableBitArray);
        int g2 = parsableBitArray.g(4);
        String g3 = q.g(g, "mp4a.40.");
        if (g == 5 || g == 29) {
            a2 = a(parsableBitArray);
            int g4 = parsableBitArray.g(5);
            if (g4 == 31) {
                g4 = parsableBitArray.g(6) + 32;
            }
            g = g4;
            if (g == 22) {
                g2 = parsableBitArray.g(4);
            }
        }
        if (z) {
            if (g != 1 && g != 2 && g != 3 && g != 4 && g != 6 && g != 7 && g != 17) {
                switch (g) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw ParserException.b("Unsupported audio object type: " + g);
                }
            }
            if (parsableBitArray.f()) {
                Log.f("AacUtil", "Unexpected frameLengthFlag = 1");
            }
            if (parsableBitArray.f()) {
                parsableBitArray.o(14);
            }
            boolean f = parsableBitArray.f();
            if (g2 != 0) {
                if (g == 6 || g == 20) {
                    parsableBitArray.o(3);
                }
                if (f) {
                    if (g == 22) {
                        parsableBitArray.o(16);
                    }
                    if (g == 17 || g == 19 || g == 20 || g == 23) {
                        parsableBitArray.o(3);
                    }
                    parsableBitArray.o(1);
                }
                switch (g) {
                    case 17:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        int g5 = parsableBitArray.g(2);
                        if (g5 == 2 || g5 == 3) {
                            throw ParserException.b("Unsupported epConfig: " + g5);
                        }
                }
            } else {
                throw new UnsupportedOperationException();
            }
        }
        int i = b[g2];
        if (i != -1) {
            return new Config(g3, a2, i);
        }
        throw ParserException.a(null, null);
    }
}
