package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyLayoutItemAnimatorModifierKt {
    public static final Modifier a(Modifier modifier, LazyLayoutItemAnimator lazyLayoutItemAnimator) {
        return modifier.l(new DisplayingDisappearingItemsElement(lazyLayoutItemAnimator));
    }
}
