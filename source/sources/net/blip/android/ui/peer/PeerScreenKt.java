package net.blip.android.ui.peer;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigation.NavHostController;
import defpackage.c;
import defpackage.fd;
import defpackage.i9;
import defpackage.s2;
import defpackage.v0;
import defpackage.w0;
import defpackage.y5;
import defpackage.zc;
import java.io.Serializable;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.android.ui.peer.PeerScreenKt;
import net.blip.android.ui.util.UmbrellaContentPickerKt;
import net.blip.libblip.Core;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.Users_DerivedKt;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Users;
import net.blip.shared.ProvideSharedCompositionLocalsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PeerScreenKt {
    public static final void a(final ImageVector imageVector, long j, String str, final String str2, boolean z, final Function0 function0, Composer composer, final int i, final int i2) {
        int i3;
        boolean z2;
        int i4;
        int i5;
        int i6;
        boolean z3;
        long j2;
        String str3;
        final boolean z4;
        boolean z5;
        float f;
        Function0 function02;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-669558117);
        if (gapComposer.f(imageVector)) {
            i3 = 4;
        } else {
            i3 = 2;
        }
        int i7 = i | i3;
        int i8 = i2 & 16;
        if (i8 != 0) {
            i5 = i7 | 24576;
            z2 = z;
        } else {
            z2 = z;
            if (gapComposer.g(z2)) {
                i4 = 16384;
            } else {
                i4 = 8192;
            }
            i5 = i7 | i4;
        }
        if (gapComposer.h(function0)) {
            i6 = 131072;
        } else {
            i6 = 65536;
        }
        int i9 = i5 | i6;
        if ((74899 & i9) != 74898) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposer.N(i9 & 1, z3)) {
            if (i8 != 0) {
                z5 = true;
            } else {
                z5 = z2;
            }
            if (z5) {
                f = 1.0f;
            } else {
                f = 0.4f;
            }
            Modifier a = AlphaKt.a(Modifier.Companion.b, f);
            j2 = j;
            ComposableLambdaImpl b = ComposableLambdaKt.b(-365828757, new v0(1, j2, imageVector), gapComposer);
            if (z5) {
                function02 = function0;
            } else {
                function02 = null;
            }
            str3 = str;
            ListRowKt.b(a, b, null, null, function02, null, ComposableLambdaKt.b(430581126, new zc(1, str3, str2), gapComposer), gapComposer, 1572912, 44);
            z4 = z5;
        } else {
            j2 = j;
            str3 = str;
            gapComposer.Q();
            z4 = z2;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            final long j3 = j2;
            final String str4 = str3;
            r.d = new Function2(j3, str4, str2, z4, function0, i, i2) { // from class: ed
                public final /* synthetic */ long k;
                public final /* synthetic */ String l;
                public final /* synthetic */ String m;
                public final /* synthetic */ boolean n;
                public final /* synthetic */ Function0 o;
                public final /* synthetic */ int p;

                {
                    this.p = i2;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a2 = RecomposeScopeImplKt.a(3505);
                    PeerScreenKt.a(ImageVector.this, this.k, this.l, this.m, this.n, this.o, (Composer) obj, a2, this.p);
                    return Unit.a;
                }
            };
        }
    }

    public static final void b(PeerId peerId, Composer composer, int i) {
        int i2;
        boolean z;
        RecomposeScopeImpl r;
        y5 y5Var;
        NavHostController navHostController;
        c cVar;
        peerId.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-153829014);
        if (gapComposer.h(peerId)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ProvideSharedCompositionLocalsKt.d;
            State b = ProvideSharedCompositionLocalsKt.b(dynamicProvidableCompositionLocal, gapComposer);
            c cVar2 = ((Core) gapComposer.j(dynamicProvidableCompositionLocal)).b;
            boolean f = gapComposer.f(peerId);
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (f || K == composer$Companion$Empty$1) {
                Users users = b.u;
                if (users != null) {
                    K = Users_DerivedKt.a(users, peerId);
                } else {
                    K = null;
                }
                gapComposer.g0(K);
            }
            Peer peer = (Peer) K;
            if (peer == null) {
                r = gapComposer.r();
                if (r != null) {
                    y5Var = new y5(peerId, i, 1);
                    r.d = y5Var;
                }
                return;
            }
            NavHostController navHostController2 = (NavHostController) gapComposer.j(NavigationRootKt.a);
            boolean b2 = UmbrellaContentPickerKt.b(gapComposer);
            boolean c = UmbrellaContentPickerKt.c(gapComposer);
            boolean h = gapComposer.h(context) | gapComposer.h(peerId);
            Object K2 = gapComposer.K();
            if (h || K2 == composer$Companion$Empty$1) {
                K2 = new PeerScreenKt$PeerScreen$1$1(context, peerId, null);
                gapComposer.g0(K2);
            }
            EffectsKt.e(gapComposer, peerId, (Function2) K2);
            boolean f2 = gapComposer.f(cVar2) | gapComposer.h(peerId) | gapComposer.h(navHostController2) | gapComposer.h(context);
            Object K3 = gapComposer.K();
            if (!f2 && K3 != composer$Companion$Empty$1) {
                navHostController = navHostController2;
                cVar = cVar2;
            } else {
                navHostController = navHostController2;
                cVar = cVar2;
                s2 s2Var = new s2((Function1) cVar, (Serializable) peerId, navHostController, context, 9);
                gapComposer.g0(s2Var);
                K3 = s2Var;
            }
            ScreenLockupKt.b(0L, ComposableLambdaKt.b(2134312330, new fd(navHostController, peer, context, peerId, cVar), gapComposer), ComposableLambdaKt.b(1324824873, new i9(peer, c, UmbrellaContentPickerKt.d((Function1) K3, gapComposer), b2), gapComposer), gapComposer, 432, 1);
        } else {
            gapComposer.Q();
        }
        r = gapComposer.r();
        if (r != null) {
            y5Var = new y5(peerId, i, 2);
            r.d = y5Var;
        }
    }

    public static final void c(Modifier modifier, long j, Painter painter, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1840425085);
        if (gapComposer.e(j)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i4 = i | i2;
        if (gapComposer.h(painter)) {
            i3 = 256;
        } else {
            i3 = 128;
        }
        int i5 = i4 | i3;
        if ((i5 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            modifier2 = modifier;
            Modifier b = BackgroundKt.b(modifier2, j, RoundedCornerShapeKt.a);
            MeasurePolicy d = BoxKt.d(Alignment.Companion.e, false);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, b);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            ImageKt.a(painter, "", null, null, null, 0.0f, ColorFilter.Companion.a(Color.d), gapComposer, 1572920 | ((i5 >> 6) & 14), 60);
            gapComposer.p(true);
        } else {
            modifier2 = modifier;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new w0(modifier2, j, painter, i);
        }
    }
}
