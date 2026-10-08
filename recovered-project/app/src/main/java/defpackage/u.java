package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.NestedScrollScope;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.text.CoreTextFieldKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material.AlertDialogKt;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.material.ContentAlphaKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.UriHandler;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.documentfile.provider.DocumentFile;
import java.time.Instant;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.PathDecoderAndroid;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.components.AndroidAvatarEditorKt;
import net.blip.android.ui.components.DropdownMenuKt;
import net.blip.android.ui.components.TextFieldDialogKt;
import net.blip.android.ui.dialogs.BlockUserConfirmationDialogKt;
import net.blip.android.ui.help.HelpScreenSendToYourDevicesKt;
import net.blip.android.ui.home.TransferGridCellKt;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.navigation.AuthScope;
import net.blip.android.ui.peerpicker.AndroidPeerPickerListItemsKt;
import net.blip.android.ui.settings.ComposableSingletons$SettingsScreenKt;
import net.blip.android.ui.util.NuancedPermissionState;
import net.blip.android.ui.util.NuancedPermissionStateKt;
import net.blip.android.ui.util.SystemBarsMetrics;
import net.blip.android.ui.util.SystemBarsMetricsKt;
import net.blip.libblip.PathDecoder$Companion;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerPickerContent;
import net.blip.libblip.PeerPickerViewModel;
import net.blip.libblip.PlanKind;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.User;
import net.blip.libblip.event.TransferSetCustomDefaultSavePath;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.ContentPicker_androidKt;
import net.blip.shared.SelectableLazyListScope;
import net.blip.shared.SelectionListKt;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class u implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ u(Object obj, Object obj2, Object obj3, int i) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r2v8 */
    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        ?? r2;
        ComposableLambdaImpl b;
        boolean z2;
        ComposableLambdaImpl b2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        final String str;
        Object failure;
        Object obj3;
        String str2;
        String str3;
        final String str4;
        boolean z9;
        int i = this.j;
        BiasAlignment.Horizontal horizontal = Alignment.Companion.m;
        Arrangement$Top$1 arrangement$Top$1 = Arrangement.b;
        e6 e6Var = ComposeUiNode.Companion.b;
        e6 e6Var2 = ComposeUiNode.Companion.e;
        e6 e6Var3 = ComposeUiNode.Companion.c;
        e6 e6Var4 = ComposeUiNode.Companion.d;
        x9 x9Var = LayoutNode.b0;
        int i2 = 20;
        Modifier.Companion companion = Modifier.Companion.b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        int i3 = 2;
        Unit unit = Unit.a;
        Object obj4 = this.m;
        Object obj5 = this.l;
        Object obj6 = this.k;
        switch (i) {
            case 0:
                Function2 function2 = (Function2) obj6;
                Function2 function22 = (Function2) obj5;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                Modifier modifier = AlertDialogKt.a;
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    ColumnMeasurePolicy a = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer, 0);
                    int a2 = ComposablesKt.a(gapComposer);
                    PersistentCompositionLocalMap l = gapComposer.l();
                    Modifier c = ComposedModifierKt.c(gapComposer, companion);
                    ComposeUiNode.b.getClass();
                    gapComposer.Z();
                    if (gapComposer.S) {
                        gapComposer.k(x9Var);
                    } else {
                        gapComposer.j0();
                    }
                    Updater.c(gapComposer, a, e6Var4);
                    Updater.c(gapComposer, l, e6Var3);
                    if (gapComposer.S || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a2))) {
                        q.r(a2, gapComposer, a2, e6Var2);
                    }
                    Updater.c(gapComposer, c, e6Var);
                    if (function2 == null) {
                        gapComposer.W(-97968969);
                        r2 = 0;
                        gapComposer.p(false);
                        b = null;
                    } else {
                        r2 = 0;
                        gapComposer.W(-97968968);
                        b = ComposableLambdaKt.b(1737550099, new x(false ? 1 : 0, function2), gapComposer);
                        gapComposer.p(false);
                    }
                    if (function22 == null) {
                        gapComposer.W(-97547524);
                        gapComposer.p(r2);
                        b2 = null;
                        z2 = true;
                    } else {
                        gapComposer.W(-97547523);
                        z2 = true;
                        b2 = ComposableLambdaKt.b(1265552690, new x(true ? 1 : 0, function22), gapComposer);
                        gapComposer.p(r2);
                    }
                    AlertDialogKt.a(b, b2, gapComposer, 6);
                    composableLambdaImpl.n(gapComposer, Integer.valueOf((int) r2));
                    gapComposer.p(z2);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                AndroidAvatarEditorKt.a((Modifier) obj6, (Function1) obj5, (User) obj4, (Composer) obj, RecomposeScopeImplKt.a(7));
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Modifier modifier2 = (Modifier) obj6;
                MutableState mutableState = (MutableState) obj5;
                ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) obj4;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z3)) {
                    Object K = gapComposer2.K();
                    if (K == composer$Companion$Empty$1) {
                        K = new i2(mutableState, 0);
                        gapComposer2.g0(K);
                    }
                    Modifier a3 = OnGloballyPositionedModifierKt.a(modifier2, (Function1) K);
                    MeasurePolicy d = BoxKt.d(Alignment.Companion.a, true);
                    int hashCode = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l2 = gapComposer2.l();
                    Modifier c2 = ComposedModifierKt.c(gapComposer2, a3);
                    ComposeUiNode.b.getClass();
                    gapComposer2.Z();
                    if (gapComposer2.S) {
                        gapComposer2.k(x9Var);
                    } else {
                        gapComposer2.j0();
                    }
                    Updater.c(gapComposer2, d, e6Var4);
                    Updater.c(gapComposer2, l2, e6Var3);
                    Updater.c(gapComposer2, Integer.valueOf(hashCode), e6Var2);
                    Updater.b(gapComposer2);
                    Updater.c(gapComposer2, c2, e6Var);
                    composableLambdaImpl2.n(gapComposer2, 0);
                    gapComposer2.p(true);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ((Integer) obj2).getClass();
                AndroidView_androidKt.b((Function1) obj6, (Modifier) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ((Integer) obj2).getClass();
                BlockUserConfirmationDialogKt.a((User) obj6, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(385));
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                MutableState mutableState2 = (MutableState) obj6;
                PaddingValues paddingValues = (PaddingValues) obj5;
                Function3 function3 = (Function3) obj4;
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z4)) {
                    CompositionLocalKt.a(ContentAlphaKt.a.b(Float.valueOf(Color.d(((Color) mutableState2.getValue()).a))), ComposableLambdaKt.b(-869936862, new v4(paddingValues, function3, 0), gapComposer3), gapComposer3, 56);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ((Integer) obj2).getClass();
                CompositionLocalsKt.a((Owner) obj6, (UriHandler) obj5, (ComposableLambdaImpl) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                CoreTextFieldKt.b((Modifier) obj6, (TextFieldSelectionManager) obj5, (ComposableLambdaImpl) obj4, (Composer) obj, RecomposeScopeImplKt.a(385));
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).getClass();
                DropdownMenuKt.b((Modifier) obj6, (Map) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case KeyModifiers.a /* 9 */:
                ((Integer) obj2).getClass();
                HelpScreenSendToYourDevicesKt.a((Modifier) obj6, (String) obj5, (ComposableLambdaImpl) obj4, (Composer) obj, RecomposeScopeImplKt.a(433));
                return unit;
            case KeyModifiers.b /* 10 */:
                Modifier modifier3 = (Modifier) obj6;
                ScrollState scrollState = (ScrollState) obj5;
                ComposableLambdaImpl composableLambdaImpl3 = (ComposableLambdaImpl) obj4;
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if ((intValue4 & 3) != 2) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(intValue4 & 1, z5)) {
                    Modifier f = PaddingKt.f(modifier3, 0.0f, 8.0f, 1);
                    IntrinsicSize intrinsicSize = IntrinsicSize.j;
                    Modifier b3 = ScrollKt.b(IntrinsicKt.a(f), scrollState);
                    ColumnMeasurePolicy a4 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer4, 0);
                    int a5 = ComposablesKt.a(gapComposer4);
                    PersistentCompositionLocalMap l3 = gapComposer4.l();
                    Modifier c3 = ComposedModifierKt.c(gapComposer4, b3);
                    ComposeUiNode.b.getClass();
                    gapComposer4.Z();
                    if (gapComposer4.S) {
                        gapComposer4.k(x9Var);
                    } else {
                        gapComposer4.j0();
                    }
                    Updater.c(gapComposer4, a4, e6Var4);
                    Updater.c(gapComposer4, l3, e6Var3);
                    if (gapComposer4.S || !Intrinsics.a(gapComposer4.K(), Integer.valueOf(a5))) {
                        q.r(a5, gapComposer4, a5, e6Var2);
                    }
                    Updater.c(gapComposer4, c3, e6Var);
                    composableLambdaImpl3.f(ColumnScopeInstance.a, gapComposer4, 6);
                    gapComposer4.p(true);
                } else {
                    gapComposer4.Q();
                }
                return unit;
            case 11:
                Function1 function1 = (Function1) obj6;
                User user = (User) obj5;
                MutableState mutableState3 = (MutableState) obj4;
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if ((intValue5 & 3) != 2) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.N(intValue5 & 1, z6)) {
                    Modifier k = SizeKt.k(companion, 96.0f);
                    String str5 = ((TextFieldValue) mutableState3.getValue()).a.k;
                    String str6 = user.m;
                    String str7 = user.n;
                    ByteString byteString = user.p;
                    ByteString byteString2 = user.q;
                    Map map = user.x;
                    boolean z10 = user.r;
                    boolean z11 = user.s;
                    boolean z12 = user.t;
                    PlanKind planKind = user.u;
                    Instant instant = user.v;
                    Instant instant2 = user.w;
                    ByteString a6 = user.a();
                    str6.getClass();
                    str7.getClass();
                    str5.getClass();
                    byteString.getClass();
                    byteString2.getClass();
                    map.getClass();
                    planKind.getClass();
                    a6.getClass();
                    AndroidAvatarEditorKt.a(k, function1, new User(str6, str7, str5, byteString, byteString2, map, z10, z11, z12, planKind, instant, instant2, a6), gapComposer5, 6);
                } else {
                    gapComposer5.Q();
                }
                return unit;
            case KeyModifiers.c /* 12 */:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj6;
                ScrollingLogic scrollingLogic = (ScrollingLogic) obj5;
                float floatValue = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                long i4 = scrollingLogic.i(scrollingLogic.e(floatValue - ref$FloatRef.j));
                ScrollingLogic scrollingLogic2 = ((ScrollingLogic$nestedScrollScope$1) ((NestedScrollScope) obj4)).a;
                ref$FloatRef.j += scrollingLogic.e(scrollingLogic.h(scrollingLogic2.d(scrollingLogic2.k, i4, 1)));
                return unit;
            case 13:
                AuthScope authScope = (AuthScope) obj6;
                Function1 function12 = (Function1) obj5;
                MutableState mutableState4 = (MutableState) obj4;
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if ((intValue6 & 3) != 2) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.N(intValue6 & 1, z7)) {
                    ListRowKt.c(null, "Name", authScope.a.o, 0L, gapComposer6, 48, 9);
                    if (((Boolean) mutableState4.getValue()).booleanValue()) {
                        gapComposer6.W(-2074244628);
                        String str8 = authScope.a.o;
                        Object K2 = gapComposer6.K();
                        if (K2 == composer$Companion$Empty$1) {
                            K2 = new le(20);
                            gapComposer6.g0(K2);
                        }
                        Function1 function13 = (Function1) K2;
                        boolean f2 = gapComposer6.f(function12);
                        Object K3 = gapComposer6.K();
                        if (f2 || K3 == composer$Companion$Empty$1) {
                            K3 = new lc(i3, mutableState4, function12);
                            gapComposer6.g0(K3);
                        }
                        Function1 function14 = (Function1) K3;
                        Object K4 = gapComposer6.K();
                        if (K4 == composer$Companion$Empty$1) {
                            K4 = new cd(mutableState4, 16);
                            gapComposer6.g0(K4);
                        }
                        TextFieldDialogKt.a("Edit name", str8, function13, function14, (Function0) K4, new KeyboardOptions(2, Boolean.FALSE, 0, 0, 124), false, null, gapComposer6, 14180358);
                        gapComposer6.p(false);
                    } else {
                        gapComposer6.W(-2073424895);
                        gapComposer6.p(false);
                    }
                } else {
                    gapComposer6.Q();
                }
                return unit;
            case 14:
                final Context context = (Context) obj6;
                State state = (State) obj5;
                final Function1 function15 = (Function1) obj4;
                Composer composer7 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if ((intValue7 & 3) != 2) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (gapComposer7.N(intValue7 & 1, z8)) {
                    NuancedPermissionState b4 = NuancedPermissionStateKt.b(gapComposer7);
                    boolean h = gapComposer7.h(b4) | gapComposer7.h(context);
                    Object K5 = gapComposer7.K();
                    Object obj7 = K5;
                    if (h || K5 == composer$Companion$Empty$1) {
                        p0 p0Var = new p0(27, b4, context);
                        gapComposer7.g0(p0Var);
                        obj7 = p0Var;
                    }
                    ListRowKt.b(null, ComposableSingletons$SettingsScreenKt.b, null, null, (Function0) obj7, null, ComposableLambdaKt.b(1611257871, new d(i2, b4), gapComposer7), gapComposer7, 1572912, 45);
                    Boolean bool = Boolean.FALSE;
                    Map f3 = MapsKt.f(new Pair(bool, "Never"), new Pair(Boolean.TRUE, "From my devices"));
                    Object K6 = gapComposer7.K();
                    Object obj8 = K6;
                    if (K6 == composer$Companion$Empty$1) {
                        MutableState g = SnapshotStateKt.g(bool);
                        gapComposer7.g0(g);
                        obj8 = g;
                    }
                    MutableState mutableState5 = (MutableState) obj8;
                    Object K7 = gapComposer7.K();
                    Object obj9 = K7;
                    if (K7 == composer$Companion$Empty$1) {
                        cd cdVar = new cd(mutableState5, 19);
                        gapComposer7.g0(cdVar);
                        obj9 = cdVar;
                    }
                    ListRowKt.b(null, ComposableSingletons$SettingsScreenKt.c, null, null, (Function0) obj9, null, ComposableLambdaKt.b(1012397766, new d4(f3, state, mutableState5, function15), gapComposer7), gapComposer7, 1597488, 45);
                    Object K8 = gapComposer7.K();
                    Object obj10 = K8;
                    if (K8 == composer$Companion$Empty$1) {
                        CoroutineScope h2 = EffectsKt.h(gapComposer7);
                        gapComposer7.g0(h2);
                        obj10 = h2;
                    }
                    final CoroutineScope coroutineScope = (CoroutineScope) obj10;
                    final Function2 b5 = ContentPicker_androidKt.b(gapComposer7);
                    String str9 = State_DerivedKt.a(state).o;
                    if (str9.length() == 0) {
                        str9 = null;
                    }
                    if (str9 != null) {
                        PathDecoderAndroid pathDecoderAndroid = PathDecoder$Companion.a;
                        if (pathDecoderAndroid != null) {
                            str = pathDecoderAndroid.a(str9);
                        } else {
                            Intrinsics.e("shared");
                            throw null;
                        }
                    } else {
                        str = null;
                    }
                    Object K9 = gapComposer7.K();
                    Object obj11 = K9;
                    if (K9 == composer$Companion$Empty$1) {
                        MutableIntState a7 = SnapshotIntStateKt.a(0);
                        gapComposer7.g0(a7);
                        obj11 = a7;
                    }
                    final MutableIntState mutableIntState = (MutableIntState) obj11;
                    boolean d2 = gapComposer7.d(((SnapshotMutableIntStateImpl) mutableIntState).j()) | gapComposer7.f(str);
                    Object K10 = gapComposer7.K();
                    if (d2 || K10 == composer$Companion$Empty$1) {
                        if (str != null) {
                            try {
                                failure = DocumentFile.c(context, Uri.parse(str)).d();
                            } catch (Throwable th) {
                                failure = new Result.Failure(th);
                            }
                            if (failure instanceof Result.Failure) {
                                obj3 = null;
                            } else {
                                obj3 = failure;
                            }
                            str2 = (String) obj3;
                        } else {
                            str2 = null;
                        }
                        gapComposer7.g0(str2);
                        K10 = str2;
                    }
                    final String str10 = (String) K10;
                    boolean f4 = gapComposer7.f(str) | gapComposer7.f(str10);
                    Object K11 = gapComposer7.K();
                    Object obj12 = K11;
                    if (f4 || K11 == composer$Companion$Empty$1) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (str != null) {
                            if (str10 == null) {
                                str3 = "Selected folder";
                            } else {
                                str3 = str10;
                            }
                            linkedHashMap.put(str, str3);
                        }
                        linkedHashMap.put("", "Download");
                        linkedHashMap.put("choose", "Choose folder…");
                        gapComposer7.g0(linkedHashMap);
                        obj12 = linkedHashMap;
                    }
                    final LinkedHashMap linkedHashMap2 = (LinkedHashMap) obj12;
                    if (str == null) {
                        String uri = DocumentsContract.buildDocumentUri("com.android.externalstorage.documents", "primary:" + Environment.DIRECTORY_DOWNLOADS).toString();
                        uri.getClass();
                        str4 = uri;
                    } else {
                        str4 = str;
                    }
                    Object K12 = gapComposer7.K();
                    Object obj13 = K12;
                    if (K12 == composer$Companion$Empty$1) {
                        MutableState g2 = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer7.g0(g2);
                        obj13 = g2;
                    }
                    final MutableState mutableState6 = (MutableState) obj13;
                    Object K13 = gapComposer7.K();
                    Object obj14 = K13;
                    if (K13 == composer$Companion$Empty$1) {
                        cd cdVar2 = new cd(mutableState6, 20);
                        gapComposer7.g0(cdVar2);
                        obj14 = cdVar2;
                    }
                    ListRowKt.b(null, ComposableSingletons$SettingsScreenKt.d, null, null, (Function0) obj14, null, ComposableLambdaKt.b(-1334839097, new Function2() { // from class: hf
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj15, Object obj16) {
                            boolean z13;
                            Composer composer8 = (Composer) obj15;
                            int intValue8 = ((Integer) obj16).intValue();
                            if ((intValue8 & 3) != 2) {
                                z13 = true;
                            } else {
                                z13 = false;
                            }
                            GapComposer gapComposer8 = (GapComposer) composer8;
                            if (gapComposer8.N(intValue8 & 1, z13)) {
                                MeasurePolicy d3 = BoxKt.d(Alignment.Companion.a, false);
                                int hashCode2 = Long.hashCode(gapComposer8.T);
                                PersistentCompositionLocalMap l4 = gapComposer8.l();
                                Modifier c4 = ComposedModifierKt.c(gapComposer8, Modifier.Companion.b);
                                ComposeUiNode.b.getClass();
                                gapComposer8.Z();
                                if (gapComposer8.S) {
                                    gapComposer8.k(LayoutNode.b0);
                                } else {
                                    gapComposer8.j0();
                                }
                                Updater.c(gapComposer8, d3, ComposeUiNode.Companion.d);
                                Updater.c(gapComposer8, l4, ComposeUiNode.Companion.c);
                                Updater.c(gapComposer8, Integer.valueOf(hashCode2), ComposeUiNode.Companion.e);
                                Updater.b(gapComposer8);
                                Updater.c(gapComposer8, c4, ComposeUiNode.Companion.b);
                                String str11 = str10;
                                if (str11 == null) {
                                    if (str == null) {
                                        str11 = "Download";
                                    } else {
                                        str11 = "Selected folder";
                                    }
                                }
                                ListRowKt.c(null, "Default save location", str11, 0L, gapComposer8, 48, 9);
                                final MutableState mutableState7 = mutableState6;
                                boolean booleanValue = ((Boolean) mutableState7.getValue()).booleanValue();
                                Object K14 = gapComposer8.K();
                                if (K14 == Composer.Companion.a) {
                                    K14 = new cd(mutableState7, 23);
                                    gapComposer8.g0(K14);
                                }
                                Function0 function0 = (Function0) K14;
                                final LinkedHashMap linkedHashMap3 = linkedHashMap2;
                                final CoroutineScope coroutineScope2 = coroutineScope;
                                final Function2 function23 = b5;
                                final String str12 = str4;
                                final Context context2 = context;
                                final Function1 function16 = function15;
                                final MutableIntState mutableIntState2 = mutableIntState;
                                AndroidMenu_androidKt.a(booleanValue, function0, null, 0L, null, null, ComposableLambdaKt.b(-1402065618, new Function3() { // from class: jf
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object f(Object obj17, Object obj18, Object obj19) {
                                        boolean z14;
                                        Composer composer9 = (Composer) obj18;
                                        int intValue9 = ((Integer) obj19).intValue();
                                        ((ColumnScope) obj17).getClass();
                                        if ((intValue9 & 17) != 16) {
                                            z14 = true;
                                        } else {
                                            z14 = false;
                                        }
                                        GapComposer gapComposer9 = (GapComposer) composer9;
                                        if (gapComposer9.N(intValue9 & 1, z14)) {
                                            final CoroutineScope coroutineScope3 = coroutineScope2;
                                            boolean h3 = gapComposer9.h(coroutineScope3);
                                            final Function2 function24 = function23;
                                            boolean h4 = h3 | gapComposer9.h(function24);
                                            final String str13 = str12;
                                            boolean f5 = h4 | gapComposer9.f(str13);
                                            final Context context3 = context2;
                                            boolean h5 = f5 | gapComposer9.h(context3);
                                            final Function1 function17 = function16;
                                            boolean f6 = h5 | gapComposer9.f(function17);
                                            Object K15 = gapComposer9.K();
                                            if (f6 || K15 == Composer.Companion.a) {
                                                final MutableState mutableState8 = mutableState7;
                                                final MutableIntState mutableIntState3 = mutableIntState2;
                                                Function1 function18 = new Function1() { // from class: net.blip.android.ui.settings.a
                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object b(Object obj20) {
                                                        String str14 = (String) obj20;
                                                        str14.getClass();
                                                        mutableState8.setValue(Boolean.FALSE);
                                                        boolean equals = str14.equals("choose");
                                                        Function1 function19 = function17;
                                                        if (equals) {
                                                            BuildersKt.c(CoroutineScope.this, null, null, new SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1(function24, str13, context3, function19, mutableIntState3, null), 3);
                                                        } else {
                                                            function19.b(new TransferSetCustomDefaultSavePath(str14));
                                                        }
                                                        return Unit.a;
                                                    }
                                                };
                                                gapComposer9.g0(function18);
                                                K15 = function18;
                                            }
                                            DropdownMenuKt.b(null, linkedHashMap3, (Function1) K15, gapComposer9, 0);
                                        } else {
                                            gapComposer9.Q();
                                        }
                                        return Unit.a;
                                    }
                                }, gapComposer8), gapComposer8, 1572912, 60);
                                gapComposer8.p(true);
                            } else {
                                gapComposer8.Q();
                            }
                            return Unit.a;
                        }
                    }, gapComposer7), gapComposer7, 1597488, 45);
                } else {
                    gapComposer7.Q();
                }
                return unit;
            case 15:
                final androidx.compose.runtime.State state2 = (androidx.compose.runtime.State) obj6;
                final PeerPickerViewModel peerPickerViewModel = (PeerPickerViewModel) obj5;
                final Function1 function16 = (Function1) obj4;
                Composer composer8 = (Composer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if ((intValue8 & 3) != 2) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (gapComposer8.N(intValue8 & 1, z9)) {
                    Modifier a8 = WindowInsetsPadding_androidKt.a(BackgroundKt.b(companion, ((AndroidColors) gapComposer8.j(AndroidColorsKt.a)).i, RectangleShapeKt.a));
                    PaddingValuesImpl paddingValuesImpl = new PaddingValuesImpl(8.0f, 8.0f, 8.0f, ((SystemBarsMetrics) gapComposer8.j(SystemBarsMetricsKt.a)).b + 8.0f);
                    boolean f5 = gapComposer8.f(state2) | gapComposer8.h(peerPickerViewModel) | gapComposer8.f(function16);
                    Object K14 = gapComposer8.K();
                    if (f5 || K14 == composer$Companion$Empty$1) {
                        K14 = new Function1() { // from class: net.blip.android.ui.transfer.a
                            /* JADX WARN: Type inference failed for: r3v0, types: [kotlin.jvm.internal.FunctionReference, kotlin.jvm.functions.Function0] */
                            /* JADX WARN: Type inference failed for: r5v1, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.FunctionReference] */
                            /* JADX WARN: Type inference failed for: r6v1, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.FunctionReference] */
                            @Override // kotlin.jvm.functions.Function1
                            public final Object b(Object obj15) {
                                SelectableLazyListScope selectableLazyListScope = (SelectableLazyListScope) obj15;
                                selectableLazyListScope.getClass();
                                PeerPickerContent peerPickerContent = (PeerPickerContent) state2.getValue();
                                PeerPickerViewModel peerPickerViewModel2 = PeerPickerViewModel.this;
                                AndroidPeerPickerListItemsKt.b(selectableLazyListScope, peerPickerContent, true, new FunctionReference(0, peerPickerViewModel2, PeerPickerViewModel.class, "retrySearch", "retrySearch()V", 0), function16, new FunctionReference(1, peerPickerViewModel2, PeerPickerViewModel.class, "removePeer", "removePeer(Lnet/blip/libblip/PeerId;)V", 0), new FunctionReference(1, peerPickerViewModel2, PeerPickerViewModel.class, "blockUser", "blockUser(Ljava/lang/String;)V", 0));
                                return Unit.a;
                            }
                        };
                        gapComposer8.g0(K14);
                    }
                    SelectionListKt.a(a8, null, paddingValuesImpl, null, null, null, false, null, (Function1) K14, gapComposer8, 0);
                } else {
                    gapComposer8.Q();
                }
                return unit;
            default:
                ((Integer) obj2).getClass();
                TransferGridCellKt.a((Modifier) obj6, (Transfer) obj5, (Peer) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
        }
    }

    public /* synthetic */ u(Object obj, Object obj2, Object obj3, int i, int i2) {
        this.j = i2;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
    }
}
