package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DrawWithCacheElement extends ModifierNodeElement<CacheDrawModifierNodeImpl> {
    public final Function1 b;

    public DrawWithCacheElement(Function1 function1) {
        this.b = function1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DrawWithCacheElement)) {
            return false;
        }
        if (this.b == ((DrawWithCacheElement) obj).b) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new CacheDrawModifierNodeImpl(new CacheDrawScope(), this.b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        CacheDrawModifierNodeImpl cacheDrawModifierNodeImpl = (CacheDrawModifierNodeImpl) node;
        cacheDrawModifierNodeImpl.z = this.b;
        cacheDrawModifierNodeImpl.w();
    }
}
