package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleEffectKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.shared.ListRowBasicLockupKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class r5 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ int l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ r5(Modifier modifier, Function2 function2, Function2 function22, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.j = 2;
        this.k = modifier;
        this.n = function2;
        this.o = function22;
        this.m = composableLambdaImpl;
        this.l = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Object obj3 = this.o;
        Object obj4 = this.n;
        Unit unit = Unit.a;
        int i2 = this.l;
        Object obj5 = this.m;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(i2) | 1;
                ((ComposableLambdaImpl) obj5).m(this.k, this.n, this.o, (Composer) obj, a);
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                int a2 = RecomposeScopeImplKt.a(i2 | 1);
                LifecycleEffectKt.a((Boolean) obj5, this.k, (LifecycleOwner) obj4, (Function1) obj3, (Composer) obj, a2);
                return unit;
            default:
                ((Integer) obj2).getClass();
                ListRowBasicLockupKt.a((Modifier) this.k, (Function2) obj4, (Function2) obj3, (ComposableLambdaImpl) obj5, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
        }
    }

    public /* synthetic */ r5(Object obj, Object obj2, Object obj3, Object obj4, int i, int i2) {
        this.j = i2;
        this.m = obj;
        this.k = obj2;
        this.n = obj3;
        this.o = obj4;
        this.l = i;
    }
}
