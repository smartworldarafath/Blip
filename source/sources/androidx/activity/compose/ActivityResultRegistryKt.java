package androidx.activity.compose;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.activity.ComponentActivity;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.n;
import defpackage.o;
import defpackage.u2;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ActivityResultRegistryKt {
    public static final ManagedActivityResultLauncher a(ActivityResultContract activityResultContract, Function1 function1, Composer composer) {
        Object oVar;
        ActivityResultContract activityResultContract2;
        ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1;
        SnapshotStateKt.k(activityResultContract, composer);
        Object k = SnapshotStateKt.k(function1, composer);
        Object[] objArr = new Object[0];
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Object obj = Composer.Companion.a;
        if (K == obj) {
            K = new n(1);
            gapComposer.g0(K);
        }
        String str = (String) RememberSaveableKt.c(objArr, (Function0) K, gapComposer);
        ActivityResultRegistryOwner activityResultRegistryOwner = (ActivityResultRegistryOwner) gapComposer.j(LocalActivityResultRegistryOwner.a);
        if (activityResultRegistryOwner == null) {
            gapComposer.W(1213380307);
            Object obj2 = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
            while (true) {
                if (obj2 instanceof ContextWrapper) {
                    if (obj2 instanceof ActivityResultRegistryOwner) {
                        break;
                    }
                    obj2 = ((ContextWrapper) obj2).getBaseContext();
                } else {
                    obj2 = null;
                    break;
                }
            }
            activityResultRegistryOwner = (ActivityResultRegistryOwner) obj2;
        } else {
            gapComposer.W(1213379439);
        }
        gapComposer.p(false);
        if (activityResultRegistryOwner != null) {
            ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$12 = ((ComponentActivity) activityResultRegistryOwner).q;
            Object K2 = gapComposer.K();
            if (K2 == obj) {
                K2 = new Object();
                gapComposer.g0(K2);
            }
            ActivityResultLauncherHolder activityResultLauncherHolder = (ActivityResultLauncherHolder) K2;
            Object K3 = gapComposer.K();
            if (K3 == obj) {
                K3 = new ManagedActivityResultLauncher(activityResultLauncherHolder);
                gapComposer.g0(K3);
            }
            ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) K3;
            boolean h = gapComposer.h(activityResultLauncherHolder) | gapComposer.h(componentActivity$activityResultRegistry$12) | gapComposer.f(str) | gapComposer.h(activityResultContract) | gapComposer.f(k);
            Object K4 = gapComposer.K();
            if (!h && K4 != obj) {
                componentActivity$activityResultRegistry$1 = componentActivity$activityResultRegistry$12;
                oVar = K4;
                activityResultContract2 = activityResultContract;
            } else {
                activityResultContract2 = activityResultContract;
                componentActivity$activityResultRegistry$1 = componentActivity$activityResultRegistry$12;
                oVar = new o(activityResultLauncherHolder, componentActivity$activityResultRegistry$1, str, activityResultContract2, k, 0);
                gapComposer.g0(oVar);
            }
            EffectsKt.a(componentActivity$activityResultRegistry$1, str, activityResultContract2, (Function1) oVar, gapComposer);
            return managedActivityResultLauncher;
        }
        u2.l("No ActivityResultRegistryOwner was provided via LocalActivityResultRegistryOwner");
        return null;
    }
}
