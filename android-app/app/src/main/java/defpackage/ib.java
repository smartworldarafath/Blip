package defpackage;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material.MenuKt;
import androidx.compose.material.SwitchColors;
import androidx.compose.material.SwitchKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ib implements Function2 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Modifier l;
    public final /* synthetic */ int m;
    public final /* synthetic */ Function n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ ib(Function0 function0, Modifier modifier, boolean z, PaddingValues paddingValues, Function3 function3, int i) {
        this.n = function0;
        this.l = modifier;
        this.k = z;
        this.o = paddingValues;
        this.p = function3;
        this.m = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.m;
        Object obj3 = this.p;
        Object obj4 = this.o;
        Function function = this.n;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(i2 | 1);
                MenuKt.b((Function0) function, this.l, this.k, (PaddingValues) obj4, (Function3) obj3, (Composer) obj, a);
                return unit;
            default:
                ((Integer) obj2).getClass();
                int a2 = RecomposeScopeImplKt.a(i2 | 1);
                SwitchKt.a(this.k, (Function1) function, this.l, (MutableInteractionSource) obj4, (SwitchColors) obj3, (Composer) obj, a2);
                return unit;
        }
    }

    public /* synthetic */ ib(boolean z, Function1 function1, Modifier modifier, MutableInteractionSource mutableInteractionSource, SwitchColors switchColors, int i) {
        this.k = z;
        this.n = function1;
        this.l = modifier;
        this.o = mutableInteractionSource;
        this.p = switchColors;
        this.m = i;
    }
}
