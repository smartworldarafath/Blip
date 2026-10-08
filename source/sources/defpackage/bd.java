package defpackage;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.libblip.Peer;
import net.blip.shared.AvatarKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class bd implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Peer k;

    public /* synthetic */ bd(Peer peer, int i) {
        this.j = i;
        this.k = peer;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Modifier.Companion companion = Modifier.Companion.b;
        Unit unit = Unit.a;
        boolean z = false;
        Composer composer = (Composer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                if ((intValue & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    AvatarKt.d(SizeKt.k(companion, 60.0f), null, this.k, null, gapComposer, 6, 10);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                if ((intValue & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer;
                if (gapComposer2.N(intValue & 1, z)) {
                    AvatarKt.d(null, null, this.k, null, gapComposer2, 0, 11);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            default:
                if ((intValue & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer3 = (GapComposer) composer;
                if (gapComposer3.N(intValue & 1, z)) {
                    AvatarKt.d(SizeKt.k(companion, 96.0f), null, this.k, null, gapComposer3, 6, 10);
                } else {
                    gapComposer3.Q();
                }
                return unit;
        }
    }
}
