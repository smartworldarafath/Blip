package androidx.compose.ui.graphics;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaceKt;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Connector;
import androidx.compose.ui.graphics.colorspace.ConnectorKt;
import defpackage.q;
import kotlin.UnsignedKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Color {
    public static final long b = ColorKt.c(4278190080L);
    public static final long c;
    public static final long d;
    public static final long e;
    public static final long f;
    public static final long g;
    public static final long h;
    public static final /* synthetic */ int i = 0;
    public final long a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    static {
        ColorKt.c(4282664004L);
        ColorKt.c(4287137928L);
        c = ColorKt.c(4291611852L);
        d = ColorKt.c(4294967295L);
        e = ColorKt.c(4294901760L);
        ColorKt.c(4278255360L);
        f = ColorKt.c(4278190335L);
        ColorKt.c(4294967040L);
        ColorKt.c(4278255615L);
        ColorKt.c(4294902015L);
        g = ColorKt.b(0);
        float[] fArr = ColorSpaces.a;
        h = ColorKt.a(0.0f, 0.0f, 0.0f, 0.0f, ColorSpaces.u);
    }

    public /* synthetic */ Color(long j) {
        this.a = j;
    }

    public static final long a(long j, ColorSpace colorSpace) {
        Connector connector;
        ColorSpace f2 = f(j);
        int i2 = f2.c;
        int i3 = colorSpace.c;
        if ((i2 | i3) < 0) {
            connector = ColorSpaceKt.d(f2, colorSpace);
        } else {
            MutableIntObjectMap mutableIntObjectMap = ConnectorKt.a;
            int i4 = i2 | (i3 << 6);
            Object b2 = mutableIntObjectMap.b(i4);
            if (b2 == null) {
                b2 = ColorSpaceKt.d(f2, colorSpace);
                mutableIntObjectMap.i(i4, b2);
            }
            connector = (Connector) b2;
        }
        return connector.a(j);
    }

    public static long b(long j, float f2) {
        return ColorKt.a(h(j), g(j), e(j), f2, f(j));
    }

    public static final boolean c(long j, long j2) {
        if (j == j2) {
            return true;
        }
        return false;
    }

    public static final float d(long j) {
        float a;
        float f2;
        if ((63 & j) == 0) {
            a = (float) UnsignedKt.a((j >>> 56) & 255);
            f2 = 255.0f;
        } else {
            a = (float) UnsignedKt.a((j >>> 6) & 1023);
            f2 = 1023.0f;
        }
        return a / f2;
    }

    public static final float e(long j) {
        int i2;
        int i3;
        int i4;
        if ((63 & j) == 0) {
            return ((float) UnsignedKt.a((j >>> 32) & 255)) / 255.0f;
        }
        short s = (short) ((j >>> 16) & 65535);
        int i5 = 32768 & s;
        int i6 = ((65535 & s) >>> 10) & 31;
        int i7 = s & 1023;
        if (i6 == 0) {
            if (i7 != 0) {
                float intBitsToFloat = Float.intBitsToFloat(i7 + 1056964608) - Float16Kt.a;
                if (i5 == 0) {
                    return intBitsToFloat;
                }
                return -intBitsToFloat;
            }
            i4 = 0;
            i3 = 0;
        } else {
            int i8 = i7 << 13;
            if (i6 == 31) {
                i2 = 255;
                if (i8 != 0) {
                    i8 |= 4194304;
                }
            } else {
                i2 = i6 + 112;
            }
            int i9 = i2;
            i3 = i8;
            i4 = i9;
        }
        return Float.intBitsToFloat((i4 << 23) | (i5 << 16) | i3);
    }

    public static final ColorSpace f(long j) {
        float[] fArr = ColorSpaces.a;
        return ColorSpaces.y[(int) (j & 63)];
    }

    public static final float g(long j) {
        int i2;
        int i3;
        int i4;
        if ((63 & j) == 0) {
            return ((float) UnsignedKt.a((j >>> 40) & 255)) / 255.0f;
        }
        short s = (short) ((j >>> 32) & 65535);
        int i5 = 32768 & s;
        int i6 = ((65535 & s) >>> 10) & 31;
        int i7 = s & 1023;
        if (i6 == 0) {
            if (i7 != 0) {
                float intBitsToFloat = Float.intBitsToFloat(i7 + 1056964608) - Float16Kt.a;
                if (i5 == 0) {
                    return intBitsToFloat;
                }
                return -intBitsToFloat;
            }
            i4 = 0;
            i3 = 0;
        } else {
            int i8 = i7 << 13;
            if (i6 == 31) {
                i2 = 255;
                if (i8 != 0) {
                    i8 |= 4194304;
                }
            } else {
                i2 = i6 + 112;
            }
            int i9 = i2;
            i3 = i8;
            i4 = i9;
        }
        return Float.intBitsToFloat((i4 << 23) | (i5 << 16) | i3);
    }

    public static final float h(long j) {
        int i2;
        int i3;
        int i4;
        if ((63 & j) == 0) {
            return ((float) UnsignedKt.a((j >>> 48) & 255)) / 255.0f;
        }
        short s = (short) ((j >>> 48) & 65535);
        int i5 = 32768 & s;
        int i6 = ((65535 & s) >>> 10) & 31;
        int i7 = s & 1023;
        if (i6 == 0) {
            if (i7 != 0) {
                float intBitsToFloat = Float.intBitsToFloat(i7 + 1056964608) - Float16Kt.a;
                if (i5 == 0) {
                    return intBitsToFloat;
                }
                return -intBitsToFloat;
            }
            i4 = 0;
            i3 = 0;
        } else {
            int i8 = i7 << 13;
            if (i6 == 31) {
                i2 = 255;
                if (i8 != 0) {
                    i8 |= 4194304;
                }
            } else {
                i2 = i6 + 112;
            }
            int i9 = i2;
            i3 = i8;
            i4 = i9;
        }
        return Float.intBitsToFloat((i4 << 23) | (i5 << 16) | i3);
    }

    public static String i(long j) {
        float h2 = h(j);
        float g2 = g(j);
        float e2 = e(j);
        float d2 = d(j);
        String str = f(j).a;
        StringBuilder n = q.n("Color(", h2, ", ", g2, ", ");
        n.append(e2);
        n.append(", ");
        n.append(d2);
        n.append(", ");
        return q.l(n, str, ")");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Color) {
            if (this.a != ((Color) obj).a) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return i(this.a);
    }
}
