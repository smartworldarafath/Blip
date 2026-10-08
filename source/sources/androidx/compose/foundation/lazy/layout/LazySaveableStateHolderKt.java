package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateHolderKt;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import defpackage.c0;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazySaveableStateHolderKt {
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Object, kotlin.jvm.functions.Function2] */
    public static final void a(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-709502251);
        if ((i & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.a;
            final SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) gapComposer.j(staticProvidableCompositionLocal);
            final SaveableStateHolder a = SaveableStateHolderKt.a(gapComposer);
            Object[] objArr = {saveableStateRegistry};
            SaverKt$Saver$1 saverKt$Saver$1 = new SaverKt$Saver$1(new Object(), new g(saveableStateRegistry, a, 1));
            boolean h = gapComposer.h(saveableStateRegistry) | gapComposer.h(a);
            Object K = gapComposer.K();
            if (h || K == Composer.Companion.a) {
                K = new Function0() { // from class: androidx.compose.foundation.lazy.layout.j
                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        Map map;
                        map = EmptyMap.j;
                        return new LazySaveableStateHolder(SaveableStateRegistry.this, map, a);
                    }
                };
                gapComposer.g0(K);
            }
            LazySaveableStateHolder lazySaveableStateHolder = (LazySaveableStateHolder) RememberSaveableKt.d(objArr, saverKt$Saver$1, (Function0) K, gapComposer, 0);
            CompositionLocalKt.a(staticProvidableCompositionLocal.b(lazySaveableStateHolder), ComposableLambdaKt.b(-412824043, new a(1, composableLambdaImpl, lazySaveableStateHolder), gapComposer), gapComposer, 56);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new c0(composableLambdaImpl, i, 6);
        }
    }
}
