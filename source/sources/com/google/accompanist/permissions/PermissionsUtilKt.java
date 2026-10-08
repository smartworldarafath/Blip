package com.google.accompanist.permissions;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import defpackage.ec;
import defpackage.g5;
import defpackage.zc;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PermissionsUtilKt {
    public static final void a(MutablePermissionState mutablePermissionState, Lifecycle.Event event, Composer composer, int i) {
        int i2;
        boolean z;
        mutablePermissionState.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1770945943);
        if (gapComposer.f(mutablePermissionState)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i | 48;
        if ((i3 & 19) == 18 && gapComposer.z()) {
            gapComposer.Q();
        } else {
            event = Lifecycle.Event.ON_RESUME;
            gapComposer.W(-2101357749);
            if ((i3 & 14) == 4) {
                z = true;
            } else {
                z = false;
            }
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (z || K == composer$Companion$Empty$1) {
                K = new g5(1, event, mutablePermissionState);
                gapComposer.g0(K);
            }
            LifecycleEventObserver lifecycleEventObserver = (LifecycleEventObserver) K;
            gapComposer.p(false);
            Lifecycle g = ((LifecycleOwner) gapComposer.j(LocalLifecycleOwnerKt.a)).g();
            gapComposer.W(-2101338711);
            boolean h = gapComposer.h(g) | gapComposer.h(lifecycleEventObserver);
            Object K2 = gapComposer.K();
            if (h || K2 == composer$Companion$Empty$1) {
                K2 = new ec(6, g, lifecycleEventObserver);
                gapComposer.g0(K2);
            }
            gapComposer.p(false);
            EffectsKt.b(g, lifecycleEventObserver, (Function1) K2, gapComposer);
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new zc(i, 3, mutablePermissionState, event);
        }
    }
}
