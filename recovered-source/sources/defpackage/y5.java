package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.peer.PeerScreenKt;
import net.blip.libblip.PeerId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class y5 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ PeerId k;

    public /* synthetic */ y5(PeerId peerId) {
        this.j = 0;
        this.k = peerId;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        PeerId peerId = this.k;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                int intValue = num.intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    PeerScreenKt.b(peerId, gapComposer, 0);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                num.getClass();
                PeerScreenKt.b(peerId, composer, RecomposeScopeImplKt.a(1));
                return unit;
            default:
                num.getClass();
                PeerScreenKt.b(peerId, composer, RecomposeScopeImplKt.a(1));
                return unit;
        }
    }

    public /* synthetic */ y5(PeerId peerId, int i, int i2) {
        this.j = i2;
        this.k = peerId;
    }
}
