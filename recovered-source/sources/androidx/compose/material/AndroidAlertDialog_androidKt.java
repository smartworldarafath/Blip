package androidx.compose.material;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material.AndroidAlertDialog_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
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
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import androidx.compose.ui.window.DialogProperties;
import defpackage.q;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidAlertDialog_androidKt {
    public static final void a(final Function0 function0, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, Function2 function2, final Function2 function22, final Function2 function23, Shape shape, long j, long j2, DialogProperties dialogProperties, Composer composer, final int i) {
        int i2;
        boolean z;
        final ComposableLambdaImpl composableLambdaImpl2;
        final Function2 function24;
        Modifier modifier2;
        final Shape shape2;
        final long j3;
        final long j4;
        final DialogProperties dialogProperties2;
        int i3;
        DialogProperties dialogProperties3;
        long j5;
        Shape shape3;
        long j6;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1967984963);
        if (gapComposer.h(function0)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i | i2 | 843579776;
        if ((306783379 & i4) != 306783378) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i4 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
                i3 = i4 & (-267911169);
                modifier2 = modifier;
                shape3 = shape;
                j6 = j;
                j5 = j2;
                dialogProperties3 = dialogProperties;
            } else {
                RoundedCornerShape roundedCornerShape = MaterialTheme.b(gapComposer).b;
                long f = MaterialTheme.a(gapComposer).f();
                long b = ColorsKt.b(f, gapComposer);
                i3 = i4 & (-267911169);
                dialogProperties3 = new DialogProperties();
                j5 = b;
                modifier2 = Modifier.Companion.b;
                shape3 = roundedCornerShape;
                j6 = f;
            }
            gapComposer.q();
            composableLambdaImpl2 = composableLambdaImpl;
            function24 = function2;
            b(function0, ComposableLambdaKt.b(-309297447, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogImpl$1
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    boolean z2;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Number) obj2).intValue();
                    if ((intValue & 3) != 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.N(intValue & 1, z2)) {
                        Modifier e = PaddingKt.e(SizeKt.d(Modifier.Companion.b, 1.0f), 8.0f, 2.0f);
                        MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
                        int a = ComposablesKt.a(gapComposer2);
                        PersistentCompositionLocalMap l = gapComposer2.l();
                        Modifier c = ComposedModifierKt.c(gapComposer2, e);
                        ComposeUiNode.b.getClass();
                        gapComposer2.Z();
                        if (gapComposer2.S) {
                            gapComposer2.k(LayoutNode.b0);
                        } else {
                            gapComposer2.j0();
                        }
                        Updater.c(gapComposer2, d, ComposeUiNode.Companion.d);
                        Updater.c(gapComposer2, l, ComposeUiNode.Companion.c);
                        if (gapComposer2.S || !Intrinsics.a(gapComposer2.K(), Integer.valueOf(a))) {
                            q.r(a, gapComposer2, a, ComposeUiNode.Companion.e);
                        }
                        Updater.c(gapComposer2, c, ComposeUiNode.Companion.b);
                        final Function2 function25 = Function2.this;
                        final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                        AlertDialogKt.c(ComposableLambdaKt.b(-1975681962, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogImpl$1$1$1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj3, Object obj4) {
                                boolean z3;
                                Composer composer3 = (Composer) obj3;
                                int intValue2 = ((Number) obj4).intValue();
                                if ((intValue2 & 3) != 2) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                GapComposer gapComposer3 = (GapComposer) composer3;
                                if (gapComposer3.N(intValue2 & 1, z3)) {
                                    Function2 function26 = Function2.this;
                                    if (function26 == null) {
                                        gapComposer3.W(690531395);
                                    } else {
                                        gapComposer3.W(-254819458);
                                        function26.n(gapComposer3, 0);
                                    }
                                    gapComposer3.p(false);
                                    composableLambdaImpl3.n(gapComposer3, 0);
                                } else {
                                    gapComposer3.Q();
                                }
                                return Unit.a;
                            }
                        }, gapComposer2), gapComposer2, 438);
                        gapComposer2.p(true);
                    } else {
                        gapComposer2.Q();
                    }
                    return Unit.a;
                }
            }, gapComposer), modifier2, function22, function23, shape3, j6, j5, dialogProperties3, gapComposer, (i3 & 14) | 100691376, 0);
            shape2 = shape3;
            j3 = j6;
            j4 = j5;
            dialogProperties2 = dialogProperties3;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            function24 = function2;
            gapComposer.Q();
            modifier2 = modifier;
            shape2 = shape;
            j3 = j;
            j4 = j2;
            dialogProperties2 = dialogProperties;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            final Function2 function25 = function24;
            final Modifier modifier3 = modifier2;
            r.d = new Function2(composableLambdaImpl2, modifier3, function25, function22, function23, shape2, j3, j4, dialogProperties2, i) { // from class: h0
                public final /* synthetic */ ComposableLambdaImpl k;
                public final /* synthetic */ Modifier l;
                public final /* synthetic */ Function2 m;
                public final /* synthetic */ Function2 n;
                public final /* synthetic */ Function2 o;
                public final /* synthetic */ Shape p;
                public final /* synthetic */ long q;
                public final /* synthetic */ long r;
                public final /* synthetic */ DialogProperties s;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a = RecomposeScopeImplKt.a(224305);
                    AndroidAlertDialog_androidKt.a(Function0.this, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, (Composer) obj, a);
                    return Unit.a;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(final Function0 function0, final ComposableLambdaImpl composableLambdaImpl, Modifier modifier, final Function2 function2, final Function2 function22, Shape shape, long j, long j2, DialogProperties dialogProperties, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        Function2 function23;
        Function2 function24;
        Shape shape2;
        long j3;
        long j4;
        int i5;
        int i6;
        int i7;
        boolean z;
        final Modifier modifier3;
        final Shape shape3;
        final long j5;
        final long j6;
        final DialogProperties dialogProperties2;
        RecomposeScopeImpl r;
        Modifier modifier4;
        Shape shape4;
        long j7;
        long j8;
        final Modifier modifier5;
        int i8;
        DialogProperties dialogProperties3;
        final Shape shape5;
        final long j9;
        final long j10;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1409209698);
        if ((i & 6) == 0) {
            if (gapComposer.h(function0)) {
                i15 = 4;
            } else {
                i15 = 2;
            }
            i3 = i15 | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i3 |= i14;
        }
        int i16 = i2 & 4;
        if (i16 != 0) {
            i3 |= 384;
        } else if ((i & 384) == 0) {
            modifier2 = modifier;
            if (gapComposer.f(modifier2)) {
                i4 = 256;
            } else {
                i4 = 128;
            }
            i3 |= i4;
            if ((i & 3072) != 0) {
                function23 = function2;
                if (gapComposer.h(function23)) {
                    i13 = 2048;
                } else {
                    i13 = 1024;
                }
                i3 |= i13;
            } else {
                function23 = function2;
            }
            if ((i & 24576) != 0) {
                function24 = function22;
                if (gapComposer.h(function24)) {
                    i12 = 16384;
                } else {
                    i12 = 8192;
                }
                i3 |= i12;
            } else {
                function24 = function22;
            }
            if ((196608 & i) != 0) {
                if ((i2 & 32) == 0) {
                    shape2 = shape;
                    if (gapComposer.f(shape2)) {
                        i11 = 131072;
                        i3 |= i11;
                    }
                } else {
                    shape2 = shape;
                }
                i11 = 65536;
                i3 |= i11;
            } else {
                shape2 = shape;
            }
            if ((1572864 & i) != 0) {
                if ((i2 & 64) == 0) {
                    j3 = j;
                    if (gapComposer.e(j3)) {
                        i10 = 1048576;
                        i3 |= i10;
                    }
                } else {
                    j3 = j;
                }
                i10 = 524288;
                i3 |= i10;
            } else {
                j3 = j;
            }
            if ((12582912 & i) != 0) {
                if ((i2 & 128) == 0) {
                    j4 = j2;
                    if (gapComposer.e(j4)) {
                        i9 = 8388608;
                        i3 |= i9;
                    }
                } else {
                    j4 = j2;
                }
                i9 = 4194304;
                i3 |= i9;
            } else {
                j4 = j2;
            }
            i5 = i2 & 256;
            if (i5 == 0) {
                i6 = i3 | 100663296;
            } else {
                int i17 = i3;
                if ((i & 100663296) == 0) {
                    if (gapComposer.f(dialogProperties)) {
                        i7 = 67108864;
                    } else {
                        i7 = 33554432;
                    }
                    i6 = i17 | i7;
                } else {
                    i6 = i17;
                }
            }
            if ((i6 & 38347923) == 38347922) {
                z = true;
            } else {
                z = false;
            }
            if (!gapComposer.N(i6 & 1, z)) {
                gapComposer.S();
                if ((i & 1) != 0 && !gapComposer.x()) {
                    gapComposer.Q();
                    if ((i2 & 32) != 0) {
                        i6 &= -458753;
                    }
                    if ((i2 & 64) != 0) {
                        i6 &= -3670017;
                    }
                    if ((i2 & 128) != 0) {
                        i6 &= -29360129;
                    }
                    dialogProperties3 = dialogProperties;
                    shape5 = shape2;
                    j9 = j3;
                    j10 = j4;
                    i8 = i6;
                    modifier5 = modifier2;
                } else {
                    if (i16 != 0) {
                        modifier4 = Modifier.Companion.b;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 32) != 0) {
                        shape4 = MaterialTheme.b(gapComposer).b;
                        i6 &= -458753;
                    } else {
                        shape4 = shape2;
                    }
                    if ((i2 & 64) != 0) {
                        j7 = MaterialTheme.a(gapComposer).f();
                        i6 &= -3670017;
                    } else {
                        j7 = j3;
                    }
                    if ((i2 & 128) != 0) {
                        j8 = ColorsKt.b(j7, gapComposer);
                        i6 &= -29360129;
                    } else {
                        j8 = j4;
                    }
                    if (i5 != 0) {
                        dialogProperties3 = new DialogProperties();
                        int i18 = i6;
                        modifier5 = modifier4;
                        i8 = i18;
                    } else {
                        int i19 = i6;
                        modifier5 = modifier4;
                        i8 = i19;
                        dialogProperties3 = dialogProperties;
                    }
                    shape5 = shape4;
                    j9 = j7;
                    j10 = j8;
                }
                gapComposer.q();
                final Function2 function25 = function23;
                final Function2 function26 = function24;
                AndroidDialog_androidKt.a(function0, dialogProperties3, ComposableLambdaKt.b(-488319269, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogImpl$2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object n(Object obj, Object obj2) {
                        boolean z2;
                        Composer composer2 = (Composer) obj;
                        int intValue = ((Number) obj2).intValue();
                        if ((intValue & 3) != 2) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        GapComposer gapComposer2 = (GapComposer) composer2;
                        if (gapComposer2.N(intValue & 1, z2)) {
                            AlertDialogKt.b(ComposableLambdaImpl.this, modifier5, function25, function26, shape5, j9, j10, gapComposer2, 0);
                        } else {
                            gapComposer2.Q();
                        }
                        return Unit.a;
                    }
                }, gapComposer), gapComposer, (i8 & 14) | 384 | (((268435454 & i8) >> 21) & 112));
                dialogProperties2 = dialogProperties3;
                modifier3 = modifier5;
                shape3 = shape5;
                j5 = j9;
                j6 = j10;
            } else {
                gapComposer.Q();
                modifier3 = modifier2;
                shape3 = shape2;
                j5 = j3;
                j6 = j4;
                dialogProperties2 = dialogProperties;
            }
            r = gapComposer.r();
            if (r == null) {
                r.d = new Function2() { // from class: g0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object n(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int a = RecomposeScopeImplKt.a(i | 1);
                        AndroidAlertDialog_androidKt.b(Function0.this, composableLambdaImpl, modifier3, function2, function22, shape3, j5, j6, dialogProperties2, (Composer) obj, a, i2);
                        return Unit.a;
                    }
                };
                return;
            }
            return;
        }
        modifier2 = modifier;
        if ((i & 3072) != 0) {
        }
        if ((i & 24576) != 0) {
        }
        if ((196608 & i) != 0) {
        }
        if ((1572864 & i) != 0) {
        }
        if ((12582912 & i) != 0) {
        }
        i5 = i2 & 256;
        if (i5 == 0) {
        }
        if ((i6 & 38347923) == 38347922) {
        }
        if (!gapComposer.N(i6 & 1, z)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }
}
