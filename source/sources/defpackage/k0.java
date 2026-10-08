package defpackage;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.icons.rounded.CloudOffKt;
import androidx.compose.material.icons.rounded.KeyKt;
import androidx.compose.material.icons.rounded.MoveToInboxKt;
import androidx.compose.material.icons.rounded.SearchKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.compose.ui.viewinterop.ViewFactoryHolder;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.R;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.help.HelpScreenSendToOtherPeopleKt;
import net.blip.android.ui.help.HelpScreenSendToYourDevicesKt;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.onboarding.ComposablesKt;
import net.blip.android.ui.onboarding.OnboardingEnableNotificationsStepKt;
import net.blip.shared.BrushPainter;
import net.blip.shared.BrushPainterKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class k0 implements Function2 {
    public final /* synthetic */ int j;

    public /* synthetic */ k0(int i) {
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
        int i = this.j;
        BiasAlignment biasAlignment = Alignment.Companion.a;
        Modifier.Companion companion = Modifier.Companion.b;
        e6 e6Var = ComposeUiNode.Companion.b;
        e6 e6Var2 = ComposeUiNode.Companion.e;
        e6 e6Var3 = ComposeUiNode.Companion.c;
        e6 e6Var4 = ComposeUiNode.Companion.d;
        x9 x9Var = LayoutNode.b0;
        int i2 = 0;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        boolean z19 = false;
        boolean z20 = false;
        Unit unit = Unit.a;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                GapComposer gapComposer = (GapComposer) ((Composer) obj);
                gapComposer.W(769511213);
                BrushPainter a = BrushPainterKt.a(PainterResources_androidKt.a(R.drawable.ic_avatar_person_placeholder, gapComposer), Color.d, gapComposer, 56);
                gapComposer.p(false);
                return a;
            case 1:
                ViewFactoryHolder c = AndroidView_androidKt.c((LayoutNode) obj);
                int ordinal = ((LayoutDirection) obj2).ordinal();
                if (ordinal != 0) {
                    if (ordinal == 1) {
                        i2 = 1;
                    } else {
                        k8.e();
                        return null;
                    }
                }
                c.setLayoutDirection(i2);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                AndroidView_androidKt.c((LayoutNode) obj).setUpdateBlock((Function1) obj2);
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                AndroidView_androidKt.c((LayoutNode) obj).setReleaseBlock((Function1) obj2);
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                AndroidView_androidKt.c((LayoutNode) obj).setModifier((Modifier) obj2);
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                AndroidView_androidKt.c((LayoutNode) obj).setDensity((Density) obj2);
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                AndroidView_androidKt.c((LayoutNode) obj).setLifecycleOwner((LifecycleOwner) obj2);
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                AndroidView_androidKt.c((LayoutNode) obj).setSavedStateRegistryOwner((SavedStateRegistryOwner) obj2);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                String str = (String) obj;
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                str.getClass();
                element.getClass();
                if (str.length() == 0) {
                    return element.toString();
                }
                return str + ", " + element;
            case KeyModifiers.a /* 9 */:
                StringBuilder sb = (StringBuilder) obj;
                Modifier.Element element2 = (Modifier.Element) obj2;
                if (sb.length() > 1) {
                    sb.append(", ");
                }
                sb.append(element2);
                return sb;
            case KeyModifiers.b /* 10 */:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z20 = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.N(intValue & 1, z20)) {
                    gapComposer2.Q();
                }
                return unit;
            case 11:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z19 = true;
                }
                GapComposer gapComposer3 = (GapComposer) composer2;
                if (!gapComposer3.N(intValue2 & 1, z19)) {
                    gapComposer3.Q();
                }
                return unit;
            case KeyModifiers.c /* 12 */:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z18 = true;
                }
                GapComposer gapComposer4 = (GapComposer) composer3;
                if (gapComposer4.N(intValue3 & 1, z18)) {
                    ScreenLockupKt.c(null, "Choose audio file", null, gapComposer4, 48, 5);
                } else {
                    gapComposer4.Q();
                }
                return unit;
            case 13:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if ((intValue4 & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer5 = (GapComposer) composer4;
                if (gapComposer5.N(intValue4 & 1, z)) {
                    RowMeasurePolicy a2 = RowKt.a(Arrangement.a, Alignment.Companion.j, gapComposer5, 0);
                    int hashCode = Long.hashCode(gapComposer5.T);
                    PersistentCompositionLocalMap l = gapComposer5.l();
                    Modifier.Companion companion2 = Modifier.Companion.b;
                    Modifier c2 = ComposedModifierKt.c(gapComposer5, companion2);
                    ComposeUiNode.b.getClass();
                    gapComposer5.Z();
                    if (gapComposer5.S) {
                        gapComposer5.k(x9Var);
                    } else {
                        gapComposer5.j0();
                    }
                    Updater.c(gapComposer5, a2, e6Var4);
                    Updater.c(gapComposer5, l, e6Var3);
                    Updater.c(gapComposer5, Integer.valueOf(hashCode), e6Var2);
                    Updater.b(gapComposer5);
                    Updater.c(gapComposer5, c2, e6Var);
                    Modifier h = PaddingKt.h(companion2, 14.0f, 0.0f, 8.0f, 0.0f, 10);
                    ImageVector a3 = CloudOffKt.a();
                    long j = Color.d;
                    ImageKt.b(a3, "", h, ColorFilter.Companion.a(j), gapComposer5, 1573296, 56);
                    PlatformTextKt.c("Waiting for connection…", PaddingKt.h(companion2, 0.0f, 0.0f, 0.0f, 1.0f, 7), TextStyle.a(((AndroidTextStyles) gapComposer5.j(AndroidTextStylesKt.a)).a, j, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16744444), 0, false, 0, 0, null, gapComposer5, 54, 504);
                    SpacerKt.a(gapComposer5, SizeKt.n(18.0f));
                    gapComposer5.p(true);
                } else {
                    gapComposer5.Q();
                }
                return unit;
            case 14:
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if ((intValue5 & 3) != 2) {
                    z17 = true;
                }
                GapComposer gapComposer6 = (GapComposer) composer5;
                if (gapComposer6.N(intValue5 & 1, z17)) {
                    PlatformTextKt.c("Your device will now show up when sharing in Blip.", null, TextStyle.a(((AndroidTextStyles) gapComposer6.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer6.j(AndroidColorsKt.a)).e, TextUnitKt.d(16), FontWeight.r, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer6, 0, 506);
                } else {
                    gapComposer6.Q();
                }
                return unit;
            case 15:
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if ((intValue6 & 3) != 2) {
                    z16 = true;
                }
                GapComposer gapComposer7 = (GapComposer) composer6;
                if (gapComposer7.N(intValue6 & 1, z16)) {
                    ImageKt.b(SearchKt.a(), "Search", null, ColorFilter.Companion.a(((AndroidColors) gapComposer7.j(AndroidColorsKt.a)).e), gapComposer7, 48, 60);
                } else {
                    gapComposer7.Q();
                }
                return unit;
            case 16:
                Composer composer7 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if ((intValue7 & 3) != 2) {
                    z15 = true;
                }
                GapComposer gapComposer8 = (GapComposer) composer7;
                if (!gapComposer8.N(intValue7 & 1, z15)) {
                    gapComposer8.Q();
                }
                return unit;
            case 17:
                Composer composer8 = (Composer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if ((intValue8 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer9 = (GapComposer) composer8;
                if (gapComposer9.N(intValue8 & 1, z2)) {
                    MeasurePolicy d = BoxKt.d(biasAlignment, false);
                    int hashCode2 = Long.hashCode(gapComposer9.T);
                    PersistentCompositionLocalMap l2 = gapComposer9.l();
                    Modifier c3 = ComposedModifierKt.c(gapComposer9, companion);
                    ComposeUiNode.b.getClass();
                    gapComposer9.Z();
                    if (gapComposer9.S) {
                        gapComposer9.k(x9Var);
                    } else {
                        gapComposer9.j0();
                    }
                    Updater.c(gapComposer9, d, e6Var4);
                    Updater.c(gapComposer9, l2, e6Var3);
                    Updater.c(gapComposer9, Integer.valueOf(hashCode2), e6Var2);
                    Updater.b(gapComposer9);
                    Updater.c(gapComposer9, c3, e6Var);
                    gapComposer9.p(true);
                } else {
                    gapComposer9.Q();
                }
                return unit;
            case 18:
                Composer composer9 = (Composer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                if ((intValue9 & 3) != 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                GapComposer gapComposer10 = (GapComposer) composer9;
                if (gapComposer10.N(intValue9 & 1, z3)) {
                    HelpScreenSendToYourDevicesKt.b(0, gapComposer10);
                } else {
                    gapComposer10.Q();
                }
                return unit;
            case 19:
                Composer composer10 = (Composer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                if ((intValue10 & 3) != 2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                GapComposer gapComposer11 = (GapComposer) composer10;
                if (gapComposer11.N(intValue10 & 1, z4)) {
                    HelpScreenSendToOtherPeopleKt.a(0, gapComposer11);
                } else {
                    gapComposer11.Q();
                }
                return unit;
            case 20:
                Composer composer11 = (Composer) obj;
                int intValue11 = ((Integer) obj2).intValue();
                if ((intValue11 & 3) != 2) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                GapComposer gapComposer12 = (GapComposer) composer11;
                if (gapComposer12.N(intValue11 & 1, z5)) {
                    OnboardingScreenKt.a(0, gapComposer12);
                } else {
                    gapComposer12.Q();
                }
                return unit;
            case 21:
                Composer composer12 = (Composer) obj;
                int intValue12 = ((Integer) obj2).intValue();
                if ((intValue12 & 3) != 2) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                GapComposer gapComposer13 = (GapComposer) composer12;
                if (gapComposer13.N(intValue12 & 1, z6)) {
                    ImageVector imageVector = MoveToInboxKt.a;
                    if (imageVector == null) {
                        ImageVector.Builder builder = new ImageVector.Builder("Rounded.MoveToInbox", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i3 = VectorKt.a;
                        SolidColor solidColor = new SolidColor(Color.b);
                        PathBuilder pathBuilder = new PathBuilder();
                        pathBuilder.i(19.0f, 3.0f);
                        pathBuilder.e(5.0f);
                        pathBuilder.c(3.9f, 3.0f, 3.0f, 3.9f, 3.0f, 5.0f);
                        pathBuilder.m(14.0f);
                        pathBuilder.d(0.0f, 1.1f, 0.9f, 2.0f, 2.0f, 2.0f);
                        pathBuilder.f(14.0f);
                        pathBuilder.d(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
                        pathBuilder.l(5.0f);
                        pathBuilder.c(21.0f, 3.9f, 20.1f, 3.0f, 19.0f, 3.0f);
                        pathBuilder.b();
                        pathBuilder.i(19.0f, 14.0f);
                        pathBuilder.f(-3.56f);
                        pathBuilder.d(-0.36f, 0.0f, -0.68f, 0.19f, -0.86f, 0.5f);
                        pathBuilder.c(14.06f, 15.4f, 13.11f, 16.0f, 12.0f, 16.0f);
                        pathBuilder.k(-2.06f, -0.6f, -2.58f, -1.5f);
                        pathBuilder.c(9.24f, 14.19f, 8.91f, 14.0f, 8.56f, 14.0f);
                        pathBuilder.e(5.0f);
                        pathBuilder.l(5.0f);
                        pathBuilder.f(14.0f);
                        pathBuilder.l(14.0f);
                        pathBuilder.b();
                        pathBuilder.i(14.79f, 10.0f);
                        pathBuilder.e(13.0f);
                        pathBuilder.l(7.0f);
                        pathBuilder.d(0.0f, -0.55f, -0.45f, -1.0f, -1.0f, -1.0f);
                        pathBuilder.f(0.0f);
                        pathBuilder.d(-0.55f, 0.0f, -1.0f, 0.45f, -1.0f, 1.0f);
                        pathBuilder.m(3.0f);
                        pathBuilder.e(9.21f);
                        pathBuilder.d(-0.45f, 0.0f, -0.67f, 0.54f, -0.35f, 0.85f);
                        pathBuilder.h(2.79f, 2.79f);
                        pathBuilder.d(0.2f, 0.2f, 0.51f, 0.2f, 0.71f, 0.0f);
                        pathBuilder.h(2.79f, -2.79f);
                        pathBuilder.c(15.46f, 10.54f, 15.24f, 10.0f, 14.79f, 10.0f);
                        pathBuilder.b();
                        builder.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", pathBuilder.a);
                        imageVector = builder.d();
                        MoveToInboxKt.a = imageVector;
                    }
                    ComposablesKt.b(imageVector, null, gapComposer13, 0);
                } else {
                    gapComposer13.Q();
                }
                return unit;
            case 22:
                Composer composer13 = (Composer) obj;
                int intValue13 = ((Integer) obj2).intValue();
                if ((intValue13 & 3) != 2) {
                    z14 = true;
                }
                GapComposer gapComposer14 = (GapComposer) composer13;
                if (gapComposer14.N(intValue13 & 1, z14)) {
                    ComposablesKt.g("Check your email and enter the code", gapComposer14, 6);
                } else {
                    gapComposer14.Q();
                }
                return unit;
            case 23:
                Composer composer14 = (Composer) obj;
                int intValue14 = ((Integer) obj2).intValue();
                if ((intValue14 & 3) != 2) {
                    z13 = true;
                }
                GapComposer gapComposer15 = (GapComposer) composer14;
                if (!gapComposer15.N(intValue14 & 1, z13)) {
                    gapComposer15.Q();
                }
                return unit;
            case 24:
                Composer composer15 = (Composer) obj;
                int intValue15 = ((Integer) obj2).intValue();
                if ((intValue15 & 3) != 2) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                GapComposer gapComposer16 = (GapComposer) composer15;
                if (gapComposer16.N(intValue15 & 1, z7)) {
                    ImageVector imageVector2 = KeyKt.a;
                    if (imageVector2 == null) {
                        ImageVector.Builder builder2 = new ImageVector.Builder("Rounded.Key", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i4 = VectorKt.a;
                        SolidColor solidColor2 = new SolidColor(Color.b);
                        PathBuilder pathBuilder2 = new PathBuilder();
                        pathBuilder2.i(20.59f, 10.0f);
                        pathBuilder2.f(-7.94f);
                        pathBuilder2.c(11.7f, 7.31f, 8.89f, 5.5f, 5.77f, 6.12f);
                        pathBuilder2.d(-2.29f, 0.46f, -4.15f, 2.3f, -4.63f, 4.58f);
                        pathBuilder2.c(0.32f, 14.58f, 3.26f, 18.0f, 7.0f, 18.0f);
                        pathBuilder2.d(2.61f, 0.0f, 4.83f, -1.67f, 5.65f, -4.0f);
                        pathBuilder2.e(13.0f);
                        pathBuilder2.h(1.29f, 1.29f);
                        pathBuilder2.d(0.39f, 0.39f, 1.02f, 0.39f, 1.41f, 0.0f);
                        pathBuilder2.g(17.0f, 14.0f);
                        pathBuilder2.h(1.29f, 1.29f);
                        pathBuilder2.d(0.39f, 0.39f, 1.03f, 0.39f, 1.42f, 0.0f);
                        pathBuilder2.h(2.59f, -2.61f);
                        pathBuilder2.d(0.39f, -0.39f, 0.39f, -1.03f, -0.01f, -1.42f);
                        pathBuilder2.h(-0.99f, -0.97f);
                        pathBuilder2.c(21.1f, 10.1f, 20.85f, 10.0f, 20.59f, 10.0f);
                        pathBuilder2.b();
                        pathBuilder2.i(7.0f, 15.0f);
                        pathBuilder2.d(-1.65f, 0.0f, -3.0f, -1.35f, -3.0f, -3.0f);
                        pathBuilder2.d(0.0f, -1.65f, 1.35f, -3.0f, 3.0f, -3.0f);
                        pathBuilder2.k(3.0f, 1.35f, 3.0f, 3.0f);
                        pathBuilder2.c(10.0f, 13.65f, 8.65f, 15.0f, 7.0f, 15.0f);
                        pathBuilder2.b();
                        builder2.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor2, null, "", pathBuilder2.a);
                        imageVector2 = builder2.d();
                        KeyKt.a = imageVector2;
                    }
                    ComposablesKt.b(imageVector2, null, gapComposer16, 0);
                } else {
                    gapComposer16.Q();
                }
                return unit;
            case 25:
                Composer composer16 = (Composer) obj;
                int intValue16 = ((Integer) obj2).intValue();
                if ((intValue16 & 3) != 2) {
                    z12 = true;
                }
                GapComposer gapComposer17 = (GapComposer) composer16;
                if (gapComposer17.N(intValue16 & 1, z12)) {
                    ComposablesKt.g("Sign in with your email address", gapComposer17, 6);
                } else {
                    gapComposer17.Q();
                }
                return unit;
            case 26:
                Composer composer17 = (Composer) obj;
                int intValue17 = ((Integer) obj2).intValue();
                if ((intValue17 & 3) != 2) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                GapComposer gapComposer18 = (GapComposer) composer17;
                if (gapComposer18.N(intValue17 & 1, z8)) {
                    Modifier f = PaddingKt.f(SizeKt.b(companion, 0.375f), 0.0f, 16.0f, 1);
                    MeasurePolicy d2 = BoxKt.d(biasAlignment, false);
                    int hashCode3 = Long.hashCode(gapComposer18.T);
                    PersistentCompositionLocalMap l3 = gapComposer18.l();
                    Modifier c4 = ComposedModifierKt.c(gapComposer18, f);
                    ComposeUiNode.b.getClass();
                    gapComposer18.Z();
                    if (gapComposer18.S) {
                        gapComposer18.k(x9Var);
                    } else {
                        gapComposer18.j0();
                    }
                    Updater.c(gapComposer18, d2, e6Var4);
                    Updater.c(gapComposer18, l3, e6Var3);
                    Updater.c(gapComposer18, Integer.valueOf(hashCode3), e6Var2);
                    Updater.b(gapComposer18);
                    Updater.c(gapComposer18, c4, e6Var);
                    OnboardingEnableNotificationsStepKt.b(BoxScopeInstance.a.d(companion, Alignment.Companion.e), gapComposer18, 0);
                    gapComposer18.p(true);
                } else {
                    gapComposer18.Q();
                }
                return unit;
            case 27:
                Composer composer18 = (Composer) obj;
                int intValue18 = ((Integer) obj2).intValue();
                if ((intValue18 & 3) != 2) {
                    z11 = true;
                }
                GapComposer gapComposer19 = (GapComposer) composer18;
                if (gapComposer19.N(intValue18 & 1, z11)) {
                    ComposablesKt.g("Enable notifications to receive things", gapComposer19, 6);
                } else {
                    gapComposer19.Q();
                }
                return unit;
            case 28:
                Composer composer19 = (Composer) obj;
                int intValue19 = ((Integer) obj2).intValue();
                if ((intValue19 & 3) != 2) {
                    z10 = true;
                }
                GapComposer gapComposer20 = (GapComposer) composer19;
                if (gapComposer20.N(intValue19 & 1, z10)) {
                    ComposablesKt.e(null, "You’ll get a notification when content is sent to this device", gapComposer20, 48);
                } else {
                    gapComposer20.Q();
                }
                return unit;
            default:
                Composer composer20 = (Composer) obj;
                int intValue20 = ((Integer) obj2).intValue();
                if ((intValue20 & 3) != 2) {
                    z9 = true;
                }
                GapComposer gapComposer21 = (GapComposer) composer20;
                if (!gapComposer21.N(intValue20 & 1, z9)) {
                    gapComposer21.Q();
                }
                return unit;
        }
    }
}
