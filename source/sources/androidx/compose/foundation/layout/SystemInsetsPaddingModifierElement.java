package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SystemInsetsPaddingModifierElement extends ModifierNodeElement<SystemInsetsPaddingModifierNode> {
    public final Function1 b;

    public SystemInsetsPaddingModifierElement(Function1 function1) {
        this.b = function1;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SystemInsetsPaddingModifierElement) {
                if (this.b == ((SystemInsetsPaddingModifierElement) obj).b) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.layout.InsetsPaddingModifierNode, androidx.compose.foundation.layout.SystemInsetsPaddingModifierNode, androidx.compose.ui.Modifier$Node, androidx.compose.foundation.layout.InsetsConsumingModifierNode] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? insetsConsumingModifierNode = new InsetsConsumingModifierNode();
        insetsConsumingModifierNode.z = WindowInsetsKt.a;
        insetsConsumingModifierNode.A = this.b;
        return insetsConsumingModifierNode;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        SystemInsetsPaddingModifierNode systemInsetsPaddingModifierNode = (SystemInsetsPaddingModifierNode) node;
        Function1 function1 = systemInsetsPaddingModifierNode.A;
        Function1 function12 = this.b;
        if (function1 != function12) {
            systemInsetsPaddingModifierNode.A = function12;
            WindowInsetsHolder windowInsetsHolder = systemInsetsPaddingModifierNode.B;
            if (windowInsetsHolder != null) {
                WindowInsets windowInsets = (WindowInsets) function12.b(windowInsetsHolder);
                if (!Intrinsics.a(windowInsets, systemInsetsPaddingModifierNode.z)) {
                    systemInsetsPaddingModifierNode.z = windowInsets;
                    systemInsetsPaddingModifierNode.Z0();
                }
            }
        }
    }
}
