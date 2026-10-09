package androidx.compose.ui.platform;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AccessibilityIterators$PageTextSegmentIterator extends AccessibilityIterators$AbstractTextSegmentIterator {
    public static AccessibilityIterators$PageTextSegmentIterator e;
    public static final ResolvedTextDirection f = ResolvedTextDirection.k;
    public static final ResolvedTextDirection g = ResolvedTextDirection.j;
    public TextLayoutResult c;
    public SemanticsNode d;

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] a(int i) {
        int i2;
        if (d().length() > 0 && i < d().length()) {
            try {
                SemanticsNode semanticsNode = this.d;
                if (semanticsNode != null) {
                    Rect g2 = semanticsNode.g();
                    int round = Math.round(g2.d - g2.b);
                    if (i <= 0) {
                        i = 0;
                    }
                    TextLayoutResult textLayoutResult = this.c;
                    if (textLayoutResult != null) {
                        int d = textLayoutResult.b.d(i);
                        TextLayoutResult textLayoutResult2 = this.c;
                        if (textLayoutResult2 != null) {
                            float f2 = textLayoutResult2.b.f(d) + round;
                            TextLayoutResult textLayoutResult3 = this.c;
                            if (textLayoutResult3 != null) {
                                float f3 = textLayoutResult3.b.f(r0.f - 1);
                                TextLayoutResult textLayoutResult4 = this.c;
                                if (f2 < f3) {
                                    if (textLayoutResult4 != null) {
                                        i2 = textLayoutResult4.b.e(f2);
                                    } else {
                                        Intrinsics.e("layoutResult");
                                        throw null;
                                    }
                                } else if (textLayoutResult4 != null) {
                                    i2 = textLayoutResult4.b.f;
                                } else {
                                    Intrinsics.e("layoutResult");
                                    throw null;
                                }
                                return c(i, e(i2 - 1, g) + 1);
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
                Intrinsics.e("node");
                throw null;
            } catch (IllegalStateException unused) {
            }
        }
        return null;
    }

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] b(int i) {
        int i2;
        if (d().length() > 0 && i > 0) {
            try {
                SemanticsNode semanticsNode = this.d;
                if (semanticsNode != null) {
                    Rect g2 = semanticsNode.g();
                    int round = Math.round(g2.d - g2.b);
                    int length = d().length();
                    if (length <= i) {
                        i = length;
                    }
                    TextLayoutResult textLayoutResult = this.c;
                    if (textLayoutResult != null) {
                        int d = textLayoutResult.b.d(i);
                        TextLayoutResult textLayoutResult2 = this.c;
                        if (textLayoutResult2 != null) {
                            float f2 = textLayoutResult2.b.f(d) - round;
                            if (f2 > 0.0f) {
                                TextLayoutResult textLayoutResult3 = this.c;
                                if (textLayoutResult3 != null) {
                                    i2 = textLayoutResult3.b.e(f2);
                                } else {
                                    Intrinsics.e("layoutResult");
                                    throw null;
                                }
                            } else {
                                i2 = 0;
                            }
                            if (i == d().length() && i2 < d) {
                                i2++;
                            }
                            return c(e(i2, f), i);
                        }
                        Intrinsics.e("layoutResult");
                        throw null;
                    }
                    Intrinsics.e("layoutResult");
                    throw null;
                }
                Intrinsics.e("node");
                throw null;
            } catch (IllegalStateException unused) {
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
                ResolvedTextDirection g2 = textLayoutResult2.g(f2);
                TextLayoutResult textLayoutResult3 = this.c;
                if (resolvedTextDirection != g2) {
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
