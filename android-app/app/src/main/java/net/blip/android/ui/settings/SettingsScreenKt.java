package net.blip.android.ui.settings;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.UriHandler;
import androidx.navigation.NavHostController;
import defpackage.c;
import defpackage.g3;
import defpackage.v8;
import defpackage.z5;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.navigation.AuthScope;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.libblip.Core;
import net.blip.libblip.frontend.State;
import net.blip.shared.ProvideSharedCompositionLocalsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SettingsScreenKt {
    public static final void a(AuthScope authScope, Composer composer, int i) {
        int i2;
        boolean z;
        GapComposer gapComposer;
        authScope.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-356288504);
        if (gapComposer2.h(authScope)) {
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
        if (gapComposer2.N(i3 & 1, z)) {
            UriHandler uriHandler = (UriHandler) gapComposer2.j(CompositionLocalsKt.s);
            NavHostController navHostController = (NavHostController) gapComposer2.j(NavigationRootKt.a);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ProvideSharedCompositionLocalsKt.d;
            State b = ProvideSharedCompositionLocalsKt.b(dynamicProvidableCompositionLocal, gapComposer2);
            c cVar = ((Core) gapComposer2.j(dynamicProvidableCompositionLocal)).b;
            Context context = (Context) gapComposer2.j(AndroidCompositionLocals_androidKt.b);
            ComposableLambdaImpl b2 = ComposableLambdaKt.b(-1554416600, new g3(navHostController, 8), gapComposer2);
            ComposableLambdaImpl b3 = ComposableLambdaKt.b(-472608313, new v8(authScope, navHostController, context, b, cVar, uriHandler), gapComposer2);
            gapComposer = gapComposer2;
            ScreenLockupKt.b(0L, b2, b3, gapComposer, 432, 1);
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new z5(authScope, i, 4);
        }
    }
}
