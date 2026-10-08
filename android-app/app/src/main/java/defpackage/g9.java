package defpackage;

import android.content.Context;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavController;
import androidx.navigation.NavController$onBackPressedCallback$1;
import androidx.navigation.NavigatorProvider;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g9 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ NavController k;

    public /* synthetic */ g9(NavController navController, int i) {
        this.j = i;
        this.k = navController;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
    
        if (r3.a() > 1) goto L12;
     */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a() {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        NavController navController = this.k;
        switch (i) {
            case 0:
                NavController.b(navController, "settings");
                return unit;
            case 1:
                NavController.b(navController, "help/sendToYourDevices");
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                NavController$onBackPressedCallback$1 navController$onBackPressedCallback$1 = navController.f;
                if (navController.g) {
                    z = true;
                    break;
                }
                z = false;
                navController$onBackPressedCallback$1.e(z);
                return unit;
            default:
                Context context = navController.a;
                NavigatorProvider navigatorProvider = navController.b.t;
                context.getClass();
                navigatorProvider.getClass();
                return new Object();
        }
    }
}
