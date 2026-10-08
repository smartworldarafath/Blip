package net.blip.android.ui.settings;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.navigation.NavHostController;
import defpackage.ff;
import defpackage.g3;
import defpackage.z5;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.navigation.AuthScope;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.libblip.Core;
import net.blip.shared.ProvideSharedCompositionLocalsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SettingsProfileScreenKt {
    public static final void a(AuthScope authScope, Composer composer, int i) {
        int i2;
        boolean z;
        authScope.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(698837794);
        if (gapComposer.h(authScope)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            ScreenLockupKt.b(0L, ComposableLambdaKt.b(-858540222, new g3((NavHostController) gapComposer.j(NavigationRootKt.a), 7), gapComposer), ComposableLambdaKt.b(-385021279, new ff(authScope, ((Core) gapComposer.j(ProvideSharedCompositionLocalsKt.d)).b, 0), gapComposer), gapComposer, 432, 1);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new z5(authScope, i, 2);
        }
    }
}
