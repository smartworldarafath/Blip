package kotlin.text;

import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.ranges.IntProgression;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class StringsKt__StringsKt extends StringsKt__StringsJVMKt {
    public static final int c(CharSequence charSequence, String str, int i, boolean z) {
        charSequence.getClass();
        str.getClass();
        if (!z && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(str, i);
        }
        int length = charSequence.length();
        if (i < 0) {
            i = 0;
        }
        int length2 = charSequence.length();
        if (length > length2) {
            length = length2;
        }
        IntProgression intProgression = new IntProgression(i, length, 1);
        boolean z2 = charSequence instanceof String;
        int i2 = intProgression.l;
        int i3 = intProgression.k;
        int i4 = intProgression.j;
        if (z2 && (str instanceof String)) {
            if ((i2 > 0 && i4 <= i3) || (i2 < 0 && i3 <= i4)) {
                int i5 = i4;
                while (true) {
                    String str2 = str;
                    boolean z3 = z;
                    if (!StringsKt.A(0, i5, str.length(), str2, (String) charSequence, z3)) {
                        if (i5 == i3) {
                            break;
                        }
                        i5 += i2;
                        str = str2;
                        z = z3;
                    } else {
                        return i5;
                    }
                }
            }
        } else {
            boolean z4 = z;
            if ((i2 > 0 && i4 <= i3) || (i2 < 0 && i3 <= i4)) {
                while (true) {
                    CharSequence charSequence2 = charSequence;
                    boolean z5 = z4;
                    int i6 = i4;
                    if (e(str, 0, charSequence2, i6, str.length(), z5)) {
                        return i6;
                    }
                    if (i6 == i3) {
                        break;
                    }
                    i4 = i6 + i2;
                    charSequence = charSequence2;
                    z4 = z5;
                }
            }
        }
        return -1;
    }

    public static final int d(CharSequence charSequence, char[] cArr, int i, boolean z) {
        charSequence.getClass();
        char c = 0;
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            int length = cArr.length;
            if (length != 0) {
                if (length == 1) {
                    c = cArr[0];
                } else {
                    u2.g("Array has more than one element.");
                }
            } else {
                fe.o("Array is empty.");
            }
            return ((String) charSequence).indexOf(c, i);
        }
        if (i < 0) {
            i = 0;
        }
        int length2 = charSequence.length() - 1;
        if (i > length2) {
            return -1;
        }
        while (true) {
            char charAt = charSequence.charAt(i);
            for (char c2 : cArr) {
                if (CharsKt__CharKt.a(c2, charAt, z)) {
                    return i;
                }
            }
            if (i != length2) {
                i++;
            } else {
                return -1;
            }
        }
    }

    public static final boolean e(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        charSequence.getClass();
        charSequence2.getClass();
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!CharsKt__CharKt.a(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static final void f(int i) {
        if (i >= 0) {
            return;
        }
        fe.l(q.g(i, "Limit must be non-negative, but was "));
    }

    public static final List g(CharSequence charSequence, String str, int i) {
        boolean z;
        f(i);
        int c = c(charSequence, str, 0, false);
        if (c != -1 && i != 1) {
            if (i > 0) {
                z = true;
            } else {
                z = false;
            }
            int i2 = 10;
            if (z && i <= 10) {
                i2 = i;
            }
            ArrayList arrayList = new ArrayList(i2);
            int i3 = 0;
            do {
                arrayList.add(charSequence.subSequence(i3, c).toString());
                i3 = str.length() + c;
                if (z && arrayList.size() == i - 1) {
                    break;
                }
                c = c(charSequence, str, i3, false);
            } while (c != -1);
            arrayList.add(charSequence.subSequence(i3, charSequence.length()).toString());
            return arrayList;
        }
        return CollectionsKt.B(charSequence.toString());
    }
}
