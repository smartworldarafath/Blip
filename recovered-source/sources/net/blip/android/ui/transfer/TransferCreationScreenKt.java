package net.blip.android.ui.transfer;

import android.content.Context;
import androidx.activity.compose.BackHandlerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.b1;
import defpackage.kb;
import defpackage.n1;
import defpackage.u;
import defpackage.u8;
import defpackage.v7;
import defpackage.zc;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.util.NuancedPermissionState;
import net.blip.android.ui.util.NuancedPermissionStateKt;
import net.blip.libblip.Core;
import net.blip.libblip.PeerPickerViewModel;
import net.blip.libblip.TransferChoosePeerViewModel;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.DisabledContentKt;
import net.blip.shared.OnDisposeKt;
import net.blip.shared.ProvideSharedCompositionLocalsKt;
import net.blip.shared.RememberViewModelsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransferCreationScreenKt {
    public static final void a(boolean z, PeerPickerViewModel peerPickerViewModel, Function1 function1, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        boolean z2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1037174105);
        if (gapComposer.g(z)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i5 = i2 | i;
        if (gapComposer.h(peerPickerViewModel)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i6 = i5 | i3;
        if (gapComposer.h(function1)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i7 = i6 | i4;
        if ((i7 & 147) != 146) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i7 & 1, z2)) {
            DisabledContentKt.b(null, !z, ComposableLambdaKt.b(-2116965005, new u(SnapshotStateKt.b(peerPickerViewModel.c, gapComposer), peerPickerViewModel, function1, 15), gapComposer), gapComposer, 384);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new v7(z, peerPickerViewModel, function1, i);
        }
    }

    public static final void b(String str, Function0 function0, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        str.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-852926591);
        if (gapComposer.f(str)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i2 | i;
        if (gapComposer.h(function0)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i5 = i4 | i3;
        boolean z2 = false;
        if ((i5 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            Core core = (Core) gapComposer.j(ProvideSharedCompositionLocalsKt.d);
            if ((((i5 & 14) ^ 6) > 4 && gapComposer.f(str)) || (i5 & 6) == 4) {
                z2 = true;
            }
            Object K = gapComposer.K();
            if (z2 || K == Composer.Companion.a) {
                K = new TransferChoosePeerViewModel(core, str);
                gapComposer.g0(K);
            }
            c((TransferChoosePeerViewModel) K, RememberViewModelsKt.a(gapComposer), function0, gapComposer, (i5 << 3) & 896);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new zc(i, 9, str, function0);
        }
    }

    public static final void c(TransferChoosePeerViewModel transferChoosePeerViewModel, PeerPickerViewModel peerPickerViewModel, Function0 function0, Composer composer, int i) {
        int i2;
        boolean z;
        GapComposer gapComposer;
        boolean z2;
        Transfer transfer;
        int i3;
        int i4;
        int i5;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-1007881742);
        if ((i & 6) == 0) {
            if (gapComposer2.h(transferChoosePeerViewModel)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer2.h(peerPickerViewModel)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer2.h(function0)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i2 |= i3;
        }
        boolean z3 = true;
        if ((i2 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer2.N(i2 & 1, z)) {
            MutableState b = SnapshotStateKt.b(transferChoosePeerViewModel.c, gapComposer2);
            MutableState b2 = SnapshotStateKt.b(peerPickerViewModel.c, gapComposer2);
            MutableState b3 = SnapshotStateKt.b(transferChoosePeerViewModel.d, gapComposer2);
            MutableState b4 = SnapshotStateKt.b(peerPickerViewModel.e, gapComposer2);
            boolean f = gapComposer2.f(b4) | gapComposer2.h(peerPickerViewModel);
            int i6 = i2 & 896;
            if (i6 == 256) {
                z2 = true;
            } else {
                z2 = false;
            }
            boolean z4 = f | z2;
            Object K = gapComposer2.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (z4 || K == composer$Companion$Empty$1) {
                K = new n1(peerPickerViewModel, function0, b4, 9);
                gapComposer2.g0(K);
            }
            BackHandlerKt.a(false, (Function0) K, gapComposer2, 0, 1);
            boolean h = gapComposer2.h(transferChoosePeerViewModel);
            Object K2 = gapComposer2.K();
            if (h || K2 == composer$Companion$Empty$1) {
                K2 = new kb(23, transferChoosePeerViewModel);
                gapComposer2.g0(K2);
            }
            OnDisposeKt.a(null, (Function0) K2, gapComposer2, 0);
            Context context = (Context) gapComposer2.j(AndroidCompositionLocals_androidKt.b);
            NuancedPermissionState b5 = NuancedPermissionStateKt.b(gapComposer2);
            Transfer transfer2 = (Transfer) b.getValue();
            boolean f2 = gapComposer2.f(b) | gapComposer2.h(b5) | gapComposer2.h(context);
            if (i6 != 256) {
                z3 = false;
            }
            boolean z5 = f2 | z3;
            Object K3 = gapComposer2.K();
            if (!z5 && K3 != composer$Companion$Empty$1) {
                transfer = transfer2;
            } else {
                transfer = transfer2;
                TransferCreationScreenKt$TransferCreationScreen$4$1 transferCreationScreenKt$TransferCreationScreen$4$1 = new TransferCreationScreenKt$TransferCreationScreen$4$1(b5, context, function0, b, null);
                b = b;
                gapComposer2.g0(transferCreationScreenKt$TransferCreationScreen$4$1);
                K3 = transferCreationScreenKt$TransferCreationScreen$4$1;
            }
            EffectsKt.e(gapComposer2, transfer, (Function2) K3);
            ComposableLambdaImpl b6 = ComposableLambdaKt.b(-1333879725, new u8(peerPickerViewModel, function0, transferChoosePeerViewModel, b, b3, b2, b4), gapComposer2);
            gapComposer = gapComposer2;
            ScreenLockupKt.b(0L, null, b6, gapComposer, 384, 3);
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1((Object) transferChoosePeerViewModel, (Object) peerPickerViewModel, function0, i, 16);
        }
    }
}
