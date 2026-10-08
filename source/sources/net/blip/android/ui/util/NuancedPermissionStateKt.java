package net.blip.android.ui.util;

import android.content.Context;
import android.os.Build;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.app.NotificationManagerCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import com.google.accompanist.permissions.PermissionState;
import com.google.accompanist.permissions.PermissionStateKt;
import com.google.accompanist.permissions.PermissionStatus;
import defpackage.a0;
import defpackage.ec;
import defpackage.ma;
import defpackage.p2;
import defpackage.x9;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NuancedPermissionStateKt {
    public static final void a(LifecycleOwner lifecycleOwner, Function2 function2, Composer composer, int i) {
        int i2;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-2018758883);
        int i3 = i | 2;
        if (gapComposer.h(function2)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i4 = i3 | i2;
        boolean z2 = false;
        if ((i4 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i4 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
            } else {
                lifecycleOwner = (LifecycleOwner) gapComposer.j(LocalLifecycleOwnerKt.a);
            }
            int i5 = i4 & (-15);
            gapComposer.q();
            if ((i5 & 112) == 32) {
                z2 = true;
            }
            boolean h = gapComposer.h(lifecycleOwner) | z2;
            Object K = gapComposer.K();
            if (h || K == Composer.Companion.a) {
                K = new ec(2, lifecycleOwner, function2);
                gapComposer.g0(K);
            }
            EffectsKt.c(lifecycleOwner, (Function1) K, gapComposer);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(lifecycleOwner, function2, i, 22);
        }
    }

    public static final NuancedPermissionState b(Composer composer) {
        if (Build.VERSION.SDK_INT >= 33) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.W(-1708462841);
            NuancedPermissionState c = c("android.permission.POST_NOTIFICATIONS", gapComposer);
            gapComposer.p(false);
            return c;
        }
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.W(-1708274888);
        Context context = (Context) gapComposer2.j(AndroidCompositionLocals_androidKt.b);
        Object K = gapComposer2.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (K == composer$Companion$Empty$1) {
            K = new NotificationManagerCompat(context);
            gapComposer2.g0(K);
        }
        NotificationManagerCompat notificationManagerCompat = (NotificationManagerCompat) K;
        notificationManagerCompat.getClass();
        Object K2 = gapComposer2.K();
        if (K2 == composer$Companion$Empty$1) {
            K2 = SnapshotStateKt.g(Boolean.valueOf(notificationManagerCompat.b.areNotificationsEnabled()));
            gapComposer2.g0(K2);
        }
        MutableState mutableState = (MutableState) K2;
        boolean h = gapComposer2.h(notificationManagerCompat);
        Object K3 = gapComposer2.K();
        if (h || K3 == composer$Companion$Empty$1) {
            K3 = new a0(21, notificationManagerCompat, mutableState);
            gapComposer2.g0(K3);
        }
        a(null, (Function2) K3, gapComposer2, 0);
        boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
        boolean h2 = gapComposer2.h(context);
        Object K4 = gapComposer2.K();
        if (h2 || K4 == composer$Companion$Empty$1) {
            K4 = new ma(7, context);
            gapComposer2.g0(K4);
        }
        NuancedPermissionState nuancedPermissionState = new NuancedPermissionState((Function1) K4, booleanValue);
        gapComposer2.p(false);
        return nuancedPermissionState;
    }

    public static final NuancedPermissionState c(String str, Composer composer) {
        Object[] objArr = new Object[0];
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (K == composer$Companion$Empty$1) {
            K = new x9(25);
            gapComposer.g0(K);
        }
        MutableState mutableState = (MutableState) RememberSaveableKt.c(objArr, (Function0) K, gapComposer);
        Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
        Object[] objArr2 = new Object[0];
        Object K2 = gapComposer.K();
        if (K2 == composer$Companion$Empty$1) {
            K2 = new x9(26);
            gapComposer.g0(K2);
        }
        MutableState mutableState2 = (MutableState) RememberSaveableKt.c(objArr2, (Function0) K2, gapComposer);
        boolean f = gapComposer.f(mutableState2) | gapComposer.f(mutableState) | gapComposer.h(context);
        Object K3 = gapComposer.K();
        if (f || K3 == composer$Companion$Empty$1) {
            K3 = new p2(context, mutableState2, mutableState, 11);
            gapComposer.g0(K3);
        }
        PermissionState a = PermissionStateKt.a(str, (Function1) K3, gapComposer);
        PermissionStatus a2 = a.a();
        a2.getClass();
        boolean equals = a2.equals(PermissionStatus.Granted.a);
        boolean f2 = gapComposer.f(mutableState2) | gapComposer.f(mutableState) | gapComposer.f(a);
        Object K4 = gapComposer.K();
        if (f2 || K4 == composer$Companion$Empty$1) {
            K4 = new p2(a, mutableState2, mutableState, 12);
            gapComposer.g0(K4);
        }
        return new NuancedPermissionState((Function1) K4, equals);
    }
}
