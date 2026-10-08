package androidx.concurrent.futures;

import androidx.concurrent.futures.AbstractResolvableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CallbackToFutureAdapter {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Completer<T> {
        public Object a;
        public SafeFuture b;
        public ResolvableFuture c;
        public boolean d;

        public final void a(Object obj) {
            this.d = true;
            SafeFuture safeFuture = this.b;
            if (safeFuture != null && safeFuture.k.j(obj)) {
                this.a = null;
                this.b = null;
                this.c = null;
            }
        }

        public final void b() {
            this.d = true;
            SafeFuture safeFuture = this.b;
            if (safeFuture != null && safeFuture.k.cancel(true)) {
                this.a = null;
                this.b = null;
                this.c = null;
            }
        }

        public final void c(Throwable th) {
            this.d = true;
            SafeFuture safeFuture = this.b;
            if (safeFuture != null && safeFuture.k.k(th)) {
                this.a = null;
                this.b = null;
                this.c = null;
            }
        }

        public final void finalize() {
            ResolvableFuture resolvableFuture;
            SafeFuture safeFuture = this.b;
            if (safeFuture != null) {
                AbstractResolvableFuture abstractResolvableFuture = safeFuture.k;
                if (!abstractResolvableFuture.isDone()) {
                    abstractResolvableFuture.k(new Throwable("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.a));
                }
            }
            if (!this.d && (resolvableFuture = this.c) != null) {
                resolvableFuture.j(null);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FutureGarbageCollectedException extends Throwable {
        @Override // java.lang.Throwable
        public final synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Resolver<T> {
        Object e(Completer completer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.concurrent.futures.CallbackToFutureAdapter$Completer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.concurrent.futures.ResolvableFuture, java.lang.Object] */
    public static ListenableFuture a(Resolver resolver) {
        ?? obj = new Object();
        obj.c = new Object();
        SafeFuture safeFuture = new SafeFuture(obj);
        obj.b = safeFuture;
        obj.a = resolver.getClass();
        try {
            Object e = resolver.e(obj);
            if (e != null) {
                obj.a = e;
                return safeFuture;
            }
            return safeFuture;
        } catch (Exception e2) {
            safeFuture.k.k(e2);
            return safeFuture;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SafeFuture<T> implements ListenableFuture<T> {
        public final WeakReference j;
        public final AbstractResolvableFuture k = new AbstractResolvableFuture<T>() { // from class: androidx.concurrent.futures.CallbackToFutureAdapter.SafeFuture.1
            @Override // androidx.concurrent.futures.AbstractResolvableFuture
            public final String h() {
                Completer completer = (Completer) SafeFuture.this.j.get();
                if (completer == null) {
                    return "Completer object has been garbage collected, future will fail soon";
                }
                return "tag=[" + completer.a + "]";
            }
        };

        public SafeFuture(Completer completer) {
            this.j = new WeakReference(completer);
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public final void a(Runnable runnable, Executor executor) {
            this.k.a(runnable, executor);
        }

        @Override // java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            Completer completer = (Completer) this.j.get();
            boolean cancel = this.k.cancel(z);
            if (cancel && completer != null) {
                completer.a = null;
                completer.b = null;
                completer.c.j(null);
            }
            return cancel;
        }

        @Override // java.util.concurrent.Future
        public final Object get() {
            return this.k.get();
        }

        @Override // java.util.concurrent.Future
        public final boolean isCancelled() {
            return this.k.j instanceof AbstractResolvableFuture.Cancellation;
        }

        @Override // java.util.concurrent.Future
        public final boolean isDone() {
            return this.k.isDone();
        }

        public final String toString() {
            return this.k.toString();
        }

        @Override // java.util.concurrent.Future
        public final Object get(long j, TimeUnit timeUnit) {
            return this.k.get(j, timeUnit);
        }
    }
}
