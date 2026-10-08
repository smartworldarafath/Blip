package defpackage;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class s5 implements Function2 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ int k;
    public final /* synthetic */ ComposableLambdaImpl l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ s5(int i, ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, ComposableLambdaImpl composableLambdaImpl3, Function2 function2, WindowInsets windowInsets, ComposableLambdaImpl composableLambdaImpl4, int i2) {
        this.k = i;
        this.l = composableLambdaImpl;
        this.m = composableLambdaImpl2;
        this.n = composableLambdaImpl3;
        this.o = function2;
        this.p = windowInsets;
        this.q = composableLambdaImpl4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        Object obj3 = this.q;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(this.k) | 1;
                this.l.h(this.m, (Boolean) obj3, this.n, this.o, this.p, (Composer) obj, a);
                return unit;
            default:
                ((Integer) obj2).getClass();
                int a2 = RecomposeScopeImplKt.a(24577);
                ScaffoldKt.c(this.k, this.l, (ComposableLambdaImpl) this.m, (ComposableLambdaImpl) this.n, (Function2) this.o, (WindowInsets) this.p, (ComposableLambdaImpl) obj3, (Composer) obj, a2);
                return unit;
        }
    }

    public /* synthetic */ s5(ComposableLambdaImpl composableLambdaImpl, Object obj, Boolean bool, Object obj2, Object obj3, Object obj4, int i) {
        this.l = composableLambdaImpl;
        this.m = obj;
        this.q = bool;
        this.n = obj2;
        this.o = obj3;
        this.p = obj4;
        this.k = i;
    }
}
