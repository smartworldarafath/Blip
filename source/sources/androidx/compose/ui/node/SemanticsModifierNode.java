package androidx.compose.ui.node;

import androidx.compose.ui.semantics.SemanticsPropertyReceiver;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface SemanticsModifierNode extends DelegatableNode {
    void E0(SemanticsPropertyReceiver semanticsPropertyReceiver);

    default boolean J0() {
        return false;
    }

    default boolean M() {
        return false;
    }

    default boolean n() {
        return true;
    }
}
