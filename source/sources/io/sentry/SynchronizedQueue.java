package io.sentry;

import java.util.Queue;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SynchronizedQueue<E> extends SynchronizedCollection<E> implements Queue<E> {
    @Override // java.util.Queue
    public final Object element() {
        ISentryLifecycleToken a = this.k.a();
        try {
            Object element = ((Queue) this.j).element();
            a.close();
            return element;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        ISentryLifecycleToken a = this.k.a();
        try {
            boolean equals = ((Queue) this.j).equals(obj);
            a.close();
            return equals;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.util.Collection
    public final int hashCode() {
        ISentryLifecycleToken a = this.k.a();
        try {
            int hashCode = ((Queue) this.j).hashCode();
            a.close();
            return hashCode;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.util.Queue
    public final boolean offer(Object obj) {
        ISentryLifecycleToken a = this.k.a();
        try {
            boolean offer = ((Queue) this.j).offer(obj);
            a.close();
            return offer;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.util.Queue
    public final Object peek() {
        ISentryLifecycleToken a = this.k.a();
        try {
            Object peek = ((Queue) this.j).peek();
            a.close();
            return peek;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.util.Queue
    public final Object poll() {
        ISentryLifecycleToken a = this.k.a();
        try {
            Object poll = ((Queue) this.j).poll();
            a.close();
            return poll;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.util.Queue
    public final Object remove() {
        ISentryLifecycleToken a = this.k.a();
        try {
            Object remove = ((Queue) this.j).remove();
            a.close();
            return remove;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        ISentryLifecycleToken a = this.k.a();
        try {
            Object[] array = ((Queue) this.j).toArray();
            a.close();
            return array;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        ISentryLifecycleToken a = this.k.a();
        try {
            Object[] array = ((Queue) this.j).toArray(objArr);
            a.close();
            return array;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
