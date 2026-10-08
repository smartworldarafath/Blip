package androidx.datastore.preferences.protobuf;

import androidx.datastore.core.UncloseableOutputStream;
import androidx.datastore.preferences.protobuf.AbstractMessageLite;
import androidx.datastore.preferences.protobuf.AbstractMessageLite.Builder;
import androidx.datastore.preferences.protobuf.CodedOutputStream;
import io.sentry.d;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractMessageLite<MessageType extends AbstractMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> implements MessageLite {
    protected int memoizedHashCode;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Builder<MessageType extends AbstractMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> implements Cloneable {
    }

    public static void a(Iterable iterable, List list) {
        Charset charset = Internal.a;
        if (iterable instanceof LazyStringList) {
            List n = ((LazyStringList) iterable).n();
            if (list == null) {
                list.size();
                Iterator it = n.iterator();
                if (it.hasNext()) {
                    Object next = it.next();
                    next.getClass();
                    if (!(next instanceof ByteString)) {
                        if (next instanceof byte[]) {
                            byte[] bArr = (byte[]) next;
                            ByteString.d(bArr, 0, bArr.length);
                            throw null;
                        }
                        throw null;
                    }
                    throw null;
                }
                return;
            }
            d.i();
            return;
        }
        if (iterable instanceof PrimitiveNonBoxingCollection) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
        }
        int size = list.size();
        for (Object obj : iterable) {
            if (obj == null) {
                String str = "Element at index " + (list.size() - size) + " is null.";
                for (int size2 = list.size() - 1; size2 >= size; size2--) {
                    list.remove(size2);
                }
                d.f(str);
                return;
            }
            list.add(obj);
        }
    }

    public abstract int b(Schema schema);

    public final void c(UncloseableOutputStream uncloseableOutputStream) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) this;
        int b = generatedMessageLite.b(null);
        Logger logger = CodedOutputStream.b;
        if (b > 4096) {
            b = 4096;
        }
        CodedOutputStream.OutputStreamEncoder outputStreamEncoder = new CodedOutputStream.OutputStreamEncoder(uncloseableOutputStream, b);
        generatedMessageLite.q(outputStreamEncoder);
        if (outputStreamEncoder.f > 0) {
            outputStreamEncoder.F();
        }
    }
}
