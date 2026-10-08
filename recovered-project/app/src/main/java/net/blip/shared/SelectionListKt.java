package net.blip.shared;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import defpackage.md;
import defpackage.p2;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SelectionListKt {
    public static final void a(Modifier modifier, LazyListState lazyListState, PaddingValuesImpl paddingValuesImpl, Arrangement.Vertical vertical, Alignment.Horizontal horizontal, FlingBehavior flingBehavior, boolean z, SelectionListState selectionListState, Function1 function1, Composer composer, int i) {
        int i2;
        PaddingValuesImpl paddingValuesImpl2;
        int i3;
        boolean z2;
        GapComposer gapComposer;
        LazyListState lazyListState2;
        Arrangement.Vertical vertical2;
        Alignment.Horizontal horizontal2;
        FlingBehavior flingBehavior2;
        boolean z3;
        SelectionListState selectionListState2;
        LazyListState a;
        FlingBehavior a2;
        SelectionListState selectionListState3;
        int i4;
        Arrangement.Vertical vertical3;
        Alignment.Horizontal horizontal3;
        boolean z4;
        Object selectionListKt$SelectionList$2$1;
        LazyListState lazyListState3;
        SelectionListState selectionListState4;
        MutableState mutableState;
        boolean z5;
        int i5;
        function1.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-1108680094);
        if (gapComposer2.f(modifier)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i6 = i2 | i | 16;
        if ((i & 384) == 0) {
            paddingValuesImpl2 = paddingValuesImpl;
            if (gapComposer2.f(paddingValuesImpl2)) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i6 |= i5;
        } else {
            paddingValuesImpl2 = paddingValuesImpl;
        }
        int i7 = i6 | 46869504;
        if (gapComposer2.h(function1)) {
            i3 = 536870912;
        } else {
            i3 = 268435456;
        }
        int i8 = i7 | i3;
        if ((306783379 & i8) != 306783378) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer2.N(i8 & 1, z2)) {
            gapComposer2.S();
            int i9 = i & 1;
            Object obj = Composer.Companion.a;
            if (i9 != 0 && !gapComposer2.x()) {
                gapComposer2.Q();
                i4 = i8 & (-238608497);
                a = lazyListState;
                vertical3 = vertical;
                horizontal3 = horizontal;
                a2 = flingBehavior;
                z4 = z;
                selectionListState3 = selectionListState;
            } else {
                a = LazyListStateKt.a(gapComposer2);
                a2 = ScrollableDefaults.a(gapComposer2);
                Object K = gapComposer2.K();
                if (K == obj) {
                    K = new SelectionListState();
                    gapComposer2.g0(K);
                }
                selectionListState3 = (SelectionListState) K;
                i4 = i8 & (-238608497);
                vertical3 = Arrangement.b;
                horizontal3 = Alignment.Companion.m;
                z4 = true;
            }
            gapComposer2.q();
            Object K2 = gapComposer2.K();
            if (K2 == obj) {
                K2 = SnapshotStateKt.g(null);
                gapComposer2.g0(K2);
            }
            MutableState mutableState2 = (MutableState) K2;
            SelectableLazyListScope selectableLazyListScope = (SelectableLazyListScope) mutableState2.getValue();
            boolean f = gapComposer2.f(selectionListState3);
            Object K3 = gapComposer2.K();
            if (f || K3 == obj) {
                K3 = new SelectionListKt$SelectionList$1$1(selectionListState3, mutableState2, null);
                gapComposer2.g0(K3);
            }
            EffectsKt.e(gapComposer2, selectableLazyListScope, (Function2) K3);
            Density density = (Density) gapComposer2.j(CompositionLocalsKt.h);
            Object value = ((SnapshotMutableStateImpl) selectionListState3.a).getValue();
            boolean f2 = gapComposer2.f(selectionListState3) | gapComposer2.f(a) | gapComposer2.f(density);
            Object K4 = gapComposer2.K();
            if (!f2 && K4 != obj) {
                lazyListState3 = a;
                mutableState = mutableState2;
                selectionListKt$SelectionList$2$1 = K4;
                selectionListState4 = selectionListState3;
            } else {
                lazyListState3 = a;
                SelectionListState selectionListState5 = selectionListState3;
                selectionListKt$SelectionList$2$1 = new SelectionListKt$SelectionList$2$1(selectionListState5, lazyListState3, density, mutableState2, null);
                selectionListState4 = selectionListState5;
                mutableState = mutableState2;
                gapComposer2.g0(selectionListKt$SelectionList$2$1);
            }
            EffectsKt.e(gapComposer2, value, (Function2) selectionListKt$SelectionList$2$1);
            boolean f3 = gapComposer2.f(selectionListState4);
            if ((1879048192 & i4) == 536870912) {
                z5 = true;
            } else {
                z5 = false;
            }
            boolean z6 = f3 | z5;
            Object K5 = gapComposer2.K();
            if (z6 || K5 == obj) {
                K5 = new p2(selectionListState4, function1, mutableState, 14);
                gapComposer2.g0(K5);
            }
            Alignment.Horizontal horizontal4 = horizontal3;
            FlingBehavior flingBehavior3 = a2;
            gapComposer = gapComposer2;
            Arrangement.Vertical vertical4 = vertical3;
            LazyDslKt.a(i4 & 33554430, 256, null, flingBehavior3, vertical4, paddingValuesImpl2, lazyListState3, gapComposer, horizontal4, modifier, (Function1) K5, z4);
            selectionListState2 = selectionListState4;
            flingBehavior2 = flingBehavior3;
            vertical2 = vertical4;
            lazyListState2 = lazyListState3;
            horizontal2 = horizontal4;
            z3 = z4;
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
            lazyListState2 = lazyListState;
            vertical2 = vertical;
            horizontal2 = horizontal;
            flingBehavior2 = flingBehavior;
            z3 = z;
            selectionListState2 = selectionListState;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new md(modifier, lazyListState2, paddingValuesImpl, vertical2, horizontal2, flingBehavior2, z3, selectionListState2, function1, i);
        }
    }
}
