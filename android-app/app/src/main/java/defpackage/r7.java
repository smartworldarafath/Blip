package defpackage;

import android.content.Context;
import android.net.Uri;
import android.widget.Toast;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.material.ButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.DialogNavigator;
import androidx.navigation.compose.NavBackStackEntryProviderKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.components.InlineTextButtonKt;
import net.blip.android.ui.home.ComposableSingletons$TransferCancellationDialogKt;
import net.blip.android.ui.home.ComposableSingletons$TransferRemovalDialogKt;
import net.blip.android.ui.home.PeerTrayCellsKt;
import net.blip.android.ui.util.SystemBarsMetricsKt;
import net.blip.libblip.Core;
import net.blip.libblip.Flavor;
import net.blip.libblip.HardwareInfo;
import net.blip.libblip.SystemPaths;
import net.blip.libblip.event.TransferRemoveRequested;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.Paintable;
import net.blip.shared.ProvideSharedCompositionLocalsKt;
import net.blip.shared.SimpleLinkTextButton;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class r7 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ r7(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
        this.n = obj4;
        this.o = obj5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        boolean z3;
        String str;
        Function1 function1;
        MutableState mutableState;
        boolean z4;
        int i = this.j;
        BiasAlignment biasAlignment = Alignment.Companion.a;
        Arrangement$Top$1 arrangement$Top$1 = Arrangement.b;
        BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
        e6 e6Var = ComposeUiNode.Companion.b;
        e6 e6Var2 = ComposeUiNode.Companion.e;
        e6 e6Var3 = ComposeUiNode.Companion.c;
        e6 e6Var4 = ComposeUiNode.Companion.d;
        x9 x9Var = LayoutNode.b0;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        Unit unit = Unit.a;
        Object obj3 = this.o;
        Object obj4 = this.n;
        Object obj5 = this.m;
        Object obj6 = this.l;
        Object obj7 = this.k;
        switch (i) {
            case 0:
                boolean z5 = false;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj7;
                DialogNavigator dialogNavigator = (DialogNavigator) obj6;
                SaveableStateHolder saveableStateHolder = (SaveableStateHolder) obj5;
                SnapshotStateList snapshotStateList = (SnapshotStateList) obj4;
                DialogNavigator.Destination destination = (DialogNavigator.Destination) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z5 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z5)) {
                    boolean h = gapComposer.h(navBackStackEntry) | gapComposer.h(dialogNavigator);
                    Object K = gapComposer.K();
                    if (h || K == composer$Companion$Empty$1) {
                        K = new p2(snapshotStateList, navBackStackEntry, dialogNavigator, 6);
                        gapComposer.g0(K);
                    }
                    EffectsKt.c(navBackStackEntry, (Function1) K, gapComposer);
                    NavBackStackEntryProviderKt.a(navBackStackEntry, saveableStateHolder, ComposableLambdaKt.b(-497631156, new a0(10, destination, navBackStackEntry), gapComposer), gapComposer, 384);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                List list = (List) obj7;
                PagerState pagerState = (PagerState) obj6;
                State state = (State) obj5;
                Context context = (Context) obj4;
                MutableState mutableState2 = (MutableState) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z)) {
                    Modifier.Companion companion = Modifier.Companion.b;
                    Modifier c = SizeKt.c(companion, 1.0f);
                    MeasurePolicy d = BoxKt.d(biasAlignment, false);
                    int hashCode = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l = gapComposer2.l();
                    Modifier c2 = ComposedModifierKt.c(gapComposer2, c);
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
                    Updater.c(gapComposer2, c2, e6Var);
                    CrossfadeKt.b((Uri) list.get(pagerState.d.a()), ZIndexModifierKt.a(SizeKt.e(SizeKt.d(SystemBarsMetricsKt.b(gapComposer2, BoxScopeInstance.a.d(companion, Alignment.Companion.h)), 1.0f), 56.0f), 1.0f), null, "", ComposableLambdaKt.b(-241885577, new b0(5, state), gapComposer2), gapComposer2, 27648, 4);
                    PagerKt.a(pagerState, SizeKt.c(companion, 1.0f), null, null, 20.0f, null, null, false, null, null, null, ComposableLambdaKt.b(748544629, new m1(list, pagerState, context, mutableState2), gapComposer2), gapComposer2, 196656);
                    gapComposer2.p(true);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Integer) obj2).getClass();
                InlineTextButtonKt.a((Modifier) obj7, (TextStyle) obj6, (PaddingValuesImpl) obj5, (Color) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(3121));
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ((Integer) obj2).getClass();
                PeerTrayCellsKt.c((Modifier) obj7, (Paintable) obj6, (ImageVector) obj5, (String) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(3073));
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Modifier modifier = (Modifier) obj7;
                MutableState mutableState3 = (MutableState) obj6;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj5;
                BasicTextContextMenuProvider basicTextContextMenuProvider = (BasicTextContextMenuProvider) obj4;
                Function0 function0 = (Function0) obj3;
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z2)) {
                    Object K2 = gapComposer3.K();
                    if (K2 == composer$Companion$Empty$1) {
                        K2 = new i2(mutableState3, 13);
                        gapComposer3.g0(K2);
                    }
                    Modifier a = OnGloballyPositionedModifierKt.a(modifier, (Function1) K2);
                    MeasurePolicy d2 = BoxKt.d(biasAlignment, true);
                    int hashCode2 = Long.hashCode(gapComposer3.T);
                    PersistentCompositionLocalMap l2 = gapComposer3.l();
                    Modifier c3 = ComposedModifierKt.c(gapComposer3, a);
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
                    Updater.c(gapComposer3, c3, e6Var);
                    composableLambdaImpl.n(gapComposer3, 0);
                    basicTextContextMenuProvider.b(function0, gapComposer3, 6);
                    gapComposer3.p(true);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((Integer) obj2).getClass();
                ProvideSharedCompositionLocalsKt.a((Flavor) obj7, (SystemPaths) obj6, (HardwareInfo) obj5, (Core) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(24577));
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ((Integer) obj2).getClass();
                ((SimpleLinkTextButton) obj7).a((Modifier) obj6, (String) obj5, (String) obj4, (TextStyle) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Transfer transfer = (Transfer) obj7;
                Function1 function12 = (Function1) obj6;
                String str2 = (String) obj5;
                MutableState mutableState4 = (MutableState) obj4;
                Context context2 = (Context) obj3;
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if ((intValue4 & 3) != 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(intValue4 & 1, z3)) {
                    Modifier d3 = SizeKt.d(PaddingKt.h(Modifier.Companion.b, 0.0f, 0.0f, 16.0f, 8.0f, 3), 1.0f);
                    ColumnMeasurePolicy a2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer4, 48);
                    int hashCode3 = Long.hashCode(gapComposer4.T);
                    PersistentCompositionLocalMap l3 = gapComposer4.l();
                    Modifier c4 = ComposedModifierKt.c(gapComposer4, d3);
                    ComposeUiNode.b.getClass();
                    gapComposer4.Z();
                    if (gapComposer4.S) {
                        gapComposer4.k(x9Var);
                    } else {
                        gapComposer4.j0();
                    }
                    Updater.c(gapComposer4, a2, e6Var4);
                    Updater.c(gapComposer4, l3, e6Var3);
                    Updater.c(gapComposer4, Integer.valueOf(hashCode3), e6Var2);
                    Updater.b(gapComposer4);
                    Updater.c(gapComposer4, c4, e6Var);
                    boolean h2 = gapComposer4.h(transfer) | gapComposer4.f(function12) | gapComposer4.f(str2) | gapComposer4.f(mutableState4) | gapComposer4.h(context2);
                    Object K3 = gapComposer4.K();
                    if (h2 || K3 == composer$Companion$Empty$1) {
                        str = str2;
                        function1 = function12;
                        mutableState = mutableState4;
                        q1 q1Var = new q1(transfer, function1, str, mutableState, context2);
                        gapComposer4.g0(q1Var);
                        K3 = q1Var;
                    } else {
                        str = str2;
                        function1 = function12;
                        mutableState = mutableState4;
                    }
                    ButtonKt.b((Function0) K3, false, null, ComposableSingletons$TransferCancellationDialogKt.a, gapComposer4, 510);
                    boolean f = gapComposer4.f(mutableState);
                    Object K4 = gapComposer4.K();
                    if (f || K4 == composer$Companion$Empty$1) {
                        K4 = new cd(mutableState, 26);
                        gapComposer4.g0(K4);
                    }
                    ButtonKt.b((Function0) K4, false, null, ComposableSingletons$TransferCancellationDialogKt.b, gapComposer4, 510);
                    boolean f2 = gapComposer4.f(function1) | gapComposer4.f(str);
                    Object K5 = gapComposer4.K();
                    if (f2 || K5 == composer$Companion$Empty$1) {
                        K5 = new tg(3, function1, str);
                        gapComposer4.g0(K5);
                    }
                    ButtonKt.b((Function0) K5, false, null, ComposableSingletons$TransferCancellationDialogKt.c, gapComposer4, 510);
                    gapComposer4.p(true);
                } else {
                    gapComposer4.Q();
                }
                return unit;
            default:
                final Function1 function13 = (Function1) obj7;
                final String str3 = (String) obj6;
                final MutableState mutableState5 = (MutableState) obj5;
                final Context context3 = (Context) obj4;
                final String str4 = (String) obj3;
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if ((intValue5 & 3) != 2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.N(intValue5 & 1, z4)) {
                    Modifier d4 = SizeKt.d(PaddingKt.h(Modifier.Companion.b, 0.0f, 0.0f, 16.0f, 8.0f, 3), 1.0f);
                    ColumnMeasurePolicy a3 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer5, 48);
                    int hashCode4 = Long.hashCode(gapComposer5.T);
                    PersistentCompositionLocalMap l4 = gapComposer5.l();
                    Modifier c5 = ComposedModifierKt.c(gapComposer5, d4);
                    ComposeUiNode.b.getClass();
                    gapComposer5.Z();
                    if (gapComposer5.S) {
                        gapComposer5.k(x9Var);
                    } else {
                        gapComposer5.j0();
                    }
                    Updater.c(gapComposer5, a3, e6Var4);
                    Updater.c(gapComposer5, l4, e6Var3);
                    Updater.c(gapComposer5, Integer.valueOf(hashCode4), e6Var2);
                    Updater.b(gapComposer5);
                    Updater.c(gapComposer5, c5, e6Var);
                    boolean f3 = gapComposer5.f(function13) | gapComposer5.f(str3) | gapComposer5.f(mutableState5) | gapComposer5.h(context3) | gapComposer5.f(str4);
                    Object K6 = gapComposer5.K();
                    if (f3 || K6 == composer$Companion$Empty$1) {
                        final int i2 = 0;
                        K6 = new Function0() { // from class: uh
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                int i3 = i2;
                                Unit unit2 = Unit.a;
                                String str5 = str4;
                                Context context4 = context3;
                                MutableState mutableState6 = mutableState5;
                                String str6 = str3;
                                Function1 function14 = function13;
                                switch (i3) {
                                    case 0:
                                        function14.b(new TransferRemoveRequested(4, str6, false));
                                        mutableState6.setValue(null);
                                        Toast.makeText(context4, str5.concat(" deleted"), 0).show();
                                        return unit2;
                                    default:
                                        function14.b(new TransferRemoveRequested(4, str6, true));
                                        mutableState6.setValue(null);
                                        Toast.makeText(context4, str5.concat(" deleted"), 0).show();
                                        return unit2;
                                }
                            }
                        };
                        gapComposer5.g0(K6);
                    }
                    ButtonKt.b((Function0) K6, false, null, ComposableSingletons$TransferRemovalDialogKt.a, gapComposer5, 510);
                    boolean f4 = gapComposer5.f(function13) | gapComposer5.f(str3) | gapComposer5.f(mutableState5) | gapComposer5.h(context3) | gapComposer5.f(str4);
                    Object K7 = gapComposer5.K();
                    if (f4 || K7 == composer$Companion$Empty$1) {
                        final int i3 = 1;
                        K7 = new Function0() { // from class: uh
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                int i32 = i3;
                                Unit unit2 = Unit.a;
                                String str5 = str4;
                                Context context4 = context3;
                                MutableState mutableState6 = mutableState5;
                                String str6 = str3;
                                Function1 function14 = function13;
                                switch (i32) {
                                    case 0:
                                        function14.b(new TransferRemoveRequested(4, str6, false));
                                        mutableState6.setValue(null);
                                        Toast.makeText(context4, str5.concat(" deleted"), 0).show();
                                        return unit2;
                                    default:
                                        function14.b(new TransferRemoveRequested(4, str6, true));
                                        mutableState6.setValue(null);
                                        Toast.makeText(context4, str5.concat(" deleted"), 0).show();
                                        return unit2;
                                }
                            }
                        };
                        gapComposer5.g0(K7);
                    }
                    ButtonKt.b((Function0) K7, false, null, ComposableSingletons$TransferRemovalDialogKt.b, gapComposer5, 510);
                    boolean f5 = gapComposer5.f(mutableState5);
                    Object K8 = gapComposer5.K();
                    if (f5 || K8 == composer$Companion$Empty$1) {
                        K8 = new vh(mutableState5, 0);
                        gapComposer5.g0(K8);
                    }
                    ButtonKt.b((Function0) K8, false, null, ComposableSingletons$TransferRemovalDialogKt.c, gapComposer5, 510);
                    gapComposer5.p(true);
                } else {
                    gapComposer5.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ r7(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i, int i2) {
        this.j = i2;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
        this.n = obj4;
        this.o = obj5;
    }
}
