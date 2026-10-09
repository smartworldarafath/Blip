package defpackage;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material.ButtonKt;
import androidx.compose.material.TextFieldColors;
import androidx.compose.material.TextFieldDefaults;
import androidx.compose.material.TextFieldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.UriHandler;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavHostController;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.AlertDialogKt;
import net.blip.android.ui.components.ComposableSingletons$TextFieldDialogKt;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.list.PeerListRowKt;
import net.blip.android.ui.list.SendToYourDevicesListRowKt;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.navigation.AuthScope;
import net.blip.android.ui.settings.SettingsComposablesKt;
import net.blip.libblip.Device;
import net.blip.libblip.Device_DerivedKt;
import net.blip.libblip.Peer;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class v8 implements Function2 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Function1 l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ v8(NavHostController navHostController, State state, List list, PagerState pagerState, Context context, Function1 function1) {
        this.m = navHostController;
        this.n = state;
        this.o = list;
        this.p = pagerState;
        this.k = context;
        this.l = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        boolean z3;
        MutableState mutableState;
        int i = this.j;
        e6 e6Var = ComposeUiNode.Companion.e;
        e6 e6Var2 = ComposeUiNode.Companion.c;
        e6 e6Var3 = ComposeUiNode.Companion.d;
        x9 x9Var = LayoutNode.b0;
        BiasAlignment.Horizontal horizontal = Alignment.Companion.m;
        Arrangement$Top$1 arrangement$Top$1 = Arrangement.b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        Modifier.Companion companion = Modifier.Companion.b;
        Function1 function1 = this.l;
        final Unit unit = Unit.a;
        Object obj3 = this.k;
        Object obj4 = this.p;
        Object obj5 = this.o;
        Object obj6 = this.n;
        Object obj7 = this.m;
        switch (i) {
            case 0:
                boolean z4 = false;
                NavHostController navHostController = (NavHostController) obj7;
                State state = (State) obj6;
                List list = (List) obj5;
                PagerState pagerState = (PagerState) obj4;
                Context context = (Context) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z4 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z4)) {
                    Modifier a = AlphaKt.a(companion, ((Number) state.getValue()).floatValue());
                    ComposableLambdaImpl b = ComposableLambdaKt.b(891028893, new a0(11, list, pagerState), gapComposer);
                    ComposableLambdaImpl b2 = ComposableLambdaKt.b(1897951582, new d4(context, list, pagerState, this.l, 1), gapComposer);
                    boolean h = gapComposer.h(navHostController);
                    Object K = gapComposer.K();
                    if (h || K == composer$Companion$Empty$1) {
                        K = new i3(navHostController, 2);
                        gapComposer.g0(K);
                    }
                    ScreenLockupKt.d(a, 0L, b, b2, (Function0) K, gapComposer, 3456, 2);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                Device device = (Device) obj7;
                Context context2 = (Context) obj3;
                AuthScope authScope = (AuthScope) obj6;
                String str = (String) obj5;
                MutableState mutableState2 = (MutableState) obj4;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z)) {
                    ListRowKt.c(null, "Remove device", null, ((AndroidColors) gapComposer2.j(AndroidColorsKt.a)).g, gapComposer2, 48, 5);
                    if (((Boolean) mutableState2.getValue()).booleanValue()) {
                        gapComposer2.W(37528593);
                        String a2 = Device_DerivedKt.a(device);
                        a2.getClass();
                        String i2 = q.i("Remove ", a2, "?");
                        Object K2 = gapComposer2.K();
                        if (K2 == composer$Companion$Empty$1) {
                            K2 = new cd(mutableState2, 13);
                            gapComposer2.g0(K2);
                        }
                        Pair pair = new Pair("Cancel", (Function0) K2);
                        boolean h2 = gapComposer2.h(context2) | gapComposer2.h(authScope) | gapComposer2.f(str) | gapComposer2.f(function1);
                        Object K3 = gapComposer2.K();
                        if (h2 || K3 == composer$Companion$Empty$1) {
                            K3 = new p1(context2, authScope, str, function1);
                            gapComposer2.g0(K3);
                        }
                        AlertDialogKt.a(i2, "The device will get signed out of Blip and removed from your account.", false, new Pair("Remove", (Function0) K3), pair, null, gapComposer2, 24576, 36);
                        gapComposer2.p(false);
                    } else {
                        gapComposer2.W(38323185);
                        gapComposer2.p(false);
                    }
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                final AuthScope authScope2 = (AuthScope) obj6;
                final NavHostController navHostController2 = (NavHostController) obj7;
                Context context3 = (Context) obj3;
                net.blip.libblip.frontend.State state2 = (net.blip.libblip.frontend.State) obj5;
                UriHandler uriHandler = (UriHandler) obj4;
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z2)) {
                    Modifier h3 = PaddingKt.h(PaddingKt.f(WindowInsetsPadding_androidKt.c(ScrollKt.b(PaddingKt.h(BackgroundKt.b(SizeKt.c(companion, 1.0f), ((AndroidColors) gapComposer3.j(AndroidColorsKt.a)).i, rectangleShapeKt$RectangleShape$1), 0.0f, 60.0f, 0.0f, 0.0f, 13), ScrollKt.a(gapComposer3))), 8.0f, 0.0f, 2), 0.0f, 0.0f, 0.0f, 8.0f, 7);
                    ColumnMeasurePolicy a3 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer3, 0);
                    int hashCode = Long.hashCode(gapComposer3.T);
                    PersistentCompositionLocalMap l = gapComposer3.l();
                    Modifier c = ComposedModifierKt.c(gapComposer3, h3);
                    ComposeUiNode.b.getClass();
                    gapComposer3.Z();
                    if (gapComposer3.S) {
                        gapComposer3.k(x9Var);
                    } else {
                        gapComposer3.j0();
                    }
                    Updater.c(gapComposer3, a3, e6Var3);
                    Updater.c(gapComposer3, l, e6Var2);
                    Updater.c(gapComposer3, Integer.valueOf(hashCode), e6Var);
                    Updater.b(gapComposer3);
                    Updater.c(gapComposer3, c, ComposeUiNode.Companion.b);
                    final int i3 = 0;
                    SettingsComposablesKt.d(null, null, ComposableLambdaKt.b(826088028, new Function2() { // from class: kf
                        /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, java.util.Comparator] */
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj8, Object obj9) {
                            boolean z5;
                            int i4 = i3;
                            Unit unit2 = Unit.a;
                            Object obj10 = Composer.Companion.a;
                            NavHostController navHostController3 = navHostController2;
                            AuthScope authScope3 = authScope2;
                            boolean z6 = false;
                            switch (i4) {
                                case 0:
                                    Composer composer4 = (Composer) obj8;
                                    int intValue4 = ((Integer) obj9).intValue();
                                    if ((intValue4 & 3) != 2) {
                                        z6 = true;
                                    }
                                    GapComposer gapComposer4 = (GapComposer) composer4;
                                    if (gapComposer4.N(intValue4 & 1, z6)) {
                                        Peer.User user = new Peer.User(authScope3.a);
                                        boolean h4 = gapComposer4.h(navHostController3);
                                        Object K4 = gapComposer4.K();
                                        if (h4 || K4 == obj10) {
                                            K4 = new i3(navHostController3, 10);
                                            gapComposer4.g0(K4);
                                        }
                                        PeerListRowKt.a(null, user, false, (Function0) K4, null, gapComposer4, 0, 21);
                                    } else {
                                        gapComposer4.Q();
                                    }
                                    return unit2;
                                default:
                                    Composer composer5 = (Composer) obj8;
                                    int intValue5 = ((Integer) obj9).intValue();
                                    if ((intValue5 & 3) != 2) {
                                        z5 = true;
                                    } else {
                                        z5 = false;
                                    }
                                    GapComposer gapComposer5 = (GapComposer) composer5;
                                    if (gapComposer5.N(intValue5 & 1, z5)) {
                                        gapComposer5.W(2044089211);
                                        Collection values = authScope3.a.x.values();
                                        values.getClass();
                                        Iterator it = Device_DerivedKt.c(authScope3.a.m, CollectionsKt.R(CollectionsKt.R(values, ComparisonsKt.a(new a7(4), new a7(5))), new Object())).iterator();
                                        while (it.hasNext()) {
                                            Peer peer = (Peer) it.next();
                                            boolean h5 = gapComposer5.h(navHostController3) | gapComposer5.h(peer);
                                            Object K5 = gapComposer5.K();
                                            if (h5 || K5 == obj10) {
                                                K5 = new p0(28, navHostController3, peer);
                                                gapComposer5.g0(K5);
                                            }
                                            PeerListRowKt.a(null, peer, true, (Function0) K5, null, gapComposer5, 384, 17);
                                        }
                                        gapComposer5.p(false);
                                        SendToYourDevicesListRowKt.a(null, gapComposer5, 0);
                                    } else {
                                        gapComposer5.Q();
                                    }
                                    return unit2;
                            }
                        }
                    }, gapComposer3), gapComposer3, 384, 3);
                    SettingsComposablesKt.a(0, gapComposer3);
                    final int i4 = 1;
                    SettingsComposablesKt.d(null, "Your devices", ComposableLambdaKt.b(-1606809723, new Function2() { // from class: kf
                        /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, java.util.Comparator] */
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj8, Object obj9) {
                            boolean z5;
                            int i42 = i4;
                            Unit unit2 = Unit.a;
                            Object obj10 = Composer.Companion.a;
                            NavHostController navHostController3 = navHostController2;
                            AuthScope authScope3 = authScope2;
                            boolean z6 = false;
                            switch (i42) {
                                case 0:
                                    Composer composer4 = (Composer) obj8;
                                    int intValue4 = ((Integer) obj9).intValue();
                                    if ((intValue4 & 3) != 2) {
                                        z6 = true;
                                    }
                                    GapComposer gapComposer4 = (GapComposer) composer4;
                                    if (gapComposer4.N(intValue4 & 1, z6)) {
                                        Peer.User user = new Peer.User(authScope3.a);
                                        boolean h4 = gapComposer4.h(navHostController3);
                                        Object K4 = gapComposer4.K();
                                        if (h4 || K4 == obj10) {
                                            K4 = new i3(navHostController3, 10);
                                            gapComposer4.g0(K4);
                                        }
                                        PeerListRowKt.a(null, user, false, (Function0) K4, null, gapComposer4, 0, 21);
                                    } else {
                                        gapComposer4.Q();
                                    }
                                    return unit2;
                                default:
                                    Composer composer5 = (Composer) obj8;
                                    int intValue5 = ((Integer) obj9).intValue();
                                    if ((intValue5 & 3) != 2) {
                                        z5 = true;
                                    } else {
                                        z5 = false;
                                    }
                                    GapComposer gapComposer5 = (GapComposer) composer5;
                                    if (gapComposer5.N(intValue5 & 1, z5)) {
                                        gapComposer5.W(2044089211);
                                        Collection values = authScope3.a.x.values();
                                        values.getClass();
                                        Iterator it = Device_DerivedKt.c(authScope3.a.m, CollectionsKt.R(CollectionsKt.R(values, ComparisonsKt.a(new a7(4), new a7(5))), new Object())).iterator();
                                        while (it.hasNext()) {
                                            Peer peer = (Peer) it.next();
                                            boolean h5 = gapComposer5.h(navHostController3) | gapComposer5.h(peer);
                                            Object K5 = gapComposer5.K();
                                            if (h5 || K5 == obj10) {
                                                K5 = new p0(28, navHostController3, peer);
                                                gapComposer5.g0(K5);
                                            }
                                            PeerListRowKt.a(null, peer, true, (Function0) K5, null, gapComposer5, 384, 17);
                                        }
                                        gapComposer5.p(false);
                                        SendToYourDevicesListRowKt.a(null, gapComposer5, 0);
                                    } else {
                                        gapComposer5.Q();
                                    }
                                    return unit2;
                            }
                        }
                    }, gapComposer3), gapComposer3, 432, 1);
                    SettingsComposablesKt.a(0, gapComposer3);
                    SettingsComposablesKt.d(null, null, ComposableLambdaKt.b(-1843427548, new u(context3, state2, function1, 14), gapComposer3), gapComposer3, 384, 3);
                    SettingsComposablesKt.a(0, gapComposer3);
                    SettingsComposablesKt.d(null, "Support", ComposableLambdaKt.b(-2080045373, new d(21, uriHandler), gapComposer3), gapComposer3, 432, 1);
                    SettingsComposablesKt.a(0, gapComposer3);
                    SettingsComposablesKt.d(null, null, ComposableLambdaKt.b(1978304098, new ea(function1, 2), gapComposer3), gapComposer3, 384, 3);
                    gapComposer3.p(true);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            default:
                String str2 = (String) obj7;
                KeyboardOptions keyboardOptions = (KeyboardOptions) obj6;
                MutableState mutableState3 = (MutableState) obj5;
                Function0 function0 = (Function0) obj4;
                Function1 function12 = (Function1) obj3;
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if ((intValue4 & 3) != 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(intValue4 & 1, z3)) {
                    Modifier a4 = ShadowKt.a(ClipKt.a(companion, RoundedCornerShapeKt.b(12.0f)), 16.0f, RoundedCornerShapeKt.b(12.0f), 0L, 28);
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidColorsKt.a;
                    Modifier g = PaddingKt.g(BackgroundKt.b(a4, ((AndroidColors) gapComposer4.j(dynamicProvidableCompositionLocal)).n, rectangleShapeKt$RectangleShape$1), 24.0f, 24.0f, 24.0f, 12.0f);
                    ColumnMeasurePolicy a5 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer4, 0);
                    int hashCode2 = Long.hashCode(gapComposer4.T);
                    PersistentCompositionLocalMap l2 = gapComposer4.l();
                    Modifier c2 = ComposedModifierKt.c(gapComposer4, g);
                    ComposeUiNode.b.getClass();
                    gapComposer4.Z();
                    if (gapComposer4.S) {
                        gapComposer4.k(x9Var);
                    } else {
                        gapComposer4.j0();
                    }
                    Updater.c(gapComposer4, a5, e6Var3);
                    Updater.c(gapComposer4, l2, e6Var2);
                    Updater.c(gapComposer4, Integer.valueOf(hashCode2), e6Var);
                    Updater.b(gapComposer4);
                    e6 e6Var4 = ComposeUiNode.Companion.b;
                    Updater.c(gapComposer4, c2, e6Var4);
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AndroidTextStylesKt.a;
                    PlatformTextKt.c(str2, null, TextStyle.a(((AndroidTextStyles) gapComposer4.j(dynamicProvidableCompositionLocal2)).a, 0L, TextUnitKt.d(18), null, 0L, 0L, null, 0, 16777213), 0, false, 0, 0, null, gapComposer4, 0, 506);
                    gapComposer4.W(-1843298304);
                    gapComposer4.p(false);
                    SpacerKt.a(gapComposer4, SizeKt.e(companion, 16.0f));
                    Modifier a6 = ClipKt.a(companion, RoundedCornerShapeKt.b(8.0f));
                    a6.getClass();
                    Modifier a7 = ComposedModifierKt.a(a6, new Function3() { // from class: net.blip.shared.d
                        @Override // kotlin.jvm.functions.Function3
                        public final Object f(Object obj8, Object obj9, Object obj10) {
                            Modifier modifier = (Modifier) obj8;
                            ((Integer) obj10).getClass();
                            modifier.getClass();
                            GapComposer gapComposer5 = (GapComposer) ((Composer) obj9);
                            gapComposer5.W(-139805877);
                            Object K4 = gapComposer5.K();
                            Composer$Companion$Empty$1 composer$Companion$Empty$12 = Composer.Companion.a;
                            if (K4 == composer$Companion$Empty$12) {
                                K4 = new FocusRequester();
                                gapComposer5.g0(K4);
                            }
                            FocusRequester focusRequester = (FocusRequester) K4;
                            Object K5 = gapComposer5.K();
                            if (K5 == composer$Companion$Empty$12) {
                                K5 = new Modifier_autoFocusKt$autoFocus$1$1$1(focusRequester, null);
                                gapComposer5.g0(K5);
                            }
                            EffectsKt.e(gapComposer5, unit, (Function2) K5);
                            Modifier a8 = FocusRequesterModifierKt.a(modifier, focusRequester);
                            gapComposer5.p(false);
                            return a8;
                        }
                    });
                    TextFieldValue textFieldValue = (TextFieldValue) mutableState3.getValue();
                    TextStyle a8 = TextStyle.a(((AndroidTextStyles) gapComposer4.j(dynamicProvidableCompositionLocal2)).b, 0L, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777213);
                    long j = ((AndroidColors) gapComposer4.j(dynamicProvidableCompositionLocal)).d;
                    long j2 = ((AndroidColors) gapComposer4.j(dynamicProvidableCompositionLocal)).b;
                    long j3 = ((AndroidColors) gapComposer4.j(dynamicProvidableCompositionLocal)).d;
                    long j4 = ((AndroidColors) gapComposer4.j(dynamicProvidableCompositionLocal)).j;
                    long j5 = ((AndroidColors) gapComposer4.j(dynamicProvidableCompositionLocal)).f;
                    long j6 = Color.g;
                    TextFieldColors d = TextFieldDefaults.d(j, j4, j2, j6, j6, j3, j5, gapComposer4, 1572242);
                    Object K4 = gapComposer4.K();
                    if (K4 == composer$Companion$Empty$1) {
                        mutableState = mutableState3;
                        K4 = new i2(mutableState, 16);
                        gapComposer4.g0(K4);
                    } else {
                        mutableState = mutableState3;
                    }
                    TextFieldKt.a(textFieldValue, (Function1) K4, a7, false, a8, null, keyboardOptions, null, true, 0, 0, null, d, gapComposer4, 48);
                    gapComposer4.W(-1841851627);
                    gapComposer4.p(false);
                    SpacerKt.a(gapComposer4, SizeKt.e(companion, 16.0f));
                    Modifier d2 = SizeKt.d(companion, 1.0f);
                    RowMeasurePolicy a9 = RowKt.a(new Arrangement.SpacedAligned(10.0f, true, new p(1, Alignment.Companion.o)), Alignment.Companion.j, gapComposer4, 6);
                    int hashCode3 = Long.hashCode(gapComposer4.T);
                    PersistentCompositionLocalMap l3 = gapComposer4.l();
                    Modifier c3 = ComposedModifierKt.c(gapComposer4, d2);
                    gapComposer4.Z();
                    if (gapComposer4.S) {
                        gapComposer4.k(x9Var);
                    } else {
                        gapComposer4.j0();
                    }
                    Updater.c(gapComposer4, a9, e6Var3);
                    Updater.c(gapComposer4, l3, e6Var2);
                    q.s(hashCode3, gapComposer4, e6Var, gapComposer4);
                    Updater.c(gapComposer4, c3, e6Var4);
                    boolean f = gapComposer4.f(function0);
                    Object K5 = gapComposer4.K();
                    if (f || K5 == composer$Companion$Empty$1) {
                        K5 = new s(6, function0);
                        gapComposer4.g0(K5);
                    }
                    ButtonKt.b((Function0) K5, false, null, ComposableSingletons$TextFieldDialogKt.a, gapComposer4, 510);
                    boolean f2 = gapComposer4.f(function1);
                    Object K6 = gapComposer4.K();
                    if (f2 || K6 == composer$Companion$Empty$1) {
                        K6 = new k9(14, mutableState, function1);
                        gapComposer4.g0(K6);
                    }
                    ButtonKt.b((Function0) K6, ((Boolean) function12.b(((TextFieldValue) mutableState.getValue()).a.k)).booleanValue(), null, ComposableSingletons$TextFieldDialogKt.b, gapComposer4, 506);
                    gapComposer4.p(true);
                    gapComposer4.p(true);
                    return unit;
                }
                gapComposer4.Q();
                return unit;
        }
    }

    public /* synthetic */ v8(String str, KeyboardOptions keyboardOptions, MutableState mutableState, Function0 function0, Function1 function1, Function1 function12) {
        this.m = str;
        this.n = keyboardOptions;
        this.o = mutableState;
        this.p = function0;
        this.l = function1;
        this.k = function12;
    }

    public /* synthetic */ v8(AuthScope authScope, NavHostController navHostController, Context context, net.blip.libblip.frontend.State state, Function1 function1, UriHandler uriHandler) {
        this.n = authScope;
        this.m = navHostController;
        this.k = context;
        this.o = state;
        this.l = function1;
        this.p = uriHandler;
    }

    public /* synthetic */ v8(Device device, Context context, AuthScope authScope, String str, Function1 function1, MutableState mutableState) {
        this.m = device;
        this.k = context;
        this.n = authScope;
        this.o = str;
        this.l = function1;
        this.p = mutableState;
    }
}
