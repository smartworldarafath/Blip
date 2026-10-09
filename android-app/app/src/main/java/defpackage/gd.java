package defpackage;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.material.SwitchColors;
import androidx.compose.material.SwitchKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.home.PeerTrayCellsKt;
import net.blip.libblip.Peer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class gd implements Function2 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Function0 l;
    public final /* synthetic */ int m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ gd(Peer peer, boolean z, Function0 function0, Function0 function02, int i) {
        this.n = peer;
        this.k = z;
        this.l = function0;
        this.o = function02;
        this.m = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.m;
        Object obj3 = this.o;
        Object obj4 = this.n;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(i2 | 1);
                PeerTrayCellsKt.d((Peer) obj4, this.k, this.l, (Function0) obj3, (Composer) obj, a);
                return unit;
            default:
                ((Integer) obj2).getClass();
                int a2 = RecomposeScopeImplKt.a(i2 | 1);
                SwitchKt.b(this.k, (SwitchColors) obj4, this.l, (InteractionSource) obj3, (Composer) obj, a2);
                return unit;
        }
    }

    public /* synthetic */ gd(boolean z, SwitchColors switchColors, Function0 function0, InteractionSource interactionSource, int i) {
        this.k = z;
        this.n = switchColors;
        this.l = function0;
        this.o = interactionSource;
        this.m = i;
    }
}
