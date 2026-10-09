package androidx.compose.ui.text.android;

import android.graphics.RectF;
import android.text.Layout;
import androidx.compose.ui.text.android.LayoutHelper;
import androidx.compose.ui.text.android.selection.SegmentFinder;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.d;
import java.text.Bidi;
import kotlin.ranges.IntProgression;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextLayoutGetRangeForRectExtensions_androidKt {
    public static final float a(int i, int i2, float[] fArr) {
        return fArr[((i - i2) * 2) + 1];
    }

    public static final int b(TextLayout textLayout, Layout layout, LayoutHelper layoutHelper, int i, RectF rectF, SegmentFinder segmentFinder, d dVar, boolean z) {
        boolean z2;
        LayoutHelper.BidiRun[] bidiRunArr;
        IntProgression intProgression;
        float f;
        float a;
        LayoutHelper.BidiRun[] bidiRunArr2;
        int i2;
        int d;
        float f2;
        float a2;
        int i3;
        int i4;
        int c;
        float f3;
        float a3;
        Bidi createLineBidi;
        boolean z3;
        boolean z4;
        float a4;
        float a5;
        float f4;
        int lineTop = layout.getLineTop(i);
        int lineBottom = layout.getLineBottom(i);
        int lineStart = layout.getLineStart(i);
        int lineEnd = layout.getLineEnd(i);
        if (lineStart == lineEnd) {
            return -1;
        }
        int i5 = (lineEnd - lineStart) * 2;
        float[] fArr = new float[i5];
        Layout layout2 = textLayout.f;
        int lineStart2 = layout2.getLineStart(i);
        int g = textLayout.g(i);
        if (i5 < (g - lineStart2) * 2) {
            InlineClassHelperKt.a("array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 2");
        }
        HorizontalPositionCache horizontalPositionCache = new HorizontalPositionCache(textLayout);
        boolean z5 = false;
        if (layout2.getParagraphDirection(i) == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        int i6 = 0;
        while (lineStart2 < g) {
            boolean isRtlCharAt = layout2.isRtlCharAt(lineStart2);
            if (z2 && !isRtlCharAt) {
                a4 = horizontalPositionCache.a(lineStart2, z5, z5, true);
                f4 = horizontalPositionCache.a(lineStart2 + 1, true, true, true);
                z4 = z2;
            } else if (z2 && isRtlCharAt) {
                z4 = z2;
                f4 = horizontalPositionCache.a(lineStart2, false, false, false);
                a4 = horizontalPositionCache.a(lineStart2 + 1, true, true, false);
            } else {
                z4 = z2;
                if (isRtlCharAt) {
                    a5 = horizontalPositionCache.a(lineStart2, false, false, true);
                    a4 = horizontalPositionCache.a(lineStart2 + 1, true, true, true);
                } else {
                    a4 = horizontalPositionCache.a(lineStart2, false, false, false);
                    a5 = horizontalPositionCache.a(lineStart2 + 1, true, true, false);
                }
                f4 = a5;
            }
            fArr[i6] = a4;
            fArr[i6 + 1] = f4;
            i6 += 2;
            lineStart2++;
            z2 = z4;
            z5 = false;
        }
        Layout layout3 = layoutHelper.a;
        int lineStart3 = layout3.getLineStart(i);
        int lineEnd2 = layout3.getLineEnd(i);
        int d2 = layoutHelper.d(lineStart3, false);
        int e = layoutHelper.e(d2);
        int i7 = lineStart3 - e;
        int i8 = lineEnd2 - e;
        Bidi a6 = layoutHelper.a(d2);
        if (a6 != null && (createLineBidi = a6.createLineBidi(i7, i8)) != null) {
            int runCount = createLineBidi.getRunCount();
            bidiRunArr = new LayoutHelper.BidiRun[runCount];
            int i9 = 0;
            while (i9 < runCount) {
                int runStart = createLineBidi.getRunStart(i9) + lineStart3;
                int runLimit = createLineBidi.getRunLimit(i9) + lineStart3;
                int i10 = runCount;
                if (createLineBidi.getRunLevel(i9) % 2 == 1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                bidiRunArr[i9] = new LayoutHelper.BidiRun(runStart, runLimit, z3);
                i9++;
                runCount = i10;
            }
        } else {
            bidiRunArr = new LayoutHelper.BidiRun[]{new LayoutHelper.BidiRun(lineStart3, lineEnd2, layout3.isRtlCharAt(lineStart3))};
        }
        if (z) {
            intProgression = new IntProgression(0, bidiRunArr.length - 1, 1);
        } else {
            intProgression = new IntProgression(bidiRunArr.length - 1, 0, -1);
        }
        int i11 = intProgression.j;
        int i12 = intProgression.k;
        int i13 = intProgression.l;
        if ((i13 <= 0 || i11 > i12) && (i13 >= 0 || i12 > i11)) {
            return -1;
        }
        while (true) {
            LayoutHelper.BidiRun bidiRun = bidiRunArr[i11];
            boolean z6 = bidiRun.c;
            int i14 = bidiRun.a;
            int i15 = bidiRun.b;
            if (z6) {
                f = fArr[((i15 - 1) - lineStart) * 2];
            } else {
                f = fArr[(i14 - lineStart) * 2];
            }
            if (z6) {
                a = a(i14, lineStart, fArr);
            } else {
                a = a(i15 - 1, lineStart, fArr);
            }
            float f5 = rectF.left;
            int i16 = i13;
            if (z) {
                if (a >= f5) {
                    float f6 = rectF.right;
                    if (f <= f6) {
                        if ((!z6 && f5 <= f) || (z6 && f6 >= a)) {
                            i4 = i14;
                        } else {
                            int i17 = i15;
                            int i18 = i14;
                            while (true) {
                                i3 = i17;
                                if (i17 - i18 <= 1) {
                                    break;
                                }
                                int i19 = (i3 + i18) / 2;
                                float f7 = fArr[(i19 - lineStart) * 2];
                                if ((!z6 && f7 > rectF.left) || (z6 && f7 < rectF.right)) {
                                    i17 = i19;
                                } else {
                                    i17 = i3;
                                    i18 = i19;
                                }
                            }
                            if (z6) {
                                i4 = i3;
                            } else {
                                i4 = i18;
                            }
                        }
                        int d3 = segmentFinder.d(i4);
                        if (d3 != -1 && (c = segmentFinder.c(d3)) < i15) {
                            if (c >= i14) {
                                i14 = c;
                            }
                            if (d3 > i15) {
                                d3 = i15;
                            }
                            bidiRunArr2 = bidiRunArr;
                            RectF rectF2 = new RectF(0.0f, lineTop, 0.0f, lineBottom);
                            int i20 = d3;
                            while (true) {
                                if (z6) {
                                    f3 = fArr[((i20 - 1) - lineStart) * 2];
                                } else {
                                    f3 = fArr[(i14 - lineStart) * 2];
                                }
                                rectF2.left = f3;
                                if (z6) {
                                    a3 = a(i14, lineStart, fArr);
                                } else {
                                    a3 = a(i20 - 1, lineStart, fArr);
                                }
                                rectF2.right = a3;
                                if (!((Boolean) dVar.n(rectF2, rectF)).booleanValue()) {
                                    i14 = segmentFinder.a(i14);
                                    if (i14 == -1 || i14 >= i15) {
                                        break;
                                    }
                                    i20 = segmentFinder.d(i14);
                                    if (i20 > i15) {
                                        i20 = i15;
                                    }
                                } else {
                                    break;
                                }
                            }
                            i14 = -1;
                        }
                    }
                }
                bidiRunArr2 = bidiRunArr;
                i14 = -1;
            } else {
                bidiRunArr2 = bidiRunArr;
                if (a >= f5) {
                    float f8 = rectF.right;
                    if (f <= f8) {
                        if ((!z6 && f8 >= a) || (z6 && f5 <= f)) {
                            i2 = i15 - 1;
                        } else {
                            int i21 = i15;
                            int i22 = i14;
                            while (i21 - i22 > 1) {
                                int i23 = (i21 + i22) / 2;
                                float f9 = fArr[(i23 - lineStart) * 2];
                                int i24 = i21;
                                if ((!z6 && f9 > rectF.right) || (z6 && f9 < rectF.left)) {
                                    i21 = i23;
                                } else {
                                    i21 = i24;
                                    i22 = i23;
                                }
                            }
                            int i25 = i21;
                            if (z6) {
                                i2 = i25;
                            } else {
                                i2 = i22;
                            }
                        }
                        int c2 = segmentFinder.c(i2 + 1);
                        if (c2 != -1 && (d = segmentFinder.d(c2)) > i14) {
                            if (c2 < i14) {
                                c2 = i14;
                            }
                            if (d <= i15) {
                                i15 = d;
                            }
                            RectF rectF3 = new RectF(0.0f, lineTop, 0.0f, lineBottom);
                            int i26 = c2;
                            while (true) {
                                if (z6) {
                                    f2 = fArr[((i15 - 1) - lineStart) * 2];
                                } else {
                                    f2 = fArr[(i26 - lineStart) * 2];
                                }
                                rectF3.left = f2;
                                if (z6) {
                                    a2 = a(i26, lineStart, fArr);
                                } else {
                                    a2 = a(i15 - 1, lineStart, fArr);
                                }
                                rectF3.right = a2;
                                if (!((Boolean) dVar.n(rectF3, rectF)).booleanValue()) {
                                    i15 = segmentFinder.b(i15);
                                    if (i15 == -1 || i15 <= i14) {
                                        break;
                                    }
                                    i26 = segmentFinder.c(i15);
                                    if (i26 < i14) {
                                        i26 = i14;
                                    }
                                } else {
                                    break;
                                }
                            }
                        }
                    }
                }
                i15 = -1;
                i14 = i15;
            }
            if (i14 >= 0) {
                return i14;
            }
            if (i11 == i12) {
                return -1;
            }
            i11 += i16;
            i13 = i16;
            bidiRunArr = bidiRunArr2;
        }
    }
}
