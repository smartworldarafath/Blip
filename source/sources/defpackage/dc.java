package defpackage;

import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.navigation.NavHostController;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.text.StringsKt;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.android.ui.transfer.TransferCreationScreenKt;
import net.blip.libblip.Peer;
import net.blip.libblip.User;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class dc implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Function m;
    public final /* synthetic */ Object n;

    public /* synthetic */ dc(Object obj, boolean z, Function function, Object obj2, int i) {
        this.j = i;
        this.l = obj;
        this.k = z;
        this.m = function;
        this.n = obj2;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0078  */
    @Override // kotlin.jvm.functions.Function2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        String str;
        String a;
        int i = this.j;
        Unit unit = Unit.a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        Object obj3 = this.n;
        Function function = this.m;
        boolean z3 = this.k;
        Object obj4 = this.l;
        switch (i) {
            case 0:
                String str2 = (String) obj4;
                Function0 function0 = (Function0) function;
                NavHostController navHostController = (NavHostController) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = NavigationRootKt.a;
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    boolean g = gapComposer.g(z3) | gapComposer.f(function0) | gapComposer.h(navHostController);
                    Object K = gapComposer.K();
                    if (g || K == composer$Companion$Empty$1) {
                        K = new x7(1, function0, navHostController, z3);
                        gapComposer.g0(K);
                    }
                    TransferCreationScreenKt.b(str2, (Function0) K, gapComposer, 0);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                Peer peer = (Peer) obj4;
                Function4 function4 = (Function4) function;
                MutableState mutableState = (MutableState) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    String b = peer.b();
                    if (peer instanceof Peer.User) {
                        User user = ((Peer.User) peer).j;
                        user.getClass();
                        a = StringsKt.E(user.n, '*', (char) 8226);
                    } else if (peer instanceof Peer.Device) {
                        if (z3) {
                            a = peer.a();
                        } else {
                            str = null;
                            ListRowKt.c(null, b, str, 0L, gapComposer2, 0, 9);
                            if (function4 != null) {
                                gapComposer2.W(-2092148251);
                                gapComposer2.p(false);
                                return unit;
                            }
                            gapComposer2.W(-2092148250);
                            boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
                            Object K2 = gapComposer2.K();
                            if (K2 == composer$Companion$Empty$1) {
                                K2 = new vh(mutableState, 1);
                                gapComposer2.g0(K2);
                            }
                            AndroidMenu_androidKt.a(booleanValue, (Function0) K2, null, 0L, null, null, ComposableLambdaKt.b(1997892611, new i0(6, function4, mutableState), gapComposer2), gapComposer2, 1572912, 60);
                            gapComposer2.p(false);
                            return unit;
                        }
                    } else {
                        k8.e();
                        return null;
                    }
                    str = a;
                    ListRowKt.c(null, b, str, 0L, gapComposer2, 0, 9);
                    if (function4 != null) {
                    }
                } else {
                    gapComposer2.Q();
                    return unit;
                }
        }
    }
}
