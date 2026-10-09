package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuSpec;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.icons.rounded.CheckKt;
import androidx.compose.material.icons.rounded.CloseKt;
import androidx.compose.material.icons.rounded.PersonSearchKt;
import androidx.compose.material.icons.rounded.ShareKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.PathNode;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavHostController;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.DropdownMenuKt;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.list.SendToOtherPeopleListRowKt;
import net.blip.android.ui.list.SendToYourDevicesListRowKt;
import net.blip.android.ui.lockups.BlankStateLockupKt;
import net.blip.android.ui.navigation.AuthScope;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class u5 implements Function3 {
    public final /* synthetic */ int j;

    private final Object d(Object obj, Object obj2, Object obj3) {
        boolean z;
        Composer composer = (Composer) obj2;
        int intValue = ((Integer) obj3).intValue();
        ((RowScope) obj).getClass();
        if ((intValue & 17) != 16) {
            z = true;
        } else {
            z = false;
        }
        GapComposer gapComposer = (GapComposer) composer;
        if (gapComposer.N(intValue & 1, z)) {
            DropdownMenuKt.a("Block", gapComposer, 48);
        } else {
            gapComposer.Q();
        }
        return Unit.a;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        boolean z19;
        boolean h;
        int i2;
        boolean z20;
        boolean h2;
        int i3;
        boolean z21;
        boolean z22;
        boolean z23;
        boolean z24;
        boolean z25;
        boolean z26;
        int i4 = this.j;
        e6 e6Var = ComposeUiNode.Companion.b;
        e6 e6Var2 = ComposeUiNode.Companion.e;
        e6 e6Var3 = ComposeUiNode.Companion.c;
        e6 e6Var4 = ComposeUiNode.Companion.d;
        x9 x9Var = LayoutNode.b0;
        Modifier.Companion companion = Modifier.Companion.b;
        Unit unit = Unit.a;
        int i5 = 1;
        switch (i4) {
            case 0:
                boolean z27 = false;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue & 17) != 16) {
                    z27 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z27)) {
                    DropdownMenuKt.a("Remove", gapComposer, 48);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                boolean z28 = false;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue2 & 17) != 16) {
                    z28 = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z28)) {
                    DropdownMenuKt.a("Block", gapComposer2, 48);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if ((intValue3 & 17) != 16) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z)) {
                    ColumnMeasurePolicy a = ColumnKt.a(Arrangement.b, Alignment.Companion.m, gapComposer3, 0);
                    int hashCode = Long.hashCode(gapComposer3.T);
                    PersistentCompositionLocalMap l = gapComposer3.l();
                    Modifier c = ComposedModifierKt.c(gapComposer3, companion);
                    ComposeUiNode.b.getClass();
                    gapComposer3.Z();
                    if (gapComposer3.S) {
                        gapComposer3.k(x9Var);
                    } else {
                        gapComposer3.j0();
                    }
                    Updater.c(gapComposer3, a, e6Var4);
                    Updater.c(gapComposer3, l, e6Var3);
                    Updater.c(gapComposer3, Integer.valueOf(hashCode), e6Var2);
                    Updater.b(gapComposer3);
                    Updater.c(gapComposer3, c, e6Var);
                    BlankStateLockupKt.a(PaddingKt.e(companion, 40.0f, 48.0f), null, "To send files, search for people by their name or email address", null, null, null, null, gapComposer3, 390, 122);
                    ListRowKt.a(0, gapComposer3);
                    SpacerKt.a(gapComposer3, SizeKt.e(companion, 8.0f));
                    gapComposer3.p(true);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if ((intValue4 & 17) != 16) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(intValue4 & 1, z2)) {
                    SendToYourDevicesListRowKt.a(null, gapComposer4, 0);
                } else {
                    gapComposer4.Q();
                }
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Composer composer5 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if ((intValue5 & 17) != 16) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.N(intValue5 & 1, z3)) {
                    SendToOtherPeopleListRowKt.a(null, gapComposer5, 0);
                } else {
                    gapComposer5.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Composer composer6 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if ((intValue6 & 17) != 16) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.N(intValue6 & 1, z4)) {
                    NavHostController navHostController = (NavHostController) gapComposer6.j(NavigationRootKt.a);
                    Modifier e = PaddingKt.e(companion, 48.0f, 48.0f);
                    ImageVector imageVector = PersonSearchKt.a;
                    if (imageVector == null) {
                        ImageVector.Builder builder = new ImageVector.Builder("Rounded.PersonSearch", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i6 = VectorKt.a;
                        long j = Color.b;
                        SolidColor solidColor = new SolidColor(j);
                        PathBuilder pathBuilder = new PathBuilder();
                        pathBuilder.i(10.0f, 8.0f);
                        PathNode.RelativeMoveTo relativeMoveTo = new PathNode.RelativeMoveTo(-4.0f, 0.0f);
                        ArrayList arrayList = pathBuilder.a;
                        arrayList.add(relativeMoveTo);
                        pathBuilder.a(4.0f, 4.0f, 8.0f);
                        pathBuilder.a(4.0f, 4.0f, -8.0f);
                        builder.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", arrayList);
                        SolidColor solidColor2 = new SolidColor(j);
                        PathBuilder pathBuilder2 = new PathBuilder();
                        pathBuilder2.i(10.35f, 14.01f);
                        pathBuilder2.c(7.62f, 13.91f, 2.0f, 15.27f, 2.0f, 18.0f);
                        pathBuilder2.m(1.0f);
                        pathBuilder2.d(0.0f, 0.55f, 0.45f, 1.0f, 1.0f, 1.0f);
                        pathBuilder2.f(8.54f);
                        pathBuilder2.c(9.07f, 17.24f, 10.31f, 14.11f, 10.35f, 14.01f);
                        pathBuilder2.b();
                        builder.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor2, null, "", pathBuilder2.a);
                        SolidColor solidColor3 = new SolidColor(j);
                        PathBuilder pathBuilder3 = new PathBuilder();
                        pathBuilder3.i(19.43f, 18.02f);
                        pathBuilder3.d(0.47f, -0.8f, 0.7f, -1.77f, 0.48f, -2.82f);
                        pathBuilder3.d(-0.34f, -1.64f, -1.72f, -2.95f, -3.38f, -3.16f);
                        pathBuilder3.d(-2.63f, -0.34f, -4.85f, 1.87f, -4.5f, 4.5f);
                        pathBuilder3.d(0.22f, 1.66f, 1.52f, 3.04f, 3.16f, 3.38f);
                        pathBuilder3.d(1.05f, 0.22f, 2.02f, -0.01f, 2.82f, -0.48f);
                        pathBuilder3.h(1.86f, 1.86f);
                        pathBuilder3.d(0.39f, 0.39f, 1.02f, 0.39f, 1.41f, 0.0f);
                        pathBuilder3.h(0.0f, 0.0f);
                        pathBuilder3.d(0.39f, -0.39f, 0.39f, -1.02f, 0.0f, -1.41f);
                        pathBuilder3.g(19.43f, 18.02f);
                        pathBuilder3.b();
                        pathBuilder3.i(16.0f, 18.0f);
                        pathBuilder3.d(-1.1f, 0.0f, -2.0f, -0.9f, -2.0f, -2.0f);
                        pathBuilder3.d(0.0f, -1.1f, 0.9f, -2.0f, 2.0f, -2.0f);
                        pathBuilder3.k(2.0f, 0.9f, 2.0f, 2.0f);
                        pathBuilder3.c(18.0f, 17.1f, 17.1f, 18.0f, 16.0f, 18.0f);
                        pathBuilder3.b();
                        builder.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor3, null, "", pathBuilder3.a);
                        imageVector = builder.d();
                        PersonSearchKt.a = imageVector;
                    }
                    ImageVector imageVector2 = imageVector;
                    boolean h3 = gapComposer6.h(navHostController);
                    Object K = gapComposer6.K();
                    if (h3 || K == Composer.Companion.a) {
                        K = new i3(navHostController, 1);
                        gapComposer6.g0(K);
                    }
                    BlankStateLockupKt.a(e, imageVector2, "No people or devices found", "Hint: to find someone by their email address, enter the full address", "How to send to other people", null, (Function0) K, gapComposer6, 28038, 32);
                } else {
                    gapComposer6.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ContextMenuColors contextMenuColors = (ContextMenuColors) obj;
                Composer composer7 = (Composer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                if ((intValue7 & 6) == 0) {
                    if (((GapComposer) composer7).f(contextMenuColors)) {
                        i = 4;
                    } else {
                        i = 2;
                    }
                    intValue7 |= i;
                }
                if ((intValue7 & 19) != 18) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (gapComposer7.N(intValue7 & 1, z5)) {
                    BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.d(PaddingKt.f(companion, 0.0f, ContextMenuSpec.g, 1), 1.0f), ContextMenuSpec.f), contextMenuColors.c, RectangleShapeKt.a), gapComposer7, 0);
                } else {
                    gapComposer7.Q();
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj3).getClass();
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Composer composer8 = (Composer) obj2;
                int intValue8 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue8 & 17) != 16) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (gapComposer8.N(intValue8 & 1, z6)) {
                    PlatformTextKt.c("Open File", null, TextStyle.a(((AndroidTextStyles) gapComposer8.j(AndroidTextStylesKt.a)).b, 0L, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777213), 0, false, 0, 0, null, gapComposer8, 6, 506);
                } else {
                    gapComposer8.Q();
                }
                return unit;
            case KeyModifiers.a /* 9 */:
                Composer composer9 = (Composer) obj2;
                int intValue9 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue9 & 17) != 16) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                GapComposer gapComposer9 = (GapComposer) composer9;
                if (gapComposer9.N(intValue9 & 1, z7)) {
                    DropdownMenuKt.a("Open", gapComposer9, 48);
                } else {
                    gapComposer9.Q();
                }
                return unit;
            case KeyModifiers.b /* 10 */:
                Composer composer10 = (Composer) obj2;
                int intValue10 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue10 & 17) != 16) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                GapComposer gapComposer10 = (GapComposer) composer10;
                if (gapComposer10.N(intValue10 & 1, z8)) {
                    DropdownMenuKt.a("Forward", gapComposer10, 48);
                } else {
                    gapComposer10.Q();
                }
                return unit;
            case 11:
                Composer composer11 = (Composer) obj2;
                int intValue11 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue11 & 17) != 16) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                GapComposer gapComposer11 = (GapComposer) composer11;
                if (gapComposer11.N(intValue11 & 1, z9)) {
                    DropdownMenuKt.a("Share in other app", gapComposer11, 48);
                } else {
                    gapComposer11.Q();
                }
                return unit;
            case KeyModifiers.c /* 12 */:
                Composer composer12 = (Composer) obj2;
                int intValue12 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue12 & 17) != 16) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                GapComposer gapComposer12 = (GapComposer) composer12;
                if (gapComposer12.N(intValue12 & 1, z10)) {
                    DropdownMenuKt.a("Paste", gapComposer12, 48);
                } else {
                    gapComposer12.Q();
                }
                return unit;
            case 13:
                Composer composer13 = (Composer) obj2;
                int intValue13 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue13 & 17) != 16) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                GapComposer gapComposer13 = (GapComposer) composer13;
                if (gapComposer13.N(intValue13 & 1, z11)) {
                    DropdownMenuKt.a("Send photos", gapComposer13, 48);
                } else {
                    gapComposer13.Q();
                }
                return unit;
            case 14:
                Composer composer14 = (Composer) obj2;
                int intValue14 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue14 & 17) != 16) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                GapComposer gapComposer14 = (GapComposer) composer14;
                if (gapComposer14.N(intValue14 & 1, z12)) {
                    DropdownMenuKt.a("Send files", gapComposer14, 48);
                } else {
                    gapComposer14.Q();
                }
                return unit;
            case 15:
                Composer composer15 = (Composer) obj2;
                int intValue15 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue15 & 17) != 16) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                GapComposer gapComposer15 = (GapComposer) composer15;
                if (gapComposer15.N(intValue15 & 1, z13)) {
                    DropdownMenuKt.a("Send a folder", gapComposer15, 48);
                } else {
                    gapComposer15.Q();
                }
                return unit;
            case 16:
                Composer composer16 = (Composer) obj2;
                int intValue16 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue16 & 17) != 16) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                GapComposer gapComposer16 = (GapComposer) composer16;
                if (gapComposer16.N(intValue16 & 1, z14)) {
                    DropdownMenuKt.a("Capture a photo", gapComposer16, 48);
                } else {
                    gapComposer16.Q();
                }
                return unit;
            case 17:
                Composer composer17 = (Composer) obj2;
                int intValue17 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue17 & 17) != 16) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                GapComposer gapComposer17 = (GapComposer) composer17;
                if (gapComposer17.N(intValue17 & 1, z15)) {
                    DropdownMenuKt.a("Send audio", gapComposer17, 48);
                } else {
                    gapComposer17.Q();
                }
                return unit;
            case 18:
                Composer composer18 = (Composer) obj2;
                int intValue18 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue18 & 17) != 16) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                GapComposer gapComposer18 = (GapComposer) composer18;
                if (gapComposer18.N(intValue18 & 1, z16)) {
                    DropdownMenuKt.a("Delete all transfers", gapComposer18, 48);
                } else {
                    gapComposer18.Q();
                }
                return unit;
            case 19:
                Composer composer19 = (Composer) obj2;
                int intValue19 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue19 & 17) != 16) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                GapComposer gapComposer19 = (GapComposer) composer19;
                if (gapComposer19.N(intValue19 & 1, z17)) {
                    DropdownMenuKt.a("Feedback", gapComposer19, 48);
                } else {
                    gapComposer19.Q();
                }
                return unit;
            case 20:
                Composer composer20 = (Composer) obj2;
                int intValue20 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue20 & 17) != 16) {
                    z18 = true;
                } else {
                    z18 = false;
                }
                GapComposer gapComposer20 = (GapComposer) composer20;
                if (gapComposer20.N(intValue20 & 1, z18)) {
                    DropdownMenuKt.a("Settings", gapComposer20, 48);
                } else {
                    gapComposer20.Q();
                }
                return unit;
            case 21:
                AuthScope authScope = (AuthScope) obj;
                Composer composer21 = (Composer) obj2;
                int intValue21 = ((Integer) obj3).intValue();
                authScope.getClass();
                if ((intValue21 & 6) == 0) {
                    if ((intValue21 & 8) == 0) {
                        h = ((GapComposer) composer21).f(authScope);
                    } else {
                        h = ((GapComposer) composer21).h(authScope);
                    }
                    if (h) {
                        i2 = 4;
                    } else {
                        i2 = 2;
                    }
                    intValue21 |= i2;
                }
                if ((intValue21 & 19) != 18) {
                    z19 = true;
                } else {
                    z19 = false;
                }
                GapComposer gapComposer21 = (GapComposer) composer21;
                if (gapComposer21.N(intValue21 & 1, z19)) {
                    NavigationRootKt.a(ComposableLambdaKt.b(-1234836781, new z5(authScope, 0), gapComposer21), gapComposer21, 6);
                } else {
                    gapComposer21.Q();
                }
                return unit;
            case 22:
                AuthScope authScope2 = (AuthScope) obj;
                Composer composer22 = (Composer) obj2;
                int intValue22 = ((Integer) obj3).intValue();
                authScope2.getClass();
                if ((intValue22 & 6) == 0) {
                    if ((intValue22 & 8) == 0) {
                        h2 = ((GapComposer) composer22).f(authScope2);
                    } else {
                        h2 = ((GapComposer) composer22).h(authScope2);
                    }
                    if (h2) {
                        i3 = 4;
                    } else {
                        i3 = 2;
                    }
                    intValue22 |= i3;
                }
                if ((intValue22 & 19) != 18) {
                    z20 = true;
                } else {
                    z20 = false;
                }
                GapComposer gapComposer22 = (GapComposer) composer22;
                if (gapComposer22.N(intValue22 & 1, z20)) {
                    NavigationRootKt.a(ComposableLambdaKt.b(-308082028, new z5(authScope2, i5), gapComposer22), gapComposer22, 6);
                } else {
                    gapComposer22.Q();
                }
                return unit;
            case 23:
                Composer composer23 = (Composer) obj2;
                int intValue23 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue23 & 17) != 16) {
                    z21 = true;
                } else {
                    z21 = false;
                }
                GapComposer gapComposer23 = (GapComposer) composer23;
                if (gapComposer23.N(intValue23 & 1, z21)) {
                    PlatformTextKt.c("Skip", null, TextStyle.a(((AndroidTextStyles) gapComposer23.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer23.j(AndroidColorsKt.a)).b, TextUnitKt.d(16), FontWeight.s, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer23, 6, 506);
                } else {
                    gapComposer23.Q();
                }
                return unit;
            case 24:
                Composer composer24 = (Composer) obj2;
                int intValue24 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue24 & 17) != 16) {
                    z22 = true;
                } else {
                    z22 = false;
                }
                GapComposer gapComposer24 = (GapComposer) composer24;
                if (gapComposer24.N(intValue24 & 1, z22)) {
                    RowMeasurePolicy a2 = RowKt.a(Arrangement.e(6.0f), Alignment.Companion.k, gapComposer24, 54);
                    int hashCode2 = Long.hashCode(gapComposer24.T);
                    PersistentCompositionLocalMap l2 = gapComposer24.l();
                    Modifier c2 = ComposedModifierKt.c(gapComposer24, companion);
                    ComposeUiNode.b.getClass();
                    gapComposer24.Z();
                    if (gapComposer24.S) {
                        gapComposer24.k(x9Var);
                    } else {
                        gapComposer24.j0();
                    }
                    Updater.c(gapComposer24, a2, e6Var4);
                    Updater.c(gapComposer24, l2, e6Var3);
                    Updater.c(gapComposer24, Integer.valueOf(hashCode2), e6Var2);
                    Updater.b(gapComposer24);
                    Updater.c(gapComposer24, c2, e6Var);
                    Modifier k = SizeKt.k(companion, 20.0f);
                    ImageVector imageVector3 = CheckKt.a;
                    if (imageVector3 == null) {
                        ImageVector.Builder builder2 = new ImageVector.Builder("Rounded.Check", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i7 = VectorKt.a;
                        SolidColor solidColor4 = new SolidColor(Color.b);
                        PathBuilder pathBuilder4 = new PathBuilder();
                        pathBuilder4.i(9.0f, 16.17f);
                        pathBuilder4.g(5.53f, 12.7f);
                        pathBuilder4.d(-0.39f, -0.39f, -1.02f, -0.39f, -1.41f, 0.0f);
                        pathBuilder4.d(-0.39f, 0.39f, -0.39f, 1.02f, 0.0f, 1.41f);
                        pathBuilder4.h(4.18f, 4.18f);
                        pathBuilder4.d(0.39f, 0.39f, 1.02f, 0.39f, 1.41f, 0.0f);
                        pathBuilder4.g(20.29f, 7.71f);
                        pathBuilder4.d(0.39f, -0.39f, 0.39f, -1.02f, 0.0f, -1.41f);
                        pathBuilder4.d(-0.39f, -0.39f, -1.02f, -0.39f, -1.41f, 0.0f);
                        pathBuilder4.g(9.0f, 16.17f);
                        pathBuilder4.b();
                        builder2.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor4, null, "", pathBuilder4.a);
                        imageVector3 = builder2.d();
                        CheckKt.a = imageVector3;
                    }
                    ImageVector imageVector4 = imageVector3;
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidColorsKt.a;
                    ImageKt.b(imageVector4, "Accept", k, ColorFilter.Companion.a(((AndroidColors) gapComposer24.j(dynamicProvidableCompositionLocal)).b), gapComposer24, 432, 56);
                    PlatformTextKt.c("Accept", null, TextStyle.a(((AndroidTextStyles) gapComposer24.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer24.j(dynamicProvidableCompositionLocal)).b, TextUnitKt.d(14), FontWeight.t, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer24, 6, 506);
                    gapComposer24.p(true);
                } else {
                    gapComposer24.Q();
                }
                return unit;
            case 25:
                Composer composer25 = (Composer) obj2;
                int intValue25 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue25 & 17) != 16) {
                    z23 = true;
                } else {
                    z23 = false;
                }
                GapComposer gapComposer25 = (GapComposer) composer25;
                if (gapComposer25.N(intValue25 & 1, z23)) {
                    RowMeasurePolicy a3 = RowKt.a(Arrangement.e(6.0f), Alignment.Companion.k, gapComposer25, 54);
                    int hashCode3 = Long.hashCode(gapComposer25.T);
                    PersistentCompositionLocalMap l3 = gapComposer25.l();
                    Modifier c3 = ComposedModifierKt.c(gapComposer25, companion);
                    ComposeUiNode.b.getClass();
                    gapComposer25.Z();
                    if (gapComposer25.S) {
                        gapComposer25.k(x9Var);
                    } else {
                        gapComposer25.j0();
                    }
                    Updater.c(gapComposer25, a3, e6Var4);
                    Updater.c(gapComposer25, l3, e6Var3);
                    Updater.c(gapComposer25, Integer.valueOf(hashCode3), e6Var2);
                    Updater.b(gapComposer25);
                    Updater.c(gapComposer25, c3, e6Var);
                    Modifier k2 = SizeKt.k(companion, 20.0f);
                    ImageVector imageVector5 = CloseKt.a;
                    if (imageVector5 == null) {
                        ImageVector.Builder builder3 = new ImageVector.Builder("Rounded.Close", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i8 = VectorKt.a;
                        SolidColor solidColor5 = new SolidColor(Color.b);
                        PathBuilder pathBuilder5 = new PathBuilder();
                        pathBuilder5.i(18.3f, 5.71f);
                        pathBuilder5.d(-0.39f, -0.39f, -1.02f, -0.39f, -1.41f, 0.0f);
                        pathBuilder5.g(12.0f, 10.59f);
                        pathBuilder5.g(7.11f, 5.7f);
                        pathBuilder5.d(-0.39f, -0.39f, -1.02f, -0.39f, -1.41f, 0.0f);
                        pathBuilder5.d(-0.39f, 0.39f, -0.39f, 1.02f, 0.0f, 1.41f);
                        pathBuilder5.g(10.59f, 12.0f);
                        pathBuilder5.g(5.7f, 16.89f);
                        pathBuilder5.d(-0.39f, 0.39f, -0.39f, 1.02f, 0.0f, 1.41f);
                        pathBuilder5.d(0.39f, 0.39f, 1.02f, 0.39f, 1.41f, 0.0f);
                        pathBuilder5.g(12.0f, 13.41f);
                        pathBuilder5.h(4.89f, 4.89f);
                        pathBuilder5.d(0.39f, 0.39f, 1.02f, 0.39f, 1.41f, 0.0f);
                        pathBuilder5.d(0.39f, -0.39f, 0.39f, -1.02f, 0.0f, -1.41f);
                        pathBuilder5.g(13.41f, 12.0f);
                        pathBuilder5.h(4.89f, -4.89f);
                        pathBuilder5.d(0.38f, -0.38f, 0.38f, -1.02f, 0.0f, -1.4f);
                        pathBuilder5.b();
                        builder3.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor5, null, "", pathBuilder5.a);
                        imageVector5 = builder3.d();
                        CloseKt.a = imageVector5;
                    }
                    ImageVector imageVector6 = imageVector5;
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AndroidColorsKt.a;
                    ImageKt.b(imageVector6, "Decline", k2, ColorFilter.Companion.a(((AndroidColors) gapComposer25.j(dynamicProvidableCompositionLocal2)).b), gapComposer25, 432, 56);
                    PlatformTextKt.c("Decline", null, TextStyle.a(((AndroidTextStyles) gapComposer25.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer25.j(dynamicProvidableCompositionLocal2)).b, TextUnitKt.d(14), FontWeight.t, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer25, 6, 506);
                    gapComposer25.p(true);
                } else {
                    gapComposer25.Q();
                }
                return unit;
            case 26:
                Composer composer26 = (Composer) obj2;
                int intValue26 = ((Integer) obj3).intValue();
                ((String) obj).getClass();
                if ((intValue26 & 17) != 16) {
                    z24 = true;
                } else {
                    z24 = false;
                }
                GapComposer gapComposer26 = (GapComposer) composer26;
                if (gapComposer26.N(intValue26 & 1, z24)) {
                    Modifier k3 = SizeKt.k(companion, 38.0f);
                    ImageVector imageVector7 = ShareKt.a;
                    if (imageVector7 == null) {
                        ImageVector.Builder builder4 = new ImageVector.Builder("Rounded.Share", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
                        int i9 = VectorKt.a;
                        SolidColor solidColor6 = new SolidColor(Color.b);
                        PathBuilder pathBuilder6 = new PathBuilder();
                        pathBuilder6.i(18.0f, 16.08f);
                        pathBuilder6.d(-0.76f, 0.0f, -1.44f, 0.3f, -1.96f, 0.77f);
                        pathBuilder6.g(8.91f, 12.7f);
                        pathBuilder6.d(0.05f, -0.23f, 0.09f, -0.46f, 0.09f, -0.7f);
                        pathBuilder6.k(-0.04f, -0.47f, -0.09f, -0.7f);
                        pathBuilder6.h(7.05f, -4.11f);
                        pathBuilder6.d(0.54f, 0.5f, 1.25f, 0.81f, 2.04f, 0.81f);
                        pathBuilder6.d(1.66f, 0.0f, 3.0f, -1.34f, 3.0f, -3.0f);
                        pathBuilder6.k(-1.34f, -3.0f, -3.0f, -3.0f);
                        pathBuilder6.k(-3.0f, 1.34f, -3.0f, 3.0f);
                        pathBuilder6.d(0.0f, 0.24f, 0.04f, 0.47f, 0.09f, 0.7f);
                        pathBuilder6.g(8.04f, 9.81f);
                        pathBuilder6.c(7.5f, 9.31f, 6.79f, 9.0f, 6.0f, 9.0f);
                        pathBuilder6.d(-1.66f, 0.0f, -3.0f, 1.34f, -3.0f, 3.0f);
                        pathBuilder6.k(1.34f, 3.0f, 3.0f, 3.0f);
                        pathBuilder6.d(0.79f, 0.0f, 1.5f, -0.31f, 2.04f, -0.81f);
                        pathBuilder6.h(7.12f, 4.16f);
                        pathBuilder6.d(-0.05f, 0.21f, -0.08f, 0.43f, -0.08f, 0.65f);
                        pathBuilder6.d(0.0f, 1.61f, 1.31f, 2.92f, 2.92f, 2.92f);
                        pathBuilder6.k(2.92f, -1.31f, 2.92f, -2.92f);
                        pathBuilder6.k(-1.31f, -2.92f, -2.92f, -2.92f);
                        pathBuilder6.b();
                        builder4.b(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor6, null, "", pathBuilder6.a);
                        imageVector7 = builder4.d();
                        ShareKt.a = imageVector7;
                    }
                    ImageKt.b(imageVector7, "Share", k3, ColorFilter.Companion.a(((AndroidColors) gapComposer26.j(AndroidColorsKt.a)).b), gapComposer26, 432, 56);
                } else {
                    gapComposer26.Q();
                }
                return unit;
            case 27:
                Composer composer27 = (Composer) obj2;
                int intValue27 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue27 & 17) != 16) {
                    z25 = true;
                } else {
                    z25 = false;
                }
                GapComposer gapComposer27 = (GapComposer) composer27;
                if (gapComposer27.N(intValue27 & 1, z25)) {
                    DropdownMenuKt.a("Remove", gapComposer27, 48);
                } else {
                    gapComposer27.Q();
                }
                return unit;
            case 28:
                return d(obj, obj2, obj3);
            default:
                Composer composer28 = (Composer) obj2;
                int intValue28 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue28 & 17) != 16) {
                    z26 = true;
                } else {
                    z26 = false;
                }
                GapComposer gapComposer28 = (GapComposer) composer28;
                if (gapComposer28.N(intValue28 & 1, z26)) {
                    DropdownMenuKt.a("Paste", gapComposer28, 48);
                } else {
                    gapComposer28.Q();
                }
                return unit;
        }
    }
}
