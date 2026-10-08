package defpackage;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.navigation.NavController;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.components.SubheadingKt;
import net.blip.android.ui.home.PeerTrayKt;
import net.blip.android.ui.util.UmbrellaContentPickerKt;
import net.blip.android.ui.util.UmbrellaContentPickerType;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.PeerPickerViewModel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class n9 implements Function2 {
    public final /* synthetic */ int j = 2;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Function1 l;
    public final /* synthetic */ boolean m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ n9(Modifier modifier, Peer peer, Function0 function0, Function1 function1, boolean z, Function0 function02, Function0 function03, int i) {
        this.k = modifier;
        this.n = peer;
        this.o = function0;
        this.l = function1;
        this.m = z;
        this.p = function02;
        this.q = function03;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        Object obj3 = this.q;
        Object obj4 = this.p;
        Object obj5 = this.o;
        Object obj6 = this.n;
        Object obj7 = this.k;
        switch (i) {
            case 0:
                PeerPickerViewModel peerPickerViewModel = (PeerPickerViewModel) obj7;
                NavController navController = (NavController) obj6;
                final CoroutineScope coroutineScope = (CoroutineScope) obj5;
                final Context context = (Context) obj4;
                MutableState mutableState = (MutableState) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    CompositionLocal compositionLocal = AndroidColorsKt.a;
                    long j = ((AndroidColors) gapComposer.j(compositionLocal)).j;
                    RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.a;
                    Modifier.Companion companion = Modifier.Companion.b;
                    Modifier b = BackgroundKt.b(companion, j, rectangleShapeKt$RectangleShape$1);
                    long b2 = Color.b(Color.b, 0.015f);
                    b.getClass();
                    Modifier g = PaddingKt.g(ComposedModifierKt.a(b, new q4(b2)), 16.0f, 10.0f, 16.0f, 16.0f);
                    ColumnMeasurePolicy a = ColumnKt.a(Arrangement.b, Alignment.Companion.m, gapComposer, 0);
                    int hashCode = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap l = gapComposer.l();
                    Modifier c = ComposedModifierKt.c(gapComposer, g);
                    ComposeUiNode.b.getClass();
                    gapComposer.Z();
                    if (gapComposer.S) {
                        gapComposer.k(LayoutNode.b0);
                    } else {
                        gapComposer.j0();
                    }
                    Updater.c(gapComposer, a, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
                    Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                    Updater.b(gapComposer);
                    Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
                    SubheadingKt.a(PaddingKt.d(companion, 8.0f), "Send directly", ((AndroidColors) gapComposer.j(compositionLocal)).c, gapComposer, 54, 0);
                    SpacerKt.a(gapComposer, SizeKt.e(companion, 4.0f));
                    final Function2 e = UmbrellaContentPickerKt.e(gapComposer);
                    boolean h = gapComposer.h(navController);
                    Object K = gapComposer.K();
                    Object obj8 = Composer.Companion.a;
                    if (h || K == obj8) {
                        K = new c(25, navController);
                        gapComposer.g0(K);
                    }
                    Function1 function1 = (Function1) K;
                    boolean h2 = gapComposer.h(coroutineScope) | gapComposer.h(e);
                    final Function1 function12 = this.l;
                    boolean f = h2 | gapComposer.f(function12) | gapComposer.h(context);
                    Object K2 = gapComposer.K();
                    if (f || K2 == obj8) {
                        K2 = new Function2() { // from class: net.blip.android.ui.home.c
                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj9, Object obj10) {
                                PeerId peerId = (PeerId) obj9;
                                UmbrellaContentPickerType umbrellaContentPickerType = (UmbrellaContentPickerType) obj10;
                                peerId.getClass();
                                umbrellaContentPickerType.getClass();
                                BuildersKt.c(CoroutineScope.this, null, null, new HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1(e, umbrellaContentPickerType, function12, peerId, context, null), 3);
                                return Unit.a;
                            }
                        };
                        gapComposer.g0(K2);
                    }
                    Function2 function2 = (Function2) K2;
                    boolean h3 = gapComposer.h(navController);
                    Object K3 = gapComposer.K();
                    if (h3 || K3 == obj8) {
                        K3 = new g9(navController, 1);
                        gapComposer.g0(K3);
                    }
                    Function0 function0 = (Function0) K3;
                    Object K4 = gapComposer.K();
                    if (K4 == obj8) {
                        K4 = new o1(mutableState, 13);
                        gapComposer.g0(K4);
                    }
                    PeerTrayKt.b(null, peerPickerViewModel, function1, function2, this.m, function0, (Function0) K4, gapComposer, 1572864);
                    gapComposer.p(true);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                PeerTrayKt.b((Modifier) obj6, (PeerPickerViewModel) obj7, this.l, (Function2) obj5, this.m, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1572865));
                return unit;
            default:
                ((Integer) obj2).getClass();
                PeerTrayKt.c((Modifier) obj7, (Peer) obj6, (Function0) obj5, this.l, this.m, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
        }
    }

    public /* synthetic */ n9(Modifier modifier, PeerPickerViewModel peerPickerViewModel, Function1 function1, Function2 function2, boolean z, Function0 function0, Function0 function02, int i) {
        this.n = modifier;
        this.k = peerPickerViewModel;
        this.l = function1;
        this.o = function2;
        this.m = z;
        this.p = function0;
        this.q = function02;
    }

    public /* synthetic */ n9(PeerPickerViewModel peerPickerViewModel, NavController navController, CoroutineScope coroutineScope, Function1 function1, Context context, boolean z, MutableState mutableState) {
        this.k = peerPickerViewModel;
        this.n = navController;
        this.o = coroutineScope;
        this.l = function1;
        this.p = context;
        this.m = z;
        this.q = mutableState;
    }
}
