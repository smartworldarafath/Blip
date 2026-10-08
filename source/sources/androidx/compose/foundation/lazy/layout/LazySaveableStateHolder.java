package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import defpackage.ma;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazySaveableStateHolder implements SaveableStateRegistry, SaveableStateHolder {
    public final SaveableStateRegistry j;
    public final SaveableStateHolder k;
    public final MutableScatterSet l;

    public LazySaveableStateHolder(SaveableStateRegistry saveableStateRegistry, Map map, SaveableStateHolder saveableStateHolder) {
        this.j = SaveableStateRegistryKt.a(map, new ma(0, saveableStateRegistry));
        this.k = saveableStateHolder;
        MutableScatterSet mutableScatterSet = ScatterSetKt.a;
        this.l = new MutableScatterSet();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public final void a(final Object obj, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-858296452);
        if ((i & 6) == 0) {
            if (gapComposer.h(obj)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(this)) {
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
            this.k.a(obj, composableLambdaImpl, gapComposer, i2 & 126);
            boolean h = gapComposer.h(this) | gapComposer.h(obj);
            Object K = gapComposer.K();
            if (h || K == Composer.Companion.a) {
                K = new g(this, obj, 0);
                gapComposer.g0(K);
            }
            EffectsKt.c(obj, (Function1) K, gapComposer);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: androidx.compose.foundation.lazy.layout.h
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int a = RecomposeScopeImplKt.a(i | 1);
                    LazySaveableStateHolder.this.a(obj, composableLambdaImpl, (Composer) obj2, a);
                    return Unit.a;
                }
            };
        }
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final boolean b(Object obj) {
        return this.j.b(obj);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Map c() {
        MutableScatterSet mutableScatterSet = this.l;
        Object[] objArr = mutableScatterSet.b;
        long[] jArr = mutableScatterSet.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            this.k.f(objArr[(i << 3) + i3]);
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                }
                if (i == length) {
                    break;
                }
                i++;
            }
        }
        return this.j.c();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Object d(String str) {
        return this.j.d(str);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final SaveableStateRegistry.Entry e(String str, Function0 function0) {
        return this.j.e(str, function0);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public final void f(Object obj) {
        this.k.f(obj);
    }
}
