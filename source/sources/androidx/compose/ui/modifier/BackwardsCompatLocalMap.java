package androidx.compose.ui.modifier;

import androidx.compose.animation.DeferredEnterExitTransitionKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayoutKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BackwardsCompatLocalMap extends ModifierLocalMap {
    public ModifierLocalProvider a;

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    public final boolean a(ModifierLocal modifierLocal) {
        ((ModifierLocalProviderKt$modifierLocalProvider$1) this.a).getClass();
        if (modifierLocal == DeferredEnterExitTransitionKt.a) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    public final Object b() {
        ((ModifierLocalProviderKt$modifierLocalProvider$1) this.a).getClass();
        if (BeyondBoundsLayoutKt.a != DeferredEnterExitTransitionKt.a) {
            InlineClassHelperKt.b("Check failed.");
        }
        return ((ModifierLocalProviderKt$modifierLocalProvider$1) this.a).b.getValue();
    }
}
