package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import kotlin.reflect.KProperty0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyLayoutSemanticsKt {
    public static final Modifier a(Modifier modifier, KProperty0 kProperty0, LazyLayoutSemanticState lazyLayoutSemanticState, Orientation orientation, boolean z) {
        return modifier.l(new LazyLayoutSemanticsModifier(kProperty0, lazyLayoutSemanticState, orientation, z));
    }
}
