package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.NavBackStackEntryProviderKt;
import java.util.List;
import java.util.ListIterator;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import net.blip.android.ui.dialogs.BlockUserConfirmationDialogKt;
import net.blip.android.ui.dialogs.RemovePeerConfirmationDialogKt;
import net.blip.android.ui.list.PeerListRowKt;
import net.blip.android.ui.peerpicker.AndroidPeerPickerListItemsKt;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerPickerContent;
import net.blip.libblip.User;
import net.blip.shared.SelectableLazyItemScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class i1 implements Function4 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ i1(SeekableTransitionState seekableTransitionState, NavBackStackEntry navBackStackEntry, boolean z, SaveableStateHolder saveableStateHolder, State state) {
        this.l = seekableTransitionState;
        this.m = navBackStackEntry;
        this.k = z;
        this.n = saveableStateHolder;
        this.o = state;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    @Override // kotlin.jvm.functions.Function4
    public final Object j(Object obj, Object obj2, Object obj3, Object obj4) {
        final boolean z;
        Context context;
        NavBackStackEntry navBackStackEntry;
        int i = this.j;
        Unit unit = Unit.a;
        Object obj5 = this.o;
        Object obj6 = this.n;
        boolean z2 = this.k;
        Object obj7 = this.m;
        Object obj8 = this.l;
        switch (i) {
            case 0:
                final Function1 function1 = (Function1) obj8;
                Function1 function12 = (Function1) obj7;
                Function1 function13 = (Function1) obj6;
                PeerPickerContent peerPickerContent = (PeerPickerContent) obj5;
                final Peer peer = (Peer) obj2;
                int intValue = ((Integer) obj4).intValue();
                ((SelectableLazyItemScope) obj).getClass();
                peer.getClass();
                GapComposer gapComposer = (GapComposer) ((Composer) obj3);
                Context context2 = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
                if (z2 && (peer instanceof Peer.User) && !((Peer.User) peer).j.r) {
                    z = true;
                } else {
                    z = false;
                }
                Object K = gapComposer.K();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                if (K == composer$Companion$Empty$1) {
                    K = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposer.g0(K);
                }
                final MutableState mutableState = (MutableState) K;
                Object K2 = gapComposer.K();
                if (K2 == composer$Companion$Empty$1) {
                    K2 = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposer.g0(K2);
                }
                MutableState mutableState2 = (MutableState) K2;
                Object K3 = gapComposer.K();
                if (K3 == composer$Companion$Empty$1) {
                    K3 = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposer.g0(K3);
                }
                MutableState mutableState3 = (MutableState) K3;
                boolean g = gapComposer.g(z) | gapComposer.f(function1) | gapComposer.h(peer);
                Object K4 = gapComposer.K();
                if (g || K4 == composer$Companion$Empty$1) {
                    K4 = new Function0() { // from class: l1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object a() {
                            if (z) {
                                mutableState.setValue(Boolean.TRUE);
                            } else {
                                function1.b(peer.c());
                            }
                            return Unit.a;
                        }
                    };
                    gapComposer.g0(K4);
                }
                PeerListRowKt.a(null, peer, false, (Function0) K4, ComposableLambdaKt.b(-1571684113, new m1(peer, peerPickerContent, mutableState2, mutableState3, 0), gapComposer), gapComposer, (intValue & 112) | 24576, 5);
                if (((Boolean) mutableState.getValue()).booleanValue()) {
                    gapComposer.W(-1247559897);
                    boolean f = gapComposer.f(function1) | gapComposer.h(peer);
                    Object K5 = gapComposer.K();
                    if (f || K5 == composer$Companion$Empty$1) {
                        K5 = new n1(function1, peer, mutableState, 0);
                        gapComposer.g0(K5);
                    }
                    Function0 function0 = (Function0) K5;
                    Object K6 = gapComposer.K();
                    if (K6 == composer$Companion$Empty$1) {
                        K6 = new o1(mutableState, 0);
                        gapComposer.g0(K6);
                    }
                    AndroidPeerPickerListItemsKt.a(peer, function0, (Function0) K6, gapComposer, ((intValue >> 3) & 14) | 384);
                    gapComposer.p(false);
                } else {
                    gapComposer.W(-1247268714);
                    gapComposer.p(false);
                }
                if (((Boolean) mutableState2.getValue()).booleanValue()) {
                    gapComposer.W(-1247216541);
                    boolean h = gapComposer.h(context2) | gapComposer.h(peer) | gapComposer.f(function12);
                    Object K7 = gapComposer.K();
                    if (!h && K7 != composer$Companion$Empty$1) {
                        context = context2;
                    } else {
                        K7 = new p1(context2, peer, function12, mutableState2, 0);
                        context = context2;
                        gapComposer.g0(K7);
                    }
                    Function0 function02 = (Function0) K7;
                    Object K8 = gapComposer.K();
                    if (K8 == composer$Companion$Empty$1) {
                        K8 = new o1(mutableState2, 1);
                        gapComposer.g0(K8);
                    }
                    RemovePeerConfirmationDialogKt.a(peer, function02, (Function0) K8, gapComposer, ((intValue >> 3) & 14) | 384);
                    gapComposer.p(false);
                } else {
                    context = context2;
                    gapComposer.W(-1246860010);
                    gapComposer.p(false);
                }
                User e = peer.e();
                if (((Boolean) mutableState3.getValue()).booleanValue() && e != null) {
                    gapComposer.W(-1246758330);
                    boolean h2 = gapComposer.h(context) | gapComposer.h(peer) | gapComposer.f(function13) | gapComposer.h(e);
                    Object K9 = gapComposer.K();
                    if (h2 || K9 == composer$Companion$Empty$1) {
                        q1 q1Var = new q1(context, peer, function13, e, mutableState3, 0);
                        gapComposer.g0(q1Var);
                        K9 = q1Var;
                    }
                    Function0 function03 = (Function0) K9;
                    Object K10 = gapComposer.K();
                    if (K10 == composer$Companion$Empty$1) {
                        K10 = new o1(mutableState3, 2);
                        gapComposer.g0(K10);
                    }
                    BlockUserConfirmationDialogKt.a(e, function03, (Function0) K10, gapComposer, 384);
                    gapComposer.p(false);
                } else {
                    gapComposer.W(-1246404682);
                    gapComposer.p(false);
                }
                return unit;
            default:
                SaveableStateHolder saveableStateHolder = (SaveableStateHolder) obj6;
                State state = (State) obj5;
                AnimatedContentScope animatedContentScope = (AnimatedContentScope) obj;
                NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj2;
                Composer composer = (Composer) obj3;
                ((Integer) obj4).getClass();
                boolean a = Intrinsics.a(((SnapshotMutableStateImpl) ((SeekableTransitionState) obj8).c).getValue(), (NavBackStackEntry) obj7);
                if (!z2 && !a) {
                    List list = (List) state.getValue();
                    ListIterator listIterator = list.listIterator(list.size());
                    while (true) {
                        if (listIterator.hasPrevious()) {
                            navBackStackEntry = listIterator.previous();
                            if (Intrinsics.a(navBackStackEntry2, (NavBackStackEntry) navBackStackEntry)) {
                            }
                        } else {
                            navBackStackEntry = 0;
                        }
                    }
                    navBackStackEntry2 = navBackStackEntry;
                }
                GapComposer gapComposer2 = (GapComposer) composer;
                if (navBackStackEntry2 == null) {
                    gapComposer2.W(872360807);
                    gapComposer2.p(false);
                } else {
                    gapComposer2.W(-1218785318);
                    NavBackStackEntryProviderKt.a(navBackStackEntry2, saveableStateHolder, ComposableLambdaKt.b(-1138044367, new a0(18, navBackStackEntry2, animatedContentScope), gapComposer2), gapComposer2, 384);
                    gapComposer2.p(false);
                }
                return unit;
        }
    }

    public /* synthetic */ i1(boolean z, Function1 function1, Function1 function12, Function1 function13, PeerPickerContent peerPickerContent) {
        this.k = z;
        this.l = function1;
        this.m = function12;
        this.n = function13;
        this.o = peerPickerContent;
    }
}
