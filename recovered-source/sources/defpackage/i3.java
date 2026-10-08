package defpackage;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class i3 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ NavHostController k;

    public /* synthetic */ i3(NavHostController navHostController, int i) {
        this.j = i;
        this.k = navHostController;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        NavHostController navHostController = this.k;
        switch (i) {
            case 0:
                navHostController.c();
                return unit;
            case 1:
                NavController.b(navHostController, "help/sendToOtherPeople");
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                navHostController.c();
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                navHostController.d();
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                navHostController.d();
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                navHostController.c();
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                NavController.b(navHostController, "help/sendToOtherPeople");
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                NavController.b(navHostController, "help/sendToYourDevices");
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                navHostController.c();
                return unit;
            case KeyModifiers.a /* 9 */:
                navHostController.c();
                return unit;
            case KeyModifiers.b /* 10 */:
                NavController.b(navHostController, "settings/profile");
                return unit;
            default:
                navHostController.c();
                return unit;
        }
    }
}
