package kotlin.text;

import defpackage.fe;
import defpackage.jb;
import defpackage.q7;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.AbstractList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;
import kotlin.sequences.TransformingSequence;

/* loaded from: classes.dex */
public abstract class StringsKt extends StringsKt___StringsKt {
    public static boolean A(int i, int i2, int i3, String str, String str2, boolean z) {
        str.getClass();
        str2.getClass();
        if (!z) {
            return str.regionMatches(i, str2, i2, i3);
        }
        return str.regionMatches(z, i, str2, i2, i3);
    }

    public static String B(String str, String str2) {
        str.getClass();
        if (J(str, str2, false)) {
            return str.substring(str2.length());
        }
        return str;
    }

    public static String C(String str, String str2) {
        if (m(str, str2)) {
            return str.substring(0, str.length() - str2.length());
        }
        return str;
    }

    public static String D(int i, String str) {
        if (i >= 0) {
            if (i != 0) {
                int i2 = 1;
                if (i != 1) {
                    int length = str.length();
                    if (length != 0) {
                        if (length != 1) {
                            StringBuilder sb = new StringBuilder(str.length() * i);
                            if (1 <= i) {
                                while (true) {
                                    sb.append((CharSequence) str);
                                    if (i2 == i) {
                                        break;
                                    }
                                    i2++;
                                }
                            }
                            return sb.toString();
                        }
                        char charAt = str.charAt(0);
                        char[] cArr = new char[i];
                        for (int i3 = 0; i3 < i; i3++) {
                            cArr[i3] = charAt;
                        }
                        return new String(cArr);
                    }
                    return "";
                }
                return str.toString();
            }
            return "";
        }
        throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i + '.').toString());
    }

    public static String E(String str, char c, char c2) {
        str.getClass();
        String replace = str.replace(c, c2);
        replace.getClass();
        return replace;
    }

    public static String F(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        int c = StringsKt__StringsKt.c(str, str2, 0, false);
        if (c < 0) {
            return str;
        }
        int length = str2.length();
        int i = 1;
        if (length >= 1) {
            i = length;
        }
        int length2 = str3.length() + (str.length() - length);
        if (length2 >= 0) {
            StringBuilder sb = new StringBuilder(length2);
            int i2 = 0;
            do {
                sb.append((CharSequence) str, i2, c);
                sb.append(str3);
                i2 = c + length;
                if (c >= str.length()) {
                    break;
                }
                c = StringsKt__StringsKt.c(str, str2, c + i, false);
            } while (c > 0);
            sb.append((CharSequence) str, i2, str.length());
            return sb.toString();
        }
        throw new OutOfMemoryError();
    }

    public static List G(CharSequence charSequence, String[] strArr, int i) {
        int i2;
        if ((i & 4) != 0) {
            i2 = 0;
        } else {
            i2 = 2;
        }
        charSequence.getClass();
        int i3 = 1;
        if (strArr.length == 1) {
            String str = strArr[0];
            if (str.length() > 0) {
                return StringsKt__StringsKt.g(charSequence, str, i2);
            }
        }
        StringsKt__StringsKt.f(i2);
        List asList = Arrays.asList(strArr);
        asList.getClass();
        DelimitedRangesSequence delimitedRangesSequence = new DelimitedRangesSequence(charSequence, i2, new b(i3, asList));
        ArrayList arrayList = new ArrayList(CollectionsKt.m(new SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1(delimitedRangesSequence), 10));
        Iterator it = delimitedRangesSequence.iterator();
        while (it.hasNext()) {
            IntRange intRange = (IntRange) it.next();
            intRange.getClass();
            arrayList.add(charSequence.subSequence(intRange.j, intRange.k + 1).toString());
        }
        return arrayList;
    }

    public static List H(String str, char[] cArr) {
        int i = 0;
        if (cArr.length == 1) {
            return StringsKt__StringsKt.g(str, String.valueOf(cArr[0]), 0);
        }
        StringsKt__StringsKt.f(0);
        DelimitedRangesSequence delimitedRangesSequence = new DelimitedRangesSequence(str, 0, new b(i, cArr));
        ArrayList arrayList = new ArrayList(CollectionsKt.m(new SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1(delimitedRangesSequence), 10));
        Iterator it = delimitedRangesSequence.iterator();
        while (it.hasNext()) {
            IntRange intRange = (IntRange) it.next();
            intRange.getClass();
            arrayList.add(str.subSequence(intRange.j, intRange.k + 1).toString());
        }
        return arrayList;
    }

    public static boolean I(int i, String str, String str2, boolean z) {
        str.getClass();
        if (!z) {
            return str.startsWith(str2, i);
        }
        return A(i, 0, str2.length(), str, str2, z);
    }

    public static boolean J(String str, String str2, boolean z) {
        str.getClass();
        str2.getClass();
        if (!z) {
            return str.startsWith(str2);
        }
        return A(0, 0, str2.length(), str, str2, z);
    }

    public static boolean K(String str) {
        str.getClass();
        if (str.length() <= 0 || !CharsKt__CharKt.a(str.charAt(0), '/', false)) {
            return false;
        }
        return true;
    }

    public static String L(String str, String str2) {
        int r = r(str, str2, 0, false, 6);
        if (r == -1) {
            return str;
        }
        return str.substring(str2.length() + r, str.length());
    }

    public static String M(String str, char c, String str2) {
        str.getClass();
        int v = v(str, c, 0, 6);
        if (v == -1) {
            return str2;
        }
        return str.substring(v + 1, str.length());
    }

    public static String N(String str, char c) {
        str.getClass();
        str.getClass();
        int q = q(str, c, 0, 6);
        if (q == -1) {
            return str;
        }
        return str.substring(0, q);
    }

    public static String O(String str, char c) {
        str.getClass();
        str.getClass();
        int v = v(str, c, 0, 6);
        if (v == -1) {
            return str;
        }
        return str.substring(0, v);
    }

    public static CharSequence P(CharSequence charSequence, int i) {
        charSequence.getClass();
        if (i >= 0) {
            int length = charSequence.length();
            if (i > length) {
                i = length;
            }
            return charSequence.subSequence(0, i);
        }
        fe.l(jb.d("Requested character count ", i, " is less than zero."));
        return null;
    }

    public static String Q(int i, String str) {
        str.getClass();
        if (i >= 0) {
            int length = str.length();
            if (i > length) {
                i = length;
            }
            return str.substring(0, i);
        }
        fe.l(jb.d("Requested character count ", i, " is less than zero."));
        return null;
    }

    public static Double R(String str) {
        str.getClass();
        try {
            if (StringsKt__StringNumberConversionsJVMKt.a(str)) {
                return Double.valueOf(Double.parseDouble(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Integer S(String str) {
        boolean z;
        int i;
        int i2;
        str.getClass();
        CharsKt.b(10);
        int length = str.length();
        if (length != 0) {
            int i3 = 0;
            char charAt = str.charAt(0);
            int i4 = -2147483647;
            if (charAt < '0') {
                i = 1;
                if (length != 1) {
                    if (charAt != '+') {
                        if (charAt == '-') {
                            i4 = Integer.MIN_VALUE;
                            z = true;
                        } else {
                            return null;
                        }
                    } else {
                        z = false;
                    }
                } else {
                    return null;
                }
            } else {
                z = false;
                i = 0;
            }
            int i5 = -59652323;
            while (i < length) {
                int digit = Character.digit((int) str.charAt(i), 10);
                if (digit >= 0) {
                    if ((i3 < i5 && (i5 != -59652323 || i3 < (i5 = i4 / 10))) || (i2 = i3 * 10) < i4 + digit) {
                        return null;
                    }
                    i3 = i2 - digit;
                    i++;
                } else {
                    return null;
                }
            }
            if (z) {
                return Integer.valueOf(i3);
            }
            return Integer.valueOf(-i3);
        }
        return null;
    }

    public static Long T(String str) {
        boolean z;
        str.getClass();
        CharsKt.b(10);
        int length = str.length();
        if (length != 0) {
            int i = 0;
            char charAt = str.charAt(0);
            long j = -9223372036854775807L;
            if (charAt < '0') {
                z = true;
                if (length != 1) {
                    if (charAt != '+') {
                        if (charAt == '-') {
                            j = Long.MIN_VALUE;
                            i = 1;
                        } else {
                            return null;
                        }
                    } else {
                        z = false;
                        i = 1;
                    }
                } else {
                    return null;
                }
            } else {
                z = false;
            }
            long j2 = 0;
            long j3 = -256204778801521550L;
            while (i < length) {
                int digit = Character.digit((int) str.charAt(i), 10);
                if (digit >= 0) {
                    if (j2 < j3) {
                        if (j3 == -256204778801521550L) {
                            j3 = j / 10;
                            if (j2 < j3) {
                                return null;
                            }
                        } else {
                            return null;
                        }
                    }
                    long j4 = j2 * 10;
                    long j5 = digit;
                    if (j4 < j + j5) {
                        return null;
                    }
                    j2 = j4 - j5;
                    i++;
                } else {
                    return null;
                }
            }
            if (z) {
                return Long.valueOf(j2);
            }
            return Long.valueOf(-j2);
        }
        return null;
    }

    public static CharSequence U(CharSequence charSequence) {
        int i;
        charSequence.getClass();
        int length = charSequence.length() - 1;
        int i2 = 0;
        boolean z = false;
        while (i2 <= length) {
            if (!z) {
                i = i2;
            } else {
                i = length;
            }
            boolean c = CharsKt.c(charSequence.charAt(i));
            if (!z) {
                if (!c) {
                    z = true;
                } else {
                    i2++;
                }
            } else {
                if (!c) {
                    break;
                }
                length--;
            }
        }
        return charSequence.subSequence(i2, length + 1);
    }

    public static String V(String str) {
        int i;
        Comparable comparable;
        int i2;
        String str2;
        List x = x(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : x) {
            if (!t((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.m(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            String str3 = (String) it.next();
            int length = str3.length();
            while (true) {
                if (i < length) {
                    if (!CharsKt.c(str3.charAt(i))) {
                        break;
                    }
                    i++;
                } else {
                    i = -1;
                    break;
                }
            }
            if (i == -1) {
                i = str3.length();
            }
            arrayList2.add(Integer.valueOf(i));
        }
        Iterator it2 = arrayList2.iterator();
        if (!it2.hasNext()) {
            comparable = null;
        } else {
            comparable = (Comparable) it2.next();
            while (it2.hasNext()) {
                Comparable comparable2 = (Comparable) it2.next();
                if (comparable.compareTo(comparable2) > 0) {
                    comparable = comparable2;
                }
            }
        }
        Integer num = (Integer) comparable;
        if (num != null) {
            i2 = num.intValue();
        } else {
            i2 = 0;
        }
        int length2 = str.length();
        x.size();
        int size = x.size() - 1;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : x) {
            int i3 = i + 1;
            if (i >= 0) {
                String str4 = (String) obj2;
                if ((i == 0 || i == size) && t(str4)) {
                    str2 = null;
                } else {
                    str4.getClass();
                    if (i2 >= 0) {
                        int length3 = str4.length();
                        if (i2 <= length3) {
                            length3 = i2;
                        }
                        str2 = str4.substring(length3);
                    } else {
                        fe.l(jb.d("Requested character count ", i2, " is less than zero."));
                        return null;
                    }
                }
                if (str2 != null) {
                    arrayList3.add(str2);
                }
                i = i3;
            } else {
                CollectionsKt.T();
                throw null;
            }
        }
        StringBuilder sb = new StringBuilder(length2);
        CollectionsKt.x(arrayList3, sb, "\n", null, 124);
        return sb.toString();
    }

    public static String W(String str) {
        String substring;
        if (!t("|")) {
            List x = x(str);
            int length = str.length();
            x.size();
            int size = x.size() - 1;
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (Object obj : x) {
                int i2 = i + 1;
                if (i >= 0) {
                    String str2 = (String) obj;
                    if ((i == 0 || i == size) && t(str2)) {
                        str2 = null;
                    } else {
                        int length2 = str2.length();
                        int i3 = 0;
                        while (true) {
                            if (i3 < length2) {
                                if (!CharsKt.c(str2.charAt(i3))) {
                                    break;
                                }
                                i3++;
                            } else {
                                i3 = -1;
                                break;
                            }
                        }
                        if (i3 == -1 || !I(i3, str2, "|", false)) {
                            substring = null;
                        } else {
                            substring = str2.substring("|".length() + i3);
                        }
                        if (substring != null) {
                            str2 = substring;
                        }
                    }
                    if (str2 != null) {
                        arrayList.add(str2);
                    }
                    i = i2;
                } else {
                    CollectionsKt.T();
                    throw null;
                }
            }
            StringBuilder sb = new StringBuilder(length);
            CollectionsKt.x(arrayList, sb, "\n", null, 124);
            return sb.toString();
        }
        u2.g("marginPrefix must be non-blank string.");
        return null;
    }

    public static void h(StringBuilder sb, Object obj, Function1 function1) {
        boolean z;
        if (function1 != null) {
            sb.append((CharSequence) function1.b(obj));
            return;
        }
        if (obj == null) {
            z = true;
        } else {
            z = obj instanceof CharSequence;
        }
        if (z) {
            sb.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            sb.append(((Character) obj).charValue());
        } else {
            sb.append((CharSequence) obj.toString());
        }
    }

    public static boolean i(CharSequence charSequence, String str, boolean z) {
        charSequence.getClass();
        if (r(charSequence, str, 0, z, 2) < 0) {
            return false;
        }
        return true;
    }

    public static boolean j(CharSequence charSequence, char c) {
        charSequence.getClass();
        if (q(charSequence, c, 0, 2) < 0) {
            return false;
        }
        return true;
    }

    public static String k(int i, int i2, int i3, byte[] bArr) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        bArr.getClass();
        AbstractList.Companion.a(i, i2, bArr.length);
        return new String(bArr, i, i2 - i, Charsets.a);
    }

    public static boolean l(String str, String str2, boolean z) {
        str.getClass();
        if (!z) {
            return str.endsWith(str2);
        }
        return str.regionMatches(true, str.length() - str2.length(), str2, 0, str2.length());
    }

    public static boolean m(CharSequence charSequence, String str) {
        if (charSequence instanceof String) {
            return l((String) charSequence, str, false);
        }
        return StringsKt__StringsKt.e(charSequence, charSequence.length() - str.length(), str, 0, str.length(), false);
    }

    public static boolean n(String str, char c) {
        if (str.length() <= 0 || !CharsKt__CharKt.a(str.charAt(str.length() - 1), c, false)) {
            return false;
        }
        return true;
    }

    public static boolean o(String str, String str2, boolean z) {
        if (str == null) {
            if (str2 == null) {
                return true;
            }
            return false;
        }
        if (!z) {
            return str.equals(str2);
        }
        return str.equalsIgnoreCase(str2);
    }

    public static int p(CharSequence charSequence) {
        charSequence.getClass();
        return charSequence.length() - 1;
    }

    public static int q(CharSequence charSequence, char c, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        charSequence.getClass();
        if (!(charSequence instanceof String)) {
            return StringsKt__StringsKt.d(charSequence, new char[]{c}, i, false);
        }
        return ((String) charSequence).indexOf(c, i);
    }

    public static /* synthetic */ int r(CharSequence charSequence, String str, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return StringsKt__StringsKt.c(charSequence, str, i, z);
    }

    public static boolean t(CharSequence charSequence) {
        charSequence.getClass();
        for (int i = 0; i < charSequence.length(); i++) {
            if (!CharsKt.c(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static char u(CharSequence charSequence) {
        if (charSequence.length() != 0) {
            return charSequence.charAt(charSequence.length() - 1);
        }
        fe.o("Char sequence is empty.");
        return (char) 0;
    }

    public static int v(String str, char c, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = p(str);
        }
        str.getClass();
        return str.lastIndexOf(c, i);
    }

    public static int w(String str, int i, String str2) {
        int i2;
        if ((i & 2) != 0) {
            i2 = p(str);
        } else {
            i2 = 0;
        }
        str.getClass();
        str2.getClass();
        return str.lastIndexOf(str2, i2);
    }

    public static List x(String str) {
        str.getClass();
        return SequencesKt.h(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(str));
    }

    public static String y(int i, String str) {
        CharSequence charSequence;
        str.getClass();
        if (i >= 0) {
            if (i <= str.length()) {
                charSequence = str.subSequence(0, str.length());
            } else {
                StringBuilder sb = new StringBuilder(i);
                int length = i - str.length();
                int i2 = 1;
                if (1 <= length) {
                    while (true) {
                        sb.append('0');
                        if (i2 == length) {
                            break;
                        }
                        i2++;
                    }
                }
                sb.append((CharSequence) str);
                charSequence = sb;
            }
            return charSequence.toString();
        }
        u2.g(jb.d("Desired length ", i, " is less than zero."));
        return null;
    }

    public static String z(String str) {
        return SequencesKt.f(new TransformingSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(str), new q7("    ", 6)), "\n");
    }
}
