package defpackage;

import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope;
import androidx.compose.material.ButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.settings.ComposableSingletons$SettingsScreenKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ea implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Function1 k;

    public /* synthetic */ ea(Function1 function1, int i) {
        this.j = i;
        this.k = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        Object obj3 = Composer.Companion.a;
        boolean z2 = false;
        int i2 = 1;
        Function1 function1 = this.k;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                return (GridItemSpan) function1.b((LazyGridItemSpanScope) obj);
            case 1:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z2)) {
                    boolean f = gapComposer.f(function1);
                    Object K = gapComposer.K();
                    if (f || K == obj3) {
                        K = new b8(function1, 13);
                        gapComposer.g0(K);
                    }
                    ButtonKt.b((Function0) K, false, null, ComposableSingletons$SettingsScreenKt.k, gapComposer, 510);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z)) {
                    Object[] objArr = new Object[0];
                    Object K2 = gapComposer2.K();
                    if (K2 == obj3) {
                        K2 = new vc(19);
                        gapComposer2.g0(K2);
                    }
                    MutableState mutableState = (MutableState) RememberSaveableKt.c(objArr, (Function0) K2, gapComposer2);
                    boolean f2 = gapComposer2.f(mutableState);
                    Object K3 = gapComposer2.K();
                    if (f2 || K3 == obj3) {
                        K3 = new cd(mutableState, 18);
                        gapComposer2.g0(K3);
                    }
                    ListRowKt.b(null, null, null, null, (Function0) K3, null, ComposableLambdaKt.b(1138022221, new ef(i2, mutableState, function1), gapComposer2), gapComposer2, 1572864, 47);
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }
}
