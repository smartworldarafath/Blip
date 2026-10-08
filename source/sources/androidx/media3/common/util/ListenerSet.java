package androidx.media3.common.util;

import android.os.Looper;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ListenerSet<T> {
    public final Thread a;
    public final HandlerWrapper b;
    public final IterationFinishedEvent c;
    public final CopyOnWriteArraySet d;
    public final ArrayDeque e;
    public final ArrayDeque f;
    public final Object g;
    public boolean h;
    public final boolean i;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Event<T> {
        void b(Object obj);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface IterationFinishedEvent<T> {
        void f(Object obj, FlagSet flagSet);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ListenerHolder<T> {
        public final Object a;
        public FlagSet.Builder b = new FlagSet.Builder();
        public boolean c;
        public boolean d;

        public ListenerHolder(Object obj) {
            this.a = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && ListenerHolder.class == obj.getClass()) {
                return this.a.equals(((ListenerHolder) obj).a);
            }
            return false;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }
    }

    public ListenerSet(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, Thread thread, Clock clock, IterationFinishedEvent iterationFinishedEvent, boolean z) {
        this.a = thread;
        this.d = copyOnWriteArraySet;
        this.c = iterationFinishedEvent;
        this.g = new Object();
        this.e = new ArrayDeque();
        this.f = new ArrayDeque();
        if (looper != null && clock != null && iterationFinishedEvent != null) {
            this.b = ((SystemClock) clock).a(looper, new b(0, this));
        } else {
            this.b = null;
        }
        this.i = z;
    }

    public final void a(Object obj) {
        obj.getClass();
        synchronized (this.g) {
            try {
                if (this.h) {
                    return;
                }
                this.d.add(new ListenerHolder(obj));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        boolean z;
        if (this.i) {
            if (Thread.currentThread() == this.a) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
        }
        ArrayDeque arrayDeque = this.f;
        if (!arrayDeque.isEmpty()) {
            if (this.c != null) {
                HandlerWrapper handlerWrapper = this.b;
                handlerWrapper.getClass();
                SystemHandlerWrapper systemHandlerWrapper = (SystemHandlerWrapper) handlerWrapper;
                if (!systemHandlerWrapper.a.hasMessages(1)) {
                    systemHandlerWrapper.c(systemHandlerWrapper.e(1));
                }
            }
            ArrayDeque arrayDeque2 = this.e;
            boolean isEmpty = arrayDeque2.isEmpty();
            arrayDeque2.addAll(arrayDeque);
            arrayDeque.clear();
            if (isEmpty) {
                while (!arrayDeque2.isEmpty()) {
                    ((Runnable) arrayDeque2.peekFirst()).run();
                    arrayDeque2.removeFirst();
                }
            }
        }
    }

    public final void c(final int i, final Event event) {
        boolean z;
        if (this.i) {
            if (Thread.currentThread() == this.a) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
        }
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.d);
        this.f.add(new Runnable() { // from class: androidx.media3.common.util.c
            @Override // java.lang.Runnable
            public final void run() {
                Iterator it = copyOnWriteArraySet.iterator();
                while (it.hasNext()) {
                    ListenerSet.ListenerHolder listenerHolder = (ListenerSet.ListenerHolder) it.next();
                    if (!listenerHolder.d) {
                        int i2 = i;
                        if (i2 != -1) {
                            listenerHolder.b.a(i2);
                        }
                        listenerHolder.c = true;
                        event.b(listenerHolder.a);
                    }
                }
            }
        });
    }

    public final void d() {
        boolean z;
        if (this.i) {
            if (Thread.currentThread() == this.a) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
        }
        synchronized (this.g) {
            this.h = true;
        }
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ListenerHolder listenerHolder = (ListenerHolder) it.next();
            IterationFinishedEvent iterationFinishedEvent = this.c;
            listenerHolder.d = true;
            if (iterationFinishedEvent != null && listenerHolder.c) {
                listenerHolder.c = false;
                iterationFinishedEvent.f(listenerHolder.a, listenerHolder.b.b());
            }
        }
        this.d.clear();
    }

    public final void e(Player.Listener listener) {
        boolean z;
        if (this.i) {
            if (Thread.currentThread() == this.a) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
        }
        CopyOnWriteArraySet copyOnWriteArraySet = this.d;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ListenerHolder listenerHolder = (ListenerHolder) it.next();
            if (listenerHolder.a.equals(listener)) {
                listenerHolder.d = true;
                IterationFinishedEvent iterationFinishedEvent = this.c;
                if (iterationFinishedEvent != null && listenerHolder.c) {
                    listenerHolder.c = false;
                    iterationFinishedEvent.f(listenerHolder.a, listenerHolder.b.b());
                }
                copyOnWriteArraySet.remove(listenerHolder);
            }
        }
    }

    public final void f(int i, Event event) {
        c(i, event);
        b();
    }

    public ListenerSet(Thread thread) {
        this(new CopyOnWriteArraySet(), null, thread, null, null, true);
    }
}
