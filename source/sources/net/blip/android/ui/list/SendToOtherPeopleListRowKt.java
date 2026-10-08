package net.blip.android.ui.list;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.navigation.NavHostController;
import defpackage.i3;
import defpackage.r4;
import kotlin.jvm.functions.Function0;
import net.blip.android.ui.navigation.NavigationRootKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SendToOtherPeopleListRowKt {
    public static final void a(Modifier modifier, Composer composer, int i) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1286431948);
        int i2 = i | 6;
        if ((i2 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            NavHostController navHostController = (NavHostController) gapComposer.j(NavigationRootKt.a);
            boolean h = gapComposer.h(navHostController);
            Object K = gapComposer.K();
            if (h || K == Composer.Companion.a) {
                K = new i3(navHostController, 6);
                gapComposer.g0(K);
            }
            Function0 function0 = (Function0) K;
            Modifier.Companion companion = Modifier.Companion.b;
            ListRowKt.b(companion, ComposableSingletons$SendToOtherPeopleListRowKt.a, null, null, function0, null, ComposableSingletons$SendToOtherPeopleListRowKt.b, gapComposer, 1572918, 44);
            modifier = companion;
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new r4(modifier, i, 4);
        }
    }
}
