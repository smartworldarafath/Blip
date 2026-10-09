package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.unit.Constraints;
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
public final class VerticalScrollLayoutModifier implements LayoutModifier {
    public final TextFieldScrollerPosition b;
    public final int c;
    public final TransformedText d;
    public final Function0 e;

    public VerticalScrollLayoutModifier(TextFieldScrollerPosition textFieldScrollerPosition, int i, TransformedText transformedText, Function0 function0) {
        this.b = textFieldScrollerPosition;
        this.c = i;
        this.d = transformedText;
        this.e = function0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof VerticalScrollLayoutModifier) {
                VerticalScrollLayoutModifier verticalScrollLayoutModifier = (VerticalScrollLayoutModifier) obj;
                if (this.b == verticalScrollLayoutModifier.b && this.c == verticalScrollLayoutModifier.c && this.d.equals(verticalScrollLayoutModifier.d) && Intrinsics.a(this.e, verticalScrollLayoutModifier.e)) {
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
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Map map;
        final Placeable w = measurable.w(Constraints.a(j, 0, 0, 0, Integer.MAX_VALUE, 7));
        final int min = Math.min(w.k, Constraints.g(j));
        int i = w.j;
        Function1 function1 = new Function1() { // from class: androidx.compose.foundation.text.l
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                TextLayoutResult textLayoutResult;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                VerticalScrollLayoutModifier verticalScrollLayoutModifier = VerticalScrollLayoutModifier.this;
                int i2 = verticalScrollLayoutModifier.c;
                TextFieldScrollerPosition textFieldScrollerPosition = verticalScrollLayoutModifier.b;
                TransformedText transformedText = verticalScrollLayoutModifier.d;
                TextLayoutResultProxy textLayoutResultProxy = (TextLayoutResultProxy) verticalScrollLayoutModifier.e.a();
                if (textLayoutResultProxy != null) {
                    textLayoutResult = textLayoutResultProxy.a;
                } else {
                    textLayoutResult = null;
                }
                TextLayoutResult textLayoutResult2 = textLayoutResult;
                Placeable placeable = w;
                Rect a = TextFieldScrollKt.a(placementScope, i2, transformedText, textLayoutResult2, false, placeable.j);
                textFieldScrollerPosition.b(Orientation.j, a, min, placeable.k);
                Placeable.PlacementScope.j(placementScope, placeable, 0, Math.round(-textFieldScrollerPosition.a()));
                return Unit.a;
            }
        };
        map = EmptyMap.j;
        return measureScope.B(i, min, map, function1);
    }

    public final String toString() {
        return "VerticalScrollLayoutModifier(scrollerPosition=" + this.b + ", cursorOffset=" + this.c + ", transformedText=" + this.d + ", textLayoutResultProvider=" + this.e + ")";
    }
}
