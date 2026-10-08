package androidx.compose.ui.platform;

import java.text.BreakIterator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AccessibilityIterators$WordTextSegmentIterator extends AccessibilityIterators$AbstractTextSegmentIterator {
    public static AccessibilityIterators$WordTextSegmentIterator d;
    public BreakIterator c;

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] a(int i) {
        if (d().length() > 0 && i < d().length()) {
            if (i < 0) {
                i = 0;
            }
            while (!f(i) && (!f(i) || (i != 0 && f(i - 1)))) {
                BreakIterator breakIterator = this.c;
                if (breakIterator != null) {
                    i = breakIterator.following(i);
                    if (i == -1) {
                        break;
                    }
                } else {
                    Intrinsics.e("impl");
                    throw null;
                }
            }
            BreakIterator breakIterator2 = this.c;
            if (breakIterator2 != null) {
                int following = breakIterator2.following(i);
                if (following != -1 && e(following)) {
                    return c(i, following);
                }
            } else {
                Intrinsics.e("impl");
                throw null;
            }
        }
        return null;
    }

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] b(int i) {
        int length = d().length();
        if (length > 0 && i > 0) {
            if (i > length) {
                i = length;
            }
            while (i > 0 && !f(i - 1) && !e(i)) {
                BreakIterator breakIterator = this.c;
                if (breakIterator != null) {
                    i = breakIterator.preceding(i);
                    if (i == -1) {
                        break;
                    }
                } else {
                    Intrinsics.e("impl");
                    throw null;
                }
            }
            BreakIterator breakIterator2 = this.c;
            if (breakIterator2 != null) {
                int preceding = breakIterator2.preceding(i);
                if (preceding != -1 && f(preceding) && (preceding == 0 || !f(preceding - 1))) {
                    return c(preceding, i);
                }
            } else {
                Intrinsics.e("impl");
                throw null;
            }
        }
        return null;
    }

    public final boolean e(int i) {
        if (i > 0 && f(i - 1)) {
            if (i == d().length() || !f(i)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean f(int i) {
        if (i >= 0 && i < d().length()) {
            return Character.isLetterOrDigit(d().codePointAt(i));
        }
        return false;
    }
}
