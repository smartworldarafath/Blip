package io.sentry.cache.tape;

import java.io.Closeable;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ObjectQueue<T> implements Iterable<T>, Closeable {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Converter<T> {
        void a(Object obj, OutputStream outputStream);

        Object b(byte[] bArr);
    }

    public static ObjectQueue O(QueueFile queueFile, Converter converter) {
        return new FileObjectQueue(queueFile, converter);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, io.sentry.cache.tape.ObjectQueue] */
    public static ObjectQueue P() {
        return new Object();
    }

    public abstract void A(Object obj);

    public final List E() {
        int min = Math.min(size(), size());
        ArrayList arrayList = new ArrayList(min);
        Iterator<T> it = iterator();
        for (int i = 0; i < min; i++) {
            arrayList.add(it.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public abstract void R(int i);

    public void clear() {
        R(size());
    }

    public abstract int size();
}
