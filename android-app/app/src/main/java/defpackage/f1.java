package defpackage;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import net.blip.android.ui.list.PeerListRowKt;
import net.blip.libblip.Peer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f1 implements Function2 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ Modifier k;
    public final /* synthetic */ boolean l;
    public final /* synthetic */ Function0 m;
    public final /* synthetic */ int n;
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Function q;

    public /* synthetic */ f1(Modifier modifier, Peer peer, boolean z, Function0 function0, Function4 function4, int i, int i2) {
        this.k = modifier;
        this.p = peer;
        this.l = z;
        this.m = function0;
        this.q = function4;
        this.n = i;
        this.o = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.n;
        Function function = this.q;
        Object obj3 = this.p;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int a = RecomposeScopeImplKt.a(i2 | 1);
                AndroidMenu_androidKt.b(this.m, this.k, this.l, (PaddingValues) obj3, (Function3) function, (Composer) obj, a, this.o);
                return unit;
            default:
                ((Integer) obj2).getClass();
                int a2 = RecomposeScopeImplKt.a(i2 | 1);
                PeerListRowKt.a(this.k, (Peer) obj3, this.l, this.m, (Function4) function, (Composer) obj, a2, this.o);
                return unit;
        }
    }

    public /* synthetic */ f1(Function0 function0, Modifier modifier, boolean z, PaddingValues paddingValues, Function3 function3, int i, int i2) {
        this.m = function0;
        this.k = modifier;
        this.l = z;
        this.p = paddingValues;
        this.q = function3;
        this.n = i;
        this.o = i2;
    }
}
