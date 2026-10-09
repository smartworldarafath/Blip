package kotlin.time;

import kotlin.jvm.functions.Function1;
import kotlin.time.InstantParseResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class InstantKt {
    public static final int[] a = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000};
    public static final int[] b = {1, 2, 4, 5, 7, 8, 10, 11, 13, 14};
    public static final int[] c = {3, 6};
    public static final int[] d = {1, 2, 4, 5, 7, 8};

    public static final void a(StringBuilder sb, StringBuilder sb2, int i) {
        if (i < 10) {
            sb.append('0');
        }
        sb2.append(i);
    }

    public static final InstantParseResult.Failure b(CharSequence charSequence, String str, int i, Function1 function1) {
        char charAt = charSequence.charAt(i);
        if (((Boolean) function1.b(Character.valueOf(charAt))).booleanValue()) {
            return null;
        }
        return c(charSequence, "Expected " + str + ", but got '" + charAt + "' at position " + i);
    }

    public static final InstantParseResult.Failure c(CharSequence charSequence, String str) {
        return new InstantParseResult.Failure(charSequence, str + " when parsing an Instant from \"" + e(charSequence, 64) + '\"');
    }

    public static final int d(CharSequence charSequence, int i) {
        return (charSequence.charAt(i + 1) - '0') + ((charSequence.charAt(i) - '0') * 10);
    }

    public static final String e(CharSequence charSequence, int i) {
        if (charSequence.length() <= i) {
            return charSequence.toString();
        }
        return charSequence.subSequence(0, i).toString() + "...";
    }
}
