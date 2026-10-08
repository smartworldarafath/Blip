package androidx.media3.extractor;

import androidx.media3.common.ColorInfo;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.Util;
import defpackage.jb;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Av1Config {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final String e;

    public Av1Config(int i, String str, int i2, int i3, int i4) {
        this.a = i;
        this.e = str;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public static String a(int i, int i2, int i3, boolean z) {
        String str;
        StringBuilder j = jb.j("av01.", i, ".");
        Object[] objArr = {Integer.valueOf(i2)};
        String str2 = Util.a;
        Locale locale = Locale.US;
        j.append(String.format(locale, "%02d", objArr));
        if (z) {
            str = "H";
        } else {
            str = "M";
        }
        j.append(str);
        j.append(".");
        j.append(String.format(locale, "%02d", Integer.valueOf(i3)));
        return j.toString();
    }

    public static Av1Config b(byte[] bArr) {
        int i;
        int g;
        int g2;
        int i2;
        int i3;
        try {
            ParsableBitArray parsableBitArray = new ParsableBitArray(bArr.length, bArr);
            parsableBitArray.n();
            int g3 = parsableBitArray.g(7);
            if (g3 != 1) {
                Log.f("Av1Config", "Unsupported av1C version: " + g3);
                return null;
            }
            int g4 = parsableBitArray.g(3);
            int g5 = parsableBitArray.g(5);
            boolean f = parsableBitArray.f();
            boolean f2 = parsableBitArray.f();
            boolean f3 = parsableBitArray.f();
            if (f2) {
                if (f3) {
                    i3 = 12;
                } else {
                    i3 = 10;
                }
                i = i3;
            } else {
                i = 8;
            }
            parsableBitArray.o(13);
            String a = a(g4, g5, i, f);
            if (parsableBitArray.b() <= 0) {
                return new Av1Config(i, a);
            }
            parsableBitArray.n();
            int g6 = parsableBitArray.g(4);
            if (g6 != 1) {
                Log.e("Av1Config", "Unsupported obu_type: " + g6);
                return new Av1Config(i, a);
            }
            if (parsableBitArray.f()) {
                Log.e("Av1Config", "Unsupported obu_extension_flag");
                return new Av1Config(i, a);
            }
            boolean f4 = parsableBitArray.f();
            parsableBitArray.n();
            if (f4 && parsableBitArray.g(8) > 127) {
                Log.e("Av1Config", "Excessive obu_size");
                return new Av1Config(i, a);
            }
            int g7 = parsableBitArray.g(3);
            parsableBitArray.n();
            if (parsableBitArray.f()) {
                Log.e("Av1Config", "Unsupported reduced_still_picture_header");
                return new Av1Config(i, a);
            }
            if (parsableBitArray.f()) {
                Log.e("Av1Config", "Unsupported timing_info_present_flag");
                return new Av1Config(i, a);
            }
            if (parsableBitArray.f()) {
                Log.e("Av1Config", "Unsupported initial_display_delay_present_flag");
                return new Av1Config(i, a);
            }
            int g8 = parsableBitArray.g(5);
            boolean z = false;
            for (int i4 = 0; i4 <= g8; i4++) {
                parsableBitArray.o(12);
                if (parsableBitArray.g(5) > 7) {
                    parsableBitArray.n();
                }
            }
            int g9 = parsableBitArray.g(4);
            int g10 = parsableBitArray.g(4);
            parsableBitArray.o(g9 + 1);
            parsableBitArray.o(g10 + 1);
            if (parsableBitArray.f()) {
                parsableBitArray.o(7);
            }
            parsableBitArray.o(7);
            boolean f5 = parsableBitArray.f();
            if (f5) {
                parsableBitArray.o(2);
            }
            if (parsableBitArray.f()) {
                g = 2;
            } else {
                g = parsableBitArray.g(1);
            }
            if (g > 0 && !parsableBitArray.f()) {
                parsableBitArray.o(1);
            }
            if (f5) {
                parsableBitArray.o(3);
            }
            parsableBitArray.o(3);
            boolean f6 = parsableBitArray.f();
            if (g7 == 2 && f6) {
                parsableBitArray.n();
            }
            if (g7 != 1 && parsableBitArray.f()) {
                z = true;
            }
            if (!parsableBitArray.f()) {
                return new Av1Config(i, a);
            }
            int g11 = parsableBitArray.g(8);
            int g12 = parsableBitArray.g(8);
            int g13 = parsableBitArray.g(8);
            if (!z && g11 == 1 && g12 == 13 && g13 == 0) {
                g2 = 1;
            } else {
                g2 = parsableBitArray.g(1);
            }
            int f7 = ColorInfo.f(g11);
            if (g2 == 1) {
                i2 = 1;
            } else {
                i2 = 2;
            }
            return new Av1Config(i, a, f7, i2, ColorInfo.g(g12));
        } catch (RuntimeException e) {
            throw ParserException.a(e, "Error parsing AV1 config");
        }
    }

    public Av1Config(int i, String str) {
        this(i, str, -1, -1, -1);
    }
}
