package io.ktor.http;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.ranges.CharProgression;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CodecsKt {
    public static final Set a;
    public static final Set b;
    public static final ArrayList c;
    public static final ArrayList d;

    /* JADX WARN: Type inference failed for: r0v18, types: [kotlin.ranges.CharRange, kotlin.ranges.CharProgression] */
    /* JADX WARN: Type inference failed for: r0v23, types: [kotlin.ranges.CharRange, kotlin.ranges.CharProgression] */
    /* JADX WARN: Type inference failed for: r0v27, types: [kotlin.ranges.CharRange, kotlin.ranges.CharProgression] */
    /* JADX WARN: Type inference failed for: r10v1, types: [kotlin.ranges.CharRange, kotlin.ranges.CharProgression] */
    /* JADX WARN: Type inference failed for: r12v0, types: [kotlin.ranges.CharRange, kotlin.ranges.CharProgression] */
    /* JADX WARN: Type inference failed for: r3v1, types: [kotlin.ranges.CharRange, kotlin.ranges.CharProgression] */
    static {
        ArrayList F = CollectionsKt.F(CollectionsKt.H(new CharProgression('a', 'z'), new CharProgression('A', 'Z')), new CharProgression('0', '9'));
        ArrayList arrayList = new ArrayList(CollectionsKt.m(F, 10));
        Iterator it = F.iterator();
        while (it.hasNext()) {
            arrayList.add(Byte.valueOf((byte) ((Character) it.next()).charValue()));
        }
        a = CollectionsKt.a0(arrayList);
        b = CollectionsKt.a0(CollectionsKt.F(CollectionsKt.H(new CharProgression('a', 'z'), new CharProgression('A', 'Z')), new CharProgression('0', '9')));
        CollectionsKt.a0(CollectionsKt.F(CollectionsKt.H(new CharProgression('a', 'f'), new CharProgression('A', 'F')), new CharProgression('0', '9')));
        Set x = ArraysKt.x(new Character[]{':', '/', '?', '#', '[', ']', '@', '!', '$', '&', '\'', '(', ')', '*', ',', ';', '=', '-', '.', '_', '~', '+'});
        ArrayList arrayList2 = new ArrayList(CollectionsKt.m(x, 10));
        Iterator it2 = x.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Byte.valueOf((byte) ((Character) it2.next()).charValue()));
        }
        c = arrayList2;
        ArraysKt.x(new Character[]{':', '@', '!', '$', '&', '\'', '(', ')', '*', '+', ',', ';', '=', '-', '.', '_', '~'});
        SetsKt.d(b, ArraysKt.x(new Character[]{'!', '#', '$', '&', '+', '-', '.', '^', '_', '`', '|', '~'}));
        List C = CollectionsKt.C('-', '.', '_', '~');
        ArrayList arrayList3 = new ArrayList(CollectionsKt.m(C, 10));
        Iterator it3 = C.iterator();
        while (it3.hasNext()) {
            arrayList3.add(Byte.valueOf((byte) ((Character) it3.next()).charValue()));
        }
        d = arrayList3;
    }

    public static final int a(char c2) {
        if ('0' <= c2 && c2 < ':') {
            return c2 - '0';
        }
        if ('A' <= c2 && c2 < 'G') {
            return c2 - '7';
        }
        if ('a' <= c2 && c2 < 'g') {
            return c2 - 'W';
        }
        return -1;
    }

    public static final String b(int i, int i2, String str, boolean z) {
        int i3 = i;
        while (i3 < i2) {
            char charAt = str.charAt(i3);
            if (charAt != '%' && (!z || charAt != '+')) {
                i3++;
            } else {
                int i4 = i2 - i;
                if (i4 > 255) {
                    i4 /= 3;
                }
                StringBuilder sb = new StringBuilder(i4);
                if (i3 > i) {
                    sb.append((CharSequence) str, i, i3);
                }
                byte[] bArr = null;
                while (i3 < i2) {
                    char charAt2 = str.charAt(i3);
                    if (z && charAt2 == '+') {
                        sb.append(' ');
                    } else if (charAt2 == '%') {
                        if (bArr == null) {
                            bArr = new byte[(i2 - i3) / 3];
                        }
                        int i5 = 0;
                        while (i3 < i2 && str.charAt(i3) == '%') {
                            int i6 = i3 + 2;
                            if (i6 < i2) {
                                int i7 = i3 + 1;
                                int a2 = a(str.charAt(i7));
                                int a3 = a(str.charAt(i6));
                                if (a2 != -1 && a3 != -1) {
                                    bArr[i5] = (byte) ((a2 * 16) + a3);
                                    i3 += 3;
                                    i5++;
                                } else {
                                    throw new Exception("Wrong HEX escape: %" + str.charAt(i7) + str.charAt(i6) + ", in " + ((Object) str) + ", at " + i3);
                                }
                            } else {
                                throw new Exception("Incomplete trailing HEX escape: " + str.subSequence(i3, str.length()).toString() + ", in " + ((Object) str) + " at " + i3);
                            }
                        }
                        sb.append(StringsKt.k(0, i5, 4, bArr));
                    } else {
                        sb.append(charAt2);
                    }
                    i3++;
                }
                return sb.toString();
            }
        }
        if (i == 0 && i2 == str.length()) {
            return str.toString();
        }
        return str.substring(i, i2);
    }

    public static String c(String str) {
        int length = str.length();
        Charset charset = Charsets.a;
        str.getClass();
        charset.getClass();
        return b(0, length, str, false);
    }

    public static String d(String str, int i, int i2, int i3) {
        boolean z = false;
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        if ((i3 & 4) == 0) {
            z = true;
        }
        Charset charset = Charsets.a;
        str.getClass();
        charset.getClass();
        return b(i, i2, str, z);
    }

    public static final String e(byte b2) {
        int i;
        int i2;
        int i3 = (b2 & 255) >> 4;
        if (i3 >= 0 && i3 < 10) {
            i = i3 + 48;
        } else {
            i = ((char) (i3 + 65)) - '\n';
        }
        char c2 = (char) i;
        int i4 = b2 & 15;
        if (i4 >= 0 && i4 < 10) {
            i2 = i4 + 48;
        } else {
            i2 = ((char) (i4 + 65)) - '\n';
        }
        return new String(new char[]{'%', c2, (char) i2});
    }
}
