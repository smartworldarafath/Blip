package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyLayoutBeyondBoundsModifierLocalKt {
    public static final Modifier a(LazyLayoutBeyondBoundsState lazyLayoutBeyondBoundsState, LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo, Orientation orientation) {
        return new LazyLayoutBeyondBoundsModifierElement(lazyLayoutBeyondBoundsState, lazyLayoutBeyondBoundsInfo, orientation);
    }
}
