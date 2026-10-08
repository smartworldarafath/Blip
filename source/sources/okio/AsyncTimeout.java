package okio;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class AsyncTimeout extends Timeout {
    public static final PriorityQueue h;
    public static AsyncTimeout i;
    public static final ReentrantLock j;
    public static final Condition k;
    public static final long l;
    public static final long m;
    public int e;
    public int f = -1;
    public long g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final void a(AsyncTimeout asyncTimeout) {
            PriorityQueue priorityQueue = AsyncTimeout.h;
            if (AsyncTimeout.i == null) {
                AsyncTimeout.i = new AsyncTimeout();
                Thread thread = new Thread("Okio Watchdog");
                thread.setDaemon(true);
                thread.start();
            }
            long nanoTime = System.nanoTime();
            long j = asyncTimeout.c;
            boolean z = asyncTimeout.a;
            if (j != 0 && z) {
                asyncTimeout.g = Math.min(j, asyncTimeout.c() - nanoTime) + nanoTime;
            } else if (j != 0) {
                asyncTimeout.g = nanoTime + j;
            } else if (z) {
                asyncTimeout.g = asyncTimeout.c();
            } else {
                throw new AssertionError();
            }
            PriorityQueue priorityQueue2 = AsyncTimeout.h;
            int i = priorityQueue2.a + 1;
            priorityQueue2.a = i;
            AsyncTimeout[] asyncTimeoutArr = priorityQueue2.b;
            if (i == asyncTimeoutArr.length) {
                AsyncTimeout[] asyncTimeoutArr2 = new AsyncTimeout[i * 2];
                ArraysKt.j(0, 0, 14, asyncTimeoutArr, asyncTimeoutArr2);
                priorityQueue2.b = asyncTimeoutArr2;
            }
            priorityQueue2.a(i, asyncTimeout);
            if (asyncTimeout.f == 1) {
                AsyncTimeout.k.signal();
            }
        }

        public static AsyncTimeout b() {
            PriorityQueue priorityQueue = AsyncTimeout.h;
            AsyncTimeout asyncTimeout = priorityQueue.b[1];
            if (asyncTimeout == null) {
                long nanoTime = System.nanoTime();
                AsyncTimeout.k.await(AsyncTimeout.l, TimeUnit.MILLISECONDS);
                if (priorityQueue.b[1] != null || System.nanoTime() - nanoTime < AsyncTimeout.m) {
                    return null;
                }
                return AsyncTimeout.i;
            }
            long nanoTime2 = asyncTimeout.g - System.nanoTime();
            if (nanoTime2 > 0) {
                AsyncTimeout.k.await(nanoTime2, TimeUnit.NANOSECONDS);
                return null;
            }
            priorityQueue.b(asyncTimeout);
            asyncTimeout.e = 2;
            return asyncTimeout;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Watchdog extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            ReentrantLock reentrantLock;
            AsyncTimeout b;
            while (true) {
                try {
                    PriorityQueue priorityQueue = AsyncTimeout.h;
                    reentrantLock = AsyncTimeout.j;
                    reentrantLock.lock();
                    try {
                        b = Companion.b();
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                } catch (InterruptedException unused) {
                    continue;
                }
                if (b == AsyncTimeout.i) {
                    AsyncTimeout.i = null;
                    reentrantLock.unlock();
                    return;
                } else {
                    reentrantLock.unlock();
                    if (b != null) {
                        b.j();
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [okio.PriorityQueue, java.lang.Object] */
    static {
        ?? obj = new Object();
        obj.b = new AsyncTimeout[8];
        h = obj;
        ReentrantLock reentrantLock = new ReentrantLock();
        j = reentrantLock;
        Condition newCondition = reentrantLock.newCondition();
        newCondition.getClass();
        k = newCondition;
        l = 60000L;
        m = TimeUnit.MILLISECONDS.toNanos(60000L);
    }

    public final void h() {
        long j2 = this.c;
        boolean z = this.a;
        if (j2 == 0 && !z) {
            return;
        }
        ReentrantLock reentrantLock = j;
        reentrantLock.lock();
        try {
            if (this.e == 0) {
                this.e = 1;
                Companion.a(this);
                return;
            }
            throw new IllegalStateException("Unbalanced enter/exit");
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean i() {
        ReentrantLock reentrantLock = j;
        reentrantLock.lock();
        try {
            int i2 = this.e;
            boolean z = false;
            this.e = 0;
            if (i2 == 1) {
                h.b(this);
                return false;
            }
            if (i2 == 2) {
                z = true;
            }
            return z;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void j() {
    }
}
