package net.blip.android.ui.help;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.navigation.NavHostController;
import defpackage.d9;
import defpackage.g3;
import defpackage.z6;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.navigation.NavigationRootKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HelpScreenSendToOtherPeopleKt {
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public static final void a(int i, Composer composer) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1431368828);
        int i2 = 0;
        int i3 = 1;
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            NavHostController navHostController = (NavHostController) gapComposer.j(NavigationRootKt.a);
            Clipboard clipboard = (Clipboard) gapComposer.j(CompositionLocalsKt.f);
            Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
            ?? obj = new Object();
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = EffectsKt.h(gapComposer);
                gapComposer.g0(K);
            }
            obj.j = (CoroutineScope) K;
            ScreenLockupKt.b(0L, ComposableLambdaKt.b(247455652, new g3(navHostController, i3), gapComposer), ComposableLambdaKt.b(1369734851, new d9(obj, clipboard, context, i2), gapComposer), gapComposer, 432, 1);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new z6(i, 5);
        }
    }
}
