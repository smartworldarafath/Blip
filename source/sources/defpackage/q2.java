package defpackage;

import androidx.compose.foundation.CanvasKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class q2 implements Function2 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ Modifier k;
    public final /* synthetic */ Function1 l;
    public final /* synthetic */ int m;

    public /* synthetic */ q2(Modifier modifier, Function1 function1, int i) {
        this.k = modifier;
        this.l = function1;
        this.m = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.m;
        Function1 function1 = this.l;
        Modifier modifier = this.k;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                num.getClass();
                AndroidView_androidKt.a(RecomposeScopeImplKt.a(i2 | 1), composer, modifier, function1);
                return unit;
            default:
                num.intValue();
                CanvasKt.a(RecomposeScopeImplKt.a(i2 | 1), composer, modifier, function1);
                return unit;
        }
    }

    public /* synthetic */ q2(Function1 function1, Modifier modifier, int i) {
        this.l = function1;
        this.k = modifier;
        this.m = i;
    }
}
