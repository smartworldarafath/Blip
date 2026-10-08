package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.NavBackStackEntryProviderKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ob implements Function2 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ NavBackStackEntry k;
    public final /* synthetic */ SaveableStateHolder l;
    public final /* synthetic */ ComposableLambdaImpl m;

    public /* synthetic */ ob(SaveableStateHolder saveableStateHolder, NavBackStackEntry navBackStackEntry, ComposableLambdaImpl composableLambdaImpl) {
        this.l = saveableStateHolder;
        this.k = navBackStackEntry;
        this.m = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        ComposableLambdaImpl composableLambdaImpl = this.m;
        SaveableStateHolder saveableStateHolder = this.l;
        NavBackStackEntry navBackStackEntry = this.k;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                int intValue = num.intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    NavBackStackEntryProviderKt.b(saveableStateHolder, ComposableLambdaKt.b(65670941, new a0(16, navBackStackEntry, composableLambdaImpl), gapComposer), gapComposer, 48);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                num.getClass();
                NavBackStackEntryProviderKt.a(navBackStackEntry, saveableStateHolder, composableLambdaImpl, composer, RecomposeScopeImplKt.a(385));
                return unit;
        }
    }

    public /* synthetic */ ob(NavBackStackEntry navBackStackEntry, SaveableStateHolder saveableStateHolder, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.k = navBackStackEntry;
        this.l = saveableStateHolder;
        this.m = composableLambdaImpl;
    }
}
