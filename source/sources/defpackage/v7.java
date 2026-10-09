package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.home.PeerTrayCellsKt;
import net.blip.android.ui.transfer.TransferCreationScreenKt;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerPickerViewModel;
import net.blip.shared.DisabledContentKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class v7 implements Function2 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ v7(Modifier modifier, boolean z, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.l = modifier;
        this.k = z;
        this.m = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        boolean z2 = this.k;
        Unit unit = Unit.a;
        Object obj3 = this.m;
        Object obj4 = this.l;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                DisabledContentKt.b((Modifier) obj4, z2, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(385));
                return unit;
            case 1:
                MutableState mutableState = (MutableState) obj4;
                Peer peer = (Peer) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    PeerTrayCellsKt.a(Modifier.Companion.b, ((Boolean) mutableState.getValue()).booleanValue(), this.k, ComposableLambdaKt.b(-963946717, new bd(peer, 1), gapComposer), gapComposer, 3072, 0);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                ((Integer) obj2).getClass();
                TransferCreationScreenKt.a(z2, (PeerPickerViewModel) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
        }
    }

    public /* synthetic */ v7(boolean z, MutableState mutableState, Peer peer) {
        this.k = z;
        this.l = mutableState;
        this.m = peer;
    }

    public /* synthetic */ v7(boolean z, PeerPickerViewModel peerPickerViewModel, Function1 function1, int i) {
        this.k = z;
        this.l = peerPickerViewModel;
        this.m = function1;
    }
}
