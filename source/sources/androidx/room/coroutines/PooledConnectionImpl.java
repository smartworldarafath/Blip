package androidx.room.coroutines;

import android.database.SQLException;
import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.room.concurrent.ThreadLocal_jvmAndroidKt;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import defpackage.u2;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PooledConnectionImpl implements Transactor, RawConnectionAccessor {
    public final ConnectionWithLock a;
    public final boolean b;
    public final ArrayDeque c;
    public final AtomicBoolean d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class StatementWrapper implements SQLiteStatement {
        public final SQLiteStatement j;
        public final long k;
        public final /* synthetic */ PooledConnectionImpl l;

        public StatementWrapper(PooledConnectionImpl pooledConnectionImpl, SQLiteStatement sQLiteStatement) {
            sQLiteStatement.getClass();
            this.l = pooledConnectionImpl;
            this.j = sQLiteStatement;
            this.k = ThreadLocal_jvmAndroidKt.a();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void T(int i, String str) {
            str.getClass();
            if (!this.l.d.get()) {
                if (this.k == ThreadLocal_jvmAndroidKt.a()) {
                    this.j.T(i, str);
                    return;
                } else {
                    SQLite.b(21, "Attempted to use statement on a different thread");
                    throw null;
                }
            }
            SQLite.b(21, "Statement is recycled");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean V0() {
            if (!this.l.d.get()) {
                if (this.k == ThreadLocal_jvmAndroidKt.a()) {
                    return this.j.V0();
                }
                SQLite.b(21, "Attempted to use statement on a different thread");
                throw null;
            }
            SQLite.b(21, "Statement is recycled");
            throw null;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            if (!this.l.d.get()) {
                if (this.k == ThreadLocal_jvmAndroidKt.a()) {
                    this.j.close();
                    return;
                } else {
                    SQLite.b(21, "Attempted to use statement on a different thread");
                    throw null;
                }
            }
            SQLite.b(21, "Statement is recycled");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final byte[] getBlob(int i) {
            if (!this.l.d.get()) {
                if (this.k == ThreadLocal_jvmAndroidKt.a()) {
                    return this.j.getBlob(i);
                }
                SQLite.b(21, "Attempted to use statement on a different thread");
                throw null;
            }
            SQLite.b(21, "Statement is recycled");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final int getColumnCount() {
            if (!this.l.d.get()) {
                if (this.k == ThreadLocal_jvmAndroidKt.a()) {
                    return this.j.getColumnCount();
                }
                SQLite.b(21, "Attempted to use statement on a different thread");
                throw null;
            }
            SQLite.b(21, "Statement is recycled");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getColumnName(int i) {
            if (!this.l.d.get()) {
                if (this.k == ThreadLocal_jvmAndroidKt.a()) {
                    return this.j.getColumnName(i);
                }
                SQLite.b(21, "Attempted to use statement on a different thread");
                throw null;
            }
            SQLite.b(21, "Statement is recycled");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final long getLong(int i) {
            if (!this.l.d.get()) {
                if (this.k == ThreadLocal_jvmAndroidKt.a()) {
                    return this.j.getLong(i);
                }
                SQLite.b(21, "Attempted to use statement on a different thread");
                throw null;
            }
            SQLite.b(21, "Statement is recycled");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean isNull(int i) {
            if (!this.l.d.get()) {
                if (this.k == ThreadLocal_jvmAndroidKt.a()) {
                    return this.j.isNull(i);
                }
                SQLite.b(21, "Attempted to use statement on a different thread");
                throw null;
            }
            SQLite.b(21, "Statement is recycled");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void j(int i, long j) {
            if (!this.l.d.get()) {
                if (this.k == ThreadLocal_jvmAndroidKt.a()) {
                    this.j.j(i, j);
                    return;
                } else {
                    SQLite.b(21, "Attempted to use statement on a different thread");
                    throw null;
                }
            }
            SQLite.b(21, "Statement is recycled");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void k(int i, byte[] bArr) {
            if (!this.l.d.get()) {
                if (this.k == ThreadLocal_jvmAndroidKt.a()) {
                    this.j.k(i, bArr);
                    return;
                } else {
                    SQLite.b(21, "Attempted to use statement on a different thread");
                    throw null;
                }
            }
            SQLite.b(21, "Statement is recycled");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void l(int i) {
            if (!this.l.d.get()) {
                if (this.k == ThreadLocal_jvmAndroidKt.a()) {
                    this.j.l(i);
                    return;
                } else {
                    SQLite.b(21, "Attempted to use statement on a different thread");
                    throw null;
                }
            }
            SQLite.b(21, "Statement is recycled");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String r0(int i) {
            if (!this.l.d.get()) {
                if (this.k == ThreadLocal_jvmAndroidKt.a()) {
                    return this.j.r0(i);
                }
                SQLite.b(21, "Attempted to use statement on a different thread");
                throw null;
            }
            SQLite.b(21, "Statement is recycled");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void reset() {
            if (!this.l.d.get()) {
                if (this.k == ThreadLocal_jvmAndroidKt.a()) {
                    this.j.reset();
                    return;
                } else {
                    SQLite.b(21, "Attempted to use statement on a different thread");
                    throw null;
                }
            }
            SQLite.b(21, "Statement is recycled");
            throw null;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class TransactionImpl<T> implements TransactionScope<T>, RawConnectionAccessor {
        public TransactionImpl() {
        }

        @Override // androidx.room.PooledConnection
        public final Object c(String str, Function1 function1, ContinuationImpl continuationImpl) {
            return PooledConnectionImpl.this.c(str, function1, continuationImpl);
        }

        @Override // androidx.room.coroutines.RawConnectionAccessor
        public final SQLiteConnection d() {
            return PooledConnectionImpl.this.a;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TransactionItem {
        public final int a;

        public TransactionItem(int i) {
            this.a = i;
        }
    }

    public PooledConnectionImpl(ConnectionWithLock connectionWithLock, boolean z) {
        connectionWithLock.getClass();
        this.a = connectionWithLock;
        this.b = z;
        this.c = new ArrayDeque();
        this.d = new AtomicBoolean(false);
    }

    @Override // androidx.room.Transactor
    public final Object a(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, SuspendLambda suspendLambda) {
        if (!this.d.get()) {
            CoroutineContext coroutineContext = suspendLambda.k;
            coroutineContext.getClass();
            ConnectionElement connectionElement = (ConnectionElement) coroutineContext.v(ConnectionElement.k);
            if (connectionElement != null && connectionElement.j == this) {
                return g(sQLiteTransactionType, function2, suspendLambda);
            }
            SQLite.b(21, "Attempted to use connection on a different coroutine");
            throw null;
        }
        SQLite.b(21, "Connection is recycled");
        throw null;
    }

    @Override // androidx.room.Transactor
    public final Object b(SuspendLambda suspendLambda) {
        if (!this.d.get()) {
            CoroutineContext coroutineContext = suspendLambda.k;
            coroutineContext.getClass();
            ConnectionElement connectionElement = (ConnectionElement) coroutineContext.v(ConnectionElement.k);
            if (connectionElement != null && connectionElement.j == this) {
                return Boolean.valueOf(!this.c.isEmpty());
            }
            SQLite.b(21, "Attempted to use connection on a different coroutine");
            throw null;
        }
        SQLite.b(21, "Connection is recycled");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r6v9, types: [kotlinx.coroutines.sync.Mutex] */
    @Override // androidx.room.PooledConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object c(String str, Function1 function1, ContinuationImpl continuationImpl) {
        PooledConnectionImpl$usePrepared$1 pooledConnectionImpl$usePrepared$1;
        int i;
        ConnectionWithLock connectionWithLock;
        try {
            try {
                if (continuationImpl instanceof PooledConnectionImpl$usePrepared$1) {
                    pooledConnectionImpl$usePrepared$1 = (PooledConnectionImpl$usePrepared$1) continuationImpl;
                    int i2 = pooledConnectionImpl$usePrepared$1.s;
                    if ((i2 & Integer.MIN_VALUE) != 0) {
                        pooledConnectionImpl$usePrepared$1.s = i2 - Integer.MIN_VALUE;
                        Object obj = pooledConnectionImpl$usePrepared$1.q;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                        i = pooledConnectionImpl$usePrepared$1.s;
                        if (i == 0) {
                            if (i == 1) {
                                ?? r6 = (Mutex) pooledConnectionImpl$usePrepared$1.p;
                                function1 = pooledConnectionImpl$usePrepared$1.o;
                                str = pooledConnectionImpl$usePrepared$1.n;
                                PooledConnectionImpl pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$usePrepared$1.m;
                                ResultKt.b(obj);
                                connectionWithLock = r6;
                                this = pooledConnectionImpl;
                            } else {
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                        } else {
                            ResultKt.b(obj);
                            if (!this.d.get()) {
                                CoroutineContext coroutineContext = pooledConnectionImpl$usePrepared$1.k;
                                coroutineContext.getClass();
                                ConnectionElement connectionElement = (ConnectionElement) coroutineContext.v(ConnectionElement.k);
                                if (connectionElement != null && connectionElement.j == this) {
                                    pooledConnectionImpl$usePrepared$1.m = this;
                                    pooledConnectionImpl$usePrepared$1.n = str;
                                    pooledConnectionImpl$usePrepared$1.o = function1;
                                    connectionWithLock = this.a;
                                    pooledConnectionImpl$usePrepared$1.p = connectionWithLock;
                                    pooledConnectionImpl$usePrepared$1.s = 1;
                                    if (connectionWithLock.k.a(pooledConnectionImpl$usePrepared$1) == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                } else {
                                    SQLite.b(21, "Attempted to use connection on a different coroutine");
                                    throw null;
                                }
                            } else {
                                SQLite.b(21, "Connection is recycled");
                                throw null;
                            }
                        }
                        StatementWrapper statementWrapper = new StatementWrapper(this, this.a.a1(str));
                        Object b = function1.b(statementWrapper);
                        AutoCloseableKt.a(statementWrapper, null);
                        return b;
                    }
                }
                Object b2 = function1.b(statementWrapper);
                AutoCloseableKt.a(statementWrapper, null);
                return b2;
            } finally {
            }
            StatementWrapper statementWrapper2 = new StatementWrapper(this, this.a.a1(str));
        } finally {
            connectionWithLock.h(null);
        }
        pooledConnectionImpl$usePrepared$1 = new PooledConnectionImpl$usePrepared$1(this, continuationImpl);
        Object obj2 = pooledConnectionImpl$usePrepared$1.q;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = pooledConnectionImpl$usePrepared$1.s;
        if (i == 0) {
        }
    }

    @Override // androidx.room.coroutines.RawConnectionAccessor
    public final SQLiteConnection d() {
        return this.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005e A[Catch: all -> 0x006f, TryCatch #0 {all -> 0x006f, blocks: (B:11:0x0052, B:13:0x005e, B:18:0x0069, B:19:0x0097, B:23:0x0071, B:24:0x0076, B:25:0x0077, B:26:0x007d, B:27:0x0083), top: B:10:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0083 A[Catch: all -> 0x006f, TryCatch #0 {all -> 0x006f, blocks: (B:11:0x0052, B:13:0x005e, B:18:0x0069, B:19:0x0097, B:23:0x0071, B:24:0x0076, B:25:0x0077, B:26:0x007d, B:27:0x0083), top: B:10:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Type inference failed for: r6v9, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(Transactor.SQLiteTransactionType sQLiteTransactionType, ContinuationImpl continuationImpl) {
        PooledConnectionImpl$beginTransaction$1 pooledConnectionImpl$beginTransaction$1;
        int i;
        ConnectionWithLock connectionWithLock;
        ArrayDeque arrayDeque;
        try {
            if (continuationImpl instanceof PooledConnectionImpl$beginTransaction$1) {
                pooledConnectionImpl$beginTransaction$1 = (PooledConnectionImpl$beginTransaction$1) continuationImpl;
                int i2 = pooledConnectionImpl$beginTransaction$1.r;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    pooledConnectionImpl$beginTransaction$1.r = i2 - Integer.MIN_VALUE;
                    Object obj = pooledConnectionImpl$beginTransaction$1.p;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = pooledConnectionImpl$beginTransaction$1.r;
                    if (i == 0) {
                        if (i == 1) {
                            ?? r6 = (Mutex) pooledConnectionImpl$beginTransaction$1.o;
                            sQLiteTransactionType = pooledConnectionImpl$beginTransaction$1.n;
                            PooledConnectionImpl pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$beginTransaction$1.m;
                            ResultKt.b(obj);
                            connectionWithLock = r6;
                            this = pooledConnectionImpl;
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        pooledConnectionImpl$beginTransaction$1.m = this;
                        pooledConnectionImpl$beginTransaction$1.n = sQLiteTransactionType;
                        connectionWithLock = this.a;
                        pooledConnectionImpl$beginTransaction$1.o = connectionWithLock;
                        pooledConnectionImpl$beginTransaction$1.r = 1;
                        if (connectionWithLock.k.a(pooledConnectionImpl$beginTransaction$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    arrayDeque = this.c;
                    ConnectionWithLock connectionWithLock2 = this.a;
                    int i3 = arrayDeque.l;
                    if (!arrayDeque.isEmpty()) {
                        int ordinal = sQLiteTransactionType.ordinal();
                        if (ordinal != 0) {
                            if (ordinal != 1) {
                                if (ordinal == 2) {
                                    SQLite.a(connectionWithLock2, "BEGIN EXCLUSIVE TRANSACTION");
                                } else {
                                    throw new RuntimeException();
                                }
                            } else {
                                SQLite.a(connectionWithLock2, "BEGIN IMMEDIATE TRANSACTION");
                            }
                        } else {
                            SQLite.a(connectionWithLock2, "BEGIN DEFERRED TRANSACTION");
                        }
                    } else {
                        SQLite.a(connectionWithLock2, "SAVEPOINT '" + i3 + '\'');
                    }
                    arrayDeque.addLast(new TransactionItem(i3));
                    Unit unit = Unit.a;
                    connectionWithLock.h(null);
                    return unit;
                }
            }
            arrayDeque = this.c;
            ConnectionWithLock connectionWithLock22 = this.a;
            int i32 = arrayDeque.l;
            if (!arrayDeque.isEmpty()) {
            }
            arrayDeque.addLast(new TransactionItem(i32));
            Unit unit2 = Unit.a;
            connectionWithLock.h(null);
            return unit2;
        } catch (Throwable th) {
            connectionWithLock.h(null);
            throw th;
        }
        pooledConnectionImpl$beginTransaction$1 = new PooledConnectionImpl$beginTransaction$1(this, continuationImpl);
        Object obj2 = pooledConnectionImpl$beginTransaction$1.p;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = pooledConnectionImpl$beginTransaction$1.r;
        if (i == 0) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005e A[Catch: all -> 0x0077, TryCatch #0 {all -> 0x0077, blocks: (B:11:0x0054, B:13:0x005e, B:15:0x0068, B:17:0x0071, B:18:0x00ae, B:22:0x0079, B:23:0x008e, B:25:0x0094, B:26:0x009a, B:27:0x00b4, B:28:0x00bb), top: B:10:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b4 A[Catch: all -> 0x0077, TRY_ENTER, TryCatch #0 {all -> 0x0077, blocks: (B:11:0x0054, B:13:0x005e, B:15:0x0068, B:17:0x0071, B:18:0x00ae, B:22:0x0079, B:23:0x008e, B:25:0x0094, B:26:0x009a, B:27:0x00b4, B:28:0x00bb), top: B:10:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* JADX WARN: Type inference failed for: r7v8, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object f(boolean z, ContinuationImpl continuationImpl) {
        PooledConnectionImpl$endTransaction$1 pooledConnectionImpl$endTransaction$1;
        int i;
        ConnectionWithLock connectionWithLock;
        ArrayDeque arrayDeque;
        try {
            if (continuationImpl instanceof PooledConnectionImpl$endTransaction$1) {
                pooledConnectionImpl$endTransaction$1 = (PooledConnectionImpl$endTransaction$1) continuationImpl;
                int i2 = pooledConnectionImpl$endTransaction$1.r;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    pooledConnectionImpl$endTransaction$1.r = i2 - Integer.MIN_VALUE;
                    Object obj = pooledConnectionImpl$endTransaction$1.p;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = pooledConnectionImpl$endTransaction$1.r;
                    if (i == 0) {
                        if (i == 1) {
                            z = pooledConnectionImpl$endTransaction$1.o;
                            ?? r7 = (Mutex) pooledConnectionImpl$endTransaction$1.n;
                            PooledConnectionImpl pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$endTransaction$1.m;
                            ResultKt.b(obj);
                            connectionWithLock = r7;
                            this = pooledConnectionImpl;
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        pooledConnectionImpl$endTransaction$1.m = this;
                        connectionWithLock = this.a;
                        pooledConnectionImpl$endTransaction$1.n = connectionWithLock;
                        pooledConnectionImpl$endTransaction$1.o = z;
                        pooledConnectionImpl$endTransaction$1.r = 1;
                        if (connectionWithLock.k.a(pooledConnectionImpl$endTransaction$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    arrayDeque = this.c;
                    ConnectionWithLock connectionWithLock2 = this.a;
                    if (arrayDeque.isEmpty()) {
                        TransactionItem transactionItem = (TransactionItem) CollectionsKt.L(arrayDeque);
                        if (z) {
                            transactionItem.getClass();
                            if (arrayDeque.isEmpty()) {
                                SQLite.a(connectionWithLock2, "END TRANSACTION");
                            } else {
                                SQLite.a(connectionWithLock2, "RELEASE SAVEPOINT '" + transactionItem.a + '\'');
                            }
                        } else if (arrayDeque.isEmpty()) {
                            SQLite.a(connectionWithLock2, "ROLLBACK TRANSACTION");
                        } else {
                            SQLite.a(connectionWithLock2, "ROLLBACK TRANSACTION TO SAVEPOINT '" + transactionItem.a + '\'');
                        }
                        Unit unit = Unit.a;
                        connectionWithLock.h(null);
                        return unit;
                    }
                    throw new IllegalStateException("Not in a transaction");
                }
            }
            arrayDeque = this.c;
            ConnectionWithLock connectionWithLock22 = this.a;
            if (arrayDeque.isEmpty()) {
            }
        } catch (Throwable th) {
            connectionWithLock.h(null);
            throw th;
        }
        pooledConnectionImpl$endTransaction$1 = new PooledConnectionImpl$endTransaction$1(this, continuationImpl);
        Object obj2 = pooledConnectionImpl$endTransaction$1.p;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = pooledConnectionImpl$endTransaction$1.r;
        if (i == 0) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x007d, code lost:
    
        if (e(r11, r0) == r1) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object g(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, ContinuationImpl continuationImpl) {
        PooledConnectionImpl$transaction$1 pooledConnectionImpl$transaction$1;
        Object obj;
        CoroutineSingletons coroutineSingletons;
        int i;
        PooledConnectionImpl pooledConnectionImpl;
        int i2;
        SQLException e;
        Throwable th;
        try {
            if (continuationImpl instanceof PooledConnectionImpl$transaction$1) {
                pooledConnectionImpl$transaction$1 = (PooledConnectionImpl$transaction$1) continuationImpl;
                int i3 = pooledConnectionImpl$transaction$1.r;
                if ((i3 & Integer.MIN_VALUE) != 0) {
                    pooledConnectionImpl$transaction$1.r = i3 - Integer.MIN_VALUE;
                    obj = pooledConnectionImpl$transaction$1.p;
                    coroutineSingletons = CoroutineSingletons.j;
                    i = pooledConnectionImpl$transaction$1.r;
                    boolean z = false;
                    if (i == 0) {
                        if (i != 1) {
                            if (i != 2) {
                                if (i != 3 && i != 4) {
                                    if (i != 5) {
                                        u2.l("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                    th = (Throwable) pooledConnectionImpl$transaction$1.n;
                                    th = (Throwable) pooledConnectionImpl$transaction$1.m;
                                    try {
                                        ResultKt.b(obj);
                                        throw th;
                                    } catch (SQLException e2) {
                                        e = e2;
                                        if (th == null) {
                                            ExceptionsKt.a(th, e);
                                            throw th;
                                        }
                                        throw e;
                                    }
                                }
                                Object obj2 = pooledConnectionImpl$transaction$1.m;
                                ResultKt.b(obj);
                                return obj2;
                            }
                            i2 = pooledConnectionImpl$transaction$1.o;
                            pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$transaction$1.m;
                            try {
                                ResultKt.b(obj);
                                if (i2 != 0) {
                                    z = true;
                                }
                                pooledConnectionImpl$transaction$1.m = obj;
                                pooledConnectionImpl$transaction$1.r = 3;
                                if (pooledConnectionImpl.f(z, pooledConnectionImpl$transaction$1) == coroutineSingletons) {
                                    return obj;
                                }
                                return coroutineSingletons;
                            } catch (Throwable th2) {
                                th = th2;
                                this = pooledConnectionImpl;
                                try {
                                    throw th;
                                } catch (Throwable th3) {
                                    try {
                                        pooledConnectionImpl$transaction$1.m = th;
                                        pooledConnectionImpl$transaction$1.n = th3;
                                        pooledConnectionImpl$transaction$1.r = 5;
                                        if (this.f(false, pooledConnectionImpl$transaction$1) != coroutineSingletons) {
                                            throw th3;
                                        }
                                    } catch (SQLException e3) {
                                        e = e3;
                                        th = th3;
                                        if (th == null) {
                                        }
                                    }
                                }
                            }
                        } else {
                            function2 = (Function2) pooledConnectionImpl$transaction$1.n;
                            this = (PooledConnectionImpl) pooledConnectionImpl$transaction$1.m;
                            ResultKt.b(obj);
                        }
                    } else {
                        ResultKt.b(obj);
                        if (sQLiteTransactionType == null) {
                            sQLiteTransactionType = Transactor.SQLiteTransactionType.j;
                        }
                        pooledConnectionImpl$transaction$1.m = this;
                        pooledConnectionImpl$transaction$1.n = (Serializable) function2;
                        pooledConnectionImpl$transaction$1.r = 1;
                    }
                    TransactionImpl transactionImpl = new TransactionImpl();
                    pooledConnectionImpl$transaction$1.m = this;
                    pooledConnectionImpl$transaction$1.n = null;
                    pooledConnectionImpl$transaction$1.o = 1;
                    pooledConnectionImpl$transaction$1.r = 2;
                    obj = function2.n(transactionImpl, pooledConnectionImpl$transaction$1);
                    if (obj != coroutineSingletons) {
                        pooledConnectionImpl = this;
                        i2 = 1;
                        if (i2 != 0) {
                        }
                        pooledConnectionImpl$transaction$1.m = obj;
                        pooledConnectionImpl$transaction$1.r = 3;
                        if (pooledConnectionImpl.f(z, pooledConnectionImpl$transaction$1) == coroutineSingletons) {
                        }
                    }
                    return coroutineSingletons;
                }
            }
            TransactionImpl transactionImpl2 = new TransactionImpl();
            pooledConnectionImpl$transaction$1.m = this;
            pooledConnectionImpl$transaction$1.n = null;
            pooledConnectionImpl$transaction$1.o = 1;
            pooledConnectionImpl$transaction$1.r = 2;
            obj = function2.n(transactionImpl2, pooledConnectionImpl$transaction$1);
            if (obj != coroutineSingletons) {
            }
            return coroutineSingletons;
        } catch (Throwable th4) {
            th = th4;
            throw th;
        }
        pooledConnectionImpl$transaction$1 = new PooledConnectionImpl$transaction$1(this, continuationImpl);
        obj = pooledConnectionImpl$transaction$1.p;
        coroutineSingletons = CoroutineSingletons.j;
        i = pooledConnectionImpl$transaction$1.r;
        boolean z2 = false;
        if (i == 0) {
        }
    }
}
