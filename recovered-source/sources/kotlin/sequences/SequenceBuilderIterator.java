package kotlin.sequences;

import defpackage.k8;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SequenceBuilderIterator<T> extends SequenceScope<T> implements Iterator<T>, Continuation<Unit>, KMappedMarker {
    public int j;
    public Object k;
    public Iterator l;
    public Continuation m;

    @Override // kotlin.sequences.SequenceScope
    public final void a(Object obj, Continuation continuation) {
        this.k = obj;
        this.j = 3;
        this.m = continuation;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        continuation.getClass();
    }

    public final RuntimeException c() {
        int i = this.j;
        if (i != 4) {
            if (i != 5) {
                return new IllegalStateException("Unexpected state of the iterator: " + this.j);
            }
            return new IllegalStateException("Iterator has failed.");
        }
        return new NoSuchElementException();
    }

    @Override // kotlin.coroutines.Continuation
    public final void g(Object obj) {
        ResultKt.b(obj);
        this.j = 4;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i = this.j;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 || i == 3) {
                        return true;
                    }
                    if (i == 4) {
                        return false;
                    }
                    throw c();
                }
                Iterator it = this.l;
                it.getClass();
                if (it.hasNext()) {
                    this.j = 2;
                    return true;
                }
                this.l = null;
            }
            this.j = 5;
            Continuation continuation = this.m;
            continuation.getClass();
            this.m = null;
            continuation.g(Unit.a);
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.j;
        if (i != 0 && i != 1) {
            if (i != 2) {
                if (i == 3) {
                    this.j = 0;
                    Object obj = this.k;
                    this.k = null;
                    return obj;
                }
                throw c();
            }
            this.j = 1;
            Iterator it = this.l;
            it.getClass();
            return it.next();
        }
        if (hasNext()) {
            return next();
        }
        k8.o();
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext o() {
        return EmptyCoroutineContext.j;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
