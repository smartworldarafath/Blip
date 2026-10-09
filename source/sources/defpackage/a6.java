package defpackage;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import net.blip.android.ui.components.DropdownMenuKt;
import net.blip.android.ui.navigation.AuthScope;
import net.blip.android.ui.navigation.NavigationRootKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a6 implements Function3 {
    public final /* synthetic */ int j;
    public final /* synthetic */ String k;

    public /* synthetic */ a6(String str, int i) {
        this.j = i;
        this.k = str;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        boolean h;
        int i;
        boolean z;
        int i2 = this.j;
        Unit unit = Unit.a;
        boolean z2 = false;
        String str = this.k;
        switch (i2) {
            case 0:
                AuthScope authScope = (AuthScope) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                authScope.getClass();
                if ((intValue & 6) == 0) {
                    if ((intValue & 8) == 0) {
                        h = ((GapComposer) composer).f(authScope);
                    } else {
                        h = ((GapComposer) composer).h(authScope);
                    }
                    if (h) {
                        i = 4;
                    } else {
                        i = 2;
                    }
                    intValue |= i;
                }
                if ((intValue & 19) != 18) {
                    z2 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z2)) {
                    NavigationRootKt.a(ComposableLambdaKt.b(-1642041329, new b6(authScope, str), gapComposer), gapComposer, 6);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue2 & 17) != 16) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z)) {
                    DropdownMenuKt.a(str, gapComposer2, 0);
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }
}
