package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SpacerKt {
    public static final void a(Composer composer, Modifier modifier) {
        GapComposer gapComposer = (GapComposer) composer;
        int hashCode = Long.hashCode(gapComposer.T);
        Modifier c = ComposedModifierKt.c(composer, modifier);
        PersistentCompositionLocalMap l = gapComposer.l();
        ComposeUiNode.b.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.Z();
        if (gapComposer2.S) {
            gapComposer2.k(LayoutNode.b0);
        } else {
            gapComposer2.j0();
        }
        Updater.c(composer, SpacerMeasurePolicy.a, ComposeUiNode.Companion.d);
        Updater.c(composer, l, ComposeUiNode.Companion.c);
        Updater.b(composer);
        Updater.c(composer, c, ComposeUiNode.Companion.b);
        Updater.c(composer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
        gapComposer2.p(true);
    }
}
