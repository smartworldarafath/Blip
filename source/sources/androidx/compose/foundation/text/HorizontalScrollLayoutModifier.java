package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.q;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HorizontalScrollLayoutModifier implements LayoutModifier {
    public final TextFieldScrollerPosition b;
    public final int c;
    public final TransformedText d;
    public final Function0 e;

    public HorizontalScrollLayoutModifier(TextFieldScrollerPosition textFieldScrollerPosition, int i, TransformedText transformedText, Function0 function0) {
        this.b = textFieldScrollerPosition;
        this.c = i;
        this.d = transformedText;
        this.e = function0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof HorizontalScrollLayoutModifier) {
                HorizontalScrollLayoutModifier horizontalScrollLayoutModifier = (HorizontalScrollLayoutModifier) obj;
                if (this.b == horizontalScrollLayoutModifier.b && this.c == horizontalScrollLayoutModifier.c && this.d.equals(horizontalScrollLayoutModifier.d) && Intrinsics.a(this.e, horizontalScrollLayoutModifier.e)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + q.b(this.c, this.b.hashCode() * 31, 31)) * 31);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public final MeasureResult j(final MeasureScope measureScope, Measurable measurable, long j) {
        long j2;
        Map map;
        if (measurable.p(Constraints.g(j)) < Constraints.h(j)) {
            j2 = j;
        } else {
            j2 = j;
            j = Constraints.a(j2, 0, Integer.MAX_VALUE, 0, 0, 13);
        }
        final Placeable w = measurable.w(j);
        final int min = Math.min(w.j, Constraints.h(j2));
        int i = w.k;
        Function1 function1 = new Function1() { // from class: androidx.compose.foundation.text.f
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                TextLayoutResult textLayoutResult;
                boolean z;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                HorizontalScrollLayoutModifier horizontalScrollLayoutModifier = HorizontalScrollLayoutModifier.this;
                int i2 = horizontalScrollLayoutModifier.c;
                TextFieldScrollerPosition textFieldScrollerPosition = horizontalScrollLayoutModifier.b;
                TransformedText transformedText = horizontalScrollLayoutModifier.d;
                TextLayoutResultProxy textLayoutResultProxy = (TextLayoutResultProxy) horizontalScrollLayoutModifier.e.a();
                if (textLayoutResultProxy != null) {
                    textLayoutResult = textLayoutResultProxy.a;
                } else {
                    textLayoutResult = null;
                }
                TextLayoutResult textLayoutResult2 = textLayoutResult;
                if (measureScope.getLayoutDirection() == LayoutDirection.k) {
                    z = true;
                } else {
                    z = false;
                }
                Placeable placeable = w;
                textFieldScrollerPosition.b(Orientation.k, TextFieldScrollKt.a(placementScope, i2, transformedText, textLayoutResult2, z, placeable.j), min, placeable.j);
                Placeable.PlacementScope.j(placementScope, placeable, Math.round(-textFieldScrollerPosition.a()), 0);
                return Unit.a;
            }
        };
        map = EmptyMap.j;
        return measureScope.B(min, i, map, function1);
    }

    public final String toString() {
        return "HorizontalScrollLayoutModifier(scrollerPosition=" + this.b + ", cursorOffset=" + this.c + ", transformedText=" + this.d + ", textLayoutResultProvider=" + this.e + ")";
    }
}
