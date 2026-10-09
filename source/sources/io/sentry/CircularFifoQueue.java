package io.sentry;

import defpackage.fe;
import defpackage.k8;
import defpackage.u2;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Queue;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CircularFifoQueue<E> extends AbstractCollection<E> implements Queue<E>, Serializable {
    public final transient Object[] j;
    public transient int k = 0;
    public transient int l = 0;
    public transient boolean m = false;
    public final int n;

    public CircularFifoQueue(int i) {
        if (i > 0) {
            Object[] objArr = new Object[i];
            this.j = objArr;
            this.n = objArr.length;
            return;
        }
        u2.g("The size must be greater than 0");
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Queue
    public final boolean add(Object obj) {
        if (obj != null) {
            int size = size();
            int i = this.n;
            if (size == i) {
                remove();
            }
            int i2 = this.l;
            int i3 = i2 + 1;
            this.l = i3;
            this.j[i2] = obj;
            if (i3 >= i) {
                this.l = 0;
            }
            if (this.l == this.k) {
                this.m = true;
            }
            return true;
        }
        d.f("Attempted to add null object to queue");
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.m = false;
        this.k = 0;
        this.l = 0;
        Arrays.fill(this.j, (Object) null);
    }

    @Override // java.util.Queue
    public final Object element() {
        if (!isEmpty()) {
            return peek();
        }
        fe.o("queue is empty");
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new Iterator<Object>() { // from class: io.sentry.CircularFifoQueue.1
            public int j;
            public int k = -1;
            public boolean l;

            {
                this.j = CircularFifoQueue.this.k;
                this.l = CircularFifoQueue.this.m;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                if (!this.l && this.j == CircularFifoQueue.this.l) {
                    return false;
                }
                return true;
            }

            @Override // java.util.Iterator
            public final Object next() {
                if (hasNext()) {
                    int i = 0;
                    this.l = false;
                    int i2 = this.j;
                    this.k = i2;
                    int i3 = i2 + 1;
                    CircularFifoQueue circularFifoQueue = CircularFifoQueue.this;
                    if (i3 < circularFifoQueue.n) {
                        i = i3;
                    }
                    this.j = i;
                    return circularFifoQueue.j[i2];
                }
                k8.o();
                return null;
            }

            @Override // java.util.Iterator
            public final void remove() {
                int i;
                CircularFifoQueue circularFifoQueue = CircularFifoQueue.this;
                int i2 = circularFifoQueue.n;
                Object[] objArr = circularFifoQueue.j;
                int i3 = this.k;
                if (i3 != -1) {
                    int i4 = circularFifoQueue.k;
                    if (i3 == i4) {
                        circularFifoQueue.remove();
                        this.k = -1;
                        return;
                    }
                    int i5 = i3 + 1;
                    if (i4 < i3 && i5 < (i = circularFifoQueue.l)) {
                        System.arraycopy(objArr, i5, objArr, i3, i - i5);
                    } else {
                        while (i5 != circularFifoQueue.l) {
                            if (i5 >= i2) {
                                objArr[i5 - 1] = objArr[0];
                            } else {
                                int i6 = i5 - 1;
                                if (i6 < 0) {
                                    i6 = i2 - 1;
                                }
                                objArr[i6] = objArr[i5];
                                i5++;
                                if (i5 >= i2) {
                                }
                            }
                            i5 = 0;
                        }
                    }
                    this.k = -1;
                    int i7 = circularFifoQueue.l - 1;
                    if (i7 < 0) {
                        i7 = i2 - 1;
                    }
                    circularFifoQueue.l = i7;
                    objArr[i7] = null;
                    circularFifoQueue.m = false;
                    int i8 = this.j - 1;
                    if (i8 < 0) {
                        i8 = i2 - 1;
                    }
                    this.j = i8;
                    return;
                }
                d.d();
            }
        };
    }

    @Override // java.util.Queue
    public final boolean offer(Object obj) {
        add(obj);
        return true;
    }

    @Override // java.util.Queue
    public final Object peek() {
        if (isEmpty()) {
            return null;
        }
        return this.j[this.k];
    }

    @Override // java.util.Queue
    public final Object poll() {
        if (isEmpty()) {
            return null;
        }
        return remove();
    }

    @Override // java.util.Queue
    public final Object remove() {
        if (!isEmpty()) {
            int i = this.k;
            Object[] objArr = this.j;
            Object obj = objArr[i];
            if (obj != null) {
                int i2 = i + 1;
                this.k = i2;
                objArr[i] = null;
                if (i2 >= this.n) {
                    this.k = 0;
                }
                this.m = false;
            }
            return obj;
        }
        fe.o("queue is empty");
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        int i = this.l;
        int i2 = this.k;
        int i3 = this.n;
        if (i < i2) {
            return (i3 - i2) + i;
        }
        if (i == i2) {
            if (this.m) {
                return i3;
            }
            return 0;
        }
        return i - i2;
    }
}
