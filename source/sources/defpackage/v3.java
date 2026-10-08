package defpackage;

import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.blip.android.ui.navigation.AuthScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class v3 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Function3 k;

    public /* synthetic */ v3(Function3 function3) {
        this.j = 3;
        this.k = function3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        Function3 function3 = this.k;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                num.getClass();
                AuthScopeKt.a(function3, composer, RecomposeScopeImplKt.a(7));
                return unit;
            case 1:
                num.getClass();
                AuthScopeKt.a(function3, composer, RecomposeScopeImplKt.a(7));
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                num.getClass();
                AuthScopeKt.a(function3, composer, RecomposeScopeImplKt.a(7));
                return unit;
            default:
                int intValue = num.intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    function3.f(RowScopeInstance.a, gapComposer, 0);
                } else {
                    gapComposer.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ v3(Function3 function3, int i, int i2) {
        this.j = i2;
        this.k = function3;
    }
}
