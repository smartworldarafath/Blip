package okhttp3;

import defpackage.fi;
import java.io.InterruptedIOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealCall;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Dispatcher {
    public ThreadPoolExecutor a;
    public final ArrayDeque b = new ArrayDeque();
    public final ArrayDeque c = new ArrayDeque();
    public final ArrayDeque d = new ArrayDeque();

    public final void a(RealCall.AsyncCall asyncCall) {
        asyncCall.k.decrementAndGet();
        ArrayDeque arrayDeque = this.c;
        synchronized (this) {
            if (!arrayDeque.remove(asyncCall)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        b();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b() {
        int size;
        int i;
        ThreadPoolExecutor threadPoolExecutor;
        byte[] bArr = Util.a;
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator it = this.b.iterator();
                it.getClass();
                while (it.hasNext()) {
                    RealCall.AsyncCall asyncCall = (RealCall.AsyncCall) it.next();
                    if (this.c.size() >= 64) {
                        break;
                    }
                    if (asyncCall.k.get() < 5) {
                        it.remove();
                        asyncCall.k.incrementAndGet();
                        arrayList.add(asyncCall);
                        this.c.add(asyncCall);
                    }
                }
                synchronized (this) {
                    this.c.size();
                    this.d.size();
                }
                size = arrayList.size();
                for (i = 0; i < size; i++) {
                    RealCall.AsyncCall asyncCall2 = (RealCall.AsyncCall) arrayList.get(i);
                    synchronized (this) {
                        try {
                            if (this.a == null) {
                                this.a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new fi(Util.f + " Dispatcher", false));
                            }
                            threadPoolExecutor = this.a;
                            threadPoolExecutor.getClass();
                        } finally {
                        }
                    }
                    asyncCall2.getClass();
                    RealCall realCall = RealCall.this;
                    byte[] bArr2 = Util.a;
                    try {
                        try {
                            threadPoolExecutor.execute(asyncCall2);
                        } catch (RejectedExecutionException e) {
                            InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                            interruptedIOException.initCause(e);
                            realCall.h(interruptedIOException);
                            asyncCall2.j.a.g(new Result.Failure(interruptedIOException));
                            realCall.j.j.a(asyncCall2);
                        }
                    } catch (Throwable th) {
                        realCall.j.j.a(asyncCall2);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        size = arrayList.size();
        while (i < size) {
        }
    }
}
