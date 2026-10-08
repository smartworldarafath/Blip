package net.blip.android.ui.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.blip.android.ui.components.MaxRowGridKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MaxRowGridKt {
    public static final void a(Modifier modifier, final ArrayList arrayList, int i, final int i2, final float f, final Function2 function2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i3) {
        int i4;
        int i5;
        boolean z;
        final Modifier modifier2;
        final int i6;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1468142985);
        int i7 = i3 | 6;
        if (gapComposer.f(arrayList)) {
            i4 = 32;
        } else {
            i4 = 16;
        }
        int i8 = i7 | i4 | 384;
        if (gapComposer.d(i2)) {
            i5 = 2048;
        } else {
            i5 = 1024;
        }
        int i9 = i8 | i5;
        if ((4793491 & i9) != 4793490) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i9 & 1, z)) {
            ComposableLambdaImpl b = ComposableLambdaKt.b(-1957274931, new Function3() { // from class: ya
                @Override // kotlin.jvm.functions.Function3
                public final Object f(Object obj, Object obj2, Object obj3) {
                    boolean z2;
                    int i10;
                    BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    boxWithConstraintsScope.getClass();
                    if ((intValue & 6) == 0) {
                        if (((GapComposer) composer2).f(boxWithConstraintsScope)) {
                            i10 = 4;
                        } else {
                            i10 = 2;
                        }
                        intValue |= i10;
                    }
                    if ((intValue & 19) != 18) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.N(intValue & 1, z2)) {
                        float c = boxWithConstraintsScope.c();
                        float f2 = f;
                        Arrangement.SpacedAligned e = Arrangement.e(f2);
                        BiasAlignment.Horizontal horizontal = Alignment.Companion.m;
                        ColumnMeasurePolicy a = ColumnKt.a(e, horizontal, gapComposer2, 0);
                        int hashCode = Long.hashCode(gapComposer2.T);
                        PersistentCompositionLocalMap l = gapComposer2.l();
                        Modifier.Companion companion = Modifier.Companion.b;
                        Modifier c2 = ComposedModifierKt.c(gapComposer2, companion);
                        ComposeUiNode.b.getClass();
                        gapComposer2.Z();
                        boolean z3 = gapComposer2.S;
                        x9 x9Var = LayoutNode.b0;
                        if (z3) {
                            gapComposer2.k(x9Var);
                        } else {
                            gapComposer2.j0();
                        }
                        e6 e6Var = ComposeUiNode.Companion.d;
                        Updater.c(gapComposer2, a, e6Var);
                        e6 e6Var2 = ComposeUiNode.Companion.c;
                        Updater.c(gapComposer2, l, e6Var2);
                        Integer valueOf = Integer.valueOf(hashCode);
                        e6 e6Var3 = ComposeUiNode.Companion.e;
                        Updater.c(gapComposer2, valueOf, e6Var3);
                        Updater.b(gapComposer2);
                        e6 e6Var4 = ComposeUiNode.Companion.b;
                        Updater.c(gapComposer2, c2, e6Var4);
                        int i11 = (int) ((c + f2) / (76.0f + f2));
                        float f3 = (c - ((i11 - 1) * f2)) / i11;
                        ArrayList arrayList2 = arrayList;
                        int min = Math.min(arrayList2.size(), i2 * i11);
                        boolean z4 = true;
                        int max = Math.max(1, (int) Math.ceil(min / i11));
                        gapComposer2.W(1462152545);
                        int i12 = 0;
                        while (i12 < max) {
                            int i13 = i12 * i11;
                            int min2 = Math.min(min - i13, i11);
                            int i14 = max;
                            int i15 = min;
                            int i16 = i12;
                            Arrangement.SpacedAligned spacedAligned = new Arrangement.SpacedAligned(f2, true, new p(1, horizontal));
                            Modifier p = SizeKt.p(SizeKt.d(companion, 1.0f));
                            float f4 = f2;
                            RowMeasurePolicy a2 = RowKt.a(spacedAligned, Alignment.Companion.j, gapComposer2, 0);
                            BiasAlignment.Horizontal horizontal2 = horizontal;
                            int hashCode2 = Long.hashCode(gapComposer2.T);
                            PersistentCompositionLocalMap l2 = gapComposer2.l();
                            Modifier c3 = ComposedModifierKt.c(gapComposer2, p);
                            ComposeUiNode.b.getClass();
                            gapComposer2.Z();
                            if (gapComposer2.S) {
                                gapComposer2.k(x9Var);
                            } else {
                                gapComposer2.j0();
                            }
                            Updater.c(gapComposer2, a2, e6Var);
                            Updater.c(gapComposer2, l2, e6Var2);
                            Updater.c(gapComposer2, Integer.valueOf(hashCode2), e6Var3);
                            Updater.b(gapComposer2);
                            Updater.c(gapComposer2, c3, e6Var4);
                            gapComposer2.W(-1290389230);
                            for (int i17 = 0; i17 < i11; i17++) {
                                Modifier j = SizeKt.j(f3);
                                MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
                                int hashCode3 = Long.hashCode(gapComposer2.T);
                                PersistentCompositionLocalMap l3 = gapComposer2.l();
                                Modifier c4 = ComposedModifierKt.c(gapComposer2, j);
                                ComposeUiNode.b.getClass();
                                gapComposer2.Z();
                                if (gapComposer2.S) {
                                    gapComposer2.k(x9Var);
                                } else {
                                    gapComposer2.j0();
                                }
                                Updater.c(gapComposer2, d, e6Var);
                                Updater.c(gapComposer2, l3, e6Var2);
                                Updater.c(gapComposer2, Integer.valueOf(hashCode3), e6Var3);
                                Updater.b(gapComposer2);
                                Updater.c(gapComposer2, c4, e6Var4);
                                if (i17 < min2) {
                                    gapComposer2.W(1377460428);
                                    composableLambdaImpl.f(arrayList2.get(i13 + i17), gapComposer2, 0);
                                    gapComposer2.p(false);
                                } else {
                                    gapComposer2.W(1377610437);
                                    Function2 function22 = function2;
                                    if (function22 == null) {
                                        gapComposer2.W(1377610436);
                                    } else {
                                        gapComposer2.W(1377610437);
                                        function22.n(gapComposer2, 0);
                                    }
                                    gapComposer2.p(false);
                                    gapComposer2.p(false);
                                }
                                gapComposer2.p(true);
                            }
                            gapComposer2.p(false);
                            gapComposer2.p(true);
                            z4 = true;
                            min = i15;
                            f2 = f4;
                            horizontal = horizontal2;
                            i12 = i16 + 1;
                            max = i14;
                        }
                        gapComposer2.p(false);
                        gapComposer2.p(z4);
                    } else {
                        gapComposer2.Q();
                    }
                    return Unit.a;
                }
            }, gapComposer);
            Modifier.Companion companion = Modifier.Companion.b;
            BoxWithConstraintsKt.a(companion, null, b, gapComposer, 3078, 6);
            modifier2 = companion;
            i6 = 1;
        } else {
            gapComposer.Q();
            modifier2 = modifier;
            i6 = i;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(arrayList, i6, i2, f, function2, composableLambdaImpl, i3) { // from class: za
                public final /* synthetic */ ArrayList k;
                public final /* synthetic */ int l;
                public final /* synthetic */ int m;
                public final /* synthetic */ float n;
                public final /* synthetic */ Function2 o;
                public final /* synthetic */ ComposableLambdaImpl p;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a = RecomposeScopeImplKt.a(14376961);
                    MaxRowGridKt.a(Modifier.this, this.k, this.l, this.m, this.n, this.o, this.p, (Composer) obj, a);
                    return Unit.a;
                }
            };
        }
    }
}
