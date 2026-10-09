package androidx.compose.foundation.pager;

import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.pager.PageSize;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.i0;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PagerKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v3, types: [androidx.compose.foundation.pager.PagerSnapDistanceMaxPages, java.lang.Object] */
    public static final void a(final PagerState pagerState, final Modifier modifier, PaddingValues paddingValues, PageSize pageSize, final float f, Alignment.Vertical vertical, TargetedFlingBehavior targetedFlingBehavior, boolean z, NestedScrollConnection nestedScrollConnection, SnapPosition snapPosition, OverscrollEffect overscrollEffect, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        boolean z2;
        final PaddingValues paddingValues2;
        final PageSize pageSize2;
        final Alignment.Vertical vertical2;
        final TargetedFlingBehavior targetedFlingBehavior2;
        final boolean z3;
        final NestedScrollConnection nestedScrollConnection2;
        final SnapPosition snapPosition2;
        final OverscrollEffect overscrollEffect2;
        boolean z4;
        Alignment.Vertical vertical3;
        NestedScrollConnection nestedScrollConnection3;
        int i3;
        boolean z5;
        OverscrollEffect overscrollEffect3;
        PaddingValues paddingValues3;
        TargetedFlingBehavior targetedFlingBehavior3;
        PageSize pageSize3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1860873769);
        if (gapComposer.f(pagerState)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i | i2 | 911764864;
        boolean z6 = false;
        if ((306783379 & i4) == 306783378) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (gapComposer.N(i4 & 1, z2)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
                i3 = i4 & (-29360129);
                paddingValues3 = paddingValues;
                pageSize3 = pageSize;
                vertical3 = vertical;
                targetedFlingBehavior3 = targetedFlingBehavior;
                z5 = z;
                nestedScrollConnection3 = nestedScrollConnection;
                snapPosition2 = snapPosition;
                overscrollEffect3 = overscrollEffect;
            } else {
                PaddingValuesImpl paddingValuesImpl = new PaddingValuesImpl(0.0f, 0.0f, 0.0f, 0.0f);
                int i5 = (i4 & 14) | 196608;
                ?? obj = new Object();
                DecayAnimationSpec a = SplineBasedFloatDecayAnimationSpec_androidKt.a(gapComposer);
                Map map = VisibilityThresholdsKt.a;
                SpringSpec b = AnimationSpecKt.b(0.0f, 400.0f, Float.valueOf(1.0f), 1);
                Density density = (Density) gapComposer.j(CompositionLocalsKt.h);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.n;
                LayoutDirection layoutDirection = (LayoutDirection) gapComposer.j(staticProvidableCompositionLocal);
                if ((((i5 & 14) ^ 6) > 4 && gapComposer.f(pagerState)) || (i5 & 6) == 4) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                boolean f2 = z4 | gapComposer.f(a) | gapComposer.f(b) | gapComposer.f(obj) | gapComposer.f(density) | gapComposer.d(layoutDirection.ordinal());
                Object K = gapComposer.K();
                Object obj2 = Composer.Companion.a;
                if (f2 || K == obj2) {
                    Object snapFlingBehavior = new SnapFlingBehavior(new PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1(pagerState, new i0(5, pagerState, layoutDirection), obj), a, b);
                    gapComposer.g0(snapFlingBehavior);
                    K = snapFlingBehavior;
                }
                TargetedFlingBehavior targetedFlingBehavior4 = (TargetedFlingBehavior) K;
                int i6 = (-29360129) & i4;
                Orientation orientation = Orientation.j;
                int i7 = (i4 & 14) | 432;
                LayoutDirection layoutDirection2 = (LayoutDirection) gapComposer.j(staticProvidableCompositionLocal);
                if ((((i7 & 14) ^ 6) > 4 && gapComposer.f(pagerState)) || (i7 & 6) == 4) {
                    z6 = true;
                }
                boolean d = gapComposer.d(layoutDirection2.ordinal()) | z6;
                Object K2 = gapComposer.K();
                if (d || K2 == obj2) {
                    K2 = new DefaultPagerNestedScrollConnection(pagerState, layoutDirection2);
                    gapComposer.g0(K2);
                }
                DefaultPagerNestedScrollConnection defaultPagerNestedScrollConnection = (DefaultPagerNestedScrollConnection) K2;
                OverscrollEffect b2 = OverscrollKt.b(gapComposer);
                PageSize.Fill fill = PageSize.Fill.a;
                BiasAlignment.Vertical vertical4 = Alignment.Companion.k;
                snapPosition2 = SnapPosition.Start.a;
                vertical3 = vertical4;
                nestedScrollConnection3 = defaultPagerNestedScrollConnection;
                i3 = i6;
                z5 = true;
                overscrollEffect3 = b2;
                paddingValues3 = paddingValuesImpl;
                targetedFlingBehavior3 = targetedFlingBehavior4;
                pageSize3 = fill;
            }
            gapComposer.q();
            Orientation orientation2 = Orientation.j;
            LazyLayoutPagerKt.a(modifier, pagerState, paddingValues3, targetedFlingBehavior3, z5, overscrollEffect3, f, pageSize3, nestedScrollConnection3, vertical3, snapPosition2, composableLambdaImpl, gapComposer, ((i3 << 3) & 112) | 907570566, 1797510);
            overscrollEffect2 = overscrollEffect3;
            vertical2 = vertical3;
            nestedScrollConnection2 = nestedScrollConnection3;
            z3 = z5;
            pageSize2 = pageSize3;
            targetedFlingBehavior2 = targetedFlingBehavior3;
            paddingValues2 = paddingValues3;
        } else {
            gapComposer.Q();
            paddingValues2 = paddingValues;
            pageSize2 = pageSize;
            vertical2 = vertical;
            targetedFlingBehavior2 = targetedFlingBehavior;
            z3 = z;
            nestedScrollConnection2 = nestedScrollConnection;
            snapPosition2 = snapPosition;
            overscrollEffect2 = overscrollEffect;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(modifier, paddingValues2, pageSize2, f, vertical2, targetedFlingBehavior2, z3, nestedScrollConnection2, snapPosition2, overscrollEffect2, composableLambdaImpl, i) { // from class: xc
                public final /* synthetic */ Modifier k;
                public final /* synthetic */ PaddingValues l;
                public final /* synthetic */ PageSize m;
                public final /* synthetic */ float n;
                public final /* synthetic */ Alignment.Vertical o;
                public final /* synthetic */ TargetedFlingBehavior p;
                public final /* synthetic */ boolean q;
                public final /* synthetic */ NestedScrollConnection r;
                public final /* synthetic */ SnapPosition s;
                public final /* synthetic */ OverscrollEffect t;
                public final /* synthetic */ ComposableLambdaImpl u;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    int a2 = RecomposeScopeImplKt.a(196657);
                    PagerKt.a(PagerState.this, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, (Composer) obj3, a2);
                    return Unit.a;
                }
            };
        }
    }
}
