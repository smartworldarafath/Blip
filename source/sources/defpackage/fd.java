package defpackage;

import android.content.Context;
import androidx.compose.material.icons.rounded.MoreVertKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.graphics.vector.VectorPainter;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.navigation.NavHostController;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.shortcuts.ShortcutsManagerKt;
import net.blip.android.ui.dialogs.BlockUserConfirmationDialogKt;
import net.blip.android.ui.dialogs.RemovePeerConfirmationDialogKt;
import net.blip.android.ui.lockups.ButtonRowItem;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.User;
import net.blip.libblip.event.AddBlockedUser;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class fd implements Function2 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ Peer k;
    public final /* synthetic */ Context l;
    public final /* synthetic */ PeerId m;
    public final /* synthetic */ Function1 n;
    public final /* synthetic */ NavHostController o;

    public /* synthetic */ fd(NavHostController navHostController, Peer peer, Context context, PeerId peerId, Function1 function1) {
        this.o = navHostController;
        this.k = peer;
        this.l = context;
        this.m = peerId;
        this.n = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        NavHostController navHostController;
        PeerId peerId;
        Function1 function1;
        User user;
        int i = this.j;
        Unit unit = Unit.a;
        Object obj3 = Composer.Companion.a;
        boolean z2 = false;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z2)) {
                    Peer peer = this.k;
                    Context context = this.l;
                    PeerId peerId2 = this.m;
                    Function1 function12 = this.n;
                    NavHostController navHostController2 = this.o;
                    ComposableLambdaImpl b = ComposableLambdaKt.b(-1763176455, new fd(peer, context, peerId2, function12, navHostController2), gapComposer);
                    boolean h = gapComposer.h(navHostController2);
                    Object K = gapComposer.K();
                    if (h || K == obj3) {
                        K = new i3(navHostController2, 5);
                        gapComposer.g0(K);
                    }
                    ScreenLockupKt.d(null, 0L, null, b, (Function0) K, gapComposer, 3072, 7);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z)) {
                    Object K2 = gapComposer2.K();
                    if (K2 == obj3) {
                        K2 = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer2.g0(K2);
                    }
                    MutableState mutableState = (MutableState) K2;
                    Object K3 = gapComposer2.K();
                    if (K3 == obj3) {
                        K3 = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer2.g0(K3);
                    }
                    final MutableState mutableState2 = (MutableState) K3;
                    VectorPainter b2 = VectorPainterKt.b(MoreVertKt.a(), gapComposer2);
                    Peer peer2 = this.k;
                    ScreenLockupKt.a(null, 0L, CollectionsKt.B(new ButtonRowItem.IconMenu(b2, ComposableLambdaKt.b(-1503525273, new pc(peer2, mutableState, mutableState2, 1), gapComposer2))), gapComposer2, 512, 3);
                    boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
                    final Context context2 = this.l;
                    PeerId peerId3 = this.m;
                    Function1 function13 = this.n;
                    NavHostController navHostController3 = this.o;
                    if (booleanValue) {
                        gapComposer2.W(661992976);
                        boolean h2 = gapComposer2.h(context2) | gapComposer2.h(peerId3) | gapComposer2.f(function13) | gapComposer2.h(navHostController3);
                        Object K4 = gapComposer2.K();
                        if (!h2 && K4 != obj3) {
                            navHostController = navHostController3;
                            peerId = peerId3;
                            function1 = function13;
                        } else {
                            K4 = new q1(context2, peerId3, function13, navHostController3, mutableState, 2);
                            peerId = peerId3;
                            function1 = function13;
                            navHostController = navHostController3;
                            gapComposer2.g0(K4);
                        }
                        Function0 function0 = (Function0) K4;
                        Object K5 = gapComposer2.K();
                        if (K5 == obj3) {
                            K5 = new cd(mutableState, 1);
                            gapComposer2.g0(K5);
                        }
                        RemovePeerConfirmationDialogKt.a(peer2, function0, (Function0) K5, gapComposer2, 384);
                        gapComposer2.p(false);
                    } else {
                        navHostController = navHostController3;
                        peerId = peerId3;
                        function1 = function13;
                        gapComposer2.W(662755049);
                        gapComposer2.p(false);
                    }
                    final User e = peer2.e();
                    if (((Boolean) mutableState2.getValue()).booleanValue() && e != null) {
                        gapComposer2.W(662886861);
                        boolean h3 = gapComposer2.h(context2) | gapComposer2.h(peerId) | gapComposer2.f(function1) | gapComposer2.h(e) | gapComposer2.h(navHostController);
                        Object K6 = gapComposer2.K();
                        if (!h3 && K6 != obj3) {
                            user = e;
                        } else {
                            final PeerId peerId4 = peerId;
                            final Function1 function14 = function1;
                            final NavHostController navHostController4 = navHostController;
                            Object obj4 = new Function0() { // from class: dd
                                @Override // kotlin.jvm.functions.Function0
                                public final Object a() {
                                    mutableState2.setValue(Boolean.FALSE);
                                    ShortcutsManagerKt.b(context2, peerId4);
                                    function14.b(new AddBlockedUser(e.m));
                                    navHostController4.c();
                                    return Unit.a;
                                }
                            };
                            user = e;
                            gapComposer2.g0(obj4);
                            K6 = obj4;
                        }
                        Function0 function02 = (Function0) K6;
                        Object K7 = gapComposer2.K();
                        if (K7 == obj3) {
                            K7 = new cd(mutableState2, 2);
                            gapComposer2.g0(K7);
                        }
                        BlockUserConfirmationDialogKt.a(user, function02, (Function0) K7, gapComposer2, 384);
                        gapComposer2.p(false);
                    } else {
                        gapComposer2.W(663436553);
                        gapComposer2.p(false);
                    }
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ fd(Peer peer, Context context, PeerId peerId, Function1 function1, NavHostController navHostController) {
        this.k = peer;
        this.l = context;
        this.m = peerId;
        this.n = function1;
        this.o = navHostController;
    }
}
