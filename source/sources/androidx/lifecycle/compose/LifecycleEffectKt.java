package androidx.lifecycle.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import defpackage.b1;
import defpackage.p2;
import defpackage.r5;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LifecycleEffectKt {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public static final void a(Boolean bool, Object obj, LifecycleOwner lifecycleOwner, Function1 function1, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(696924721);
        if ((i & 6) == 0) {
            if (gapComposer.h(bool)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(obj)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            i2 |= 128;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.h(function1)) {
                i3 = 2048;
            } else {
                i3 = 1024;
            }
            i2 |= i3;
        }
        if ((i2 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
            } else {
                lifecycleOwner = (LifecycleOwner) gapComposer.j(LocalLifecycleOwnerKt.a);
            }
            int i6 = i2 & (-897);
            gapComposer.q();
            boolean f = gapComposer.f(bool) | gapComposer.f(obj) | gapComposer.f(lifecycleOwner);
            Object K = gapComposer.K();
            if (f || K == Composer.Companion.a) {
                K = new LifecycleStartStopEffectScope(lifecycleOwner.g());
                gapComposer.g0(K);
            }
            b(lifecycleOwner, (LifecycleStartStopEffectScope) K, function1, gapComposer, (i6 >> 3) & 896);
        } else {
            gapComposer.Q();
        }
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new r5(bool, obj, lifecycleOwner2, function1, i, 1);
        }
    }

    public static final void b(LifecycleOwner lifecycleOwner, LifecycleStartStopEffectScope lifecycleStartStopEffectScope, Function1 function1, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(228371534);
        if ((i & 6) == 0) {
            if (gapComposer.h(lifecycleOwner)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(lifecycleStartStopEffectScope)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(function1)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i2 |= i3;
        }
        boolean z2 = false;
        if ((i2 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            boolean h = gapComposer.h(lifecycleStartStopEffectScope);
            if ((i2 & 896) == 256) {
                z2 = true;
            }
            boolean h2 = h | z2 | gapComposer.h(lifecycleOwner);
            Object K = gapComposer.K();
            if (h2 || K == Composer.Companion.a) {
                K = new p2(lifecycleOwner, lifecycleStartStopEffectScope, function1, 9);
                gapComposer.g0(K);
            }
            EffectsKt.b(lifecycleOwner, lifecycleStartStopEffectScope, (Function1) K, gapComposer);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1(lifecycleOwner, lifecycleStartStopEffectScope, function1, i, 12);
        }
    }
}
