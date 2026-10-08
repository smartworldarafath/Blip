package defpackage;

import android.os.Bundle;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.navigation.NavBackStackEntry;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class fa implements Function4 {
    public final /* synthetic */ int j;
    public final /* synthetic */ ComposableLambdaImpl k;

    public /* synthetic */ fa(ComposableLambdaImpl composableLambdaImpl, int i) {
        this.j = i;
        this.k = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object j(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.j;
        boolean z = false;
        int i2 = 2;
        ComposableLambdaImpl composableLambdaImpl = this.k;
        Unit unit = Unit.a;
        switch (i) {
            case 0:
                LazyGridItemScope lazyGridItemScope = (LazyGridItemScope) obj;
                ((Integer) obj2).getClass();
                Composer composer = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                if ((intValue & 6) == 0) {
                    if (((GapComposer) composer).f(lazyGridItemScope)) {
                        i2 = 4;
                    }
                    intValue |= i2;
                }
                if ((intValue & 131) != 130) {
                    z = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    composableLambdaImpl.f(lazyGridItemScope, gapComposer, Integer.valueOf(intValue & 14));
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                LazyItemScope lazyItemScope = (LazyItemScope) obj;
                ((Integer) obj2).getClass();
                Composer composer2 = (Composer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                if ((intValue2 & 6) == 0) {
                    if (((GapComposer) composer2).f(lazyItemScope)) {
                        i2 = 4;
                    }
                    intValue2 |= i2;
                }
                if ((intValue2 & 131) != 130) {
                    z = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z)) {
                    composableLambdaImpl.f(lazyItemScope, gapComposer2, Integer.valueOf(intValue2 & 14));
                } else {
                    gapComposer2.Q();
                }
                return unit;
            default:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj2;
                Composer composer3 = (Composer) obj3;
                int intValue3 = ((Integer) obj4).intValue();
                ((AnimatedContentScope) obj).getClass();
                navBackStackEntry.getClass();
                Bundle b = navBackStackEntry.b();
                if (b != null) {
                    String string = b.getString("transferId");
                    if (string != null) {
                        this.k.q(navBackStackEntry, string, Boolean.valueOf(b.getBoolean("isFromShareIntent")), composer3, Integer.valueOf((intValue3 >> 3) & 14));
                        return unit;
                    }
                    u2.g("Required value was null.");
                } else {
                    u2.l("missing arguments");
                }
                return null;
        }
    }
}
