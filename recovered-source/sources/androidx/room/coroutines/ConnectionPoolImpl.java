package androidx.room.coroutines;

import android.database.SQLException;
import androidx.room.BaseRoomConnectionManager;
import androidx.room.coroutines.ConnectionElement;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import defpackage.r1;
import defpackage.u2;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.internal.ThreadLocalElement;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ConnectionPoolImpl implements ConnectionPool {
    public final Pool j;
    public final Pool k;
    public final ThreadLocal l;
    public final AtomicBoolean m;
    public final long n;

    public ConnectionPoolImpl(final BaseRoomConnectionManager.DriverWrapper driverWrapper, final String str, int i) {
        str.getClass();
        this.l = new ThreadLocal();
        final int i2 = 0;
        this.m = new AtomicBoolean(false);
        Duration.Companion companion = Duration.k;
        this.n = DurationKt.d(30, DurationUnit.m);
        if (i > 0) {
            this.j = new Pool(i, new Function0() { // from class: m6
                @Override // kotlin.jvm.functions.Function0
                public final Object a() {
                    int i3 = i2;
                    String str2 = str;
                    BaseRoomConnectionManager.DriverWrapper driverWrapper2 = driverWrapper;
                    switch (i3) {
                        case 0:
                            SQLiteConnection a = driverWrapper2.a(str2);
                            SQLite.a(a, "PRAGMA query_only = 1");
                            return a;
                        default:
                            return driverWrapper2.a(str2);
                    }
                }
            });
            final int i3 = 1;
            this.k = new Pool(1, new Function0() { // from class: m6
                @Override // kotlin.jvm.functions.Function0
                public final Object a() {
                    int i32 = i3;
                    String str2 = str;
                    BaseRoomConnectionManager.DriverWrapper driverWrapper2 = driverWrapper;
                    switch (i32) {
                        case 0:
                            SQLiteConnection a = driverWrapper2.a(str2);
                            SQLite.a(a, "PRAGMA query_only = 1");
                            return a;
                        default:
                            return driverWrapper2.a(str2);
                    }
                }
            });
            return;
        }
        u2.g("Maximum number of readers must be greater than 0");
        throw null;
    }

    public final void a(boolean z) {
        String str;
        if (z) {
            str = "reader";
        } else {
            str = "writer";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Timed out attempting to acquire a " + str + " connection.");
        sb.append("\n\nWriter pool:\n");
        this.k.c(sb);
        sb.append("Reader pool:");
        sb.append('\n');
        this.j.c(sb);
        SQLite.b(5, sb.toString());
        throw null;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.m.compareAndSet(false, true)) {
            this.j.b();
            this.k.b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x019c A[Catch: all -> 0x01b4, TRY_LEAVE, TryCatch #2 {all -> 0x01b4, blocks: (B:16:0x0196, B:18:0x019c, B:23:0x01a6, B:20:0x01ab), top: B:15:0x0196 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0137 A[Catch: all -> 0x0154, TryCatch #1 {all -> 0x0154, blocks: (B:62:0x0131, B:64:0x0137, B:68:0x0150, B:69:0x015a, B:73:0x0164, B:77:0x01b5, B:78:0x01bc, B:79:0x01bd, B:80:0x01be, B:81:0x01c1), top: B:61:0x0131 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01be A[Catch: all -> 0x0154, TryCatch #1 {all -> 0x0154, blocks: (B:62:0x0131, B:64:0x0137, B:68:0x0150, B:69:0x015a, B:73:0x0164, B:77:0x01b5, B:78:0x01bc, B:79:0x01bd, B:80:0x01be, B:81:0x01c1), top: B:61:0x0131 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x007c  */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v5 */
    @Override // androidx.room.coroutines.ConnectionPool
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object j0(boolean z, Function2 function2, ContinuationImpl continuationImpl) {
        ConnectionPoolImpl$useConnection$1 connectionPoolImpl$useConnection$1;
        int i;
        Pool pool;
        Pool pool2;
        ?? obj;
        Throwable th;
        Pool pool3;
        ?? obj2;
        Ref$ObjectRef ref$ObjectRef;
        ConnectionPoolImpl connectionPoolImpl;
        boolean z2;
        Ref$ObjectRef ref$ObjectRef2;
        Ref$ObjectRef ref$ObjectRef3;
        Ref$ObjectRef ref$ObjectRef4;
        Ref$ObjectRef ref$ObjectRef5;
        ConnectionWithLock connectionWithLock;
        PooledConnectionImpl pooledConnectionImpl;
        boolean z3;
        Ref$ObjectRef ref$ObjectRef6;
        PooledConnectionImpl pooledConnectionImpl2;
        ConnectionPoolImpl connectionPoolImpl2 = this;
        boolean z4 = z;
        Function2 function22 = function2;
        try {
            if (continuationImpl instanceof ConnectionPoolImpl$useConnection$1) {
                connectionPoolImpl$useConnection$1 = (ConnectionPoolImpl$useConnection$1) continuationImpl;
                int i2 = connectionPoolImpl$useConnection$1.v;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    connectionPoolImpl$useConnection$1.v = i2 - Integer.MIN_VALUE;
                    CoroutineContext coroutineContext = connectionPoolImpl$useConnection$1.k;
                    Object obj3 = connectionPoolImpl$useConnection$1.t;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = connectionPoolImpl$useConnection$1.v;
                    if (i == 0) {
                        if (i != 1) {
                            if (i != 2) {
                                if (i != 3) {
                                    if (i == 4) {
                                        ref$ObjectRef3 = (Ref$ObjectRef) connectionPoolImpl$useConnection$1.n;
                                        pool3 = (Pool) connectionPoolImpl$useConnection$1.m;
                                        try {
                                            ResultKt.b(obj3);
                                            try {
                                                pooledConnectionImpl2 = (PooledConnectionImpl) ref$ObjectRef3.j;
                                                if (pooledConnectionImpl2 != null) {
                                                    if (pooledConnectionImpl2.d.compareAndSet(false, true)) {
                                                        try {
                                                            SQLite.a(pooledConnectionImpl2.a, "ROLLBACK TRANSACTION");
                                                        } catch (SQLException unused) {
                                                        }
                                                    }
                                                    ConnectionWithLock connectionWithLock2 = pooledConnectionImpl2.a;
                                                    connectionWithLock2.l = null;
                                                    connectionWithLock2.m = null;
                                                    pool3.d(connectionWithLock2);
                                                }
                                            } catch (Throwable unused2) {
                                            }
                                            return obj3;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            ref$ObjectRef5 = ref$ObjectRef3;
                                            th = th;
                                            ref$ObjectRef6 = ref$ObjectRef5;
                                            try {
                                                throw th;
                                            } finally {
                                            }
                                        }
                                    } else {
                                        u2.l("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                } else {
                                    z2 = connectionPoolImpl$useConnection$1.s;
                                    ref$ObjectRef2 = connectionPoolImpl$useConnection$1.r;
                                    coroutineContext = connectionPoolImpl$useConnection$1.q;
                                    Ref$ObjectRef ref$ObjectRef7 = connectionPoolImpl$useConnection$1.p;
                                    pool2 = (Pool) connectionPoolImpl$useConnection$1.o;
                                    Function2 function23 = (Function2) connectionPoolImpl$useConnection$1.n;
                                    connectionPoolImpl = (ConnectionPoolImpl) connectionPoolImpl$useConnection$1.m;
                                    try {
                                        ResultKt.b(obj3);
                                        ref$ObjectRef = ref$ObjectRef7;
                                        function22 = function23;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        obj2 = ref$ObjectRef2;
                                        z4 = z2;
                                        connectionPoolImpl2 = connectionPoolImpl;
                                        obj = ref$ObjectRef7;
                                        function22 = function23;
                                        Ref$ObjectRef ref$ObjectRef8 = obj;
                                        connectionPoolImpl = connectionPoolImpl2;
                                        ref$ObjectRef3 = ref$ObjectRef8;
                                        ref$ObjectRef4 = obj2;
                                        connectionWithLock = (ConnectionWithLock) ref$ObjectRef4.j;
                                        if (connectionWithLock == null) {
                                        }
                                        ref$ObjectRef3.j = pooledConnectionImpl;
                                        if (th instanceof TimeoutCancellationException) {
                                        }
                                    }
                                }
                            } else {
                                ResultKt.b(obj3);
                                return obj3;
                            }
                        } else {
                            ResultKt.b(obj3);
                            return obj3;
                        }
                    } else {
                        ResultKt.b(obj3);
                        if (!connectionPoolImpl2.m.get()) {
                            ThreadLocal threadLocal = connectionPoolImpl2.l;
                            PooledConnectionImpl pooledConnectionImpl3 = (PooledConnectionImpl) threadLocal.get();
                            ConnectionElement.Key key = ConnectionElement.k;
                            if (pooledConnectionImpl3 == null) {
                                coroutineContext.getClass();
                                ConnectionElement connectionElement = (ConnectionElement) coroutineContext.v(key);
                                if (connectionElement != null) {
                                    pooledConnectionImpl3 = connectionElement.j;
                                } else {
                                    pooledConnectionImpl3 = null;
                                }
                            }
                            if (pooledConnectionImpl3 != null) {
                                if (!z4 && pooledConnectionImpl3.b) {
                                    SQLite.b(1, "Cannot upgrade connection from reader to writer");
                                    throw null;
                                }
                                coroutineContext.getClass();
                                if (coroutineContext.v(key) == null) {
                                    ConnectionElement connectionElement2 = new ConnectionElement(pooledConnectionImpl3);
                                    threadLocal.getClass();
                                    CoroutineContext c = CoroutineContext.Element.DefaultImpls.c(connectionElement2, new ThreadLocalElement(pooledConnectionImpl3, threadLocal));
                                    ConnectionPoolImpl$useConnection$2 connectionPoolImpl$useConnection$2 = new ConnectionPoolImpl$useConnection$2(function22, pooledConnectionImpl3, null);
                                    connectionPoolImpl$useConnection$1.v = 1;
                                    Object e = BuildersKt.e(c, connectionPoolImpl$useConnection$2, connectionPoolImpl$useConnection$1);
                                    if (e != coroutineSingletons) {
                                        return e;
                                    }
                                } else {
                                    connectionPoolImpl$useConnection$1.v = 2;
                                    Object n = function22.n(pooledConnectionImpl3, connectionPoolImpl$useConnection$1);
                                    if (n != coroutineSingletons) {
                                        return n;
                                    }
                                }
                            } else {
                                if (z4) {
                                    pool = connectionPoolImpl2.j;
                                } else {
                                    pool = connectionPoolImpl2.k;
                                }
                                pool2 = pool;
                                obj = new Object();
                                try {
                                    coroutineContext.getClass();
                                    obj2 = new Object();
                                    try {
                                        long j = connectionPoolImpl2.n;
                                        ConnectionPoolImpl$acquireWithTimeout$2 connectionPoolImpl$acquireWithTimeout$2 = new ConnectionPoolImpl$acquireWithTimeout$2(obj2, pool2, null);
                                        connectionPoolImpl$useConnection$1.m = connectionPoolImpl2;
                                        connectionPoolImpl$useConnection$1.n = (Serializable) function22;
                                        connectionPoolImpl$useConnection$1.o = pool2;
                                        connectionPoolImpl$useConnection$1.p = obj;
                                        connectionPoolImpl$useConnection$1.q = coroutineContext;
                                        connectionPoolImpl$useConnection$1.r = obj2;
                                        connectionPoolImpl$useConnection$1.s = z4;
                                        connectionPoolImpl$useConnection$1.v = 3;
                                        if (TimeoutKt.b(DelayKt.d(j), connectionPoolImpl$acquireWithTimeout$2, connectionPoolImpl$useConnection$1) != coroutineSingletons) {
                                            ref$ObjectRef = obj;
                                            connectionPoolImpl = connectionPoolImpl2;
                                            z2 = z4;
                                            ref$ObjectRef2 = obj2;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        Ref$ObjectRef ref$ObjectRef82 = obj;
                                        connectionPoolImpl = connectionPoolImpl2;
                                        ref$ObjectRef3 = ref$ObjectRef82;
                                        ref$ObjectRef4 = obj2;
                                        connectionWithLock = (ConnectionWithLock) ref$ObjectRef4.j;
                                        if (connectionWithLock == null) {
                                        }
                                        ref$ObjectRef3.j = pooledConnectionImpl;
                                        if (th instanceof TimeoutCancellationException) {
                                        }
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    pool3 = pool2;
                                    ref$ObjectRef6 = obj;
                                    throw th;
                                }
                            }
                            return coroutineSingletons;
                        }
                        SQLite.b(21, "Connection pool is closed");
                        throw null;
                    }
                    ref$ObjectRef4 = ref$ObjectRef2;
                    z4 = z2;
                    ref$ObjectRef3 = ref$ObjectRef;
                    th = null;
                    connectionWithLock = (ConnectionWithLock) ref$ObjectRef4.j;
                    if (connectionWithLock == null) {
                        coroutineContext.getClass();
                        connectionWithLock.l = coroutineContext;
                        connectionWithLock.m = new Throwable();
                        if (connectionPoolImpl.j != connectionPoolImpl.k && z4) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        pooledConnectionImpl = new PooledConnectionImpl(connectionWithLock, z3);
                    } else {
                        pooledConnectionImpl = null;
                    }
                    ref$ObjectRef3.j = pooledConnectionImpl;
                    if (th instanceof TimeoutCancellationException) {
                        if (th == null) {
                            if (pooledConnectionImpl != null) {
                                connectionPoolImpl.getClass();
                                ConnectionElement connectionElement3 = new ConnectionElement(pooledConnectionImpl);
                                ThreadLocal threadLocal2 = connectionPoolImpl.l;
                                threadLocal2.getClass();
                                CoroutineContext c2 = CoroutineContext.Element.DefaultImpls.c(connectionElement3, new ThreadLocalElement(pooledConnectionImpl, threadLocal2));
                                ConnectionPoolImpl$useConnection$4 connectionPoolImpl$useConnection$4 = new ConnectionPoolImpl$useConnection$4(function22, ref$ObjectRef3, null);
                                connectionPoolImpl$useConnection$1.m = pool2;
                                connectionPoolImpl$useConnection$1.n = ref$ObjectRef3;
                                connectionPoolImpl$useConnection$1.o = null;
                                connectionPoolImpl$useConnection$1.p = null;
                                connectionPoolImpl$useConnection$1.q = null;
                                connectionPoolImpl$useConnection$1.r = null;
                                connectionPoolImpl$useConnection$1.v = 4;
                                obj3 = BuildersKt.e(c2, connectionPoolImpl$useConnection$4, connectionPoolImpl$useConnection$1);
                                if (obj3 != coroutineSingletons) {
                                    pool3 = pool2;
                                    pooledConnectionImpl2 = (PooledConnectionImpl) ref$ObjectRef3.j;
                                    if (pooledConnectionImpl2 != null) {
                                    }
                                    return obj3;
                                }
                                return coroutineSingletons;
                            }
                            throw new IllegalArgumentException("Required value was null.");
                        }
                        throw th;
                    }
                    connectionPoolImpl.a(z4);
                    throw null;
                }
            }
            connectionWithLock = (ConnectionWithLock) ref$ObjectRef4.j;
            if (connectionWithLock == null) {
            }
            ref$ObjectRef3.j = pooledConnectionImpl;
            if (th instanceof TimeoutCancellationException) {
            }
        } catch (Throwable th6) {
            th = th6;
            ref$ObjectRef5 = ref$ObjectRef3;
            pool3 = pool2;
            th = th;
            ref$ObjectRef6 = ref$ObjectRef5;
            throw th;
        }
        connectionPoolImpl$useConnection$1 = new ConnectionPoolImpl$useConnection$1(connectionPoolImpl2, continuationImpl);
        CoroutineContext coroutineContext2 = connectionPoolImpl$useConnection$1.k;
        Object obj32 = connectionPoolImpl$useConnection$1.t;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = connectionPoolImpl$useConnection$1.v;
        if (i == 0) {
        }
        ref$ObjectRef4 = ref$ObjectRef2;
        z4 = z2;
        ref$ObjectRef3 = ref$ObjectRef;
        th = null;
    }

    public ConnectionPoolImpl(BaseRoomConnectionManager.DriverWrapper driverWrapper) {
        this.l = new ThreadLocal();
        this.m = new AtomicBoolean(false);
        Duration.Companion companion = Duration.k;
        this.n = DurationKt.d(30, DurationUnit.m);
        Pool pool = new Pool(1, new r1(10, driverWrapper));
        this.j = pool;
        this.k = pool;
    }
}
