package androidx.compose.ui.platform;

import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AccessibilityIterators$LineTextSegmentIterator extends AccessibilityIterators$AbstractTextSegmentIterator {
    public static AccessibilityIterators$LineTextSegmentIterator d;
    public static final ResolvedTextDirection e = ResolvedTextDirection.k;
    public static final ResolvedTextDirection f = ResolvedTextDirection.j;
    public TextLayoutResult c;

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] a(int i) {
        int i2;
        if (d().length() > 0 && i < d().length()) {
            TextLayoutResult textLayoutResult = this.c;
            ResolvedTextDirection resolvedTextDirection = e;
            if (i < 0) {
                if (textLayoutResult != null) {
                    i2 = textLayoutResult.b.d(0);
                } else {
                    Intrinsics.e("layoutResult");
                    throw null;
                }
            } else if (textLayoutResult != null) {
                int d2 = textLayoutResult.b.d(i);
                if (e(d2, resolvedTextDirection) == i) {
                    i2 = d2;
                } else {
                    i2 = d2 + 1;
                }
            } else {
                Intrinsics.e("layoutResult");
                throw null;
            }
            TextLayoutResult textLayoutResult2 = this.c;
            if (textLayoutResult2 != null) {
                if (i2 < textLayoutResult2.b.f) {
                    return c(e(i2, resolvedTextDirection), e(i2, f) + 1);
                }
            } else {
                Intrinsics.e("layoutResult");
                throw null;
            }
        }
        return null;
    }

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] b(int i) {
        int i2;
        if (d().length() > 0 && i > 0) {
            int length = d().length();
            TextLayoutResult textLayoutResult = this.c;
            ResolvedTextDirection resolvedTextDirection = f;
            if (i > length) {
                if (textLayoutResult != null) {
                    i2 = textLayoutResult.b.d(d().length());
                } else {
                    Intrinsics.e("layoutResult");
                    throw null;
                }
            } else if (textLayoutResult != null) {
                int d2 = textLayoutResult.b.d(i);
                if (e(d2, resolvedTextDirection) + 1 == i) {
                    i2 = d2;
                } else {
                    i2 = d2 - 1;
                }
            } else {
                Intrinsics.e("layoutResult");
                throw null;
            }
            if (i2 >= 0) {
                return c(e(i2, e), e(i2, resolvedTextDirection) + 1);
            }
        }
        return null;
    }

    public final int e(int i, ResolvedTextDirection resolvedTextDirection) {
        TextLayoutResult textLayoutResult = this.c;
        if (textLayoutResult != null) {
            int f2 = textLayoutResult.f(i);
            TextLayoutResult textLayoutResult2 = this.c;
            if (textLayoutResult2 != null) {
                ResolvedTextDirection g = textLayoutResult2.g(f2);
                TextLayoutResult textLayoutResult3 = this.c;
                if (resolvedTextDirection != g) {
                    if (textLayoutResult3 != null) {
                        return textLayoutResult3.f(i);
                    }
                    Intrinsics.e("layoutResult");
                    throw null;
                }
                if (textLayoutResult3 != null) {
                    return textLayoutResult3.b.c(i, false) - 1;
                }
                Intrinsics.e("layoutResult");
                throw null;
            }
            Intrinsics.e("layoutResult");
            throw null;
        }
        Intrinsics.e("layoutResult");
        throw null;
    }
}
