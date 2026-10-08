package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.components.DropdownMenuKt;
import net.blip.android.ui.onboarding.ComposablesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g6 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ String k;
    public final /* synthetic */ int l;

    public /* synthetic */ g6(String str, int i, int i2) {
        this.j = i2;
        this.k = str;
        this.l = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.l;
        String str = this.k;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                ComposablesKt.g(str, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
            default:
                DropdownMenuKt.a(str, composer, RecomposeScopeImplKt.a(i2 | 1));
                return unit;
        }
    }
}
