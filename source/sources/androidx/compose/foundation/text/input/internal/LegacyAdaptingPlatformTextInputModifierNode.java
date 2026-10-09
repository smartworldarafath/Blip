package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.platform.PlatformTextInputModifierNode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LegacyAdaptingPlatformTextInputModifierNode extends Modifier.Node implements PlatformTextInputModifierNode, CompositionLocalConsumerModifierNode, GlobalPositionAwareModifierNode, LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode {
    public final MutableState A = SnapshotStateKt.g(null);
    public LegacyPlatformTextInputServiceAdapter x;
    public LegacyTextFieldState y;
    public TextFieldSelectionManager z;

    public LegacyAdaptingPlatformTextInputModifierNode(LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter, LegacyTextFieldState legacyTextFieldState, TextFieldSelectionManager textFieldSelectionManager) {
        this.x = legacyPlatformTextInputServiceAdapter;
        this.y = legacyTextFieldState;
        this.z = textFieldSelectionManager;
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void K0(NodeCoordinator nodeCoordinator) {
        ((SnapshotMutableStateImpl) this.A).setValue(nodeCoordinator);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter = this.x;
        if (legacyPlatformTextInputServiceAdapter.a != null) {
            InlineClassHelperKt.c("Expected textInputModifierNode to be null");
        }
        legacyPlatformTextInputServiceAdapter.a = this;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        this.x.i(this);
    }
}
