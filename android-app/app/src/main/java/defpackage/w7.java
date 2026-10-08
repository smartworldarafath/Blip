package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.shared.DisabledContentKt;
import net.blip.shared.FocusBlockerKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class w7 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Modifier k;
    public final /* synthetic */ boolean l;
    public final /* synthetic */ ComposableLambdaImpl m;
    public final /* synthetic */ int n;

    public /* synthetic */ w7(Modifier modifier, boolean z, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.j = i2;
        this.k = modifier;
        this.l = z;
        this.m = composableLambdaImpl;
        this.n = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.n;
        ComposableLambdaImpl composableLambdaImpl = this.m;
        boolean z = this.l;
        Modifier modifier = this.k;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                DisabledContentKt.a(modifier, z, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            default:
                FocusBlockerKt.a(modifier, z, composableLambdaImpl, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
        }
    }
}
