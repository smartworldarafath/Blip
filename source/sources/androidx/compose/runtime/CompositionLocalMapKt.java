package androidx.compose.runtime;

import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CompositionLocalMapKt {
    public static final Object a(PersistentCompositionLocalMap persistentCompositionLocalMap, CompositionLocal compositionLocal) {
        compositionLocal.getClass();
        Object obj = persistentCompositionLocalMap.get(compositionLocal);
        if (obj == null) {
            obj = compositionLocal.a();
        }
        return ((ValueHolder) obj).a(persistentCompositionLocalMap);
    }

    public static final PersistentCompositionLocalHashMap b(ProvidedValue[] providedValueArr, PersistentCompositionLocalMap persistentCompositionLocalMap, PersistentCompositionLocalMap persistentCompositionLocalMap2) {
        PersistentCompositionLocalHashMap.Builder builder = new PersistentCompositionLocalHashMap.Builder(PersistentCompositionLocalHashMap.m);
        for (ProvidedValue providedValue : providedValueArr) {
            ProvidableCompositionLocal providableCompositionLocal = providedValue.a;
            if (providedValue.g || !persistentCompositionLocalMap.containsKey(providableCompositionLocal)) {
                builder.put(providableCompositionLocal, providableCompositionLocal.d(providedValue, (ValueHolder) persistentCompositionLocalMap2.get(providableCompositionLocal)));
            }
        }
        return builder.b();
    }
}
