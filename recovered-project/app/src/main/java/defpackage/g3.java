package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavHostController;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.audiopicker.ComposableSingletons$AudioPickerScreenKt;
import net.blip.android.ui.home.HomeScreenKt;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.android.ui.settings.ComposableSingletons$SettingsScreenKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g3 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ NavHostController k;

    public /* synthetic */ g3(NavHostController navHostController, int i) {
        this.j = i;
        this.k = navHostController;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        int i = this.j;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        boolean z3 = false;
        Unit unit = Unit.a;
        NavHostController navHostController = this.k;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(1 & intValue, z)) {
                    boolean h = gapComposer.h(navHostController);
                    Object K = gapComposer.K();
                    if (h || K == composer$Companion$Empty$1) {
                        K = new i3(navHostController, 0);
                        gapComposer.g0(K);
                    }
                    ScreenLockupKt.d(null, 0L, ComposableSingletons$AudioPickerScreenKt.a, null, (Function0) K, gapComposer, 384, 11);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z3 = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z3)) {
                    boolean h2 = gapComposer2.h(navHostController);
                    Object K2 = gapComposer2.K();
                    if (h2 || K2 == composer$Companion$Empty$1) {
                        K2 = new i3(navHostController, 3);
                        gapComposer2.g0(K2);
                    }
                    ScreenLockupKt.d(null, 0L, null, null, (Function0) K2, gapComposer2, 0, 15);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z3 = true;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z3)) {
                    boolean h3 = gapComposer3.h(navHostController);
                    Object K3 = gapComposer3.K();
                    if (h3 || K3 == composer$Companion$Empty$1) {
                        K3 = new i3(navHostController, 4);
                        gapComposer3.g0(K3);
                    }
                    ScreenLockupKt.d(null, 0L, null, null, (Function0) K3, gapComposer3, 0, 15);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ((Integer) obj2).getClass();
                NavigationRootKt.b(navHostController, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ((Integer) obj2).getClass();
                NavigationRootKt.b(navHostController, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = NavigationRootKt.a;
                if ((intValue4 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(intValue4 & 1, z2)) {
                    HomeScreenKt.a(navHostController, gapComposer4, 0);
                } else {
                    gapComposer4.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if ((intValue5 & 3) != 2) {
                    z3 = true;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.N(intValue5 & 1, z3)) {
                    boolean h4 = gapComposer5.h(navHostController);
                    Object K4 = gapComposer5.K();
                    if (h4 || K4 == composer$Companion$Empty$1) {
                        K4 = new i3(navHostController, 8);
                        gapComposer5.g0(K4);
                    }
                    ScreenLockupKt.d(null, 0L, null, null, (Function0) K4, gapComposer5, 0, 15);
                } else {
                    gapComposer5.Q();
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if ((intValue6 & 3) != 2) {
                    z3 = true;
                }
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.N(intValue6 & 1, z3)) {
                    boolean h5 = gapComposer6.h(navHostController);
                    Object K5 = gapComposer6.K();
                    if (h5 || K5 == composer$Companion$Empty$1) {
                        K5 = new i3(navHostController, 9);
                        gapComposer6.g0(K5);
                    }
                    ScreenLockupKt.d(null, 0L, null, null, (Function0) K5, gapComposer6, 0, 15);
                } else {
                    gapComposer6.Q();
                }
                return unit;
            default:
                Composer composer7 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if ((intValue7 & 3) != 2) {
                    z3 = true;
                }
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (gapComposer7.N(intValue7 & 1, z3)) {
                    Modifier b = BackgroundKt.b(Modifier.Companion.b, ((AndroidColors) gapComposer7.j(AndroidColorsKt.a)).i, RectangleShapeKt.a);
                    boolean h6 = gapComposer7.h(navHostController);
                    Object K6 = gapComposer7.K();
                    if (h6 || K6 == composer$Companion$Empty$1) {
                        K6 = new i3(navHostController, 11);
                        gapComposer7.g0(K6);
                    }
                    ScreenLockupKt.d(b, 0L, ComposableSingletons$SettingsScreenKt.a, null, (Function0) K6, gapComposer7, 384, 10);
                } else {
                    gapComposer7.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ g3(NavHostController navHostController, int i, int i2) {
        this.j = i2;
        this.k = navHostController;
    }
}
