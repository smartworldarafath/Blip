package defpackage;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ca implements Function2 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ Modifier k;
    public final /* synthetic */ LazyListState l;
    public final /* synthetic */ PaddingValuesImpl m;
    public final /* synthetic */ FlingBehavior n;
    public final /* synthetic */ boolean o;
    public final /* synthetic */ OverscrollEffect p;
    public final /* synthetic */ Alignment.Horizontal q;
    public final /* synthetic */ Arrangement.Vertical r;
    public final /* synthetic */ Function1 s;
    public final /* synthetic */ int t;
    public final /* synthetic */ int u;

    public /* synthetic */ ca(Modifier modifier, LazyListState lazyListState, PaddingValuesImpl paddingValuesImpl, FlingBehavior flingBehavior, boolean z, OverscrollEffect overscrollEffect, Alignment.Horizontal horizontal, Arrangement.Vertical vertical, Function1 function1, int i, int i2) {
        this.k = modifier;
        this.l = lazyListState;
        this.m = paddingValuesImpl;
        this.n = flingBehavior;
        this.o = z;
        this.p = overscrollEffect;
        this.q = horizontal;
        this.r = vertical;
        this.s = function1;
        this.t = i;
        this.u = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.t;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                LazyDslKt.a(RecomposeScopeImplKt.a(i2 | 1), this.u, this.p, this.n, this.r, this.m, this.l, (Composer) obj, this.q, this.k, this.s, this.o);
                return unit;
            default:
                ((Integer) obj2).getClass();
                LazyListKt.a(RecomposeScopeImplKt.a(i2 | 1), RecomposeScopeImplKt.a(this.u), this.p, this.n, this.r, this.m, this.l, (Composer) obj, this.q, this.k, this.s, this.o);
                return unit;
        }
    }

    public /* synthetic */ ca(Modifier modifier, LazyListState lazyListState, PaddingValuesImpl paddingValuesImpl, Arrangement.Vertical vertical, Alignment.Horizontal horizontal, FlingBehavior flingBehavior, boolean z, OverscrollEffect overscrollEffect, Function1 function1, int i, int i2) {
        this.k = modifier;
        this.l = lazyListState;
        this.m = paddingValuesImpl;
        this.r = vertical;
        this.q = horizontal;
        this.n = flingBehavior;
        this.o = z;
        this.p = overscrollEffect;
        this.s = function1;
        this.t = i;
        this.u = i2;
    }
}
