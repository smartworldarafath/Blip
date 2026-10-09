package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.navigation.AuthScope;
import net.blip.android.ui.settings.SettingsDeviceScreenKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b6 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ AuthScope k;
    public final /* synthetic */ String l;

    public /* synthetic */ b6(AuthScope authScope, String str) {
        this.j = 0;
        this.k = authScope;
        this.l = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        String str = this.l;
        AuthScope authScope = this.k;
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
                    SettingsDeviceScreenKt.a(authScope, str, gapComposer, 8);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                num.getClass();
                SettingsDeviceScreenKt.a(authScope, str, composer, RecomposeScopeImplKt.a(9));
                return unit;
            default:
                num.getClass();
                SettingsDeviceScreenKt.a(authScope, str, composer, RecomposeScopeImplKt.a(9));
                return unit;
        }
    }

    public /* synthetic */ b6(AuthScope authScope, String str, int i, int i2) {
        this.j = i2;
        this.k = authScope;
        this.l = str;
    }
}
