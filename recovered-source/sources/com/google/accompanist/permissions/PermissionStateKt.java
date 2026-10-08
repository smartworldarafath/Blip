package com.google.accompanist.permissions;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import com.google.accompanist.permissions.PermissionStatus;
import defpackage.b;
import defpackage.u2;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PermissionStateKt {
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    public static final PermissionState a(String str, Function1 function1, Composer composer) {
        PermissionState permissionState;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(923020361);
        gapComposer.W(-1732095526);
        if (((Boolean) gapComposer.j(InspectionModeKt.a)).booleanValue()) {
            permissionState = new PreviewPermissionState(str, PermissionStatus.Granted.a);
        } else {
            gapComposer.W(1424240517);
            Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
            gapComposer.W(1134374053);
            Object K = gapComposer.K();
            Object obj = Composer.Companion.a;
            if (K == obj) {
                context.getClass();
                for (Context context2 = context; context2 instanceof ContextWrapper; context2 = ((ContextWrapper) context2).getBaseContext()) {
                    if (context2 instanceof Activity) {
                        K = new MutablePermissionState(str, context, (Activity) context2);
                        gapComposer.g0(K);
                    }
                }
                u2.l("Permissions should be called in the context of an Activity");
                return null;
            }
            MutablePermissionState mutablePermissionState = (MutablePermissionState) K;
            gapComposer.p(false);
            PermissionsUtilKt.a(mutablePermissionState, null, gapComposer, 0);
            ?? obj2 = new Object();
            gapComposer.W(1134386901);
            boolean f = gapComposer.f(mutablePermissionState) | gapComposer.f(function1);
            Object K2 = gapComposer.K();
            if (f || K2 == obj) {
                K2 = new b(23, mutablePermissionState, function1);
                gapComposer.g0(K2);
            }
            gapComposer.p(false);
            Object a = ActivityResultRegistryKt.a(obj2, (Function1) K2, gapComposer);
            gapComposer.W(1134391322);
            boolean f2 = gapComposer.f(mutablePermissionState) | gapComposer.h(a);
            Object K3 = gapComposer.K();
            if (f2 || K3 == obj) {
                K3 = new b(24, mutablePermissionState, a);
                gapComposer.g0(K3);
            }
            gapComposer.p(false);
            EffectsKt.b(mutablePermissionState, a, (Function1) K3, gapComposer);
            gapComposer.p(false);
            permissionState = mutablePermissionState;
        }
        gapComposer.p(false);
        gapComposer.p(false);
        return permissionState;
    }
}
