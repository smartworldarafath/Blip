package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import java.util.Iterator;
import kotlin.collections.AbstractSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PersistentOrderedSet<E> extends AbstractSet<E> implements PersistentSet<E> {
    public static final PersistentOrderedSet m;
    public final Object j;
    public final Object k;
    public final PersistentHashMap l;

    static {
        EndOfChain endOfChain = EndOfChain.a;
        m = new PersistentOrderedSet(endOfChain, endOfChain, PersistentHashMap.l);
    }

    public PersistentOrderedSet(Object obj, Object obj2, PersistentHashMap persistentHashMap) {
        this.j = obj;
        this.k = obj2;
        this.l = persistentHashMap;
    }

    @Override // kotlin.collections.AbstractCollection
    public final int b() {
        return this.l.k;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.l.containsKey(obj);
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new PersistentOrderedSetIterator(this.j, this.l);
    }
}
