package kotlinx.serialization.internal;

import defpackage.fe;
import defpackage.q;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonElementSerializer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MapLikeSerializer<Key, Value, Collection, Builder extends Map<Key, Value>> extends AbstractCollectionSerializer<Map.Entry<? extends Key, ? extends Value>, Collection, Builder> {
    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        g(obj);
        LinkedHashMapClassDesc linkedHashMapClassDesc = ((LinkedHashMapSerializer) this).a;
        linkedHashMapClassDesc.getClass();
        CompositeEncoder c = encoder.c(linkedHashMapClassDesc);
        Iterator f = f(obj);
        int i = 0;
        while (f.hasNext()) {
            Map.Entry entry = (Map.Entry) f.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            int i2 = i + 1;
            AbstractEncoder abstractEncoder = (AbstractEncoder) c;
            abstractEncoder.r(linkedHashMapClassDesc, i, StringSerializer.a, key);
            i += 2;
            abstractEncoder.r(linkedHashMapClassDesc, i2, JsonElementSerializer.a, value);
        }
        c.a(linkedHashMapClassDesc);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void i(CompositeDecoder compositeDecoder, int i, Object obj) {
        Object n;
        Map map = (Map) obj;
        JsonElementSerializer jsonElementSerializer = JsonElementSerializer.a;
        map.getClass();
        StringSerializer stringSerializer = StringSerializer.a;
        LinkedHashMapClassDesc linkedHashMapClassDesc = ((LinkedHashMapSerializer) this).a;
        Object n2 = compositeDecoder.n(linkedHashMapClassDesc, i, stringSerializer, null);
        int s = compositeDecoder.s(linkedHashMapClassDesc);
        if (s == i + 1) {
            if (map.containsKey(n2) && !(JsonElementSerializer.b.b instanceof PrimitiveKind)) {
                n = compositeDecoder.n(linkedHashMapClassDesc, s, jsonElementSerializer, MapsKt.c(n2, map));
            } else {
                n = compositeDecoder.n(linkedHashMapClassDesc, s, jsonElementSerializer, null);
            }
            map.put(n2, n);
            return;
        }
        fe.l(q.f(i, s, "Value must follow key in a map, index for key: ", ", returned index for value: "));
    }
}
