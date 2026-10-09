package androidx.media3.extractor;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Ac4Util {
    public static final int[] a = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Ac4Presentation {
        public boolean a;
        public int b;
        public int c;
        public boolean d;
        public int e;
        public int f;
        public int g;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SyncFrameInfo {
        public final int a;
        public final int b;
        public final int c;

        public SyncFrameInfo(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    public static void a(int i, ParsableByteArray parsableByteArray) {
        parsableByteArray.J(7);
        byte[] bArr = parsableByteArray.a;
        bArr[0] = -84;
        bArr[1] = 64;
        bArr[2] = -1;
        bArr[3] = -1;
        bArr[4] = (byte) ((i >> 16) & 255);
        bArr[5] = (byte) ((i >> 8) & 255);
        bArr[6] = (byte) (i & 255);
    }

    /* JADX WARN: Code restructure failed: missing block: B:157:0x012c, code lost:
    
        if (r14 == 2) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x037d  */
    /* JADX WARN: Type inference failed for: r12v0, types: [androidx.media3.extractor.Ac4Util$Ac4Presentation, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Format b(ParsableByteArray parsableByteArray, String str, String str2, DrmInitData drmInitData) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean f;
        int i8;
        int g;
        int g2;
        int i9;
        int i10;
        boolean z;
        boolean f2;
        int i11;
        boolean z2;
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableBitArray.l(parsableByteArray);
        int b = parsableBitArray.b();
        int g3 = parsableBitArray.g(3);
        if (g3 <= 1) {
            int g4 = parsableBitArray.g(7);
            if (parsableBitArray.f()) {
                i = 48000;
            } else {
                i = 44100;
            }
            parsableBitArray.o(4);
            int g5 = parsableBitArray.g(9);
            if (g4 > 1) {
                if (g3 != 0) {
                    if (parsableBitArray.f()) {
                        parsableBitArray.o(16);
                        if (parsableBitArray.f()) {
                            parsableBitArray.o(128);
                        }
                    }
                } else {
                    throw ParserException.b("Invalid AC-4 DSI version: " + g3);
                }
            }
            if (g3 == 1) {
                if (parsableBitArray.b() >= 66) {
                    parsableBitArray.o(66);
                    parsableBitArray.c();
                } else {
                    throw ParserException.b("Invalid AC-4 DSI bitrate.");
                }
            }
            ?? obj = new Object();
            obj.a = true;
            obj.b = -1;
            obj.c = -1;
            obj.d = true;
            obj.e = 2;
            obj.f = 1;
            obj.g = 0;
            for (int i12 = 0; i12 < g5; i12++) {
                if (g3 == 0) {
                    f = parsableBitArray.f();
                    i8 = 8;
                    g = parsableBitArray.g(5);
                    g2 = parsableBitArray.g(5);
                    i9 = 0;
                    i10 = 0;
                    z = false;
                } else {
                    int g6 = parsableBitArray.g(8);
                    i9 = parsableBitArray.g(8);
                    i8 = 8;
                    if (i9 == 255) {
                        i9 += parsableBitArray.g(16);
                    }
                    if (g6 > 2) {
                        parsableBitArray.o(i9 * 8);
                    } else {
                        i10 = (b - parsableBitArray.b()) / 8;
                        int g7 = parsableBitArray.g(5);
                        if (g7 == 31) {
                            z = true;
                        } else {
                            z = false;
                        }
                        g2 = g6;
                        g = g7;
                        f = false;
                    }
                }
                obj.f = g2;
                if (!f && !z && g == 6) {
                    f2 = true;
                } else {
                    obj.g = parsableBitArray.g(3);
                    if (parsableBitArray.f()) {
                        parsableBitArray.o(5);
                    }
                    parsableBitArray.o(2);
                    if (g3 == 1 && (g2 == 1 || g2 == 2)) {
                        parsableBitArray.o(2);
                    }
                    parsableBitArray.o(5);
                    parsableBitArray.o(10);
                    if (g3 == 1) {
                        if (g2 > 0) {
                            obj.a = parsableBitArray.f();
                        }
                        if (obj.a) {
                            if (g2 != 1) {
                                i11 = 2;
                            }
                            int g8 = parsableBitArray.g(5);
                            if (g8 >= 0 && g8 <= 15) {
                                obj.b = g8;
                            }
                            if (g8 >= 11 && g8 <= 14) {
                                obj.d = parsableBitArray.f();
                                i11 = 2;
                                obj.e = parsableBitArray.g(2);
                            } else {
                                i11 = 2;
                            }
                            parsableBitArray.o(24);
                        } else {
                            i11 = 2;
                        }
                        if (g2 == 1 || g2 == i11) {
                            if (parsableBitArray.f() && parsableBitArray.f()) {
                                parsableBitArray.o(i11);
                            }
                            if (parsableBitArray.f()) {
                                parsableBitArray.n();
                                int i13 = i8;
                                int g9 = parsableBitArray.g(i13);
                                int i14 = 0;
                                while (i14 < g9) {
                                    parsableBitArray.o(i13);
                                    i14++;
                                    i13 = 8;
                                }
                            }
                        }
                    }
                    if (!f && !z) {
                        parsableBitArray.n();
                        if (g != 0 && g != 1 && g != 2) {
                            if (g != 3 && g != 4) {
                                if (g != 5) {
                                    int g10 = parsableBitArray.g(7);
                                    for (int i15 = 0; i15 < g10; i15++) {
                                        parsableBitArray.o(8);
                                    }
                                } else if (g2 == 0) {
                                    d(parsableBitArray, obj);
                                } else {
                                    int g11 = parsableBitArray.g(3);
                                    for (int i16 = 0; i16 < g11 + 2; i16++) {
                                        e(parsableBitArray, obj);
                                    }
                                }
                            } else if (g2 == 0) {
                                for (int i17 = 0; i17 < 3; i17++) {
                                    d(parsableBitArray, obj);
                                }
                            } else {
                                for (int i18 = 0; i18 < 3; i18++) {
                                    e(parsableBitArray, obj);
                                }
                            }
                        } else if (g2 == 0) {
                            for (int i19 = 0; i19 < 2; i19++) {
                                d(parsableBitArray, obj);
                            }
                        } else {
                            for (int i20 = 0; i20 < 2; i20++) {
                                e(parsableBitArray, obj);
                            }
                        }
                    } else if (g2 == 0) {
                        d(parsableBitArray, obj);
                    } else {
                        e(parsableBitArray, obj);
                    }
                    parsableBitArray.n();
                    f2 = parsableBitArray.f();
                }
                if (f2) {
                    i5 = 7;
                    int g12 = parsableBitArray.g(7);
                    for (int i21 = 0; i21 < g12; i21++) {
                        parsableBitArray.o(15);
                    }
                } else {
                    i5 = 7;
                }
                if (g2 > 0) {
                    if (parsableBitArray.f()) {
                        if (parsableBitArray.b() < 66) {
                            z2 = false;
                        } else {
                            parsableBitArray.o(66);
                            z2 = true;
                        }
                        if (!z2) {
                            throw ParserException.b("Can't parse bitrate DSI.");
                        }
                    }
                    if (parsableBitArray.f()) {
                        parsableBitArray.c();
                        parsableBitArray.p(parsableBitArray.g(16));
                        i3 = 5;
                        int g13 = parsableBitArray.g(5);
                        for (int i22 = 0; i22 < g13; i22++) {
                            parsableBitArray.o(3);
                            parsableBitArray.o(8);
                        }
                        i2 = 8;
                        parsableBitArray.c();
                        if (g3 == 1) {
                            int b2 = ((b - parsableBitArray.b()) / i2) - i10;
                            if (i9 >= b2) {
                                parsableBitArray.p(i9 - b2);
                            } else {
                                throw ParserException.b("pres_bytes is smaller than presentation bytes read.");
                            }
                        }
                        if (!obj.a) {
                            i4 = -1;
                            if (obj.b == -1) {
                                throw ParserException.b("Can't determine channel mode of presentation " + i12);
                            }
                        } else {
                            i4 = -1;
                        }
                        if (obj.a) {
                            int i23 = obj.b;
                            boolean z3 = obj.d;
                            int i24 = obj.e;
                            switch (i23) {
                                case 0:
                                    i5 = 1;
                                    break;
                                case 1:
                                    i5 = 2;
                                    break;
                                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                    i5 = 3;
                                    break;
                                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                    i5 = i3;
                                    break;
                                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                    i5 = 6;
                                    break;
                                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                case KeyModifiers.a /* 9 */:
                                    break;
                                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                case KeyModifiers.b /* 10 */:
                                    i5 = i2;
                                    break;
                                case 11:
                                    i5 = 11;
                                    break;
                                case KeyModifiers.c /* 12 */:
                                    i5 = 12;
                                    break;
                                case 13:
                                    i5 = 13;
                                    break;
                                case 14:
                                    i5 = 14;
                                    break;
                                case 15:
                                    i5 = 24;
                                    break;
                                default:
                                    i5 = i4;
                                    break;
                            }
                            if (i23 == 11 || i23 == 12 || i23 == 13 || i23 == 14) {
                                if (!z3) {
                                    i5 -= 2;
                                }
                                if (i24 == 0) {
                                    i5 -= 4;
                                } else if (i24 == 1) {
                                    i5 -= 2;
                                }
                            }
                            i7 = i5;
                        } else {
                            int i25 = obj.c;
                            int i26 = obj.g;
                            if (i25 > 0) {
                                int i27 = i25 + 1;
                                if (i26 == 4 && i27 == 17) {
                                    i27 = 21;
                                }
                                i7 = i27;
                            } else {
                                if (i26 != 0) {
                                    if (i26 != 1) {
                                        i6 = 2;
                                        if (i26 != 2) {
                                            if (i26 != 3) {
                                                if (i26 != 4) {
                                                    Log.f("Ac4Util", "AC-4 level " + obj.g + " has not been defined.");
                                                } else {
                                                    i7 = 12;
                                                }
                                            } else {
                                                i7 = 10;
                                            }
                                        } else {
                                            i7 = i2;
                                        }
                                    } else {
                                        i7 = 6;
                                    }
                                } else {
                                    i6 = 2;
                                }
                                i7 = i6;
                            }
                        }
                        if (i7 > 0) {
                            Object[] objArr = {Integer.valueOf(g4), Integer.valueOf(obj.f), Integer.valueOf(obj.g)};
                            String str3 = Util.a;
                            String format = String.format(Locale.US, "ac-4.%02d.%02d.%02d", objArr);
                            Format.Builder builder = new Format.Builder();
                            builder.a = str;
                            builder.o = MimeTypes.l("audio/ac4");
                            builder.I = i7;
                            builder.K = i;
                            builder.s = drmInitData;
                            builder.d = str2;
                            builder.k = format;
                            return new Format(builder);
                        }
                        throw ParserException.b("Cannot determine channel count of presentation.");
                    }
                }
                i2 = 8;
                i3 = 5;
                parsableBitArray.c();
                if (g3 == 1) {
                }
                if (!obj.a) {
                }
                if (obj.a) {
                }
                if (i7 > 0) {
                }
            }
            i2 = 8;
            i3 = 5;
            i4 = -1;
            i5 = 7;
            if (obj.a) {
            }
            if (i7 > 0) {
            }
        } else {
            throw ParserException.b("Unsupported AC-4 DSI version: " + g3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
    
        if (r9.f() != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        r2 = r9.g(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
    
        if (r9.f() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
    
        if (r9.g(3) <= 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
    
        r9.o(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0051, code lost:
    
        if (r9.f() == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0053, code lost:
    
        r5 = 48000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
    
        r9 = r9.g(4);
        r8 = androidx.media3.extractor.Ac4Util.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005c, code lost:
    
        if (r5 != 44100) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0060, code lost:
    
        if (r9 != 13) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0062, code lost:
    
        r9 = r8[r9];
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0098, code lost:
    
        return new androidx.media3.extractor.Ac4Util.SyncFrameInfo(r5, r0, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0065, code lost:
    
        if (r5 != 48000) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0069, code lost:
    
        if (r9 >= 14) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006b, code lost:
    
        r6 = r8[r9];
        r2 = r2 % 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0072, code lost:
    
        if (r2 == 1) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0076, code lost:
    
        if (r2 == 2) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0078, code lost:
    
        if (r2 == 3) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007a, code lost:
    
        if (r2 == 4) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x007d, code lost:
    
        if (r9 == 3) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007f, code lost:
    
        if (r9 == 8) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0081, code lost:
    
        if (r9 != 11) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0083, code lost:
    
        r9 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0090, code lost:
    
        r9 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0086, code lost:
    
        if (r9 == 8) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0088, code lost:
    
        if (r9 != 11) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008b, code lost:
    
        if (r9 == 3) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x008d, code lost:
    
        if (r9 != 8) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0092, code lost:
    
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0055, code lost:
    
        r5 = 44100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
    
        if (r9.g(2) == 3) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
    
        r9.g(2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static SyncFrameInfo c(ParsableBitArray parsableBitArray) {
        int i;
        int g = parsableBitArray.g(16);
        int g2 = parsableBitArray.g(16);
        if (g2 == 65535) {
            g2 = parsableBitArray.g(24);
            i = 7;
        } else {
            i = 4;
        }
        int i2 = g2 + i;
        if (g == 44097) {
            i2 += 2;
        }
    }

    public static void d(ParsableBitArray parsableBitArray, Ac4Presentation ac4Presentation) {
        int g = parsableBitArray.g(5);
        parsableBitArray.o(2);
        if (parsableBitArray.f()) {
            parsableBitArray.o(5);
        }
        if (g >= 7 && g <= 10) {
            parsableBitArray.n();
        }
        if (parsableBitArray.f()) {
            int g2 = parsableBitArray.g(3);
            if (ac4Presentation.b == -1 && g >= 0 && g <= 15 && (g2 == 0 || g2 == 1)) {
                ac4Presentation.b = g;
            }
            if (parsableBitArray.f()) {
                f(parsableBitArray);
            }
        }
    }

    public static void e(ParsableBitArray parsableBitArray, Ac4Presentation ac4Presentation) {
        parsableBitArray.o(2);
        boolean f = parsableBitArray.f();
        int g = parsableBitArray.g(8);
        for (int i = 0; i < g; i++) {
            parsableBitArray.o(2);
            if (parsableBitArray.f()) {
                parsableBitArray.o(5);
            }
            if (f) {
                parsableBitArray.o(24);
            } else {
                if (parsableBitArray.f()) {
                    if (!parsableBitArray.f()) {
                        parsableBitArray.o(4);
                    }
                    ac4Presentation.c = parsableBitArray.g(6) + 1;
                }
                parsableBitArray.o(4);
            }
        }
        if (parsableBitArray.f()) {
            parsableBitArray.o(3);
            if (parsableBitArray.f()) {
                f(parsableBitArray);
            }
        }
    }

    public static void f(ParsableBitArray parsableBitArray) {
        int g = parsableBitArray.g(6);
        if (g >= 2 && g <= 42) {
            parsableBitArray.o(g * 8);
            return;
        }
        throw ParserException.b(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(g)));
    }
}
