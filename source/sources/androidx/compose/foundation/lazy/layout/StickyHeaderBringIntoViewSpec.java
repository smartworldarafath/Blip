package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class StickyHeaderBringIntoViewSpec implements BringIntoViewSpec {
    public final Function0 b;
    public final BringIntoViewSpec c;

    public StickyHeaderBringIntoViewSpec(Function0 function0, LayoutDirection layoutDirection, BringIntoViewSpec bringIntoViewSpec) {
        this.b = function0;
        this.c = bringIntoViewSpec;
    }

    @Override // androidx.compose.foundation.gestures.BringIntoViewSpec
    public final float a(float f, float f2, float f3) {
        float intValue = ((Number) this.b.a()).intValue();
        LayoutDirection layoutDirection = LayoutDirection.j;
        return this.c.a(f - intValue, f2, f3 - intValue);
    }
}
