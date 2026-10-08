package androidx.compose.foundation;

import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ScrollableAreaKt {
    public static final Modifier a(Modifier modifier, ScrollableState scrollableState, Orientation orientation, OverscrollEffect overscrollEffect, boolean z, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, BringIntoViewSpec bringIntoViewSpec) {
        Modifier a;
        Orientation orientation2 = Orientation.j;
        Modifier.Companion companion = Modifier.Companion.b;
        if (orientation == orientation2) {
            a = ClipKt.a(companion, VerticalScrollableClipShape.a);
        } else {
            a = ClipKt.a(companion, HorizontalScrollableClipShape.a);
        }
        return modifier.l(a).l(new ScrollableAreaElement(overscrollEffect, bringIntoViewSpec, flingBehavior, orientation, scrollableState, mutableInteractionSource, z, false));
    }
}
