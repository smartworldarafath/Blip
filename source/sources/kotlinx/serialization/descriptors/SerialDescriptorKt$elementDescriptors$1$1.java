package kotlinx.serialization.descriptors;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SerialDescriptorKt$elementDescriptors$1$1 implements Iterator<SerialDescriptor>, KMappedMarker {
    public int j;
    public final /* synthetic */ SerialDescriptor k;

    public SerialDescriptorKt$elementDescriptors$1$1(SerialDescriptor serialDescriptor) {
        this.k = serialDescriptor;
        this.j = serialDescriptor.f();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.j > 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final SerialDescriptor next() {
        SerialDescriptor serialDescriptor = this.k;
        int f = serialDescriptor.f();
        int i = this.j;
        this.j = i - 1;
        return serialDescriptor.j(f - i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
