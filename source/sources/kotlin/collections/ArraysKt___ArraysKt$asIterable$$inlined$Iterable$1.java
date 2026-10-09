package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1 implements Iterable<Object>, KMappedMarker {
    public final /* synthetic */ Object[] j;

    public ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1(Object[] objArr) {
        this.j = objArr;
    }

    @Override // java.lang.Iterable
    public final Iterator<Object> iterator() {
        return ArrayIteratorKt.a(this.j);
    }
}
