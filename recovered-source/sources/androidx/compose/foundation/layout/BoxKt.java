package androidx.compose.foundation.layout;

import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.r4;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BoxKt {
    public static final MutableScatterMap a = c(true);
    public static final MutableScatterMap b = c(false);
    public static final MeasurePolicy c = BoxKt$EmptyBoxMeasurePolicy$1.a;

    public static final void a(Modifier modifier, Composer composer, int i) {
        int i2;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-211209833);
        if (gapComposer.f(modifier)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            int hashCode = Long.hashCode(gapComposer.T);
            Modifier c2 = ComposedModifierKt.c(gapComposer, modifier);
            PersistentCompositionLocalMap l = gapComposer.l();
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, c, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c2, ComposeUiNode.Companion.b);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new r4(modifier, i, 0);
        }
    }

    public static final void b(Placeable.PlacementScope placementScope, Placeable placeable, Measurable measurable, LayoutDirection layoutDirection, int i, int i2, Alignment alignment) {
        BoxChildDataNode boxChildDataNode;
        Alignment alignment2;
        BiasAlignment biasAlignment;
        Object a2 = measurable.a();
        if (a2 instanceof BoxChildDataNode) {
            boxChildDataNode = (BoxChildDataNode) a2;
        } else {
            boxChildDataNode = null;
        }
        if (boxChildDataNode != null && (biasAlignment = boxChildDataNode.x) != null) {
            alignment2 = biasAlignment;
        } else {
            alignment2 = alignment;
        }
        Placeable.PlacementScope.h(placementScope, placeable, alignment2.a((placeable.j << 32) | (placeable.k & 4294967295L), (i << 32) | (i2 & 4294967295L), layoutDirection));
    }

    public static final MutableScatterMap c(boolean z) {
        MutableScatterMap mutableScatterMap = new MutableScatterMap(9);
        BiasAlignment biasAlignment = Alignment.Companion.a;
        mutableScatterMap.o(biasAlignment, new BoxMeasurePolicy(biasAlignment, z));
        BiasAlignment biasAlignment2 = Alignment.Companion.b;
        mutableScatterMap.o(biasAlignment2, new BoxMeasurePolicy(biasAlignment2, z));
        BiasAlignment biasAlignment3 = Alignment.Companion.c;
        mutableScatterMap.o(biasAlignment3, new BoxMeasurePolicy(biasAlignment3, z));
        BiasAlignment biasAlignment4 = Alignment.Companion.d;
        mutableScatterMap.o(biasAlignment4, new BoxMeasurePolicy(biasAlignment4, z));
        BiasAlignment biasAlignment5 = Alignment.Companion.e;
        mutableScatterMap.o(biasAlignment5, new BoxMeasurePolicy(biasAlignment5, z));
        BiasAlignment biasAlignment6 = Alignment.Companion.f;
        mutableScatterMap.o(biasAlignment6, new BoxMeasurePolicy(biasAlignment6, z));
        BiasAlignment biasAlignment7 = Alignment.Companion.g;
        mutableScatterMap.o(biasAlignment7, new BoxMeasurePolicy(biasAlignment7, z));
        BiasAlignment biasAlignment8 = Alignment.Companion.h;
        mutableScatterMap.o(biasAlignment8, new BoxMeasurePolicy(biasAlignment8, z));
        BiasAlignment biasAlignment9 = Alignment.Companion.i;
        mutableScatterMap.o(biasAlignment9, new BoxMeasurePolicy(biasAlignment9, z));
        return mutableScatterMap;
    }

    public static final MeasurePolicy d(Alignment alignment, boolean z) {
        MutableScatterMap mutableScatterMap;
        if (z) {
            mutableScatterMap = a;
        } else {
            mutableScatterMap = b;
        }
        MeasurePolicy measurePolicy = (MeasurePolicy) mutableScatterMap.e(alignment);
        if (measurePolicy == null) {
            return new BoxMeasurePolicy(alignment, z);
        }
        return measurePolicy;
    }
}
