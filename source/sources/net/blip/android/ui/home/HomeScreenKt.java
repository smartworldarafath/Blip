package net.blip.android.ui.home;

import android.content.Context;
import androidx.activity.compose.BackHandlerKt;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.UriHandler;
import androidx.navigation.NavController;
import defpackage.o1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReference;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.home.HomeTopBarKt;
import net.blip.android.ui.home.TransferGridKt;
import net.blip.android.ui.home.TransferRemovalDialogKt;
import net.blip.android.ui.peerpicker.AndroidPeerPickerListItemsKt;
import net.blip.android.ui.util.FadeOutNavigationBarKt;
import net.blip.android.ui.util.NuancedPermissionState;
import net.blip.android.ui.util.NuancedPermissionStateKt;
import net.blip.android.ui.util.SystemBarsMetricsKt;
import net.blip.android.ui.util.UmbrellaContentPickerKt;
import net.blip.libblip.Core;
import net.blip.libblip.Flavor;
import net.blip.libblip.PeerPickerContent;
import net.blip.libblip.PeerPickerViewModel;
import net.blip.libblip.Transfer_DerivedKt;
import net.blip.libblip.frontend.Search;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.ProvideSharedCompositionLocalsKt;
import net.blip.shared.RememberViewModelsKt;
import net.blip.shared.SelectableLazyListScope;
import net.blip.shared.SelectionListKt;
import net.blip.shared.Strings;
import net.blip.shared.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HomeScreenKt {
    /* JADX WARN: Type inference failed for: r2v11, types: [java.lang.Object, java.util.Comparator] */
    public static final void a(final NavController navController, Composer composer, int i) {
        int i2;
        boolean z;
        GapComposer gapComposer;
        NavController navController2;
        MutableState mutableState;
        navController.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-899403735);
        if (gapComposer2.h(navController)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i | i2;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer2.N(i3 & 1, z)) {
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ProvideSharedCompositionLocalsKt.d;
            final State b = ProvideSharedCompositionLocalsKt.b(dynamicProvidableCompositionLocal, gapComposer2);
            final defpackage.c cVar = ((Core) gapComposer2.j(dynamicProvidableCompositionLocal)).b;
            final Context context = (Context) gapComposer2.j(AndroidCompositionLocals_androidKt.b);
            final Flavor flavor = (Flavor) gapComposer2.j(ProvideSharedCompositionLocalsKt.a);
            final UriHandler uriHandler = (UriHandler) gapComposer2.j(CompositionLocalsKt.s);
            Object K = gapComposer2.K();
            Object obj = Composer.Companion.a;
            if (K == obj) {
                K = EffectsKt.h(gapComposer2);
                gapComposer2.g0(K);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) K;
            final NuancedPermissionState b2 = NuancedPermissionStateKt.b(gapComposer2);
            final NuancedPermissionState c = NuancedPermissionStateKt.c("android.permission.WRITE_EXTERNAL_STORAGE", gapComposer2);
            String str = Strings.a;
            final String a = StringsKt.a(gapComposer2);
            final boolean b3 = UmbrellaContentPickerKt.b(gapComposer2);
            final boolean c2 = UmbrellaContentPickerKt.c(gapComposer2);
            final PeerPickerViewModel a2 = RememberViewModelsKt.a(gapComposer2);
            final MutableState b4 = SnapshotStateKt.b(a2.c, gapComposer2);
            final MutableState b5 = SnapshotStateKt.b(a2.e, gapComposer2);
            Object K2 = gapComposer2.K();
            if (K2 == obj) {
                K2 = SnapshotStateKt.g(null);
                gapComposer2.g0(K2);
            }
            final MutableState mutableState2 = (MutableState) K2;
            TransferCancellationDialogKt.a(mutableState2, gapComposer2, 6);
            Object K3 = gapComposer2.K();
            if (K3 == obj) {
                K3 = SnapshotStateKt.g(null);
                gapComposer2.g0(K3);
            }
            final MutableState mutableState3 = (MutableState) K3;
            TransferRemovalDialogKt.b(mutableState3, gapComposer2, 6);
            Object K4 = gapComposer2.K();
            if (K4 == obj) {
                K4 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer2.g0(K4);
            }
            MutableState mutableState4 = (MutableState) K4;
            Object K5 = gapComposer2.K();
            if (K5 == obj) {
                K5 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer2.g0(K5);
            }
            final MutableState mutableState5 = (MutableState) K5;
            Boolean bool = (Boolean) mutableState5.getValue();
            bool.getClass();
            boolean h = gapComposer2.h(a2);
            Object K6 = gapComposer2.K();
            if (!h && K6 != obj) {
                mutableState = mutableState4;
            } else {
                mutableState = mutableState4;
                K6 = new HomeScreenKt$HomeScreen$1$1(a2, mutableState5, null);
                gapComposer2.g0(K6);
            }
            EffectsKt.e(gapComposer2, bool, (Function2) K6);
            boolean booleanValue = ((Boolean) mutableState5.getValue()).booleanValue();
            Object K7 = gapComposer2.K();
            if (K7 == obj) {
                K7 = new o1(mutableState5, 9);
                gapComposer2.g0(K7);
            }
            BackHandlerKt.a(booleanValue, (Function0) K7, gapComposer2, 48, 0);
            Collection values = b.B.values();
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : values) {
                GapComposer gapComposer3 = gapComposer2;
                if (((Transfer) obj2).v == Transfer.Direction.n) {
                    arrayList.add(obj2);
                }
                gapComposer2 = gapComposer3;
            }
            GapComposer gapComposer4 = gapComposer2;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (((Transfer) next).w != Transfer.Status.v) {
                    arrayList2.add(next);
                }
            }
            List N = CollectionsKt.N(CollectionsKt.R(arrayList2, new Object()));
            final ArrayList arrayList3 = new ArrayList();
            for (Object obj3 : N) {
                List list = N;
                if (((Transfer) obj3).w == Transfer.Status.u) {
                    arrayList3.add(obj3);
                }
                N = list;
            }
            final List list2 = N;
            final MutableState mutableState6 = mutableState;
            Function2 function2 = new Function2() { // from class: h9
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj4, Object obj5) {
                    boolean z2;
                    Composer composer2 = (Composer) obj4;
                    int intValue = ((Integer) obj5).intValue();
                    if ((intValue & 3) != 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    GapComposer gapComposer5 = (GapComposer) composer2;
                    if (gapComposer5.N(intValue & 1, z2)) {
                        Modifier b6 = BackgroundKt.b(Modifier.Companion.b, ((AndroidColors) gapComposer5.j(AndroidColorsKt.a)).j, RectangleShapeKt.a);
                        MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
                        int hashCode = Long.hashCode(gapComposer5.T);
                        PersistentCompositionLocalMap l = gapComposer5.l();
                        Modifier c3 = ComposedModifierKt.c(gapComposer5, b6);
                        ComposeUiNode.b.getClass();
                        gapComposer5.Z();
                        if (gapComposer5.S) {
                            gapComposer5.k(LayoutNode.b0);
                        } else {
                            gapComposer5.j0();
                        }
                        Updater.c(gapComposer5, d, ComposeUiNode.Companion.d);
                        Updater.c(gapComposer5, l, ComposeUiNode.Companion.c);
                        Updater.c(gapComposer5, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                        Updater.b(gapComposer5);
                        Updater.c(gapComposer5, c3, ComposeUiNode.Companion.b);
                        final PeerPickerViewModel peerPickerViewModel = PeerPickerViewModel.this;
                        final ArrayList arrayList4 = arrayList3;
                        final UriHandler uriHandler2 = uriHandler;
                        final String str2 = a;
                        final NavController navController3 = navController;
                        final MutableState mutableState7 = mutableState5;
                        final androidx.compose.runtime.State state = b5;
                        final androidx.compose.runtime.State state2 = b4;
                        final MutableState mutableState8 = mutableState6;
                        ComposableLambdaImpl b7 = ComposableLambdaKt.b(816277967, new Function2() { // from class: l9
                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj6, Object obj7) {
                                boolean z3;
                                boolean z4;
                                Composer composer3 = (Composer) obj6;
                                int intValue2 = ((Integer) obj7).intValue();
                                int i4 = 0;
                                if ((intValue2 & 3) != 2) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                GapComposer gapComposer6 = (GapComposer) composer3;
                                if (gapComposer6.N(intValue2 & 1, z3)) {
                                    Modifier c4 = SystemBarsMetricsKt.c(gapComposer6, BackgroundKt.b(Modifier.Companion.b, ((AndroidColors) gapComposer6.j(AndroidColorsKt.a)).j, RectangleShapeKt.a));
                                    MutableState mutableState9 = mutableState7;
                                    boolean booleanValue2 = ((Boolean) mutableState9.getValue()).booleanValue();
                                    Object K8 = gapComposer6.K();
                                    Object obj8 = Composer.Companion.a;
                                    if (K8 == obj8) {
                                        K8 = new o1(mutableState9, 10);
                                        gapComposer6.g0(K8);
                                    }
                                    Function0 function0 = (Function0) K8;
                                    Object K9 = gapComposer6.K();
                                    if (K9 == obj8) {
                                        K9 = new o1(mutableState9, 11);
                                        gapComposer6.g0(K9);
                                    }
                                    Function0 function02 = (Function0) K9;
                                    PeerPickerViewModel peerPickerViewModel2 = PeerPickerViewModel.this;
                                    boolean h2 = gapComposer6.h(peerPickerViewModel2);
                                    Object K10 = gapComposer6.K();
                                    if (h2 || K10 == obj8) {
                                        K10 = new e9(peerPickerViewModel2, i4);
                                        gapComposer6.g0(K10);
                                    }
                                    Function1 function1 = (Function1) K10;
                                    String str3 = (String) state.getValue();
                                    PeerPickerContent peerPickerContent = (PeerPickerContent) state2.getValue();
                                    if ((peerPickerContent instanceof PeerPickerContent.SearchResults) && ((PeerPickerContent.SearchResults) peerPickerContent).c == Search.Status.n) {
                                        z4 = true;
                                    } else {
                                        z4 = false;
                                    }
                                    boolean z5 = !arrayList4.isEmpty();
                                    Object K11 = gapComposer6.K();
                                    if (K11 == obj8) {
                                        K11 = new o1(mutableState8, 12);
                                        gapComposer6.g0(K11);
                                    }
                                    Function0 function03 = (Function0) K11;
                                    UriHandler uriHandler3 = uriHandler2;
                                    boolean h3 = gapComposer6.h(uriHandler3);
                                    String str4 = str2;
                                    boolean f = h3 | gapComposer6.f(str4);
                                    Object K12 = gapComposer6.K();
                                    if (f || K12 == obj8) {
                                        K12 = new f9(uriHandler3, str4, 0);
                                        gapComposer6.g0(K12);
                                    }
                                    Function0 function04 = (Function0) K12;
                                    NavController navController4 = navController3;
                                    boolean h4 = gapComposer6.h(navController4);
                                    Object K13 = gapComposer6.K();
                                    if (h4 || K13 == obj8) {
                                        K13 = new g9(navController4, 0);
                                        gapComposer6.g0(K13);
                                    }
                                    HomeTopBarKt.b(c4, booleanValue2, function0, function02, function1, str3, z4, z5, function03, function04, (Function0) K13, gapComposer6, 100666752);
                                } else {
                                    gapComposer6.Q();
                                }
                                return Unit.a;
                            }
                        }, gapComposer5);
                        ComposableLambdaImpl b8 = ComposableLambdaKt.b(2101340496, new d(11, b), gapComposer5);
                        final List list3 = list2;
                        final CoroutineScope coroutineScope2 = coroutineScope;
                        final Context context2 = context;
                        final Flavor flavor2 = flavor;
                        final Function1 function1 = cVar;
                        final boolean z3 = c2;
                        final NuancedPermissionState nuancedPermissionState = b2;
                        final NuancedPermissionState nuancedPermissionState2 = c;
                        final boolean z4 = b3;
                        final MutableState mutableState9 = mutableState2;
                        final MutableState mutableState10 = mutableState3;
                        ScaffoldKt.a(null, null, b7, b8, null, null, 0, false, null, 0.0f, 0L, 0L, 0L, 0L, 0L, ComposableLambdaKt.b(-1296826040, new Function3() { // from class: m9
                            @Override // kotlin.jvm.functions.Function3
                            public final Object f(Object obj6, Object obj7, Object obj8) {
                                boolean z5;
                                Object obj9;
                                final MutableState mutableState11;
                                Composer composer3 = (Composer) obj7;
                                int intValue2 = ((Integer) obj8).intValue();
                                ((PaddingValues) obj6).getClass();
                                if ((intValue2 & 17) != 16) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                GapComposer gapComposer6 = (GapComposer) composer3;
                                if (gapComposer6.N(intValue2 & 1, z5)) {
                                    ArrayList arrayList5 = arrayList4;
                                    ArrayList arrayList6 = new ArrayList(CollectionsKt.m(arrayList5, 10));
                                    Iterator it2 = arrayList5.iterator();
                                    while (it2.hasNext()) {
                                        arrayList6.add(((Transfer) it2.next()).m);
                                    }
                                    int i4 = 6;
                                    TransferRemovalDialogKt.a(MutableState.this, arrayList6, gapComposer6, 6);
                                    Modifier b9 = SizeKt.b(Modifier.Companion.b, 1.0f);
                                    MeasurePolicy d2 = BoxKt.d(Alignment.Companion.a, false);
                                    int hashCode2 = Long.hashCode(gapComposer6.T);
                                    PersistentCompositionLocalMap l2 = gapComposer6.l();
                                    Modifier c4 = ComposedModifierKt.c(gapComposer6, b9);
                                    ComposeUiNode.b.getClass();
                                    gapComposer6.Z();
                                    if (gapComposer6.S) {
                                        gapComposer6.k(LayoutNode.b0);
                                    } else {
                                        gapComposer6.j0();
                                    }
                                    Updater.c(gapComposer6, d2, ComposeUiNode.Companion.d);
                                    Updater.c(gapComposer6, l2, ComposeUiNode.Companion.c);
                                    Updater.c(gapComposer6, Integer.valueOf(hashCode2), ComposeUiNode.Companion.e);
                                    Updater.b(gapComposer6);
                                    Updater.c(gapComposer6, c4, ComposeUiNode.Companion.b);
                                    final PeerPickerViewModel peerPickerViewModel2 = peerPickerViewModel;
                                    final NavController navController4 = navController3;
                                    final CoroutineScope coroutineScope3 = coroutineScope2;
                                    Function1 function12 = function1;
                                    final Context context3 = context2;
                                    boolean z6 = z3;
                                    final MutableState mutableState12 = mutableState7;
                                    ComposableLambdaImpl b10 = ComposableLambdaKt.b(-569400339, new n9(peerPickerViewModel2, navController4, coroutineScope3, function12, context3, z6, mutableState12), gapComposer6);
                                    ComposableLambdaImpl b11 = ComposableLambdaKt.b(-893408722, new i9(nuancedPermissionState, nuancedPermissionState2, z6, z4, 1), gapComposer6);
                                    boolean h2 = gapComposer6.h(coroutineScope3) | gapComposer6.h(context3) | gapComposer6.h(navController4);
                                    final Flavor flavor3 = flavor2;
                                    boolean h3 = h2 | gapComposer6.h(flavor3);
                                    Object K8 = gapComposer6.K();
                                    MutableState mutableState13 = mutableState9;
                                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                    if (!h3 && K8 != composer$Companion$Empty$1) {
                                        obj9 = K8;
                                        mutableState11 = mutableState13;
                                    } else {
                                        mutableState11 = mutableState13;
                                        obj9 = new Function1() { // from class: net.blip.android.ui.home.e
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object b(Object obj10) {
                                                Transfer transfer = (Transfer) obj10;
                                                transfer.getClass();
                                                if (Transfer_DerivedKt.c(transfer)) {
                                                    MutableState.this.setValue(transfer.m);
                                                } else {
                                                    BuildersKt.c(coroutineScope3, null, null, new HomeScreenKt$HomeScreen$3$1$3$2$3$1$1(context3, navController4, transfer, flavor3, null), 3);
                                                }
                                                return Unit.a;
                                            }
                                        };
                                        gapComposer6.g0(obj9);
                                    }
                                    Function1 function13 = (Function1) obj9;
                                    Object K9 = gapComposer6.K();
                                    if (K9 == composer$Companion$Empty$1) {
                                        K9 = new i2(mutableState11, 7);
                                        gapComposer6.g0(K9);
                                    }
                                    Function1 function14 = (Function1) K9;
                                    boolean h4 = gapComposer6.h(coroutineScope3) | gapComposer6.h(context3) | gapComposer6.h(flavor3);
                                    Object K10 = gapComposer6.K();
                                    if (h4 || K10 == composer$Companion$Empty$1) {
                                        K10 = new Function1() { // from class: net.blip.android.ui.home.a
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object b(Object obj10) {
                                                Transfer transfer = (Transfer) obj10;
                                                transfer.getClass();
                                                BuildersKt.c(CoroutineScope.this, null, null, new HomeScreenKt$HomeScreen$3$1$3$2$5$1$1(context3, transfer, flavor3, null), 3);
                                                return Unit.a;
                                            }
                                        };
                                        gapComposer6.g0(K10);
                                    }
                                    Function1 function15 = (Function1) K10;
                                    Object K11 = gapComposer6.K();
                                    if (K11 == composer$Companion$Empty$1) {
                                        K11 = new i2(mutableState10, i4);
                                        gapComposer6.g0(K11);
                                    }
                                    TransferGridKt.a(null, b10, b11, list3, function13, function14, function15, (Function1) K11, gapComposer6, 12779952);
                                    boolean booleanValue2 = ((Boolean) mutableState12.getValue()).booleanValue();
                                    EnterTransition c5 = EnterExitTransitionKt.c(null, 3);
                                    ExitTransition d3 = EnterExitTransitionKt.d(null, 3);
                                    final androidx.compose.runtime.State state3 = state2;
                                    AnimatedVisibilityKt.b(booleanValue2, null, c5, d3, null, ComposableLambdaKt.b(-1109776858, new Function3() { // from class: net.blip.android.ui.home.b
                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object f(Object obj10, Object obj11, Object obj12) {
                                            boolean z7;
                                            Composer composer4 = (Composer) obj11;
                                            int intValue3 = ((Integer) obj12).intValue();
                                            ((AnimatedVisibilityScope) obj10).getClass();
                                            if ((intValue3 & 17) != 16) {
                                                z7 = true;
                                            } else {
                                                z7 = false;
                                            }
                                            GapComposer gapComposer7 = (GapComposer) composer4;
                                            boolean N2 = gapComposer7.N(intValue3 & 1, z7);
                                            Unit unit = Unit.a;
                                            if (N2) {
                                                long j = ((AndroidColors) gapComposer7.j(AndroidColorsKt.a)).i;
                                                RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.a;
                                                Modifier.Companion companion = Modifier.Companion.b;
                                                Modifier c6 = SizeKt.c(BackgroundKt.b(companion, j, rectangleShapeKt$RectangleShape$1), 1.0f);
                                                Object K12 = gapComposer7.K();
                                                Object obj13 = Composer.Companion.a;
                                                if (K12 == obj13) {
                                                    K12 = HomeScreenKt$HomeScreen$3$1$3$2$7$1$1.a;
                                                    gapComposer7.g0(K12);
                                                }
                                                Modifier a3 = SuspendingPointerInputFilterKt.a(c6, unit, (PointerInputEventHandler) K12);
                                                MeasurePolicy d4 = BoxKt.d(Alignment.Companion.a, false);
                                                int hashCode3 = Long.hashCode(gapComposer7.T);
                                                PersistentCompositionLocalMap l3 = gapComposer7.l();
                                                Modifier c7 = ComposedModifierKt.c(gapComposer7, a3);
                                                ComposeUiNode.b.getClass();
                                                gapComposer7.Z();
                                                if (gapComposer7.S) {
                                                    gapComposer7.k(LayoutNode.b0);
                                                } else {
                                                    gapComposer7.j0();
                                                }
                                                Updater.c(gapComposer7, d4, ComposeUiNode.Companion.d);
                                                Updater.c(gapComposer7, l3, ComposeUiNode.Companion.c);
                                                Updater.c(gapComposer7, Integer.valueOf(hashCode3), ComposeUiNode.Companion.e);
                                                Updater.b(gapComposer7);
                                                Updater.c(gapComposer7, c7, ComposeUiNode.Companion.b);
                                                Modifier a4 = WindowInsetsPadding_androidKt.a(companion);
                                                PaddingValuesImpl paddingValuesImpl = new PaddingValuesImpl(8.0f, 8.0f, 8.0f, 8.0f);
                                                final androidx.compose.runtime.State state4 = state3;
                                                boolean f = gapComposer7.f(state4);
                                                final PeerPickerViewModel peerPickerViewModel3 = peerPickerViewModel2;
                                                boolean h5 = f | gapComposer7.h(peerPickerViewModel3);
                                                final NavController navController5 = navController4;
                                                boolean h6 = h5 | gapComposer7.h(navController5);
                                                Object K13 = gapComposer7.K();
                                                if (h6 || K13 == obj13) {
                                                    final MutableState mutableState14 = mutableState12;
                                                    K13 = new Function1() { // from class: net.blip.android.ui.home.d
                                                        /* JADX WARN: Type inference failed for: r3v0, types: [kotlin.jvm.internal.FunctionReference, kotlin.jvm.functions.Function0] */
                                                        /* JADX WARN: Type inference failed for: r5v2, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.FunctionReference] */
                                                        /* JADX WARN: Type inference failed for: r6v2, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.FunctionReference] */
                                                        @Override // kotlin.jvm.functions.Function1
                                                        public final Object b(Object obj14) {
                                                            SelectableLazyListScope selectableLazyListScope = (SelectableLazyListScope) obj14;
                                                            selectableLazyListScope.getClass();
                                                            PeerPickerContent peerPickerContent = (PeerPickerContent) state4.getValue();
                                                            PeerPickerViewModel peerPickerViewModel4 = peerPickerViewModel3;
                                                            AndroidPeerPickerListItemsKt.b(selectableLazyListScope, peerPickerContent, false, new FunctionReference(0, peerPickerViewModel4, PeerPickerViewModel.class, "retrySearch", "retrySearch()V", 0), new defpackage.b(17, navController5, mutableState14), new FunctionReference(1, peerPickerViewModel4, PeerPickerViewModel.class, "removePeer", "removePeer(Lnet/blip/libblip/PeerId;)V", 0), new FunctionReference(1, peerPickerViewModel4, PeerPickerViewModel.class, "blockUser", "blockUser(Ljava/lang/String;)V", 0));
                                                            return Unit.a;
                                                        }
                                                    };
                                                    gapComposer7.g0(K13);
                                                }
                                                SelectionListKt.a(a4, null, paddingValuesImpl, null, null, null, false, null, (Function1) K13, gapComposer7, 384);
                                                gapComposer7.p(true);
                                                return unit;
                                            }
                                            gapComposer7.Q();
                                            return unit;
                                        }
                                    }, gapComposer6), gapComposer6, 200064);
                                    gapComposer6.p(true);
                                } else {
                                    gapComposer6.Q();
                                }
                                return Unit.a;
                            }
                        }, gapComposer5), gapComposer5, 3456);
                        gapComposer5.p(true);
                    } else {
                        gapComposer5.Q();
                    }
                    return Unit.a;
                }
            };
            navController2 = navController;
            gapComposer = gapComposer4;
            FadeOutNavigationBarKt.a(0L, ComposableLambdaKt.b(525208836, function2, gapComposer), gapComposer, 48, 1);
        } else {
            gapComposer = gapComposer2;
            navController2 = navController;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new defpackage.d(i, 10, navController2);
        }
    }

    public static final void b(MutableState mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }
}
