package defpackage;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.onboarding.ComposablesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class kc implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Function1 l;
    public final /* synthetic */ MutableState m;

    public /* synthetic */ kc(boolean z, Function1 function1, MutableState mutableState, int i) {
        this.j = i;
        this.k = z;
        this.l = function1;
        this.m = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        boolean z = false;
        MutableState mutableState = this.m;
        Function1 function1 = this.l;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    AnimatedVisibilityKt.b(!this.k, null, EnterExitTransitionKt.c(null, 3), EnterExitTransitionKt.d(null, 3), null, ComposableLambdaKt.b(802739580, new i0(4, function1, mutableState), gapComposer), gapComposer, 200064);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z)) {
                    boolean f = gapComposer2.f(function1);
                    Object K = gapComposer2.K();
                    if (f || K == Composer.Companion.a) {
                        K = new k9(6, mutableState, function1);
                        gapComposer2.g0(K);
                    }
                    ComposablesKt.a("Continue", this.k, (Function0) K, gapComposer2, 6, 0);
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }
}
