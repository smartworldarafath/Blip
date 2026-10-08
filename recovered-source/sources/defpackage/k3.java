package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.audiopicker.AudioPickerScreenKt;
import net.blip.shared.StackLayoutKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class k3 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Modifier k;
    public final /* synthetic */ float l;
    public final /* synthetic */ Function m;

    public /* synthetic */ k3(Modifier modifier, float f, Function function, int i, int i2) {
        this.j = i2;
        this.k = modifier;
        this.l = f;
        this.m = function;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        Function function = this.m;
        float f = this.l;
        Modifier modifier = this.k;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                AudioPickerScreenKt.a(modifier, f, (Function1) function, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            default:
                ((Integer) obj2).getClass();
                StackLayoutKt.a(modifier, f, (ComposableLambdaImpl) function, (Composer) obj, RecomposeScopeImplKt.a(433));
                return unit;
        }
    }
}
