package defpackage;

import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.material.ButtonKt;
import androidx.compose.material.Colors;
import androidx.compose.material.MaterialThemeKt;
import androidx.compose.material.Shapes;
import androidx.compose.material.Typography;
import androidx.compose.material.icons.rounded.MoreVertKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.App;
import net.blip.android.MainActivity;
import net.blip.android.SystemPathsAndroid;
import net.blip.android.ui.components.TextFieldDialogKt;
import net.blip.android.ui.home.ComposableSingletons$TransferRemovalDialogKt;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.lockups.ButtonRowItem;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.onboarding.OnboardingProfileStep;
import net.blip.libblip.Device;
import net.blip.libblip.Device_DerivedKt;
import net.blip.libblip.Flavor;
import net.blip.libblip.HardwareInfo;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.User;
import net.blip.libblip.event.TransferRemoveRequested;
import net.blip.libblip.frontend.State;
import net.blip.shared.ProvideSharedCompositionLocalsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d4 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ d4(MutableState mutableState, Function1 function1, MutableState mutableState2, Context context) {
        this.j = 8;
        this.l = mutableState;
        this.k = function1;
        this.m = mutableState2;
        this.n = context;
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
        BiasAlignment biasAlignment = Alignment.Companion.a;
        e6 e6Var = ComposeUiNode.Companion.b;
        e6 e6Var2 = ComposeUiNode.Companion.e;
        e6 e6Var3 = ComposeUiNode.Companion.c;
        e6 e6Var4 = ComposeUiNode.Companion.d;
        x9 x9Var = LayoutNode.b0;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        Unit unit = Unit.a;
        Object obj3 = this.n;
        Object obj4 = this.m;
        Object obj5 = this.k;
        Object obj6 = this.l;
        switch (i) {
            case 0:
                Modifier modifier = (Modifier) obj5;
                MutableState mutableState = (MutableState) obj6;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                BasicTextContextMenuProvider basicTextContextMenuProvider = (BasicTextContextMenuProvider) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                int i2 = 1;
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    Object K = gapComposer.K();
                    if (K == composer$Companion$Empty$1) {
                        K = new i2(mutableState, i2);
                        gapComposer.g0(K);
                    }
                    Modifier a = OnGloballyPositionedModifierKt.a(modifier, (Function1) K);
                    MeasurePolicy d = BoxKt.d(biasAlignment, true);
                    int hashCode = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap l = gapComposer.l();
                    Modifier c = ComposedModifierKt.c(gapComposer, a);
                    ComposeUiNode.b.getClass();
                    gapComposer.Z();
                    if (gapComposer.S) {
                        gapComposer.k(x9Var);
                    } else {
                        gapComposer.j0();
                    }
                    Updater.c(gapComposer, d, e6Var4);
                    Updater.c(gapComposer, l, e6Var3);
                    Updater.c(gapComposer, Integer.valueOf(hashCode), e6Var2);
                    Updater.b(gapComposer);
                    Updater.c(gapComposer, c, e6Var);
                    composableLambdaImpl.n(gapComposer, 0);
                    Object K2 = gapComposer.K();
                    if (K2 == composer$Companion$Empty$1) {
                        K2 = new o1(mutableState, 4);
                        gapComposer.g0(K2);
                    }
                    basicTextContextMenuProvider.b((Function0) K2, gapComposer, 6);
                    gapComposer.p(true);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                Context context = (Context) obj5;
                List list = (List) obj6;
                PagerState pagerState = (PagerState) obj4;
                Function1 function1 = (Function1) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    ScreenLockupKt.a(null, 0L, CollectionsKt.B(new ButtonRowItem.IconMenu(VectorPainterKt.b(MoreVertKt.a(), gapComposer2), ComposableLambdaKt.b(1053074352, new m1(context, list, pagerState, function1, 1), gapComposer2))), gapComposer2, 512, 3);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Integer) obj2).getClass();
                LazyLayoutKt.a((Function0) obj6, (Modifier) obj5, (LazyLayoutPrefetchState) obj4, (LazyLayoutMeasurePolicy) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                App app = (App) obj5;
                MainActivity mainActivity = (MainActivity) obj6;
                Intent intent = (Intent) obj4;
                MainActivity mainActivity2 = (MainActivity) obj3;
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                String str = MainActivity.G;
                if ((intValue3 & 3) != 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z3)) {
                    Flavor a2 = app.a();
                    SystemPathsAndroid systemPathsAndroid = app.l;
                    HardwareInfo hardwareInfo = (HardwareInfo) app.k.getValue();
                    Context context2 = App.m;
                    ProvideSharedCompositionLocalsKt.a(a2, systemPathsAndroid, hardwareInfo, App.Companion.b(), ComposableLambdaKt.b(1175001594, new wa(mainActivity, intent, mainActivity2, 0), gapComposer3), gapComposer3, 24576);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ((Integer) obj2).getClass();
                MaterialThemeKt.a((Colors) obj5, (Typography) obj6, (Shapes) obj3, (ComposableLambdaImpl) obj4, (Composer) obj, RecomposeScopeImplKt.a(3073));
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((Integer) obj2).getClass();
                ((OnboardingProfileStep) obj5).a((User) obj6, (Function1) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Device device = (Device) obj5;
                Function1 function12 = (Function1) obj4;
                String str2 = (String) obj3;
                MutableState mutableState2 = (MutableState) obj6;
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if ((intValue4 & 3) != 2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(intValue4 & 1, z4)) {
                    ListRowKt.c(null, "Name", device.o, 0L, gapComposer4, 48, 9);
                    if (((Boolean) mutableState2.getValue()).booleanValue()) {
                        gapComposer4.W(-918225750);
                        String concat = "Rename your ".concat(Device_DerivedKt.b(device.n));
                        String str3 = device.o;
                        Object K3 = gapComposer4.K();
                        if (K3 == composer$Companion$Empty$1) {
                            K3 = new le(19);
                            gapComposer4.g0(K3);
                        }
                        Function1 function13 = (Function1) K3;
                        boolean f = gapComposer4.f(function12) | gapComposer4.f(str2);
                        Object K4 = gapComposer4.K();
                        if (f || K4 == composer$Companion$Empty$1) {
                            K4 = new p2(function12, str2, mutableState2, 15);
                            gapComposer4.g0(K4);
                        }
                        Function1 function14 = (Function1) K4;
                        Object K5 = gapComposer4.K();
                        if (K5 == composer$Companion$Empty$1) {
                            K5 = new cd(mutableState2, 12);
                            gapComposer4.g0(K5);
                        }
                        TextFieldDialogKt.a(concat, str3, function13, function14, (Function0) K5, new KeyboardOptions(2, Boolean.TRUE, 0, 0, 124), false, null, gapComposer4, 14180352);
                        gapComposer4.p(false);
                    } else {
                        gapComposer4.W(-917424276);
                        gapComposer4.p(false);
                    }
                } else {
                    gapComposer4.Q();
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Map map = (Map) obj5;
                State state = (State) obj4;
                MutableState mutableState3 = (MutableState) obj6;
                Function1 function15 = (Function1) obj3;
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if ((intValue5 & 3) != 2) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.N(intValue5 & 1, z5)) {
                    MeasurePolicy d2 = BoxKt.d(biasAlignment, false);
                    int hashCode2 = Long.hashCode(gapComposer5.T);
                    PersistentCompositionLocalMap l2 = gapComposer5.l();
                    Modifier c2 = ComposedModifierKt.c(gapComposer5, Modifier.Companion.b);
                    ComposeUiNode.b.getClass();
                    gapComposer5.Z();
                    if (gapComposer5.S) {
                        gapComposer5.k(x9Var);
                    } else {
                        gapComposer5.j0();
                    }
                    Updater.c(gapComposer5, d2, e6Var4);
                    Updater.c(gapComposer5, l2, e6Var3);
                    Updater.c(gapComposer5, Integer.valueOf(hashCode2), e6Var2);
                    Updater.b(gapComposer5);
                    Updater.c(gapComposer5, c2, e6Var);
                    ListRowKt.c(null, "Auto-accept", (String) map.get(Boolean.valueOf(!State_DerivedKt.a(state).m)), 0L, gapComposer5, 48, 9);
                    boolean booleanValue = ((Boolean) mutableState3.getValue()).booleanValue();
                    Object K6 = gapComposer5.K();
                    if (K6 == composer$Companion$Empty$1) {
                        K6 = new cd(mutableState3, 22);
                        gapComposer5.g0(K6);
                    }
                    AndroidMenu_androidKt.a(booleanValue, (Function0) K6, null, 0L, null, null, ComposableLambdaKt.b(945171245, new w3(map, function15, mutableState3), gapComposer5), gapComposer5, 1572912, 60);
                    gapComposer5.p(true);
                } else {
                    gapComposer5.Q();
                }
                return unit;
            default:
                final MutableState mutableState4 = (MutableState) obj6;
                final Function1 function16 = (Function1) obj5;
                final MutableState mutableState5 = (MutableState) obj4;
                final Context context3 = (Context) obj3;
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if ((intValue6 & 3) != 2) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.N(intValue6 & 1, z6)) {
                    Modifier d3 = SizeKt.d(PaddingKt.h(Modifier.Companion.b, 0.0f, 0.0f, 16.0f, 8.0f, 3), 1.0f);
                    ColumnMeasurePolicy a3 = ColumnKt.a(Arrangement.b, Alignment.Companion.o, gapComposer6, 48);
                    int hashCode3 = Long.hashCode(gapComposer6.T);
                    PersistentCompositionLocalMap l3 = gapComposer6.l();
                    Modifier c3 = ComposedModifierKt.c(gapComposer6, d3);
                    ComposeUiNode.b.getClass();
                    gapComposer6.Z();
                    if (gapComposer6.S) {
                        gapComposer6.k(x9Var);
                    } else {
                        gapComposer6.j0();
                    }
                    Updater.c(gapComposer6, a3, e6Var4);
                    Updater.c(gapComposer6, l3, e6Var3);
                    Updater.c(gapComposer6, Integer.valueOf(hashCode3), e6Var2);
                    Updater.b(gapComposer6);
                    Updater.c(gapComposer6, c3, e6Var);
                    boolean f2 = gapComposer6.f(mutableState4) | gapComposer6.f(function16) | gapComposer6.f(mutableState5) | gapComposer6.h(context3);
                    Object K7 = gapComposer6.K();
                    if (f2 || K7 == composer$Companion$Empty$1) {
                        final int i3 = 0;
                        K7 = new Function0() { // from class: th
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                int i4 = i3;
                                Unit unit2 = Unit.a;
                                Function1 function17 = function16;
                                MutableState mutableState6 = mutableState4;
                                Context context4 = context3;
                                MutableState mutableState7 = mutableState5;
                                switch (i4) {
                                    case 0:
                                        Iterator it = ((List) mutableState6.getValue()).iterator();
                                        while (it.hasNext()) {
                                            function17.b(new TransferRemoveRequested(4, (String) it.next(), false));
                                        }
                                        mutableState7.setValue(Boolean.FALSE);
                                        Toast.makeText(context4, "Transfers deleted", 0).show();
                                        return unit2;
                                    default:
                                        Iterator it2 = ((List) mutableState6.getValue()).iterator();
                                        while (it2.hasNext()) {
                                            function17.b(new TransferRemoveRequested(4, (String) it2.next(), true));
                                        }
                                        mutableState7.setValue(Boolean.FALSE);
                                        Toast.makeText(context4, "Transfers deleted", 0).show();
                                        return unit2;
                                }
                            }
                        };
                        gapComposer6.g0(K7);
                    }
                    ButtonKt.b((Function0) K7, false, null, ComposableSingletons$TransferRemovalDialogKt.e, gapComposer6, 510);
                    boolean f3 = gapComposer6.f(mutableState4) | gapComposer6.f(function16) | gapComposer6.f(mutableState5) | gapComposer6.h(context3);
                    Object K8 = gapComposer6.K();
                    if (f3 || K8 == composer$Companion$Empty$1) {
                        final int i4 = 1;
                        K8 = new Function0() { // from class: th
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                int i42 = i4;
                                Unit unit2 = Unit.a;
                                Function1 function17 = function16;
                                MutableState mutableState6 = mutableState4;
                                Context context4 = context3;
                                MutableState mutableState7 = mutableState5;
                                switch (i42) {
                                    case 0:
                                        Iterator it = ((List) mutableState6.getValue()).iterator();
                                        while (it.hasNext()) {
                                            function17.b(new TransferRemoveRequested(4, (String) it.next(), false));
                                        }
                                        mutableState7.setValue(Boolean.FALSE);
                                        Toast.makeText(context4, "Transfers deleted", 0).show();
                                        return unit2;
                                    default:
                                        Iterator it2 = ((List) mutableState6.getValue()).iterator();
                                        while (it2.hasNext()) {
                                            function17.b(new TransferRemoveRequested(4, (String) it2.next(), true));
                                        }
                                        mutableState7.setValue(Boolean.FALSE);
                                        Toast.makeText(context4, "Transfers deleted", 0).show();
                                        return unit2;
                                }
                            }
                        };
                        gapComposer6.g0(K8);
                    }
                    ButtonKt.b((Function0) K8, false, null, ComposableSingletons$TransferRemovalDialogKt.f, gapComposer6, 510);
                    boolean f4 = gapComposer6.f(mutableState5);
                    Object K9 = gapComposer6.K();
                    if (f4 || K9 == composer$Companion$Empty$1) {
                        K9 = new cd(mutableState5, 28);
                        gapComposer6.g0(K9);
                    }
                    ButtonKt.b((Function0) K9, false, null, ComposableSingletons$TransferRemovalDialogKt.g, gapComposer6, 510);
                    gapComposer6.p(true);
                    return unit;
                }
                gapComposer6.Q();
                return unit;
        }
    }

    public /* synthetic */ d4(Colors colors, Typography typography, Shapes shapes, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.j = 4;
        this.k = colors;
        this.l = typography;
        this.n = shapes;
        this.m = composableLambdaImpl;
    }

    public /* synthetic */ d4(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
        this.n = obj4;
    }

    public /* synthetic */ d4(Map map, State state, MutableState mutableState, Function1 function1) {
        this.j = 7;
        this.k = map;
        this.m = state;
        this.l = mutableState;
        this.n = function1;
    }

    public /* synthetic */ d4(Function0 function0, Modifier modifier, LazyLayoutPrefetchState lazyLayoutPrefetchState, LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy, int i) {
        this.j = 2;
        this.l = function0;
        this.k = modifier;
        this.m = lazyLayoutPrefetchState;
        this.n = lazyLayoutMeasurePolicy;
    }

    public /* synthetic */ d4(OnboardingProfileStep onboardingProfileStep, User user, Function1 function1, Function1 function12, int i) {
        this.j = 5;
        this.k = onboardingProfileStep;
        this.l = user;
        this.m = function1;
        this.n = function12;
    }

    public /* synthetic */ d4(Device device, Function1 function1, String str, MutableState mutableState) {
        this.j = 6;
        this.k = device;
        this.m = function1;
        this.n = str;
        this.l = mutableState;
    }
}
