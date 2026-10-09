package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.gestures.DefaultFlingBehavior;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.grid.GridCells$Adaptive;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.Modifier;
import defpackage.x9;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyGridDslKt {
    public static final void a(final GridCells$Adaptive gridCells$Adaptive, final Modifier modifier, LazyGridState lazyGridState, final PaddingValuesImpl paddingValuesImpl, final Arrangement.Vertical vertical, final Arrangement.Horizontal horizontal, FlingBehavior flingBehavior, boolean z, OverscrollEffect overscrollEffect, final Function1 function1, Composer composer, final int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z2;
        final LazyGridState lazyGridState2;
        final FlingBehavior flingBehavior2;
        final boolean z3;
        final OverscrollEffect overscrollEffect2;
        LazyGridState lazyGridState3;
        OverscrollEffect b;
        int i6;
        FlingBehavior flingBehavior3;
        int i7;
        boolean z4;
        boolean z5;
        Arrangement.Horizontal horizontal2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-2072102870);
        if (gapComposer.f(gridCells$Adaptive)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i8 = i | i2;
        if (gapComposer.f(modifier)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i9 = i8 | i3 | 128;
        if (gapComposer.f(paddingValuesImpl)) {
            i4 = 2048;
        } else {
            i4 = 1024;
        }
        int i10 = i9 | i4 | 373317632;
        if (gapComposer.h(function1)) {
            i5 = 4;
        } else {
            i5 = 2;
        }
        if ((306783379 & i10) == 306783378 && (i5 & 3) == 2) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (gapComposer.N(i10 & 1, z2)) {
            gapComposer.S();
            int i11 = i & 1;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (i11 != 0 && !gapComposer.x()) {
                gapComposer.Q();
                lazyGridState3 = lazyGridState;
                b = overscrollEffect;
                i7 = i10 & (-1908409217);
                i6 = i5;
                flingBehavior3 = flingBehavior;
                z4 = z;
            } else {
                LazyGridMeasureResult lazyGridMeasureResult = LazyGridStateKt.a;
                Object[] objArr = new Object[0];
                SaverKt$Saver$1 saverKt$Saver$1 = LazyGridState.w;
                boolean d = gapComposer.d(0) | gapComposer.d(0);
                Object K = gapComposer.K();
                if (d || K == composer$Companion$Empty$1) {
                    K = new x9(9);
                    gapComposer.g0(K);
                }
                lazyGridState3 = (LazyGridState) RememberSaveableKt.d(objArr, saverKt$Saver$1, (Function0) K, gapComposer, 0);
                DefaultFlingBehavior a = ScrollableDefaults.a(gapComposer);
                b = OverscrollKt.b(gapComposer);
                i6 = i5;
                flingBehavior3 = a;
                i7 = i10 & (-1908409217);
                z4 = true;
            }
            gapComposer.q();
            int i12 = (i7 & 14) | 48;
            if ((((i12 & 14) ^ 6) > 4 && gapComposer.f(gridCells$Adaptive)) || (i12 & 6) == 4) {
                z5 = true;
            } else {
                z5 = false;
            }
            Object K2 = gapComposer.K();
            if (!z5 && K2 != composer$Companion$Empty$1) {
                horizontal2 = horizontal;
            } else {
                horizontal2 = horizontal;
                K2 = new GridSlotCache(new defpackage.d(gridCells$Adaptive, horizontal2));
                gapComposer.g0(K2);
            }
            lazyGridState2 = lazyGridState3;
            boolean z6 = z4;
            LazyGridKt.a(modifier, lazyGridState2, (LazyGridSlotsProvider) K2, paddingValuesImpl, flingBehavior3, z6, b, vertical, horizontal2, function1, gapComposer, ((i7 >> 3) & 14) | 196608 | (i7 & 7168) | 817913856, 6 | ((i6 << 3) & 112));
            overscrollEffect2 = b;
            z3 = z6;
            flingBehavior2 = flingBehavior3;
        } else {
            gapComposer.Q();
            lazyGridState2 = lazyGridState;
            flingBehavior2 = flingBehavior;
            z3 = z;
            overscrollEffect2 = overscrollEffect;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(modifier, lazyGridState2, paddingValuesImpl, vertical, horizontal, flingBehavior2, z3, overscrollEffect2, function1, i) { // from class: da
                public final /* synthetic */ Modifier k;
                public final /* synthetic */ LazyGridState l;
                public final /* synthetic */ PaddingValuesImpl m;
                public final /* synthetic */ Arrangement.Vertical n;
                public final /* synthetic */ Arrangement.Horizontal o;
                public final /* synthetic */ FlingBehavior p;
                public final /* synthetic */ boolean q;
                public final /* synthetic */ OverscrollEffect r;
                public final /* synthetic */ Function1 s;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a2 = RecomposeScopeImplKt.a(1769473);
                    LazyGridDslKt.a(GridCells$Adaptive.this, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, (Composer) obj, a2);
                    return Unit.a;
                }
            };
        }
    }
}
