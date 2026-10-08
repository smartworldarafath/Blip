package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.selection.SelectableInfo;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SelectionAdjustmentKt {
    public static final Selection a(SelectionLayout selectionLayout, BoundaryFunction boundaryFunction) {
        boolean z;
        SingleSelectionLayout singleSelectionLayout = (SingleSelectionLayout) selectionLayout;
        CrossStatus a = singleSelectionLayout.a();
        SelectableInfo selectableInfo = singleSelectionLayout.c;
        if (a == CrossStatus.j) {
            z = true;
        } else {
            z = false;
        }
        return new Selection(c(selectableInfo, z, true, boundaryFunction), c(selectableInfo, z, false, boundaryFunction), z);
    }

    public static final Selection.AnchorInfo b(final SelectionLayout selectionLayout, final SelectableInfo selectableInfo, Selection.AnchorInfo anchorInfo) {
        final int i;
        final int i2;
        CrossStatus crossStatus;
        boolean z;
        int i3 = selectableInfo.b;
        int i4 = selectableInfo.a;
        boolean z2 = ((SingleSelectionLayout) selectionLayout).a;
        if (z2) {
            i = i4;
        } else {
            i = i3;
        }
        TextLayoutResult textLayoutResult = selectableInfo.d;
        int i5 = selectableInfo.c;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.k;
        final Lazy a = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: bf
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                return Integer.valueOf(SelectableInfo.this.d.b.d(i));
            }
        });
        if (z2) {
            i2 = i3;
        } else {
            i2 = i4;
        }
        Lazy a2 = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: androidx.compose.foundation.text.selection.b
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                boolean z3;
                SelectableInfo selectableInfo2 = SelectableInfo.this;
                TextLayoutResult textLayoutResult2 = selectableInfo2.d;
                int intValue = ((Number) a.getValue()).intValue();
                SingleSelectionLayout singleSelectionLayout = (SingleSelectionLayout) selectionLayout;
                boolean z4 = singleSelectionLayout.a;
                if (singleSelectionLayout.a() == CrossStatus.j) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                int i6 = i;
                long i7 = textLayoutResult2.i(i6);
                MultiParagraph multiParagraph = textLayoutResult2.b;
                int i8 = TextRange.c;
                int i9 = (int) (i7 >> 32);
                int d = multiParagraph.d(i9);
                int i10 = multiParagraph.f;
                if (d != intValue) {
                    if (intValue >= i10) {
                        i9 = textLayoutResult2.f(i10 - 1);
                    } else {
                        i9 = textLayoutResult2.f(intValue);
                    }
                }
                int i11 = (int) (i7 & 4294967295L);
                if (multiParagraph.d(i11) != intValue) {
                    if (intValue >= i10) {
                        i11 = multiParagraph.c(i10 - 1, false);
                    } else {
                        i11 = multiParagraph.c(intValue, false);
                    }
                }
                int i12 = i2;
                if (i9 == i12) {
                    return selectableInfo2.a(i11);
                }
                if (i11 == i12) {
                    return selectableInfo2.a(i9);
                }
                if (!(z4 ^ z3) ? i6 >= i9 : i6 > i11) {
                    i9 = i11;
                }
                return selectableInfo2.a(i9);
            }
        });
        if (1 != anchorInfo.c) {
            return (Selection.AnchorInfo) a2.getValue();
        }
        if (i == i5) {
            return anchorInfo;
        }
        if (((Number) a.getValue()).intValue() != textLayoutResult.b.d(i5)) {
            return (Selection.AnchorInfo) a2.getValue();
        }
        int i6 = anchorInfo.b;
        long i7 = textLayoutResult.i(i6);
        if (i5 != -1) {
            if (i != i5) {
                if (i4 < i3) {
                    crossStatus = CrossStatus.k;
                } else if (i4 > i3) {
                    crossStatus = CrossStatus.j;
                } else {
                    crossStatus = CrossStatus.l;
                }
                if (crossStatus == CrossStatus.j) {
                    z = true;
                } else {
                    z = false;
                }
                if (!(z ^ z2)) {
                }
            }
            return selectableInfo.a(i);
        }
        int i8 = TextRange.c;
        if (i6 != ((int) (i7 >> 32)) && i6 != ((int) (4294967295L & i7))) {
            return selectableInfo.a(i);
        }
        return (Selection.AnchorInfo) a2.getValue();
    }

    public static final Selection.AnchorInfo c(SelectableInfo selectableInfo, boolean z, boolean z2, BoundaryFunction boundaryFunction) {
        int i;
        long j;
        if (z2) {
            i = selectableInfo.a;
        } else {
            i = selectableInfo.b;
        }
        long a = boundaryFunction.a(selectableInfo, i);
        if (z ^ z2) {
            int i2 = TextRange.c;
            j = a >> 32;
        } else {
            int i3 = TextRange.c;
            j = 4294967295L & a;
        }
        return selectableInfo.a((int) j);
    }

    public static final Selection.AnchorInfo d(Selection.AnchorInfo anchorInfo, SelectableInfo selectableInfo, int i) {
        return new Selection.AnchorInfo(selectableInfo.d.a(i), i, anchorInfo.c);
    }
}
