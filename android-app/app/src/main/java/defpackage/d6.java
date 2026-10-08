package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.ProgressIndicatorKt;
import androidx.compose.material.SnackbarHostKt;
import androidx.compose.material.SnackbarHostState;
import androidx.compose.material.SnackbarKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.d;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function3;
import kotlin.math.MathKt;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.DropdownMenuKt;
import net.blip.android.ui.components.SubheadingKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d6 implements Function3 {
    public final /* synthetic */ int j;

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        boolean h;
        Map map;
        Map map2;
        int i = this.j;
        int i2 = 2;
        Unit unit = Unit.a;
        boolean z = true;
        boolean z2 = false;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z2)) {
                    DropdownMenuKt.a("Send photos", gapComposer, 48);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue2 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    DropdownMenuKt.a("Send files", gapComposer2, 48);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue3 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z2)) {
                    DropdownMenuKt.a("Send a folder", gapComposer3, 48);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue4 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(intValue4 & 1, z2)) {
                    DropdownMenuKt.a("Capture a photo", gapComposer4, 48);
                } else {
                    gapComposer4.Q();
                }
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Composer composer5 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue5 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.N(intValue5 & 1, z2)) {
                    DropdownMenuKt.a("Send audio", gapComposer5, 48);
                } else {
                    gapComposer5.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Composer composer6 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue6 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.N(intValue6 & 1, z2)) {
                    DropdownMenuKt.a("Remove", gapComposer6, 48);
                } else {
                    gapComposer6.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Composer composer7 = (Composer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue7 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (gapComposer7.N(intValue7 & 1, z2)) {
                    DropdownMenuKt.a("Block", gapComposer7, 48);
                } else {
                    gapComposer7.Q();
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Composer composer8 = (Composer) obj2;
                int intValue8 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue8 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (gapComposer8.N(intValue8 & 1, z2)) {
                    DropdownMenuKt.a("Add to Home screen", gapComposer8, 48);
                } else {
                    gapComposer8.Q();
                }
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                SnackbarHostState snackbarHostState = (SnackbarHostState) obj;
                Composer composer9 = (Composer) obj2;
                int intValue9 = ((Integer) obj3).intValue();
                if ((intValue9 & 6) == 0) {
                    if (((GapComposer) composer9).f(snackbarHostState)) {
                        i2 = 4;
                    }
                    intValue9 |= i2;
                }
                if ((intValue9 & 19) == 18) {
                    z = false;
                }
                GapComposer gapComposer9 = (GapComposer) composer9;
                if (gapComposer9.N(intValue9 & 1, z)) {
                    SnackbarHostKt.b(snackbarHostState, null, null, gapComposer9, intValue9 & 14);
                } else {
                    gapComposer9.Q();
                }
                return unit;
            case KeyModifiers.a /* 9 */:
                SnackbarHostState snackbarHostState2 = (SnackbarHostState) obj;
                Composer composer10 = (Composer) obj2;
                int intValue10 = ((Integer) obj3).intValue();
                if ((intValue10 & 6) == 0) {
                    if (((GapComposer) composer10).f(snackbarHostState2)) {
                        i2 = 4;
                    }
                    intValue10 |= i2;
                }
                if ((intValue10 & 19) == 18) {
                    z = false;
                }
                GapComposer gapComposer10 = (GapComposer) composer10;
                if (gapComposer10.N(intValue10 & 1, z)) {
                    SnackbarHostKt.b(snackbarHostState2, null, null, gapComposer10, intValue10 & 14);
                } else {
                    gapComposer10.Q();
                }
                return unit;
            case KeyModifiers.b /* 10 */:
                Composer composer11 = (Composer) obj2;
                int intValue11 = ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                if ((intValue11 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer11 = (GapComposer) composer11;
                if (gapComposer11.N(intValue11 & 1, z2)) {
                    ProgressIndicatorKt.b(SizeKt.k(PaddingKt.h(Modifier.Companion.b, 0.0f, 0.0f, 16.0f, 0.0f, 11), 20.0f), 0L, 2.0f, 0L, 1, gapComposer11, 390, 10);
                } else {
                    gapComposer11.Q();
                }
                return unit;
            case 11:
                Composer composer12 = (Composer) obj2;
                int intValue12 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue12 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer12 = (GapComposer) composer12;
                if (gapComposer12.N(intValue12 & 1, z2)) {
                    PlatformTextKt.c("Sign Out", null, TextStyle.a(((AndroidTextStyles) gapComposer12.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer12.j(AndroidColorsKt.a)).g, TextUnitKt.d(16), FontWeight.t, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer12, 6, 506);
                } else {
                    gapComposer12.Q();
                }
                return unit;
            case KeyModifiers.c /* 12 */:
                Composer composer13 = (Composer) obj2;
                int intValue13 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue13 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer13 = (GapComposer) composer13;
                if (gapComposer13.N(intValue13 & 1, z2)) {
                    PlatformTextKt.c("Cancel", null, TextStyle.a(((AndroidTextStyles) gapComposer13.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer13.j(AndroidColorsKt.a)).b, TextUnitKt.d(16), FontWeight.t, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer13, 6, 506);
                } else {
                    gapComposer13.Q();
                }
                return unit;
            case 13:
                if (obj == null) {
                    Composer composer14 = (Composer) obj2;
                    int intValue14 = ((Integer) obj3).intValue();
                    if ((intValue14 & 6) == 0) {
                        if ((intValue14 & 8) == 0) {
                            h = ((GapComposer) composer14).f(null);
                        } else {
                            h = ((GapComposer) composer14).h(null);
                        }
                        if (h) {
                            i2 = 4;
                        }
                        intValue14 |= i2;
                    }
                    if ((intValue14 & 19) == 18) {
                        z = false;
                    }
                    GapComposer gapComposer14 = (GapComposer) composer14;
                    if (gapComposer14.N(intValue14 & 1, z)) {
                        SnackbarKt.a(null, null, 0L, 0L, 0L, 0.0f, gapComposer14, intValue14 & 14);
                    } else {
                        gapComposer14.Q();
                    }
                    return unit;
                }
                d.i();
                return null;
            case 14:
                Composer composer15 = (Composer) obj2;
                int intValue15 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue15 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer15 = (GapComposer) composer15;
                if (gapComposer15.N(intValue15 & 1, z2)) {
                    PlatformTextKt.c("Cancel", null, TextStyle.a(((AndroidTextStyles) gapComposer15.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer15.j(AndroidColorsKt.a)).b, TextUnitKt.d(16), FontWeight.s, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer15, 6, 506);
                } else {
                    gapComposer15.Q();
                }
                return unit;
            case 15:
                Composer composer16 = (Composer) obj2;
                int intValue16 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue16 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer16 = (GapComposer) composer16;
                if (gapComposer16.N(intValue16 & 1, z2)) {
                    PlatformTextKt.c("Save", null, TextStyle.a(((AndroidTextStyles) gapComposer16.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer16.j(AndroidColorsKt.a)).b, TextUnitKt.d(16), FontWeight.s, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer16, 6, 506);
                } else {
                    gapComposer16.Q();
                }
                return unit;
            case 16:
                Composer composer17 = (Composer) obj2;
                int intValue17 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue17 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer17 = (GapComposer) composer17;
                if (gapComposer17.N(intValue17 & 1, z2)) {
                    PlatformTextKt.c("Cancel Transfer", null, TextStyle.a(((AndroidTextStyles) gapComposer17.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer17.j(AndroidColorsKt.a)).g, TextUnitKt.d(16), FontWeight.t, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer17, 6, 506);
                } else {
                    gapComposer17.Q();
                }
                return unit;
            case 17:
                Composer composer18 = (Composer) obj2;
                int intValue18 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue18 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer18 = (GapComposer) composer18;
                if (gapComposer18.N(intValue18 & 1, z2)) {
                    PlatformTextKt.c("Go Back", null, TextStyle.a(((AndroidTextStyles) gapComposer18.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer18.j(AndroidColorsKt.a)).b, TextUnitKt.d(16), FontWeight.t, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer18, 6, 506);
                } else {
                    gapComposer18.Q();
                }
                return unit;
            case 18:
                Composer composer19 = (Composer) obj2;
                int intValue19 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue19 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer19 = (GapComposer) composer19;
                if (gapComposer19.N(intValue19 & 1, z2)) {
                    PlatformTextKt.c("Accept", null, TextStyle.a(((AndroidTextStyles) gapComposer19.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer19.j(AndroidColorsKt.a)).b, TextUnitKt.d(16), FontWeight.t, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer19, 6, 506);
                } else {
                    gapComposer19.Q();
                }
                return unit;
            case 19:
                Composer composer20 = (Composer) obj2;
                int intValue20 = ((Integer) obj3).intValue();
                ((LazyGridItemScope) obj).getClass();
                if ((intValue20 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer20 = (GapComposer) composer20;
                if (gapComposer20.N(intValue20 & 1, z2)) {
                    SubheadingKt.a(PaddingKt.h(Modifier.Companion.b, 0.0f, 20.0f, 0.0f, 10.0f, 5), "Received", 0L, gapComposer20, 54, 4);
                } else {
                    gapComposer20.Q();
                }
                return unit;
            case 20:
                Composer composer21 = (Composer) obj2;
                int intValue21 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue21 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer21 = (GapComposer) composer21;
                if (gapComposer21.N(intValue21 & 1, z2)) {
                    DropdownMenuKt.a("Copy", gapComposer21, 48);
                } else {
                    gapComposer21.Q();
                }
                return unit;
            case 21:
                Composer composer22 = (Composer) obj2;
                int intValue22 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue22 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer22 = (GapComposer) composer22;
                if (gapComposer22.N(intValue22 & 1, z2)) {
                    DropdownMenuKt.a("Delete", gapComposer22, 48);
                } else {
                    gapComposer22.Q();
                }
                return unit;
            case 22:
                Composer composer23 = (Composer) obj2;
                int intValue23 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue23 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer23 = (GapComposer) composer23;
                if (gapComposer23.N(intValue23 & 1, z2)) {
                    PlatformTextKt.c("Delete Transfer", null, TextStyle.a(((AndroidTextStyles) gapComposer23.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer23.j(AndroidColorsKt.a)).g, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer23, 6, 506);
                } else {
                    gapComposer23.Q();
                }
                return unit;
            case 23:
                Composer composer24 = (Composer) obj2;
                int intValue24 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue24 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer24 = (GapComposer) composer24;
                if (gapComposer24.N(intValue24 & 1, z2)) {
                    PlatformTextKt.c("Delete Transfer & Files", null, TextStyle.a(((AndroidTextStyles) gapComposer24.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer24.j(AndroidColorsKt.a)).g, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer24, 6, 506);
                } else {
                    gapComposer24.Q();
                }
                return unit;
            case 24:
                Composer composer25 = (Composer) obj2;
                int intValue25 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue25 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer25 = (GapComposer) composer25;
                if (gapComposer25.N(intValue25 & 1, z2)) {
                    PlatformTextKt.c("Cancel", null, TextStyle.a(((AndroidTextStyles) gapComposer25.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer25.j(AndroidColorsKt.a)).b, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer25, 6, 506);
                } else {
                    gapComposer25.Q();
                }
                return unit;
            case 25:
                Composer composer26 = (Composer) obj2;
                int intValue26 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue26 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer26 = (GapComposer) composer26;
                if (gapComposer26.N(intValue26 & 1, z2)) {
                    PlatformTextKt.c("Delete Transfers", null, TextStyle.a(((AndroidTextStyles) gapComposer26.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer26.j(AndroidColorsKt.a)).g, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer26, 6, 506);
                } else {
                    gapComposer26.Q();
                }
                return unit;
            case 26:
                Composer composer27 = (Composer) obj2;
                int intValue27 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue27 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer27 = (GapComposer) composer27;
                if (gapComposer27.N(intValue27 & 1, z2)) {
                    PlatformTextKt.c("Delete Transfers & Files", null, TextStyle.a(((AndroidTextStyles) gapComposer27.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer27.j(AndroidColorsKt.a)).g, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer27, 6, 506);
                } else {
                    gapComposer27.Q();
                }
                return unit;
            case 27:
                Composer composer28 = (Composer) obj2;
                int intValue28 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue28 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer28 = (GapComposer) composer28;
                if (gapComposer28.N(intValue28 & 1, z2)) {
                    PlatformTextKt.c("Cancel", null, TextStyle.a(((AndroidTextStyles) gapComposer28.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer28.j(AndroidColorsKt.a)).b, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer28, 6, 506);
                } else {
                    gapComposer28.Q();
                }
                return unit;
            default:
                MeasureScope measureScope = (MeasureScope) obj;
                Measurable measurable = (Measurable) obj2;
                Constraints constraints = (Constraints) obj3;
                measureScope.getClass();
                measurable.getClass();
                Placeable w = measurable.w(ConstraintsKt.b(0, 0, 0, 0, 15));
                if (w.j != 0 && w.k != 0) {
                    float f = w.j;
                    float f2 = w.k;
                    long floatToRawIntBits = (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
                    long a = IntSizeKt.a((Constraints.h(constraints.a) << 32) | (Constraints.g(constraints.a) & 4294967295L));
                    int i3 = (int) (floatToRawIntBits >> 32);
                    int i4 = (int) (floatToRawIntBits & 4294967295L);
                    float min = Math.min(Float.intBitsToFloat((int) (a >> 32)) / Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (a & 4294967295L)) / Float.intBitsToFloat(i4));
                    float intBitsToFloat = Float.intBitsToFloat(i3) * min;
                    float intBitsToFloat2 = Float.intBitsToFloat(i4) * min;
                    long floatToRawIntBits2 = (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
                    int b = MathKt.b(Float.intBitsToFloat((int) (floatToRawIntBits2 >> 32)));
                    int b2 = MathKt.b(Float.intBitsToFloat((int) (floatToRawIntBits2 & 4294967295L)));
                    lb lbVar = new lb(w, floatToRawIntBits2, floatToRawIntBits, min);
                    map2 = EmptyMap.j;
                    return measureScope.B(b, b2, map2, lbVar);
                }
                int j = Constraints.j(constraints.a);
                int h2 = Constraints.h(constraints.a);
                la laVar = new la(6);
                map = EmptyMap.j;
                return measureScope.B(j, h2, map, laVar);
        }
    }
}
