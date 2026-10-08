package net.blip.android.ui.components;

import androidx.compose.material.AndroidAlertDialog_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.d;
import defpackage.s;
import defpackage.t;
import defpackage.w;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.components.AlertDialogKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AlertDialogKt {
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(final String str, final String str2, boolean z, Pair pair, final Pair pair2, Function0 function0, Composer composer, final int i, final int i2) {
        int i3;
        boolean z2;
        int i4;
        int i5;
        Pair pair3;
        int i6;
        int i7;
        Function0 function02;
        int i8;
        boolean z3;
        GapComposer gapComposer;
        final boolean z4;
        final Pair pair4;
        final Function0 function03;
        RecomposeScopeImpl r;
        Pair pair5;
        boolean z5;
        int i9;
        int i10;
        int i11;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-784861057);
        if ((i & 6) == 0) {
            if (gapComposer2.f(str)) {
                i11 = 4;
            } else {
                i11 = 2;
            }
            i3 = i11 | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer2.f(str2)) {
                i10 = 32;
            } else {
                i10 = 16;
            }
            i3 |= i10;
        }
        int i12 = i2 & 4;
        if (i12 != 0) {
            i3 |= 384;
        } else if ((i & 384) == 0) {
            z2 = z;
            if (gapComposer2.g(z2)) {
                i4 = 256;
            } else {
                i4 = 128;
            }
            i3 |= i4;
            i5 = i2 & 8;
            if (i5 == 0) {
                i3 |= 3072;
            } else if ((i & 3072) == 0) {
                pair3 = pair;
                if (gapComposer2.f(pair3)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i3 |= i6;
                if ((i & 24576) == 0) {
                    if (gapComposer2.f(pair2)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                i7 = i2 & 32;
                if (i7 != 0) {
                    i3 |= 196608;
                } else if ((196608 & i) == 0) {
                    function02 = function0;
                    if (gapComposer2.h(function02)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i3 |= i8;
                    int i13 = 1;
                    if ((74899 & i3) == 74898) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (!gapComposer2.N(i3 & 1, z3)) {
                        if (i12 != 0) {
                            z2 = false;
                        }
                        Function0 function04 = null;
                        if (i5 != 0) {
                            pair5 = null;
                        } else {
                            pair5 = pair3;
                        }
                        if (i7 == 0) {
                            function04 = function02;
                        }
                        if ((i3 & 458752) == 131072) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        Object K = gapComposer2.K();
                        if (z5 || K == Composer.Companion.a) {
                            K = new s(0, function04);
                            gapComposer2.g0(K);
                        }
                        gapComposer = gapComposer2;
                        AndroidAlertDialog_androidKt.a((Function0) K, ComposableLambdaKt.b(-2111035081, new t(pair5, z2), gapComposer2), null, ComposableLambdaKt.b(-1693146379, new d(1, pair2), gapComposer2), ComposableLambdaKt.b(663281620, new w(str, 0), gapComposer2), ComposableLambdaKt.b(-1275257677, new w(str2, i13), gapComposer2), null, 0L, 0L, null, gapComposer, 224304);
                        z4 = z2;
                        function03 = function04;
                        pair4 = pair5;
                    } else {
                        gapComposer = gapComposer2;
                        gapComposer.Q();
                        z4 = z2;
                        pair4 = pair3;
                        function03 = function02;
                    }
                    r = gapComposer.r();
                    if (r == null) {
                        r.d = new Function2() { // from class: y
                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                AlertDialogKt.a(str, str2, z4, pair4, pair2, function03, (Composer) obj, RecomposeScopeImplKt.a(i | 1), i2);
                                return Unit.a;
                            }
                        };
                        return;
                    }
                    return;
                }
                function02 = function0;
                int i132 = 1;
                if ((74899 & i3) == 74898) {
                }
                if (!gapComposer2.N(i3 & 1, z3)) {
                }
                r = gapComposer.r();
                if (r == null) {
                }
            }
            pair3 = pair;
            if ((i & 24576) == 0) {
            }
            i7 = i2 & 32;
            if (i7 != 0) {
            }
            function02 = function0;
            int i1322 = 1;
            if ((74899 & i3) == 74898) {
            }
            if (!gapComposer2.N(i3 & 1, z3)) {
            }
            r = gapComposer.r();
            if (r == null) {
            }
        }
        z2 = z;
        i5 = i2 & 8;
        if (i5 == 0) {
        }
        pair3 = pair;
        if ((i & 24576) == 0) {
        }
        i7 = i2 & 32;
        if (i7 != 0) {
        }
        function02 = function0;
        int i13222 = 1;
        if ((74899 & i3) == 74898) {
        }
        if (!gapComposer2.N(i3 & 1, z3)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }
}
