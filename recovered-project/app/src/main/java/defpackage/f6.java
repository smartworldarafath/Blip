package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.onboarding.ComposablesKt;
import net.blip.android.ui.onboarding.OnboardingShareInstructionsStepKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f6 implements Function2 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ ComposableLambdaImpl k;
    public final /* synthetic */ Function2 l;
    public final /* synthetic */ Function2 m;
    public final /* synthetic */ int n;
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ f6(Modifier modifier, String str, ComposableLambdaImpl composableLambdaImpl, Function2 function2, Function2 function22, int i, int i2) {
        this.p = modifier;
        this.q = str;
        this.k = composableLambdaImpl;
        this.l = function2;
        this.m = function22;
        this.n = i;
        this.o = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.n;
        Object obj3 = this.q;
        Object obj4 = this.p;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(i2 | 1);
                ComposablesKt.c(this.l, this.k, this.m, (ComposableLambdaImpl) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, a, this.o);
                return unit;
            default:
                ((Integer) obj2).getClass();
                int a2 = RecomposeScopeImplKt.a(i2 | 1);
                OnboardingShareInstructionsStepKt.b((Modifier) obj4, (String) obj3, this.k, this.l, this.m, (Composer) obj, a2, this.o);
                return unit;
        }
    }

    public /* synthetic */ f6(Function2 function2, ComposableLambdaImpl composableLambdaImpl, Function2 function22, ComposableLambdaImpl composableLambdaImpl2, ComposableLambdaImpl composableLambdaImpl3, int i, int i2) {
        this.l = function2;
        this.k = composableLambdaImpl;
        this.m = function22;
        this.p = composableLambdaImpl2;
        this.q = composableLambdaImpl3;
        this.n = i;
        this.o = i2;
    }
}
