package net.blip.android.ui.settings;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigation.NavHostController;
import defpackage.b6;
import defpackage.c;
import defpackage.df;
import defpackage.g3;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.navigation.AuthScope;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.libblip.Core;
import net.blip.libblip.Device;
import net.blip.shared.ProvideSharedCompositionLocalsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SettingsDeviceScreenKt {
    public static final void a(AuthScope authScope, String str, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        RecomposeScopeImpl r;
        b6 b6Var;
        authScope.getClass();
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-235990601);
        if (gapComposer.h(authScope)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i2 | i;
        if (gapComposer.f(str)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i5 = i4 | i3;
        if ((i5 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
            NavHostController navHostController = (NavHostController) gapComposer.j(NavigationRootKt.a);
            c cVar = ((Core) gapComposer.j(ProvideSharedCompositionLocalsKt.d)).b;
            Device device = (Device) authScope.a.x.get(str);
            if (device == null) {
                navHostController.c();
                r = gapComposer.r();
                if (r != null) {
                    b6Var = new b6(authScope, str, i, 1);
                    r.d = b6Var;
                }
                return;
            }
            ScreenLockupKt.b(0L, ComposableLambdaKt.b(1339575767, new g3(navHostController, 6), gapComposer), ComposableLambdaKt.b(1047189942, new df(device, authScope, cVar, str, context), gapComposer), gapComposer, 432, 1);
        } else {
            gapComposer.Q();
        }
        r = gapComposer.r();
        if (r != null) {
            b6Var = new b6(authScope, str, i, 2);
            r.d = b6Var;
        }
    }
}
