package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function2 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ ComposableLambdaImpl k;
    public final /* synthetic */ Object l;

    public /* synthetic */ c(ComposableLambdaImpl composableLambdaImpl, BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl) {
        this.k = composableLambdaImpl;
        this.l = boxWithConstraintsScopeImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        Object obj3 = this.l;
        ComposableLambdaImpl composableLambdaImpl = this.k;
        switch (i) {
            case 0:
                SubcomposeMeasureScope subcomposeMeasureScope = (SubcomposeMeasureScope) obj;
                Constraints constraints = (Constraints) obj2;
                return ((MeasurePolicy) obj3).a(subcomposeMeasureScope, subcomposeMeasureScope.r(unit, new ComposableLambdaImpl(-431986394, true, new c(composableLambdaImpl, new BoxWithConstraintsScopeImpl(subcomposeMeasureScope, constraints.a)))), constraints.a);
            default:
                BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl = (BoxWithConstraintsScopeImpl) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    composableLambdaImpl.f(boxWithConstraintsScopeImpl, gapComposer, 0);
                } else {
                    gapComposer.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ c(MeasurePolicy measurePolicy, ComposableLambdaImpl composableLambdaImpl) {
        this.l = measurePolicy;
        this.k = composableLambdaImpl;
    }
}
