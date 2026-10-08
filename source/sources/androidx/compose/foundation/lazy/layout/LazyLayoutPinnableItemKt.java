package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.PinnableContainer;
import androidx.compose.ui.layout.PinnableContainerKt;
import defpackage.z3;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyLayoutPinnableItemKt {
    public static final void a(Object obj, int i, LazyLayoutPinnedItemList lazyLayoutPinnedItemList, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        boolean z;
        Function1 function1;
        LazyLayoutPinnableItem lazyLayoutPinnableItem;
        int i4;
        int i5;
        int i6;
        int i7;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(872548579);
        if ((i2 & 6) == 0) {
            if (gapComposer.h(obj)) {
                i7 = 4;
            } else {
                i7 = 2;
            }
            i3 = i7 | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            if (gapComposer.d(i)) {
                i6 = 32;
            } else {
                i6 = 16;
            }
            i3 |= i6;
        }
        if ((i2 & 384) == 0) {
            if (gapComposer.h(lazyLayoutPinnedItemList)) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i3 |= i5;
        }
        if ((i2 & 3072) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i4 = 2048;
            } else {
                i4 = 1024;
            }
            i3 |= i4;
        }
        if ((i3 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            boolean f = gapComposer.f(obj) | gapComposer.f(lazyLayoutPinnedItemList);
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (f || K == composer$Companion$Empty$1) {
                K = new LazyLayoutPinnableItem(obj, lazyLayoutPinnedItemList);
                gapComposer.g0(K);
            }
            LazyLayoutPinnableItem lazyLayoutPinnableItem2 = (LazyLayoutPinnableItem) K;
            lazyLayoutPinnableItem2.c = i;
            MutableState mutableState = lazyLayoutPinnableItem2.g;
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = PinnableContainerKt.a;
            PinnableContainer pinnableContainer = (PinnableContainer) gapComposer.j(dynamicProvidableCompositionLocal);
            Snapshot a = Snapshot.Companion.a();
            if (a != null) {
                function1 = a.e();
            } else {
                function1 = null;
            }
            Snapshot b = Snapshot.Companion.b(a);
            try {
                if (pinnableContainer != ((PinnableContainer) ((SnapshotMutableStateImpl) mutableState).getValue())) {
                    ((SnapshotMutableStateImpl) mutableState).setValue(pinnableContainer);
                    if (lazyLayoutPinnableItem2.d > 0) {
                        PinnableContainer.PinnedHandle pinnedHandle = lazyLayoutPinnableItem2.e;
                        if (pinnedHandle != null) {
                            ((LazyLayoutPinnableItem) pinnedHandle).a();
                        }
                        if (pinnableContainer != null) {
                            lazyLayoutPinnableItem = (LazyLayoutPinnableItem) pinnableContainer;
                            lazyLayoutPinnableItem.b();
                        } else {
                            lazyLayoutPinnableItem = null;
                        }
                        lazyLayoutPinnableItem2.e = lazyLayoutPinnableItem;
                    }
                }
                Snapshot.Companion.e(a, b, function1);
                boolean f2 = gapComposer.f(lazyLayoutPinnableItem2);
                Object K2 = gapComposer.K();
                if (f2 || K2 == composer$Companion$Empty$1) {
                    K2 = new b(1, lazyLayoutPinnableItem2);
                    gapComposer.g0(K2);
                }
                EffectsKt.c(lazyLayoutPinnableItem2, (Function1) K2, gapComposer);
                CompositionLocalKt.a(dynamicProvidableCompositionLocal.b(lazyLayoutPinnableItem2), composableLambdaImpl, gapComposer, ((i3 >> 6) & 112) | 8);
            } catch (Throwable th) {
                Snapshot.Companion.e(a, b, function1);
                throw th;
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new z3(obj, i, lazyLayoutPinnedItemList, composableLambdaImpl, i2);
        }
    }
}
