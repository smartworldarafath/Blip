package io.sentry;

import io.sentry.util.AutoClosableReentrantLock;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SynchronizedCollection<E> implements Collection<E>, Serializable {
    public final Collection j;
    public final AutoClosableReentrantLock k = new ReentrantLock();

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public SynchronizedCollection(Collection collection) {
        this.j = collection;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        ISentryLifecycleToken a = this.k.a();
        try {
            boolean add = ((Queue) ((SynchronizedQueue) this).j).add(obj);
            a.close();
            return add;
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
    public final boolean addAll(Collection collection) {
        ISentryLifecycleToken a = this.k.a();
        try {
            boolean addAll = ((Queue) ((SynchronizedQueue) this).j).addAll(collection);
            a.close();
            return addAll;
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
    public final void clear() {
        ISentryLifecycleToken a = this.k.a();
        try {
            ((Queue) ((SynchronizedQueue) this).j).clear();
            a.close();
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
    public final boolean contains(Object obj) {
        ISentryLifecycleToken a = this.k.a();
        try {
            boolean contains = ((Queue) ((SynchronizedQueue) this).j).contains(obj);
            a.close();
            return contains;
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
    public final boolean containsAll(Collection collection) {
        ISentryLifecycleToken a = this.k.a();
        try {
            boolean containsAll = ((Queue) ((SynchronizedQueue) this).j).containsAll(collection);
            a.close();
            return containsAll;
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
    public final boolean isEmpty() {
        ISentryLifecycleToken a = this.k.a();
        try {
            boolean isEmpty = ((Queue) ((SynchronizedQueue) this).j).isEmpty();
            a.close();
            return isEmpty;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return ((Queue) ((SynchronizedQueue) this).j).iterator();
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        ISentryLifecycleToken a = this.k.a();
        try {
            boolean remove = ((Queue) ((SynchronizedQueue) this).j).remove(obj);
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
    public final boolean removeAll(Collection collection) {
        ISentryLifecycleToken a = this.k.a();
        try {
            boolean removeAll = ((Queue) ((SynchronizedQueue) this).j).removeAll(collection);
            a.close();
            return removeAll;
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
    public final boolean retainAll(Collection collection) {
        ISentryLifecycleToken a = this.k.a();
        try {
            boolean retainAll = ((Queue) ((SynchronizedQueue) this).j).retainAll(collection);
            a.close();
            return retainAll;
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
    public final int size() {
        ISentryLifecycleToken a = this.k.a();
        try {
            int size = ((Queue) ((SynchronizedQueue) this).j).size();
            a.close();
            return size;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final String toString() {
        ISentryLifecycleToken a = this.k.a();
        try {
            String obj = ((Queue) ((SynchronizedQueue) this).j).toString();
            a.close();
            return obj;
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
