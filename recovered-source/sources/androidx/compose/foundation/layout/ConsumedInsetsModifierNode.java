package androidx.compose.foundation.layout;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ConsumedInsetsModifierNode extends InsetsConsumingModifierNode {
    public Function1 z;

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public final WindowInsets Y0(WindowInsets windowInsets) {
        this.z.b(windowInsets);
        return windowInsets;
    }
}
