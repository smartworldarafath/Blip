package androidx.compose.runtime.external.kotlinx.collections.immutable;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder;
import defpackage.g;
import java.util.Collection;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface PersistentList<E> extends ImmutableList<E>, Collection, KMappedMarker {
    @Override // java.util.List
    PersistentList add(int i, Object obj);

    @Override // java.util.List, java.util.Collection
    PersistentList add(Object obj);

    @Override // java.util.List, java.util.Collection
    PersistentList addAll(Collection collection);

    PersistentVectorBuilder builder();

    PersistentList h(int i);

    @Override // java.util.List
    PersistentList set(int i, Object obj);

    PersistentList v(g gVar);
}
