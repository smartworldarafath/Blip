package androidx.compose.material;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material.AlertDialogKt;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.a0;
import defpackage.c0;
import defpackage.e6;
import defpackage.q;
import defpackage.u;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AlertDialogKt {
    public static final Modifier a;
    public static final Modifier b;
    public static final long c;
    public static final long d;
    public static final long e;

    static {
        Modifier.Companion companion = Modifier.Companion.b;
        a = PaddingKt.h(companion, 24.0f, 0.0f, 24.0f, 0.0f, 10);
        b = PaddingKt.h(companion, 24.0f, 0.0f, 24.0f, 28.0f, 2);
        c = TextUnitKt.d(40);
        d = TextUnitKt.d(36);
        e = TextUnitKt.d(38);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(Function2 function2, Function2 function22, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        boolean z2;
        boolean z3;
        int i4 = 0;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1213983107);
        if (gapComposer.h(function2)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i5 = i | i2;
        if (gapComposer.h(function22)) {
            i3 = 256;
        } else {
            i3 = 128;
        }
        int i6 = i5 | i3;
        if ((i6 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i6 & 1, z)) {
            Modifier b2 = ColumnScopeInstance.a.b(false);
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = AlertDialogKt$AlertDialogBaselineLayout$2$1.a;
                gapComposer.g0(K);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) K;
            int a2 = ComposablesKt.a(gapComposer);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c2 = ComposedModifierKt.c(gapComposer, b2);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            boolean z4 = gapComposer.S;
            Function0 function0 = LayoutNode.b0;
            if (z4) {
                gapComposer.k(function0);
            } else {
                gapComposer.j0();
            }
            e6 e6Var = ComposeUiNode.Companion.d;
            Updater.c(gapComposer, measurePolicy, e6Var);
            e6 e6Var2 = ComposeUiNode.Companion.c;
            Updater.c(gapComposer, l, e6Var2);
            boolean z5 = gapComposer.S;
            e6 e6Var3 = ComposeUiNode.Companion.e;
            if (z5 || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a2))) {
                q.r(a2, gapComposer, a2, e6Var3);
            }
            e6 e6Var4 = ComposeUiNode.Companion.b;
            Updater.c(gapComposer, c2, e6Var4);
            BiasAlignment biasAlignment = Alignment.Companion.a;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.m;
            if (function2 == null) {
                gapComposer.W(1809237538);
                gapComposer.p(false);
                z2 = 0;
            } else {
                gapComposer.W(1809237539);
                Modifier l2 = LayoutIdKt.b(a, "title").l(new HorizontalAlignElement(horizontal));
                MeasurePolicy d2 = BoxKt.d(biasAlignment, false);
                int a3 = ComposablesKt.a(gapComposer);
                PersistentCompositionLocalMap l3 = gapComposer.l();
                Modifier c3 = ComposedModifierKt.c(gapComposer, l2);
                gapComposer.Z();
                if (gapComposer.S) {
                    gapComposer.k(function0);
                } else {
                    gapComposer.j0();
                }
                Updater.c(gapComposer, d2, e6Var);
                Updater.c(gapComposer, l3, e6Var2);
                if (gapComposer.S || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a3))) {
                    q.r(a3, gapComposer, a3, e6Var3);
                }
                Updater.c(gapComposer, c3, e6Var4);
                function2.n(gapComposer, 0);
                gapComposer.p(true);
                z2 = 0;
                gapComposer.p(false);
            }
            if (function22 == null) {
                gapComposer.W(1809370342);
                gapComposer.p(z2);
                i4 = z2;
                z3 = true;
            } else {
                gapComposer.W(1809370343);
                Modifier l4 = LayoutIdKt.b(b, "text").l(new HorizontalAlignElement(horizontal));
                MeasurePolicy d3 = BoxKt.d(biasAlignment, z2);
                int a4 = ComposablesKt.a(gapComposer);
                PersistentCompositionLocalMap l5 = gapComposer.l();
                Modifier c4 = ComposedModifierKt.c(gapComposer, l4);
                gapComposer.Z();
                if (gapComposer.S) {
                    gapComposer.k(function0);
                } else {
                    gapComposer.j0();
                }
                Updater.c(gapComposer, d3, e6Var);
                Updater.c(gapComposer, l5, e6Var2);
                if (gapComposer.S || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a4))) {
                    q.r(a4, gapComposer, a4, e6Var3);
                }
                Updater.c(gapComposer, c4, e6Var4);
                function22.n(gapComposer, 0);
                z3 = true;
                gapComposer.p(true);
                i4 = 0;
                gapComposer.p(false);
            }
            gapComposer.p(z3);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(i, i4, function2, function22);
        }
    }

    public static final void b(final ComposableLambdaImpl composableLambdaImpl, final Modifier modifier, final Function2 function2, final Function2 function22, final Shape shape, final long j, final long j2, Composer composer, final int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1945098332);
        if (gapComposer.h(composableLambdaImpl)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i9 = i | i2;
        if (gapComposer.f(modifier)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i10 = i9 | i3;
        if (gapComposer.h(function2)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i11 = i10 | i4;
        if (gapComposer.h(function22)) {
            i5 = 2048;
        } else {
            i5 = 1024;
        }
        int i12 = i11 | i5;
        if (gapComposer.f(shape)) {
            i6 = 16384;
        } else {
            i6 = 8192;
        }
        int i13 = i12 | i6;
        if (gapComposer.e(j)) {
            i7 = 131072;
        } else {
            i7 = 65536;
        }
        int i14 = i13 | i7;
        if (gapComposer.e(j2)) {
            i8 = 1048576;
        } else {
            i8 = 524288;
        }
        int i15 = i14 | i8;
        int i16 = 0;
        if ((599187 & i15) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i15 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
            }
            gapComposer.q();
            int i17 = ((i15 >> 3) & 14) | 1572864;
            int i18 = i15 >> 9;
            SurfaceKt.a(modifier, shape, j, j2, 0.0f, ComposableLambdaKt.b(802957984, new u(function2, function22, composableLambdaImpl, i16), gapComposer), gapComposer, i17 | (i18 & 112) | (i18 & 896) | (i18 & 7168), 48);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(modifier, function2, function22, shape, j, j2, i) { // from class: v
                public final /* synthetic */ Modifier k;
                public final /* synthetic */ Function2 l;
                public final /* synthetic */ Function2 m;
                public final /* synthetic */ Shape n;
                public final /* synthetic */ long o;
                public final /* synthetic */ long p;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a2 = RecomposeScopeImplKt.a(1);
                    AlertDialogKt.b(ComposableLambdaImpl.this, this.k, this.l, this.m, this.n, this.o, this.p, (Composer) obj, a2);
                    return Unit.a;
                }
            };
        }
    }

    public static final void c(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1271829505);
        int i2 = 0;
        if ((i & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = new Object();
                gapComposer.g0(K);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) K;
            int a2 = ComposablesKt.a(gapComposer);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c2 = ComposedModifierKt.c(gapComposer, Modifier.Companion.b);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, measurePolicy, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            if (gapComposer.S || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a2))) {
                q.r(a2, gapComposer, a2, ComposeUiNode.Companion.e);
            }
            Updater.c(gapComposer, c2, ComposeUiNode.Companion.b);
            composableLambdaImpl.n(gapComposer, 6);
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new c0(composableLambdaImpl, i, i2);
        }
    }
}
