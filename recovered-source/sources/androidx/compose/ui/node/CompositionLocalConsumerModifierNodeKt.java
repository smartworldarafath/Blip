package androidx.compose.ui.node;

import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.CompositionLocalMapKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CompositionLocalConsumerModifierNodeKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object a(CompositionLocalConsumerModifierNode compositionLocalConsumerModifierNode, CompositionLocal compositionLocal) {
        if (!((Modifier.Node) compositionLocalConsumerModifierNode).j.w) {
            InlineClassHelperKt.b("Cannot read CompositionLocal because the Modifier node is not currently attached.");
        }
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) DelegatableNodeKt.g(compositionLocalConsumerModifierNode).K;
        persistentCompositionLocalHashMap.getClass();
        return CompositionLocalMapKt.a(persistentCompositionLocalHashMap, compositionLocal);
    }
}
