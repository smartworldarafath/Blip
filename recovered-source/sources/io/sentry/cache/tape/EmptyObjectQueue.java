package io.sentry.cache.tape;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class EmptyObjectQueue<T> extends ObjectQueue<T> {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EmptyIterator<T> implements Iterator<T> {
        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw new NoSuchElementException("No elements in EmptyIterator!");
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Iterator, java.lang.Object] */
    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new Object();
    }

    @Override // io.sentry.cache.tape.ObjectQueue
    public final int size() {
        return 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // io.sentry.cache.tape.ObjectQueue
    public final void A(Object obj) {
    }

    @Override // io.sentry.cache.tape.ObjectQueue
    public final void R(int i) {
    }
}
