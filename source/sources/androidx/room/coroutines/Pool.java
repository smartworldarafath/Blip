package androidx.room.coroutines;

import androidx.collection.CircularArray;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import defpackage.u2;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;
import kotlinx.coroutines.sync.SemaphoreKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Pool {
    public final int a;
    public final Function0 b;
    public final ReentrantLock c = new ReentrantLock();
    public int d;
    public boolean e;
    public final ConnectionWithLock[] f;
    public final Semaphore g;
    public final CircularArray h;

    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, androidx.collection.CircularArray] */
    public Pool(int i, Function0 function0) {
        this.a = i;
        this.b = function0;
        this.f = new ConnectionWithLock[i];
        this.g = SemaphoreKt.a(i);
        ?? obj = new Object();
        if (i >= 1) {
            if (i <= 1073741824) {
                i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
                obj.d = i - 1;
                obj.a = new Object[i];
                this.h = obj;
                return;
            }
            u2.g("capacity must be <= 2^30");
            throw null;
        }
        u2.g("capacity must be >= 1");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004f A[Catch: all -> 0x0090, TryCatch #0 {all -> 0x0090, blocks: (B:13:0x004b, B:15:0x004f, B:17:0x0055, B:20:0x005c, B:21:0x0076, B:23:0x007c, B:27:0x0092, B:28:0x0097, B:29:0x0098, B:30:0x009f), top: B:12:0x004b, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0098 A[Catch: all -> 0x0090, TryCatch #0 {all -> 0x0090, blocks: (B:13:0x004b, B:15:0x004f, B:17:0x0055, B:20:0x005c, B:21:0x0076, B:23:0x007c, B:27:0x0092, B:28:0x0097, B:29:0x0098, B:30:0x009f), top: B:12:0x004b, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(ContinuationImpl continuationImpl) {
        Pool$acquire$1 pool$acquire$1;
        int i;
        ReentrantLock reentrantLock;
        try {
            try {
                if (continuationImpl instanceof Pool$acquire$1) {
                    pool$acquire$1 = (Pool$acquire$1) continuationImpl;
                    int i2 = pool$acquire$1.p;
                    if ((i2 & Integer.MIN_VALUE) != 0) {
                        pool$acquire$1.p = i2 - Integer.MIN_VALUE;
                        Object obj = pool$acquire$1.n;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                        i = pool$acquire$1.p;
                        if (i == 0) {
                            if (i == 1) {
                                this = (Pool) pool$acquire$1.m;
                                ResultKt.b(obj);
                            } else {
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                        } else {
                            ResultKt.b(obj);
                            pool$acquire$1.m = this;
                            pool$acquire$1.p = 1;
                            if (((SemaphoreAndMutexImpl) this.g).b(pool$acquire$1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        }
                        reentrantLock = this.c;
                        CircularArray circularArray = this.h;
                        reentrantLock.lock();
                        if (this.e) {
                            if (circularArray.b == circularArray.c && this.d < this.a) {
                                ConnectionWithLock connectionWithLock = new ConnectionWithLock((SQLiteConnection) this.b.a());
                                ConnectionWithLock[] connectionWithLockArr = this.f;
                                int i3 = this.d;
                                this.d = i3 + 1;
                                connectionWithLockArr[i3] = connectionWithLock;
                                circularArray.a(connectionWithLock);
                            }
                            int i4 = circularArray.b;
                            if (i4 != circularArray.c) {
                                Object[] objArr = circularArray.a;
                                Object obj2 = objArr[i4];
                                objArr[i4] = null;
                                circularArray.b = (i4 + 1) & circularArray.d;
                                return (ConnectionWithLock) obj2;
                            }
                            throw new ArrayIndexOutOfBoundsException();
                        }
                        SQLite.b(21, "Connection pool is closed");
                        throw null;
                    }
                }
                if (this.e) {
                }
            } finally {
                reentrantLock.unlock();
            }
            reentrantLock = this.c;
            CircularArray circularArray2 = this.h;
            reentrantLock.lock();
        } catch (Throwable th) {
            ((SemaphoreAndMutexImpl) this.g).d();
            throw th;
        }
        pool$acquire$1 = new Pool$acquire$1(this, continuationImpl);
        Object obj3 = pool$acquire$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = pool$acquire$1.p;
        if (i == 0) {
        }
    }

    public final void b() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            this.e = true;
            for (ConnectionWithLock connectionWithLock : this.f) {
                if (connectionWithLock != null) {
                    connectionWithLock.close();
                }
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void c(StringBuilder sb) {
        String str;
        CircularArray circularArray = this.h;
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            ListBuilder o = CollectionsKt.o();
            int i = (circularArray.c - circularArray.b) & circularArray.d;
            for (int i2 = 0; i2 < i; i2++) {
                if (i2 >= 0) {
                    int i3 = circularArray.c;
                    int i4 = circularArray.b;
                    int i5 = circularArray.d;
                    if (i2 < ((i3 - i4) & i5)) {
                        Object obj = circularArray.a[(i4 + i2) & i5];
                        obj.getClass();
                        o.add(obj);
                    }
                }
                throw new ArrayIndexOutOfBoundsException();
            }
            ListBuilder l = CollectionsKt.l(o);
            sb.append('\t' + toString() + " (");
            sb.append("capacity=" + this.a + ", ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("permits=");
            SemaphoreAndMutexImpl semaphoreAndMutexImpl = (SemaphoreAndMutexImpl) this.g;
            semaphoreAndMutexImpl.getClass();
            sb2.append(Math.max(SemaphoreAndMutexImpl.p.get(semaphoreAndMutexImpl), 0));
            sb2.append(", ");
            sb.append(sb2.toString());
            sb.append("queue=(size=" + l.b() + ")[" + CollectionsKt.y(l, null, null, null, null, 63) + "], ");
            sb.append(")");
            sb.append('\n');
            int i6 = 0;
            for (ConnectionWithLock connectionWithLock : this.f) {
                i6++;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("\t\t[");
                sb3.append(i6);
                sb3.append("] - ");
                if (connectionWithLock != null) {
                    str = connectionWithLock.j.toString();
                } else {
                    str = null;
                }
                sb3.append(str);
                sb.append(sb3.toString());
                sb.append('\n');
                if (connectionWithLock != null) {
                    connectionWithLock.n(sb);
                }
            }
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void d(ConnectionWithLock connectionWithLock) {
        connectionWithLock.getClass();
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            this.h.a(connectionWithLock);
            reentrantLock.unlock();
            ((SemaphoreAndMutexImpl) this.g).d();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
