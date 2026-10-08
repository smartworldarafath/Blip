package com.google.common.util.concurrent;

import com.google.common.base.Strings;
import defpackage.u2;
import defpackage.u3;
import java.util.Arrays;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Futures extends GwtFuturesCatchingSpecialization {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CallbackListener<V> implements Runnable {
        public final Future j;
        public final FutureCallback k;

        public CallbackListener(ListenableFuture listenableFuture, FutureCallback futureCallback) {
            this.j = listenableFuture;
            this.k = futureCallback;
        }

        @Override // java.lang.Runnable
        public final void run() {
            FutureCallback futureCallback = this.k;
            try {
                futureCallback.a(Futures.b(this.j));
            } catch (ExecutionException e) {
                e.getCause();
                futureCallback.b();
            } catch (Throwable unused) {
                futureCallback.b();
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.base.MoreObjects$ToStringHelper] */
        public final String toString() {
            final String simpleName = CallbackListener.class.getSimpleName();
            ?? r0 = new Object(simpleName) { // from class: com.google.common.base.MoreObjects$ToStringHelper
                public final String a;
                public final ValueHolder b;
                public ValueHolder c;

                /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                /* loaded from: classes.dex */
                public static class ValueHolder {
                    public Object a;
                    public ValueHolder b;
                }

                /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.base.MoreObjects$ToStringHelper$ValueHolder, java.lang.Object] */
                {
                    ?? obj = new Object();
                    this.b = obj;
                    this.c = obj;
                    this.a = simpleName;
                }

                /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.base.MoreObjects$ToStringHelper$ValueHolder, java.lang.Object] */
                public final void a(Object obj) {
                    ?? obj2 = new Object();
                    this.c.b = obj2;
                    this.c = obj2;
                    obj2.a = obj;
                }

                public final String toString() {
                    StringBuilder sb = new StringBuilder(32);
                    sb.append(this.a);
                    sb.append('{');
                    ValueHolder valueHolder = this.b.b;
                    String str = "";
                    while (valueHolder != null) {
                        Object obj = valueHolder.a;
                        sb.append(str);
                        if (obj != null && obj.getClass().isArray()) {
                            String deepToString = Arrays.deepToString(new Object[]{obj});
                            sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                        } else {
                            sb.append(obj);
                        }
                        valueHolder = valueHolder.b;
                        str = ", ";
                    }
                    sb.append('}');
                    return sb.toString();
                }
            };
            r0.a(this.k);
            return r0.toString();
        }
    }

    public static void a(ListenableFuture listenableFuture, FutureCallback futureCallback, u3 u3Var) {
        listenableFuture.a(new CallbackListener(listenableFuture, futureCallback), u3Var);
    }

    public static Object b(Future future) {
        Object obj;
        if (future.isDone()) {
            boolean z = false;
            while (true) {
                try {
                    obj = future.get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            return obj;
        }
        u2.l(Strings.a("Future was expected to be done: %s", future));
        return null;
    }
}
