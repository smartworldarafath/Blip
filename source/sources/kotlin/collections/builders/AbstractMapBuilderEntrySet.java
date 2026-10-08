package kotlin.collections.builders;

import java.util.Map;
import java.util.Map.Entry;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractMapBuilderEntrySet<E extends Map.Entry<? extends K, ? extends V>, K, V> extends AbstractMutableSet<E> {
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        MapBuilder mapBuilder = ((MapBuilderEntries) this).j;
        mapBuilder.getClass();
        int g = mapBuilder.g(entry.getKey());
        if (g < 0) {
            return false;
        }
        Object[] objArr = mapBuilder.k;
        objArr.getClass();
        return Intrinsics.a(objArr[g], entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        MapBuilder mapBuilder = ((MapBuilderEntries) this).j;
        mapBuilder.getClass();
        mapBuilder.c();
        int g = mapBuilder.g(entry.getKey());
        if (g >= 0) {
            Object[] objArr = mapBuilder.k;
            objArr.getClass();
            if (Intrinsics.a(objArr[g], entry.getValue())) {
                mapBuilder.l(g);
                return true;
            }
        }
        return false;
    }
}
