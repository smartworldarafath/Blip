package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.DelegatingSoftwareKeyboardController;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.input.PlatformTextInputService;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LegacyPlatformTextInputServiceAdapter implements PlatformTextInputService {
    public LegacyPlatformTextInputNode a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface LegacyPlatformTextInputNode {
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void b() {
        SoftwareKeyboardController softwareKeyboardController;
        LegacyPlatformTextInputNode legacyPlatformTextInputNode = this.a;
        if (legacyPlatformTextInputNode != null && (softwareKeyboardController = (SoftwareKeyboardController) CompositionLocalConsumerModifierNodeKt.a((LegacyAdaptingPlatformTextInputModifierNode) legacyPlatformTextInputNode, CompositionLocalsKt.q)) != null) {
            ((DelegatingSoftwareKeyboardController) softwareKeyboardController).b();
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void e() {
        SoftwareKeyboardController softwareKeyboardController;
        LegacyPlatformTextInputNode legacyPlatformTextInputNode = this.a;
        if (legacyPlatformTextInputNode != null && (softwareKeyboardController = (SoftwareKeyboardController) CompositionLocalConsumerModifierNodeKt.a((LegacyAdaptingPlatformTextInputModifierNode) legacyPlatformTextInputNode, CompositionLocalsKt.q)) != null) {
            ((DelegatingSoftwareKeyboardController) softwareKeyboardController).a();
        }
    }

    public final void i(LegacyAdaptingPlatformTextInputModifierNode legacyAdaptingPlatformTextInputModifierNode) {
        LegacyPlatformTextInputNode legacyPlatformTextInputNode = this.a;
        if (legacyPlatformTextInputNode != legacyAdaptingPlatformTextInputModifierNode) {
            InlineClassHelperKt.c("Expected textInputModifierNode to be " + legacyAdaptingPlatformTextInputModifierNode + " but was " + legacyPlatformTextInputNode);
        }
        this.a = null;
    }
}
