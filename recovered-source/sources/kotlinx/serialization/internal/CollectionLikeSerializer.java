package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CollectionLikeSerializer<Element, Collection, Builder> extends AbstractCollectionSerializer<Element, Collection, Builder> {
    public final KSerializer a;

    public CollectionLikeSerializer(KSerializer kSerializer) {
        this.a = kSerializer;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void b(Encoder encoder, Object obj) {
        int g = g(obj);
        SerialDescriptor c = c();
        c.getClass();
        CompositeEncoder c2 = encoder.c(c);
        Iterator f = f(obj);
        for (int i = 0; i < g; i++) {
            ((AbstractEncoder) c2).r(c(), i, this.a, f.next());
        }
        c2.a(c);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public void i(CompositeDecoder compositeDecoder, int i, Object obj) {
        l(i, obj, compositeDecoder.n(c(), i, this.a, null));
    }

    public abstract void l(int i, Object obj, Object obj2);
}
