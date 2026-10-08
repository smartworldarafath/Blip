package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.icons.rounded.PrintKt;
import androidx.compose.material.icons.rounded.SearchKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ScaleKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.R;
import net.blip.android.ui.androidtheme.AndroidAvatarTheme;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.home.PeerTrayCellsKt;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.onboarding.ComposablesKt;
import net.blip.android.ui.onboarding.OnboardingShareInstructionsStepKt;
import net.blip.android.ui.util.AppIconKt;
import net.blip.android.ui.util.SystemBarsMetricsKt;
import net.blip.libblip.DeviceKind;
import net.blip.shared.AvatarKt;
import net.blip.shared.AvatarTheme;
import net.blip.shared.OnboardingStepperKt;
import net.blip.shared.Strings$Onboarding$Splash;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c6 implements Function2 {
    public final /* synthetic */ int j;

    public /* synthetic */ c6(int i) {
        this.j = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        int i = this.j;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        e6 e6Var = ComposeUiNode.Companion.b;
        e6 e6Var2 = ComposeUiNode.Companion.e;
        e6 e6Var3 = ComposeUiNode.Companion.c;
        e6 e6Var4 = ComposeUiNode.Companion.d;
        x9 x9Var = LayoutNode.b0;
        BiasAlignment biasAlignment = Alignment.Companion.a;
        Modifier.Companion companion = Modifier.Companion.b;
        Unit unit = Unit.a;
        boolean z10 = false;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z10)) {
                    ComposablesKt.g("Set your name and avatar", gapComposer, 6);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z)) {
                    Modifier b = SystemBarsMetricsKt.b(gapComposer2, SystemBarsMetricsKt.c(gapComposer2, companion));
                    MeasurePolicy d = BoxKt.d(biasAlignment, false);
                    int hashCode = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l = gapComposer2.l();
                    Modifier c = ComposedModifierKt.c(gapComposer2, b);
                    ComposeUiNode.b.getClass();
                    gapComposer2.Z();
                    if (gapComposer2.S) {
                        gapComposer2.k(x9Var);
                    } else {
                        gapComposer2.j0();
                    }
                    Updater.c(gapComposer2, d, e6Var4);
                    Updater.c(gapComposer2, l, e6Var3);
                    Updater.c(gapComposer2, Integer.valueOf(hashCode), e6Var2);
                    Updater.b(gapComposer2);
                    Updater.c(gapComposer2, c, e6Var);
                    OnboardingStepperKt.a(OnboardingScreenKt.b(true), OnboardingScreenKt.b(false), gapComposer2, 152792502);
                    gapComposer2.p(true);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z2)) {
                    Modifier.Companion companion2 = Modifier.Companion.b;
                    Modifier b2 = SizeKt.b(companion2, 0.375f);
                    MeasurePolicy d2 = BoxKt.d(biasAlignment, false);
                    int hashCode2 = Long.hashCode(gapComposer3.T);
                    PersistentCompositionLocalMap l2 = gapComposer3.l();
                    Modifier c2 = ComposedModifierKt.c(gapComposer3, b2);
                    ComposeUiNode.b.getClass();
                    gapComposer3.Z();
                    if (gapComposer3.S) {
                        gapComposer3.k(x9Var);
                    } else {
                        gapComposer3.j0();
                    }
                    Updater.c(gapComposer3, d2, e6Var4);
                    Updater.c(gapComposer3, l2, e6Var3);
                    Updater.c(gapComposer3, Integer.valueOf(hashCode2), e6Var2);
                    Updater.b(gapComposer3);
                    Updater.c(gapComposer3, c2, e6Var);
                    Modifier a = ScaleKt.a(GraphicsLayerModifierKt.b(companion2, 0.0f, 0.0f, 0.0f, -2.0f, 0L, null, false, 0L, 0L, 0, 1048319), 0.85f);
                    MeasurePolicy d3 = BoxKt.d(biasAlignment, false);
                    int hashCode3 = Long.hashCode(gapComposer3.T);
                    PersistentCompositionLocalMap l3 = gapComposer3.l();
                    Modifier c3 = ComposedModifierKt.c(gapComposer3, a);
                    gapComposer3.Z();
                    if (gapComposer3.S) {
                        gapComposer3.k(x9Var);
                    } else {
                        gapComposer3.j0();
                    }
                    Updater.c(gapComposer3, d3, e6Var4);
                    Updater.c(gapComposer3, l3, e6Var3);
                    q.s(hashCode3, gapComposer3, e6Var2, gapComposer3);
                    Updater.c(gapComposer3, c3, e6Var);
                    OnboardingShareInstructionsStepKt.a(0, gapComposer3);
                    gapComposer3.p(true);
                    gapComposer3.p(true);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if ((intValue4 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(intValue4 & 1, z10)) {
                    ImageKt.a(PainterResources_androidKt.a(R.drawable.faux_contact_female, gapComposer4), "Alicia", null, null, null, 0.0f, null, gapComposer4, 56, 124);
                } else {
                    gapComposer4.Q();
                }
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if ((intValue5 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.N(intValue5 & 1, z10)) {
                    ImageKt.a(PainterResources_androidKt.a(R.drawable.messages_app_icon, gapComposer5), "Messages", null, null, null, 0.0f, null, gapComposer5, 56, 124);
                } else {
                    gapComposer5.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if ((intValue6 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.N(intValue6 & 1, z10)) {
                    ImageKt.a(PainterResources_androidKt.a(R.drawable.messages_app_icon, gapComposer6), "Messages", null, null, null, 0.0f, null, gapComposer6, 56, 124);
                } else {
                    gapComposer6.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Composer composer7 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if ((intValue7 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (gapComposer7.N(intValue7 & 1, z10)) {
                    ImageKt.a(PainterResources_androidKt.a(R.drawable.gmail_app_icon, gapComposer7), "Gmail", null, null, null, 0.0f, null, gapComposer7, 56, 124);
                } else {
                    gapComposer7.Q();
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Composer composer8 = (Composer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if ((intValue8 & 3) != 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (gapComposer8.N(intValue8 & 1, z3)) {
                    OnboardingShareInstructionsStepKt.c(null, gapComposer8, 0);
                } else {
                    gapComposer8.Q();
                }
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Composer composer9 = (Composer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                if ((intValue9 & 3) != 2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                GapComposer gapComposer9 = (GapComposer) composer9;
                if (gapComposer9.N(intValue9 & 1, z4)) {
                    Modifier b3 = BackgroundKt.b(SizeKt.c(companion, 1.0f), Color.d, RectangleShapeKt.a);
                    MeasurePolicy d4 = BoxKt.d(biasAlignment, false);
                    int hashCode4 = Long.hashCode(gapComposer9.T);
                    PersistentCompositionLocalMap l4 = gapComposer9.l();
                    Modifier c4 = ComposedModifierKt.c(gapComposer9, b3);
                    ComposeUiNode.b.getClass();
                    gapComposer9.Z();
                    if (gapComposer9.S) {
                        gapComposer9.k(x9Var);
                    } else {
                        gapComposer9.j0();
                    }
                    Updater.c(gapComposer9, d4, e6Var4);
                    Updater.c(gapComposer9, l4, e6Var3);
                    Updater.c(gapComposer9, Integer.valueOf(hashCode4), e6Var2);
                    Updater.b(gapComposer9);
                    Updater.c(gapComposer9, c4, e6Var);
                    Modifier d5 = BoxScopeInstance.a.d(SizeKt.c(companion, 0.75f), Alignment.Companion.e);
                    ImageVector imageVector = PrintKt.a;
                    if (imageVector == null) {
                        ImageVector.Builder builder = new ImageVector.Builder("Rounded.Print", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i2 = VectorKt.a;
                        SolidColor solidColor = new SolidColor(Color.b);
                        PathBuilder pathBuilder = new PathBuilder();
                        pathBuilder.i(19.0f, 8.0f);
                        pathBuilder.g(5.0f, 8.0f);
                        pathBuilder.d(-1.66f, 0.0f, -3.0f, 1.34f, -3.0f, 3.0f);
                        pathBuilder.m(4.0f);
                        pathBuilder.d(0.0f, 1.1f, 0.9f, 2.0f, 2.0f, 2.0f);
                        pathBuilder.f(2.0f);
                        pathBuilder.m(2.0f);
                        pathBuilder.d(0.0f, 1.1f, 0.9f, 2.0f, 2.0f, 2.0f);
                        pathBuilder.f(8.0f);
                        pathBuilder.d(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
                        pathBuilder.m(-2.0f);
                        pathBuilder.f(2.0f);
                        pathBuilder.d(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
                        pathBuilder.m(-4.0f);
                        pathBuilder.d(0.0f, -1.66f, -1.34f, -3.0f, -3.0f, -3.0f);
                        pathBuilder.b();
                        pathBuilder.i(15.0f, 19.0f);
                        pathBuilder.g(9.0f, 19.0f);
                        pathBuilder.d(-0.55f, 0.0f, -1.0f, -0.45f, -1.0f, -1.0f);
                        pathBuilder.m(-4.0f);
                        pathBuilder.f(8.0f);
                        pathBuilder.m(4.0f);
                        pathBuilder.d(0.0f, 0.55f, -0.45f, 1.0f, -1.0f, 1.0f);
                        pathBuilder.b();
                        pathBuilder.i(19.0f, 12.0f);
                        pathBuilder.d(-0.55f, 0.0f, -1.0f, -0.45f, -1.0f, -1.0f);
                        pathBuilder.k(0.45f, -1.0f, 1.0f, -1.0f);
                        pathBuilder.k(1.0f, 0.45f, 1.0f, 1.0f);
                        pathBuilder.k(-0.45f, 1.0f, -1.0f, 1.0f);
                        pathBuilder.b();
                        pathBuilder.i(17.0f, 3.0f);
                        pathBuilder.g(7.0f, 3.0f);
                        pathBuilder.d(-0.55f, 0.0f, -1.0f, 0.45f, -1.0f, 1.0f);
                        pathBuilder.m(2.0f);
                        pathBuilder.d(0.0f, 0.55f, 0.45f, 1.0f, 1.0f, 1.0f);
                        pathBuilder.f(10.0f);
                        pathBuilder.d(0.55f, 0.0f, 1.0f, -0.45f, 1.0f, -1.0f);
                        pathBuilder.g(18.0f, 4.0f);
                        pathBuilder.d(0.0f, -0.55f, -0.45f, -1.0f, -1.0f, -1.0f);
                        pathBuilder.b();
                        builder.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", pathBuilder.a);
                        imageVector = builder.d();
                        PrintKt.a = imageVector;
                    }
                    ImageKt.b(imageVector, "Print", d5, ColorFilter.Companion.a(((AndroidColors) gapComposer9.j(AndroidColorsKt.a)).e), gapComposer9, 48, 56);
                    gapComposer9.p(true);
                } else {
                    gapComposer9.Q();
                }
                return unit;
            case KeyModifiers.a /* 9 */:
                Composer composer10 = (Composer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                if ((intValue10 & 3) != 2) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                GapComposer gapComposer10 = (GapComposer) composer10;
                if (gapComposer10.N(intValue10 & 1, z5)) {
                    OnboardingShareInstructionsStepKt.d(0, gapComposer10);
                } else {
                    gapComposer10.Q();
                }
                return unit;
            case KeyModifiers.b /* 10 */:
                Composer composer11 = (Composer) obj;
                int intValue11 = ((Integer) obj2).intValue();
                if ((intValue11 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer11 = (GapComposer) composer11;
                if (gapComposer11.N(intValue11 & 1, z10)) {
                    ComposablesKt.e(null, "Send to your devices and other people using the Share icon", gapComposer11, 48);
                } else {
                    gapComposer11.Q();
                }
                return unit;
            case 11:
                Composer composer12 = (Composer) obj;
                int intValue12 = ((Integer) obj2).intValue();
                if ((intValue12 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer12 = (GapComposer) composer12;
                if (!gapComposer12.N(intValue12 & 1, z10)) {
                    gapComposer12.Q();
                }
                return unit;
            case KeyModifiers.c /* 12 */:
                Composer composer13 = (Composer) obj;
                int intValue13 = ((Integer) obj2).intValue();
                if ((intValue13 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer13 = (GapComposer) composer13;
                if (gapComposer13.N(intValue13 & 1, z10)) {
                    AvatarKt.b(null, null, DeviceKind.p, gapComposer13, 384, 3);
                } else {
                    gapComposer13.Q();
                }
                return unit;
            case 13:
                Composer composer14 = (Composer) obj;
                int intValue14 = ((Integer) obj2).intValue();
                if ((intValue14 & 3) != 2) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                GapComposer gapComposer14 = (GapComposer) composer14;
                if (gapComposer14.N(intValue14 & 1, z6)) {
                    OnboardingShareInstructionsStepKt.c(null, gapComposer14, 0);
                } else {
                    gapComposer14.Q();
                }
                return unit;
            case 14:
                Composer composer15 = (Composer) obj;
                int intValue15 = ((Integer) obj2).intValue();
                if ((intValue15 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer15 = (GapComposer) composer15;
                if (gapComposer15.N(intValue15 & 1, z10)) {
                    ImageKt.a(AppIconKt.a(gapComposer15), "App Icon", SizeKt.k(PaddingKt.f(companion, 0.0f, 40.0f, 1), 144.0f), null, null, 0.0f, null, gapComposer15, 440, 120);
                } else {
                    gapComposer15.Q();
                }
                return unit;
            case 15:
                Composer composer16 = (Composer) obj;
                int intValue16 = ((Integer) obj2).intValue();
                if ((intValue16 & 3) != 2) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                GapComposer gapComposer16 = (GapComposer) composer16;
                if (gapComposer16.N(intValue16 & 1, z7)) {
                    String str = Strings$Onboarding$Splash.a;
                    ComposablesKt.g("Welcome to Blip", gapComposer16, 0);
                } else {
                    gapComposer16.Q();
                }
                return unit;
            case 16:
                Composer composer17 = (Composer) obj;
                int intValue17 = ((Integer) obj2).intValue();
                if ((intValue17 & 3) != 2) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                GapComposer gapComposer17 = (GapComposer) composer17;
                if (gapComposer17.N(intValue17 & 1, z8)) {
                    String str2 = Strings$Onboarding$Splash.a;
                    ComposablesKt.e(null, "Send any size file or folder to anyone, wherever they are, super fast", gapComposer17, 0);
                } else {
                    gapComposer17.Q();
                }
                return unit;
            case 17:
                Composer composer18 = (Composer) obj;
                int intValue18 = ((Integer) obj2).intValue();
                if ((intValue18 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer18 = (GapComposer) composer18;
                if (!gapComposer18.N(intValue18 & 1, z10)) {
                    gapComposer18.Q();
                }
                return unit;
            case 18:
                Composer composer19 = (Composer) obj;
                int intValue19 = ((Integer) obj2).intValue();
                if ((intValue19 & 3) != 2) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                GapComposer gapComposer19 = (GapComposer) composer19;
                if (gapComposer19.N(intValue19 & 1, z9)) {
                    PeerTrayCellsKt.e(null, gapComposer19, 0);
                } else {
                    gapComposer19.Q();
                }
                return unit;
            case 19:
                Composer composer20 = (Composer) obj;
                int intValue20 = ((Integer) obj2).intValue();
                if ((intValue20 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer20 = (GapComposer) composer20;
                if (!gapComposer20.N(intValue20 & 1, z10)) {
                    gapComposer20.Q();
                }
                return unit;
            case 20:
                Composer composer21 = (Composer) obj;
                int intValue21 = ((Integer) obj2).intValue();
                if ((intValue21 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer21 = (GapComposer) composer21;
                if (!gapComposer21.N(intValue21 & 1, z10)) {
                    gapComposer21.Q();
                }
                return unit;
            case 21:
                Composer composer22 = (Composer) obj;
                int intValue22 = ((Integer) obj2).intValue();
                if ((intValue22 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer22 = (GapComposer) composer22;
                if (!gapComposer22.N(intValue22 & 1, z10)) {
                    gapComposer22.Q();
                }
                return unit;
            case 22:
                Composer composer23 = (Composer) obj;
                int intValue23 = ((Integer) obj2).intValue();
                if ((intValue23 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer23 = (GapComposer) composer23;
                if (!gapComposer23.N(intValue23 & 1, z10)) {
                    gapComposer23.Q();
                }
                return unit;
            case 23:
                Composer composer24 = (Composer) obj;
                int intValue24 = ((Integer) obj2).intValue();
                if ((intValue24 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer24 = (GapComposer) composer24;
                if (!gapComposer24.N(intValue24 & 1, z10)) {
                    gapComposer24.Q();
                }
                return unit;
            case 24:
                Composer composer25 = (Composer) obj;
                int intValue25 = ((Integer) obj2).intValue();
                if ((intValue25 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer25 = (GapComposer) composer25;
                if (!gapComposer25.N(intValue25 & 1, z10)) {
                    gapComposer25.Q();
                }
                return unit;
            case 25:
                Composer composer26 = (Composer) obj;
                int intValue26 = ((Integer) obj2).intValue();
                if ((intValue26 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer26 = (GapComposer) composer26;
                if (gapComposer26.N(intValue26 & 1, z10)) {
                    ImageKt.b(SearchKt.a(), "", OffsetKt.c(PaddingKt.h(Modifier.Companion.b, 26.0f, 0.0f, 16.0f, 0.0f, 10), -1.0f, 1), ColorFilter.Companion.a(((AndroidColors) gapComposer26.j(AndroidColorsKt.a)).d), gapComposer26, 432, 56);
                } else {
                    gapComposer26.Q();
                }
                return unit;
            case 26:
                Composer composer27 = (Composer) obj;
                int intValue27 = ((Integer) obj2).intValue();
                if ((intValue27 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer27 = (GapComposer) composer27;
                if (gapComposer27.N(intValue27 & 1, z10)) {
                    Modifier k = SizeKt.k(companion, 60.0f);
                    AvatarTheme.Appearance b4 = ((AndroidAvatarTheme) ((AvatarTheme) gapComposer27.j(AvatarKt.a))).b(gapComposer27);
                    Object K = gapComposer27.K();
                    if (K == composer$Companion$Empty$1) {
                        K = new h(26);
                        gapComposer27.g0(K);
                    }
                    AvatarKt.e(k, b4, (Function1) K, gapComposer27, 390);
                } else {
                    gapComposer27.Q();
                }
                return unit;
            case 27:
                Composer composer28 = (Composer) obj;
                int intValue28 = ((Integer) obj2).intValue();
                if ((intValue28 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer28 = (GapComposer) composer28;
                if (gapComposer28.N(intValue28 & 1, z10)) {
                    ListRowKt.c(null, "Send to other people", null, 0L, gapComposer28, 48, 13);
                } else {
                    gapComposer28.Q();
                }
                return unit;
            case 28:
                Composer composer29 = (Composer) obj;
                int intValue29 = ((Integer) obj2).intValue();
                if ((intValue29 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer29 = (GapComposer) composer29;
                if (gapComposer29.N(intValue29 & 1, z10)) {
                    Modifier k2 = SizeKt.k(companion, 60.0f);
                    AvatarTheme.Appearance b5 = ((AndroidAvatarTheme) ((AvatarTheme) gapComposer29.j(AvatarKt.a))).b(gapComposer29);
                    Object K2 = gapComposer29.K();
                    if (K2 == composer$Companion$Empty$1) {
                        K2 = new h(27);
                        gapComposer29.g0(K2);
                    }
                    AvatarKt.e(k2, b5, (Function1) K2, gapComposer29, 390);
                } else {
                    gapComposer29.Q();
                }
                return unit;
            default:
                Composer composer30 = (Composer) obj;
                int intValue30 = ((Integer) obj2).intValue();
                if ((intValue30 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer30 = (GapComposer) composer30;
                if (gapComposer30.N(intValue30 & 1, z10)) {
                    ListRowKt.c(null, "Send to your devices", null, 0L, gapComposer30, 48, 13);
                } else {
                    gapComposer30.Q();
                }
                return unit;
        }
    }
}
