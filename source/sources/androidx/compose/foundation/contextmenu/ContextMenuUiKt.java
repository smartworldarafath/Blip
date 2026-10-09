package androidx.compose.foundation.contextmenu;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.BasicTextKt;
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
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.window.PopupProperties;
import defpackage.b1;
import defpackage.e6;
import defpackage.i0;
import defpackage.q;
import defpackage.q6;
import defpackage.x9;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ContextMenuUiKt {
    public static final ContextMenuColors a;

    static {
        new PopupProperties(30);
        long j = Color.d;
        long j2 = Color.b;
        a = new ContextMenuColors(j, j2, j2, Color.b(j2, 0.38f), Color.b(j2, 0.38f));
    }

    public static final void a(ContextMenuColors contextMenuColors, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        Modifier modifier2;
        int i3;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-527864079);
        if ((i & 6) == 0) {
            if (gapComposer.f(contextMenuColors)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.f(modifier)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i2 |= i3;
        }
        if ((i2 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            BiasAlignment.Vertical vertical = ContextMenuSpec.a;
            modifier2 = modifier;
            Modifier b = BackgroundKt.b(ShadowKt.a(modifier2, 3.0f, RoundedCornerShapeKt.b(4.0f), 0L, 28), contextMenuColors.a, RectangleShapeKt.a);
            IntrinsicSize intrinsicSize = IntrinsicSize.j;
            Modifier b2 = ScrollKt.b(PaddingKt.f(IntrinsicKt.a(b), 0.0f, ContextMenuSpec.d, 1), ScrollKt.a(gapComposer));
            int i6 = (i2 << 3) & 7168;
            ColumnMeasurePolicy a2 = ColumnKt.a(Arrangement.b, Alignment.Companion.m, gapComposer, 0);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, b2);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, a2, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            composableLambdaImpl.f(ColumnScopeInstance.a, gapComposer, Integer.valueOf(((i6 >> 6) & 112) | 6));
            gapComposer.p(true);
        } else {
            modifier2 = modifier;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1(contextMenuColors, modifier2, composableLambdaImpl, i, 9);
        }
    }

    public static final void b(Modifier modifier, ContextMenuColors contextMenuColors, Function1 function1, Composer composer, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-625529233);
        int i8 = i2 & 1;
        if (i8 != 0) {
            i4 = i | 6;
        } else {
            if (gapComposer.f(modifier)) {
                i3 = 4;
            } else {
                i3 = 2;
            }
            i4 = i3 | i;
        }
        int i9 = i2 & 2;
        if (i9 != 0) {
            i6 = i4 | 48;
        } else {
            if (gapComposer.f(contextMenuColors)) {
                i5 = 32;
            } else {
                i5 = 16;
            }
            i6 = i4 | i5;
        }
        if (gapComposer.h(function1)) {
            i7 = 256;
        } else {
            i7 = 128;
        }
        int i10 = i6 | i7;
        if ((i10 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i10 & 1, z)) {
            if (i8 != 0) {
                modifier = Modifier.Companion.b;
            }
            if (i9 != 0) {
                contextMenuColors = a;
            }
            a(contextMenuColors, modifier, ComposableLambdaKt.b(-250345048, new i0(3, function1, contextMenuColors), gapComposer), gapComposer, ((i10 << 3) & 112) | ((i10 >> 3) & 14) | 384);
        } else {
            gapComposer.Q();
        }
        Modifier modifier2 = modifier;
        ContextMenuColors contextMenuColors2 = contextMenuColors;
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1(modifier2, contextMenuColors2, function1, i, i2);
        }
    }

    public static final void c(final String str, final boolean z, final ContextMenuColors contextMenuColors, final Modifier modifier, final Function3 function3, final Function0 function0, Composer composer, final int i) {
        int i2;
        boolean z2;
        GapComposer gapComposer;
        boolean z3;
        boolean z4;
        long j;
        boolean z5;
        long j2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-2001167027);
        if ((i & 6) == 0) {
            if (gapComposer2.f(str)) {
                i8 = 4;
            } else {
                i8 = 2;
            }
            i2 = i8 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer2.g(z)) {
                i7 = 32;
            } else {
                i7 = 16;
            }
            i2 |= i7;
        }
        if ((i & 384) == 0) {
            if (gapComposer2.f(contextMenuColors)) {
                i6 = 256;
            } else {
                i6 = 128;
            }
            i2 |= i6;
        }
        if ((i & 3072) == 0) {
            if (gapComposer2.f(modifier)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i2 |= i5;
        }
        if ((i & 24576) == 0) {
            if (gapComposer2.h(function3)) {
                i4 = 16384;
            } else {
                i4 = 8192;
            }
            i2 |= i4;
        }
        if ((196608 & i) == 0) {
            if (gapComposer2.h(function0)) {
                i3 = 131072;
            } else {
                i3 = 65536;
            }
            i2 |= i3;
        }
        int i9 = i2;
        if ((74899 & i9) != 74898) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer2.N(i9 & 1, z2)) {
            BiasAlignment.Vertical vertical = ContextMenuSpec.a;
            float f = ContextMenuSpec.c;
            Arrangement.SpacedAligned e = Arrangement.e(f);
            if ((i9 & 112) == 32) {
                z3 = true;
            } else {
                z3 = false;
            }
            if ((458752 & i9) == 131072) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean z6 = z3 | z4;
            Object K = gapComposer2.K();
            if (z6 || K == Composer.Companion.a) {
                K = new q6(0, function0, z);
                gapComposer2.g0(K);
            }
            Modifier f2 = PaddingKt.f(SizeKt.m(SizeKt.d(ClickableKt.b(modifier, z, str, null, (Function0) K, 12), 1.0f), 112.0f, 48.0f, 280.0f, 48.0f), f, 0.0f, 2);
            RowMeasurePolicy a2 = RowKt.a(e, vertical, gapComposer2, 54);
            int hashCode = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap l = gapComposer2.l();
            Modifier c = ComposedModifierKt.c(gapComposer2, f2);
            ComposeUiNode.b.getClass();
            gapComposer2.Z();
            boolean z7 = gapComposer2.S;
            x9 x9Var = LayoutNode.b0;
            if (z7) {
                gapComposer2.k(x9Var);
            } else {
                gapComposer2.j0();
            }
            e6 e6Var = ComposeUiNode.Companion.d;
            Updater.c(gapComposer2, a2, e6Var);
            e6 e6Var2 = ComposeUiNode.Companion.c;
            Updater.c(gapComposer2, l, e6Var2);
            Integer valueOf = Integer.valueOf(hashCode);
            e6 e6Var3 = ComposeUiNode.Companion.e;
            Updater.c(gapComposer2, valueOf, e6Var3);
            Updater.b(gapComposer2);
            e6 e6Var4 = ComposeUiNode.Companion.b;
            Updater.c(gapComposer2, c, e6Var4);
            if (function3 == null) {
                gapComposer2.W(-1597947094);
                gapComposer2.p(false);
                z5 = true;
            } else {
                gapComposer2.W(-1597947093);
                float f3 = ContextMenuSpec.e;
                Modifier i10 = SizeKt.i(Modifier.Companion.b, f3, 0.0f, f3, f3, 2);
                MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
                int hashCode2 = Long.hashCode(gapComposer2.T);
                PersistentCompositionLocalMap l2 = gapComposer2.l();
                Modifier c2 = ComposedModifierKt.c(gapComposer2, i10);
                gapComposer2.Z();
                if (gapComposer2.S) {
                    gapComposer2.k(x9Var);
                } else {
                    gapComposer2.j0();
                }
                Updater.c(gapComposer2, d, e6Var);
                Updater.c(gapComposer2, l2, e6Var2);
                q.s(hashCode2, gapComposer2, e6Var3, gapComposer2);
                Updater.c(gapComposer2, c2, e6Var4);
                if (z) {
                    j = contextMenuColors.c;
                } else {
                    j = contextMenuColors.e;
                }
                function3.f(new Color(j), gapComposer2, 0);
                z5 = true;
                gapComposer2.p(true);
                gapComposer2.p(false);
            }
            if (z) {
                j2 = contextMenuColors.b;
            } else {
                j2 = contextMenuColors.d;
            }
            long j3 = j2;
            BasicTextKt.b(str, RowScopeInstance.a.a(), new TextStyle(j3, ContextMenuSpec.h, ContextMenuSpec.i, null, ContextMenuSpec.k, ContextMenuSpec.b, ContextMenuSpec.j, 0, 16613240), 0, false, 1, 0, null, gapComposer2, (i9 & 14) | 1572864, 952);
            gapComposer = gapComposer2;
            gapComposer.p(z5);
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: r6
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    ContextMenuUiKt.c(str, z, contextMenuColors, modifier, function3, function0, (Composer) obj, RecomposeScopeImplKt.a(i | 1));
                    return Unit.a;
                }
            };
        }
    }
}
