package defpackage;

import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import net.blip.android.ui.util.NuancedPermissionState;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class l3 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ NuancedPermissionState k;

    public /* synthetic */ l3(NuancedPermissionState nuancedPermissionState, int i) {
        this.j = i;
        this.k = nuancedPermissionState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        NuancedPermissionState nuancedPermissionState = this.k;
        switch (i) {
            case 0:
                NuancedPermissionState.a(nuancedPermissionState);
                return unit;
            case 1:
                NuancedPermissionState.a(nuancedPermissionState);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                NuancedPermissionState.a(nuancedPermissionState);
                return unit;
            default:
                NuancedPermissionState.a(nuancedPermissionState);
                return unit;
        }
    }
}
