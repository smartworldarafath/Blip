package net.blip.android.ui.list;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import defpackage.bd;
import defpackage.dc;
import defpackage.f1;
import defpackage.o1;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;
import net.blip.libblip.Peer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PeerListRowKt {
    /* JADX WARN: Removed duplicated region for block: B:14:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(Modifier modifier, Peer peer, boolean z, Function0 function0, Function4 function4, Composer composer, int i, int i2) {
        boolean z2;
        int i3;
        int i4;
        Function4 function42;
        int i5;
        int i6;
        boolean z3;
        Modifier modifier2;
        RecomposeScopeImpl r;
        boolean z4;
        Function4 function43;
        int i7;
        int i8;
        peer.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-189024941);
        int i9 = i | 6;
        if ((i & 48) == 0) {
            if (gapComposer.h(peer)) {
                i8 = 32;
            } else {
                i8 = 16;
            }
            i9 |= i8;
        }
        int i10 = i2 & 4;
        if (i10 != 0) {
            i9 |= 384;
        } else if ((i & 384) == 0) {
            z2 = z;
            if (gapComposer.g(z2)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i9 |= i3;
            if ((i & 3072) == 0) {
                if (gapComposer.h(function0)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i9 |= i7;
            }
            i4 = i2 & 16;
            if (i4 == 0) {
                i9 |= 24576;
            } else if ((i & 24576) == 0) {
                function42 = function4;
                if (gapComposer.h(function42)) {
                    i5 = 16384;
                } else {
                    i5 = 8192;
                }
                i9 |= i5;
                i6 = i9;
                if ((i6 & 9363) != 9362) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposer.N(i6 & 1, z3)) {
                    if (i10 != 0) {
                        z4 = false;
                    } else {
                        z4 = z2;
                    }
                    if (i4 != 0) {
                        function43 = null;
                    } else {
                        function43 = function42;
                    }
                    Object K = gapComposer.K();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                    if (K == composer$Companion$Empty$1) {
                        K = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer.g0(K);
                    }
                    MutableState mutableState = (MutableState) K;
                    ComposableLambdaImpl b = ComposableLambdaKt.b(621452323, new bd(peer, 0), gapComposer);
                    Object K2 = gapComposer.K();
                    if (K2 == composer$Companion$Empty$1) {
                        K2 = new o1(mutableState, 28);
                        gapComposer.g0(K2);
                    }
                    ComposableLambdaImpl b2 = ComposableLambdaKt.b(-481309570, new dc(peer, z4, function43, mutableState, 1), gapComposer);
                    int i11 = (i6 & 14) | 1769520 | ((i6 << 3) & 57344);
                    Modifier.Companion companion = Modifier.Companion.b;
                    ListRowKt.b(companion, b, null, null, function0, (Function0) K2, b2, gapComposer, i11, 12);
                    function42 = function43;
                    modifier2 = companion;
                    z2 = z4;
                } else {
                    gapComposer.Q();
                    modifier2 = modifier;
                }
                r = gapComposer.r();
                if (r != null) {
                    r.d = new f1(modifier2, peer, z2, function0, function42, i, i2);
                    return;
                }
                return;
            }
            function42 = function4;
            i6 = i9;
            if ((i6 & 9363) != 9362) {
            }
            if (gapComposer.N(i6 & 1, z3)) {
            }
            r = gapComposer.r();
            if (r != null) {
            }
        }
        z2 = z;
        if ((i & 3072) == 0) {
        }
        i4 = i2 & 16;
        if (i4 == 0) {
        }
        function42 = function4;
        i6 = i9;
        if ((i6 & 9363) != 9362) {
        }
        if (gapComposer.N(i6 & 1, z3)) {
        }
        r = gapComposer.r();
        if (r != null) {
        }
    }
}
