package androidx.compose.runtime;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import defpackage.t2;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CompositionLocalKt {
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(ProvidedValue providedValue, Function2 function2, Composer composer, int i) {
        ValueHolder valueHolder;
        boolean z;
        RecomposeScopeImpl r;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-149765515);
        IntStack intStack = gapComposer.x;
        PersistentCompositionLocalMap l = gapComposer.l();
        gapComposer.T(201, ComposerKt.b);
        Object K = gapComposer.K();
        if (Intrinsics.a(K, Composer.Companion.a)) {
            valueHolder = null;
        } else {
            K.getClass();
            valueHolder = (ValueHolder) K;
        }
        ProvidableCompositionLocal providableCompositionLocal = providedValue.a;
        ValueHolder d = providableCompositionLocal.d(providedValue, valueHolder);
        boolean equals = d.equals(valueHolder);
        if (!equals) {
            gapComposer.g0(d);
        }
        boolean z2 = true;
        if (gapComposer.S) {
            if (providedValue.g || !l.containsKey(providableCompositionLocal)) {
                l = ((PersistentCompositionLocalHashMap) l).b(providableCompositionLocal, d);
            }
            gapComposer.J = true;
        } else {
            SlotReader slotReader = gapComposer.G;
            Object b = slotReader.b(slotReader.b, slotReader.g);
            b.getClass();
            PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) b;
            if ((gapComposer.z() && equals) || (!providedValue.g && l.containsKey(providableCompositionLocal))) {
                if ((equals && !gapComposer.w) || !gapComposer.w) {
                    l = persistentCompositionLocalMap;
                }
            } else {
                l = ((PersistentCompositionLocalHashMap) l).b(providableCompositionLocal, d);
            }
            if (gapComposer.y || persistentCompositionLocalMap != l) {
                z = true;
                if (z && !gapComposer.S) {
                    gapComposer.I(l);
                }
                intStack.c(gapComposer.w ? 1 : 0);
                gapComposer.w = z;
                gapComposer.K = l;
                gapComposer.R(202, 0, ComposerKt.c, l);
                function2.n(gapComposer, Integer.valueOf((i >> 3) & 14));
                gapComposer.p(false);
                gapComposer.p(false);
                if (intStack.b() == 0) {
                    z2 = false;
                }
                gapComposer.w = z2;
                gapComposer.K = null;
                r = gapComposer.r();
                if (r == null) {
                    r.d = new t2(i, 5, providedValue, function2);
                    return;
                }
                return;
            }
        }
        z = false;
        if (z) {
            gapComposer.I(l);
        }
        intStack.c(gapComposer.w ? 1 : 0);
        gapComposer.w = z;
        gapComposer.K = l;
        gapComposer.R(202, 0, ComposerKt.c, l);
        function2.n(gapComposer, Integer.valueOf((i >> 3) & 14));
        gapComposer.p(false);
        gapComposer.p(false);
        if (intStack.b() == 0) {
        }
        gapComposer.w = z2;
        gapComposer.K = null;
        r = gapComposer.r();
        if (r == null) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.compose.runtime.PersistentCompositionLocalMap, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v0, types: [androidx.compose.runtime.internal.ComposableLambdaImpl, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(ProvidedValue[] providedValueArr, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        PersistentCompositionLocalHashMap f0;
        boolean z;
        RecomposeScopeImpl r;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(415205898);
        IntStack intStack = gapComposer.x;
        PersistentCompositionLocalMap l = gapComposer.l();
        gapComposer.T(201, ComposerKt.b);
        boolean z2 = true;
        if (gapComposer.S) {
            f0 = gapComposer.f0(l, CompositionLocalMapKt.b(providedValueArr, l, PersistentCompositionLocalHashMap.m));
            gapComposer.J = true;
        } else {
            SlotReader slotReader = gapComposer.G;
            Object h = slotReader.h(slotReader.g, 0);
            h.getClass();
            ?? r2 = (PersistentCompositionLocalMap) h;
            SlotReader slotReader2 = gapComposer.G;
            Object h2 = slotReader2.h(slotReader2.g, 1);
            h2.getClass();
            PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) h2;
            PersistentCompositionLocalHashMap b = CompositionLocalMapKt.b(providedValueArr, l, persistentCompositionLocalMap);
            if (gapComposer.z() && !gapComposer.y && persistentCompositionLocalMap.equals(b)) {
                gapComposer.l = gapComposer.G.s() + gapComposer.l;
                f0 = r2;
            } else {
                f0 = gapComposer.f0(l, b);
                if (gapComposer.y || !Intrinsics.a(f0, r2)) {
                    z = true;
                    if (z && !gapComposer.S) {
                        gapComposer.I(f0);
                    }
                    intStack.c(gapComposer.w ? 1 : 0);
                    gapComposer.w = z;
                    gapComposer.K = f0;
                    gapComposer.R(202, 0, ComposerKt.c, f0);
                    composableLambdaImpl.n(gapComposer, Integer.valueOf((i >> 3) & 14));
                    gapComposer.p(false);
                    gapComposer.p(false);
                    if (intStack.b() == 0) {
                        z2 = false;
                    }
                    gapComposer.w = z2;
                    gapComposer.K = null;
                    r = gapComposer.r();
                    if (r == null) {
                        r.d = new t2(i, 4, providedValueArr, (Object) composableLambdaImpl);
                        return;
                    }
                    return;
                }
            }
        }
        z = false;
        if (z) {
            gapComposer.I(f0);
        }
        intStack.c(gapComposer.w ? 1 : 0);
        gapComposer.w = z;
        gapComposer.K = f0;
        gapComposer.R(202, 0, ComposerKt.c, f0);
        composableLambdaImpl.n(gapComposer, Integer.valueOf((i >> 3) & 14));
        gapComposer.p(false);
        gapComposer.p(false);
        if (intStack.b() == 0) {
        }
        gapComposer.w = z2;
        gapComposer.K = null;
        r = gapComposer.r();
        if (r == null) {
        }
    }
}
