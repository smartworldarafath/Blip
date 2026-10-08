package androidx.compose.ui.modifier;

import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ModifierLocalProviderKt$modifierLocalProvider$1 extends InspectorValueInfo implements ModifierLocalProvider<Object> {
    public final State b;

    public ModifierLocalProviderKt$modifierLocalProvider$1(Function0 function0) {
        this.b = SnapshotStateKt.e(function0);
    }
}
