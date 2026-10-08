package kotlin.text;

import defpackage.jb;
import kotlin.ranges.IntProgression;

/* loaded from: classes.dex */
public abstract class CharsKt extends CharsKt__CharKt {
    public static void b(int i) {
        if (2 <= i && i < 37) {
            return;
        }
        StringBuilder j = jb.j("radix ", i, " was not in valid range ");
        j.append(new IntProgression(2, 36, 1));
        throw new IllegalArgumentException(j.toString());
    }

    public static boolean c(char c) {
        if (!Character.isWhitespace(c) && !Character.isSpaceChar(c)) {
            return false;
        }
        return true;
    }
}
