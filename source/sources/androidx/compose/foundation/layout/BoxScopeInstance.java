package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BoxScopeInstance implements BoxScope {
    public static final BoxScopeInstance a = new Object();

    @Override // androidx.compose.foundation.layout.BoxScope
    public final Modifier b(Modifier modifier) {
        return modifier.l(new BoxChildDataElement(Alignment.Companion.e, true));
    }

    public final Modifier d(Modifier modifier, BiasAlignment biasAlignment) {
        return modifier.l(new BoxChildDataElement(biasAlignment, false));
    }
}
