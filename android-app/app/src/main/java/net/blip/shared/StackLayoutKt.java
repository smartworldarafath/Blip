package net.blip.shared;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import defpackage.de;
import defpackage.k3;
import defpackage.k8;
import defpackage.le;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class StackLayoutKt {
    public static final void a(Modifier modifier, final float f, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1802268075);
        if (gapComposer.f(modifier)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        if ((i3 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = new MeasurePolicy() { // from class: net.blip.shared.StackLayoutKt$StackLayout$1$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public final MeasureResult a(MeasureScope measureScope, List list, long j) {
                        Map map;
                        Throwable th;
                        long j2;
                        int g;
                        Placeable placeable;
                        float f2;
                        float f3;
                        Map map2;
                        measureScope.getClass();
                        list.getClass();
                        if (list.isEmpty()) {
                            int j3 = Constraints.j(j);
                            int i4 = Constraints.i(j);
                            le leVar = new le(24);
                            map2 = EmptyMap.j;
                            return measureScope.B(j3, i4, map2, leVar);
                        }
                        boolean z2 = true;
                        int i5 = 0;
                        if (list.size() <= 1) {
                            z2 = false;
                        }
                        ArrayList arrayList = new ArrayList(CollectionsKt.m(list, 10));
                        Iterator it = list.iterator();
                        int i6 = 0;
                        while (true) {
                            boolean hasNext = it.hasNext();
                            float f4 = f;
                            Throwable th2 = null;
                            if (hasNext) {
                                Object next = it.next();
                                int i7 = i6 + 1;
                                if (i6 >= 0) {
                                    Measurable measurable = (Measurable) next;
                                    if (z2) {
                                        f3 = (float) Math.pow(f4, i7);
                                    } else {
                                        f3 = 1.0f;
                                    }
                                    arrayList.add(measurable.w(ConstraintsKt.a(0, MathKt.b(Constraints.h(j) * f3), 0, MathKt.b(Constraints.g(j) * f3))));
                                    i6 = i7;
                                } else {
                                    CollectionsKt.T();
                                    throw null;
                                }
                            } else {
                                Iterator it2 = arrayList.iterator();
                                if (it2.hasNext()) {
                                    int i8 = ((Placeable) it2.next()).j;
                                    while (it2.hasNext()) {
                                        int i9 = ((Placeable) it2.next()).j;
                                        if (i8 < i9) {
                                            i8 = i9;
                                        }
                                    }
                                    ArrayList arrayList2 = new ArrayList(CollectionsKt.m(arrayList, 10));
                                    Iterator it3 = arrayList.iterator();
                                    Integer num = null;
                                    while (it3.hasNext()) {
                                        Object next2 = it3.next();
                                        int i10 = i5 + 1;
                                        if (i5 >= 0) {
                                            Placeable placeable2 = (Placeable) next2;
                                            int size = arrayList.size() - i5;
                                            int b = MathKt.b(placeable2.k * 0.25f);
                                            if (num != null) {
                                                int intValue = num.intValue();
                                                int i11 = intValue - (intValue / size);
                                                if (z2) {
                                                    th = th2;
                                                    j2 = 4294967295L;
                                                    placeable = placeable2;
                                                    f2 = (((float) Math.pow(f4, i10)) * 0.5f) + (f4 * 0.5f);
                                                } else {
                                                    placeable = placeable2;
                                                    th = th2;
                                                    j2 = 4294967295L;
                                                    f2 = 1.0f;
                                                }
                                                g = MathKt.b(i11 * f2);
                                                placeable2 = placeable;
                                                int i12 = (intValue - placeable2.k) + b;
                                                if (g < i12) {
                                                    g = i12;
                                                }
                                            } else {
                                                th = th2;
                                                j2 = 4294967295L;
                                                g = Constraints.g(j) - placeable2.k;
                                            }
                                            num = Integer.valueOf(g);
                                            arrayList2.add(new IntOffset((g & j2) | (((i8 - placeable2.j) / 2) << 32)));
                                            th2 = th;
                                            i5 = i10;
                                        } else {
                                            Throwable th3 = th2;
                                            CollectionsKt.T();
                                            throw th3;
                                        }
                                    }
                                    int i13 = (((int) (((IntOffset) CollectionsKt.s(arrayList2)).a & 4294967295L)) + ((Placeable) CollectionsKt.s(arrayList)).k) - ((int) (((IntOffset) CollectionsKt.z(arrayList2)).a & 4294967295L));
                                    de deVar = new de(arrayList, arrayList2, Constraints.g(j) - i13);
                                    map = EmptyMap.j;
                                    return measureScope.B(i8, i13, map, deVar);
                                }
                                k8.o();
                                return null;
                            }
                        }
                    }
                };
                gapComposer.g0(K);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) K;
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, modifier);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, measurePolicy, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            composableLambdaImpl.n(gapComposer, 6);
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new k3(modifier, f, composableLambdaImpl, i, 1);
        }
    }
}
