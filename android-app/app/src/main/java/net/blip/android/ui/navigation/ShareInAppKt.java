package net.blip.android.ui.navigation;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigation.NavHostController;
import defpackage.c;
import defpackage.s2;
import java.io.Serializable;
import kotlin.jvm.functions.Function1;
import net.blip.libblip.Core;
import net.blip.shared.ProvideSharedCompositionLocalsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ShareInAppKt {
    public static final Function1 a(int i, Composer composer) {
        String str;
        if ((i & 1) != 0) {
            str = "in_app_share";
        } else {
            str = "home_blank_state_menu";
        }
        String str2 = str;
        GapComposer gapComposer = (GapComposer) composer;
        NavHostController navHostController = (NavHostController) gapComposer.j(NavigationRootKt.a);
        c cVar = ((Core) gapComposer.j(ProvideSharedCompositionLocalsKt.d)).b;
        Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
        Object K = gapComposer.K();
        if (K == Composer.Companion.a) {
            s2 s2Var = new s2((Function1) cVar, (Serializable) str2, navHostController, context, 10);
            gapComposer.g0(s2Var);
            K = s2Var;
        }
        return (Function1) K;
    }
}
