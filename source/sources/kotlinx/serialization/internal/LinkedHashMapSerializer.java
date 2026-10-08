package kotlinx.serialization.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.json.JsonElementSerializer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LinkedHashMapSerializer<K, V> extends MapLikeSerializer<K, V, Map<K, ? extends V>, LinkedHashMap<K, V>> {
    public final LinkedHashMapClassDesc a;

    /* JADX WARN: Type inference failed for: r0v2, types: [kotlinx.serialization.internal.MapLikeDescriptor, kotlinx.serialization.internal.LinkedHashMapClassDesc] */
    public LinkedHashMapSerializer() {
        StringSerializer stringSerializer = StringSerializer.a;
        JsonElementSerializer jsonElementSerializer = JsonElementSerializer.a;
        PrimitiveSerialDescriptor primitiveSerialDescriptor = StringSerializer.b;
        SerialDescriptorImpl serialDescriptorImpl = JsonElementSerializer.b;
        primitiveSerialDescriptor.getClass();
        serialDescriptorImpl.getClass();
        this.a = new MapLikeDescriptor(primitiveSerialDescriptor, serialDescriptorImpl);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return this.a;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object d() {
        return new LinkedHashMap();
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int e(Object obj) {
        LinkedHashMap linkedHashMap = (LinkedHashMap) obj;
        linkedHashMap.getClass();
        return linkedHashMap.size() * 2;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Iterator f(Object obj) {
        Map map = (Map) obj;
        map.getClass();
        return map.entrySet().iterator();
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int g(Object obj) {
        Map map = (Map) obj;
        map.getClass();
        return map.size();
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object j(Object obj) {
        throw null;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object k(Object obj) {
        LinkedHashMap linkedHashMap = (LinkedHashMap) obj;
        linkedHashMap.getClass();
        return linkedHashMap;
    }
}
