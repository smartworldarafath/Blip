package androidx.compose.runtime.saveable;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import defpackage.fe;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SaveableStateHolderImpl implements SaveableStateHolder {
    public static final SaverKt$Saver$1 n = new SaverKt$Saver$1(new Object(), new Object());
    public final Map j;
    public final MutableScatterMap k;
    public SaveableStateRegistry l;
    public final d m;

    public SaveableStateHolderImpl(Map map) {
        this.j = map;
        long[] jArr = ScatterMapKt.a;
        this.k = new MutableScatterMap();
        this.m = new d(this);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public final void a(final Object obj, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(533563200);
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
            gapComposer.Y(obj);
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                d dVar = this.m;
                if (((Boolean) dVar.b(obj)).booleanValue()) {
                    Map map = (Map) this.j.get(obj);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.a;
                    SaveableStateRegistryWrapper saveableStateRegistryWrapper = new SaveableStateRegistryWrapper(new SaveableStateRegistryImpl(map, dVar));
                    gapComposer.g0(saveableStateRegistryWrapper);
                    K = saveableStateRegistryWrapper;
                } else {
                    fe.u("Type of the key ", obj, " is not supported. On Android you can only use types which can be stored inside the Bundle.");
                    return;
                }
            }
            final SaveableStateRegistryWrapper saveableStateRegistryWrapper2 = (SaveableStateRegistryWrapper) K;
            CompositionLocalKt.b(new ProvidedValue[]{SaveableStateRegistryKt.a.b(saveableStateRegistryWrapper2), LocalSavedStateRegistryOwnerKt.a.b(saveableStateRegistryWrapper2)}, composableLambdaImpl, gapComposer, (i2 & 112) | 8);
            boolean h = gapComposer.h(this) | gapComposer.h(obj) | gapComposer.h(saveableStateRegistryWrapper2);
            Object K2 = gapComposer.K();
            if (h || K2 == composer$Companion$Empty$1) {
                K2 = new Function1() { // from class: androidx.compose.runtime.saveable.g
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj2) {
                        final SaveableStateHolderImpl saveableStateHolderImpl = SaveableStateHolderImpl.this;
                        MutableScatterMap mutableScatterMap = saveableStateHolderImpl.k;
                        final Object obj3 = obj;
                        if (!mutableScatterMap.b(obj3)) {
                            saveableStateHolderImpl.j.remove(obj3);
                            final SaveableStateRegistryWrapper saveableStateRegistryWrapper3 = saveableStateRegistryWrapper2;
                            mutableScatterMap.o(obj3, saveableStateRegistryWrapper3);
                            return new DisposableEffectResult() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$SaveableStateProvider$lambda$0$1$0$$inlined$onDispose$1
                                @Override // androidx.compose.runtime.DisposableEffectResult
                                public final void a() {
                                    SaveableStateHolderImpl saveableStateHolderImpl2 = SaveableStateHolderImpl.this;
                                    MutableScatterMap mutableScatterMap2 = saveableStateHolderImpl2.k;
                                    Object obj4 = obj3;
                                    Object m = mutableScatterMap2.m(obj4);
                                    SaveableStateRegistryWrapper saveableStateRegistryWrapper4 = saveableStateRegistryWrapper3;
                                    if (m == saveableStateRegistryWrapper4) {
                                        Map map2 = saveableStateHolderImpl2.j;
                                        Map c = saveableStateRegistryWrapper4.c();
                                        if (c.isEmpty()) {
                                            map2.remove(obj4);
                                        } else {
                                            map2.put(obj4, c);
                                        }
                                    }
                                }
                            };
                        }
                        fe.u("Key ", obj3, " was used multiple times ");
                        return null;
                    }
                };
                gapComposer.g0(K2);
            }
            EffectsKt.c(Unit.a, (Function1) K2, gapComposer);
            if (gapComposer.y && gapComposer.G.i == gapComposer.z) {
                gapComposer.z = -1;
                gapComposer.y = false;
            }
            gapComposer.p(false);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: androidx.compose.runtime.saveable.h
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int a = RecomposeScopeImplKt.a(i | 1);
                    SaveableStateHolderImpl.this.a(obj, composableLambdaImpl, (Composer) obj2, a);
                    return Unit.a;
                }
            };
        }
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public final void f(Object obj) {
        if (this.k.m(obj) == null) {
            this.j.remove(obj);
        }
    }
}
