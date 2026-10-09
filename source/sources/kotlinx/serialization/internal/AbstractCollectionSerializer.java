package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractCollectionSerializer<Element, Collection, Builder> implements KSerializer<Collection> {
    @Override // kotlinx.serialization.DeserializationStrategy
    public Object a(Decoder decoder) {
        return h(decoder);
    }

    public abstract Object d();

    public abstract int e(Object obj);

    public abstract Iterator f(Object obj);

    public abstract int g(Object obj);

    public final Object h(Decoder decoder) {
        Object d = d();
        int e = e(d);
        CompositeDecoder c = decoder.c(c());
        while (true) {
            int s = c.s(c());
            if (s != -1) {
                i(c, s + e, d);
            } else {
                c.a(c());
                return k(d);
            }
        }
    }

    public abstract void i(CompositeDecoder compositeDecoder, int i, Object obj);

    public abstract Object j(Object obj);

    public abstract Object k(Object obj);
}
