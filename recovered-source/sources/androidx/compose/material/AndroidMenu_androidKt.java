package androidx.compose.material;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.compose.ui.window.SecureFlagPolicy;
import defpackage.a1;
import defpackage.f1;
import defpackage.g1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidMenu_androidKt {
    public static final PopupProperties a = new PopupProperties(true, SecureFlagPolicy.j, true, 0);

    public static final void a(final boolean z, final Function0 function0, Modifier modifier, long j, ScrollState scrollState, PopupProperties popupProperties, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i, final int i2) {
        int i3;
        Function0 function02;
        long j2;
        int i4;
        boolean z2;
        final Modifier modifier2;
        final ScrollState scrollState2;
        final PopupProperties popupProperties2;
        int i5;
        ScrollState a2;
        Modifier modifier3;
        PopupProperties popupProperties3;
        int i6;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1275450738);
        if (gapComposer.g(z)) {
            i3 = 4;
        } else {
            i3 = 2;
        }
        int i7 = i3 | i;
        if ((i & 48) == 0) {
            function02 = function0;
            if (gapComposer.h(function02)) {
                i6 = 32;
            } else {
                i6 = 16;
            }
            i7 |= i6;
        } else {
            function02 = function0;
        }
        int i8 = i7 | 384;
        int i9 = i2 & 8;
        if (i9 != 0) {
            i8 = i7 | 3456;
            j2 = j;
        } else {
            j2 = j;
            if ((i & 3072) == 0) {
                if (gapComposer.e(j2)) {
                    i4 = 2048;
                } else {
                    i4 = 1024;
                }
                i8 |= i4;
            }
        }
        int i10 = 204800 | i8;
        int i11 = 1;
        if ((599187 & i10) != 599186) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i10 & 1, z2)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
                i5 = i10 & (-57345);
                modifier3 = modifier;
                a2 = scrollState;
                popupProperties3 = popupProperties;
            } else {
                if (i9 != 0) {
                    j2 = (Float.floatToRawIntBits(0.0f) << 32) | (4294967295L & Float.floatToRawIntBits(0.0f));
                }
                i5 = i10 & (-57345);
                a2 = ScrollKt.a(gapComposer);
                modifier3 = Modifier.Companion.b;
                popupProperties3 = a;
            }
            gapComposer.q();
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = new MutableTransitionState(Boolean.FALSE);
                gapComposer.g0(K);
            }
            MutableTransitionState mutableTransitionState = (MutableTransitionState) K;
            ((SnapshotMutableStateImpl) mutableTransitionState.c).setValue(Boolean.valueOf(z));
            if (!((Boolean) ((SnapshotMutableStateImpl) mutableTransitionState.b).getValue()).booleanValue() && !((Boolean) ((SnapshotMutableStateImpl) mutableTransitionState.c).getValue()).booleanValue()) {
                gapComposer.W(-621500880);
                gapComposer.p(false);
            } else {
                gapComposer.W(-622294666);
                Object K2 = gapComposer.K();
                if (K2 == composer$Companion$Empty$1) {
                    K2 = SnapshotStateKt.g(new TransformOrigin(TransformOrigin.b));
                    gapComposer.g0(K2);
                }
                MutableState mutableState = (MutableState) K2;
                Density density = (Density) gapComposer.j(CompositionLocalsKt.h);
                Object K3 = gapComposer.K();
                if (K3 == composer$Companion$Empty$1) {
                    K3 = new a1(mutableState, i11);
                    gapComposer.g0(K3);
                }
                AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j2, density, (Function2) K3), function02, popupProperties3, ComposableLambdaKt.b(1788768427, new g1(mutableTransitionState, mutableState, a2, modifier3, composableLambdaImpl), gapComposer), gapComposer, (i5 & 112) | 3456, 0);
                gapComposer.p(false);
            }
            popupProperties2 = popupProperties3;
            scrollState2 = a2;
            modifier2 = modifier3;
        } else {
            gapComposer.Q();
            modifier2 = modifier;
            scrollState2 = scrollState;
            popupProperties2 = popupProperties;
        }
        final long j3 = j2;
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: h1
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AndroidMenu_androidKt.a(z, function0, modifier2, j3, scrollState2, popupProperties2, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i | 1), i2);
                    return Unit.a;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(Function0 function0, Modifier modifier, boolean z, PaddingValues paddingValues, Function3 function3, Composer composer, int i, int i2) {
        int i3;
        int i4;
        boolean z2;
        int i5;
        int i6;
        boolean z3;
        Modifier modifier2;
        PaddingValues paddingValues2;
        RecomposeScopeImpl r;
        boolean z4;
        int i7;
        int i8;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(670540513);
        if ((i & 6) == 0) {
            if (gapComposer.h(function0)) {
                i8 = 4;
            } else {
                i8 = 2;
            }
            i3 = i8 | i;
        } else {
            i3 = i;
        }
        int i9 = i2 & 2;
        if (i9 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            if (gapComposer.f(modifier)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i3 |= i4;
        }
        int i10 = i2 & 4;
        if (i10 != 0) {
            i3 |= 384;
        } else if ((i & 384) == 0) {
            z2 = z;
            if (gapComposer.g(z2)) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i3 |= i5;
            i6 = i3 | 27648;
            if ((196608 & i) == 0) {
                if (gapComposer.h(function3)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i6 |= i7;
            }
            if ((74899 & i6) == 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!gapComposer.N(i6 & 1, z3)) {
                if (i9 != 0) {
                    modifier = Modifier.Companion.b;
                }
                Modifier modifier3 = modifier;
                if (i10 != 0) {
                    z4 = true;
                } else {
                    z4 = z2;
                }
                PaddingValuesImpl paddingValuesImpl = MenuDefaults.a;
                MenuKt.b(function0, modifier3, z4, paddingValuesImpl, function3, gapComposer, i6 & 524286);
                modifier2 = modifier3;
                z2 = z4;
                paddingValues2 = paddingValuesImpl;
            } else {
                gapComposer.Q();
                modifier2 = modifier;
                paddingValues2 = paddingValues;
            }
            r = gapComposer.r();
            if (r == null) {
                r.d = new f1(function0, modifier2, z2, paddingValues2, function3, i, i2);
                return;
            }
            return;
        }
        z2 = z;
        i6 = i3 | 27648;
        if ((196608 & i) == 0) {
        }
        if ((74899 & i6) == 74898) {
        }
        if (!gapComposer.N(i6 & 1, z3)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }
}
