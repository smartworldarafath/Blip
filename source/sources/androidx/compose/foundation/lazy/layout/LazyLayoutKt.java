package androidx.compose.foundation.lazy.layout;

import android.os.Build;
import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.a0;
import defpackage.d4;
import defpackage.o1;
import defpackage.s2;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyLayoutKt {
    public static final void a(Function0 function0, final Modifier modifier, final LazyLayoutPrefetchState lazyLayoutPrefetchState, final LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1055276397);
        if (gapComposer.h(function0)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i6 = i2 | i;
        if (gapComposer.f(modifier)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i7 = i6 | i3;
        if (gapComposer.f(lazyLayoutPrefetchState)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i8 = i7 | i4;
        if (gapComposer.f(lazyLayoutMeasurePolicy)) {
            i5 = 2048;
        } else {
            i5 = 1024;
        }
        int i9 = i8 | i5;
        if ((i9 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i9 & 1, z)) {
            final MutableState k = SnapshotStateKt.k(function0, gapComposer);
            LazySaveableStateHolderKt.a(ComposableLambdaKt.b(-933153643, new Function3() { // from class: androidx.compose.foundation.lazy.layout.c
                @Override // kotlin.jvm.functions.Function3
                public final Object f(Object obj, Object obj2, Object obj3) {
                    Modifier l;
                    Object obj4;
                    SaveableStateHolder saveableStateHolder = (SaveableStateHolder) obj;
                    ((Integer) obj3).getClass();
                    GapComposer gapComposer2 = (GapComposer) ((Composer) obj2);
                    Object K = gapComposer2.K();
                    Object obj5 = Composer.Companion.a;
                    if (K == obj5) {
                        K = new LazyLayoutItemContentFactory(saveableStateHolder, new o1(k, 19));
                        gapComposer2.g0(K);
                    }
                    LazyLayoutItemContentFactory lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) K;
                    Object K2 = gapComposer2.K();
                    if (K2 == obj5) {
                        K2 = new SubcomposeLayoutState(new LazyLayoutItemReusePolicy(lazyLayoutItemContentFactory));
                        gapComposer2.g0(K2);
                    }
                    SubcomposeLayoutState subcomposeLayoutState = (SubcomposeLayoutState) K2;
                    LazyLayoutPrefetchState lazyLayoutPrefetchState2 = LazyLayoutPrefetchState.this;
                    if (lazyLayoutPrefetchState2 != null) {
                        gapComposer2.W(1743490539);
                        gapComposer2.W(887527095);
                        String str = Build.FINGERPRINT;
                        if (str != null && str.equals("robolectric")) {
                            gapComposer2.W(1345548711);
                            Object K3 = gapComposer2.K();
                            if (K3 == obj5) {
                                K3 = new Object();
                                gapComposer2.g0(K3);
                            }
                            obj4 = (PrefetchScheduler_androidKt$noopScheduler$1) K3;
                            gapComposer2.p(false);
                        } else {
                            gapComposer2.W(1345729441);
                            View view = (View) gapComposer2.j(AndroidCompositionLocals_androidKt.f);
                            boolean f = gapComposer2.f(view);
                            Object K4 = gapComposer2.K();
                            if (f || K4 == obj5) {
                                Object tag = view.getTag(R.id.compose_prefetch_scheduler);
                                if (tag instanceof PrefetchScheduler) {
                                    K4 = (PrefetchScheduler) tag;
                                } else {
                                    K4 = null;
                                }
                                if (K4 == null) {
                                    K4 = new AndroidPrefetchScheduler(view);
                                    view.setTag(R.id.compose_prefetch_scheduler, K4);
                                }
                                gapComposer2.g0(K4);
                            }
                            obj4 = (PrefetchScheduler) K4;
                            gapComposer2.p(false);
                        }
                        Object obj6 = obj4;
                        gapComposer2.p(false);
                        Object[] objArr = {lazyLayoutPrefetchState2, lazyLayoutItemContentFactory, subcomposeLayoutState, obj6};
                        boolean f2 = gapComposer2.f(lazyLayoutPrefetchState2) | gapComposer2.h(lazyLayoutItemContentFactory) | gapComposer2.h(subcomposeLayoutState) | gapComposer2.h(obj6);
                        Object K5 = gapComposer2.K();
                        if (f2 || K5 == obj5) {
                            Object s2Var = new s2(lazyLayoutPrefetchState2, lazyLayoutItemContentFactory, subcomposeLayoutState, obj6, 6);
                            gapComposer2.g0(s2Var);
                            K5 = s2Var;
                        }
                        EffectsKt.d(objArr, (Function1) K5, gapComposer2);
                        gapComposer2.p(false);
                    } else {
                        gapComposer2.W(1744076749);
                        gapComposer2.p(false);
                    }
                    int i10 = LazyLayoutPrefetchStateKt.a;
                    Modifier modifier2 = modifier;
                    if (lazyLayoutPrefetchState2 != null && (l = modifier2.l(new TraversablePrefetchStateModifierElement(lazyLayoutPrefetchState2))) != null) {
                        modifier2 = l;
                    }
                    boolean f3 = gapComposer2.f(lazyLayoutItemContentFactory);
                    Object obj7 = lazyLayoutMeasurePolicy;
                    boolean f4 = f3 | gapComposer2.f(obj7);
                    Object K6 = gapComposer2.K();
                    if (f4 || K6 == obj5) {
                        K6 = new a0(14, lazyLayoutItemContentFactory, obj7);
                        gapComposer2.g0(K6);
                    }
                    SubcomposeLayoutKt.b(subcomposeLayoutState, modifier2, (Function2) K6, gapComposer2, 8);
                    return Unit.a;
                }
            }, gapComposer), gapComposer, 6);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new d4(function0, modifier, lazyLayoutPrefetchState, lazyLayoutMeasurePolicy, i);
        }
    }
}
