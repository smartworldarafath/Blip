package defpackage;

import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolderKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.AlertDialogKt;
import androidx.compose.material.MaterialTheme_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidThemeKt;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.android.ui.util.SystemBarsMetricsKt;
import net.blip.shared.DisabledContentKt;
import net.blip.shared.FocusBlockerKt;
import net.blip.shared.LightDarkTheme;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c0 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ ComposableLambdaImpl k;

    public /* synthetic */ c0(ComposableLambdaImpl composableLambdaImpl, int i) {
        this.j = 2;
        LightDarkTheme lightDarkTheme = LightDarkTheme.j;
        this.k = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i = this.j;
        Unit unit = Unit.a;
        ComposableLambdaImpl composableLambdaImpl = this.k;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                AlertDialogKt.c(composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(439));
                return unit;
            case 1:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    AndroidThemeKt.a(composableLambdaImpl, gapComposer, 0);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                LightDarkTheme lightDarkTheme = LightDarkTheme.j;
                ((Integer) obj2).getClass();
                AndroidThemeKt.b(composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(55));
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    composableLambdaImpl.n(gapComposer2, 0);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = DisabledContentKt.a;
                if ((intValue3 & 3) != 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z3)) {
                    composableLambdaImpl.n(gapComposer3, 0);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = FocusBlockerKt.a;
                if ((intValue4 & 3) != 2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(intValue4 & 1, z4)) {
                    composableLambdaImpl.f(BoxScopeInstance.a, gapComposer4, 0);
                } else {
                    gapComposer4.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ((Integer) obj2).getClass();
                LazySaveableStateHolderKt.a(composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(7));
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if ((intValue5 & 3) != 2) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.N(intValue5 & 1, z5)) {
                    MaterialTheme_androidKt.a(composableLambdaImpl, gapComposer5, 0);
                } else {
                    gapComposer5.Q();
                }
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).getClass();
                MaterialTheme_androidKt.a(composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case KeyModifiers.a /* 9 */:
                ((Integer) obj2).getClass();
                NavigationRootKt.a(composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(7));
                return unit;
            case KeyModifiers.b /* 10 */:
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = SystemBarsMetricsKt.a;
                if ((intValue6 & 3) != 2) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.N(intValue6 & 1, z6)) {
                    composableLambdaImpl.n(gapComposer6, 0);
                } else {
                    gapComposer6.Q();
                }
                return unit;
            default:
                ((Integer) obj2).getClass();
                SystemBarsMetricsKt.a(composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(7));
                return unit;
        }
    }

    public /* synthetic */ c0(ComposableLambdaImpl composableLambdaImpl, int i, byte b) {
        this.j = i;
        this.k = composableLambdaImpl;
    }

    public /* synthetic */ c0(ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.j = i2;
        this.k = composableLambdaImpl;
    }
}
