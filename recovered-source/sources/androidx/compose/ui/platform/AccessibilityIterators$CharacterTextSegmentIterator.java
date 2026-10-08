package androidx.compose.ui.platform;

import java.text.BreakIterator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class AccessibilityIterators$CharacterTextSegmentIterator extends AccessibilityIterators$AbstractTextSegmentIterator {
    public static AccessibilityIterators$CharacterTextSegmentIterator d;
    public BreakIterator c;

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] a(int i) {
        int length = d().length();
        if (length <= 0 || i >= length) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        do {
            BreakIterator breakIterator = this.c;
            if (breakIterator != null) {
                boolean isBoundary = breakIterator.isBoundary(i);
                BreakIterator breakIterator2 = this.c;
                if (!isBoundary) {
                    if (breakIterator2 != null) {
                        i = breakIterator2.following(i);
                    } else {
                        Intrinsics.e("impl");
                        throw null;
                    }
                } else {
                    if (breakIterator2 != null) {
                        int following = breakIterator2.following(i);
                        if (following == -1) {
                            return null;
                        }
                        return c(i, following);
                    }
                    Intrinsics.e("impl");
                    throw null;
                }
            } else {
                Intrinsics.e("impl");
                throw null;
            }
        } while (i != -1);
        return null;
    }

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] b(int i) {
        int length = d().length();
        if (length <= 0 || i <= 0) {
            return null;
        }
        if (i > length) {
            i = length;
        }
        do {
            BreakIterator breakIterator = this.c;
            if (breakIterator != null) {
                boolean isBoundary = breakIterator.isBoundary(i);
                BreakIterator breakIterator2 = this.c;
                if (!isBoundary) {
                    if (breakIterator2 != null) {
                        i = breakIterator2.preceding(i);
                    } else {
                        Intrinsics.e("impl");
                        throw null;
                    }
                } else {
                    if (breakIterator2 != null) {
                        int preceding = breakIterator2.preceding(i);
                        if (preceding == -1) {
                            return null;
                        }
                        return c(preceding, i);
                    }
                    Intrinsics.e("impl");
                    throw null;
                }
            } else {
                Intrinsics.e("impl");
                throw null;
            }
        } while (i != -1);
        return null;
    }
}
