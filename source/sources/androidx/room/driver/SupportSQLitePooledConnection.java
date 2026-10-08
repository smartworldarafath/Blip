package androidx.room.driver;

import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.room.coroutines.RawConnectionAccessor;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import defpackage.k8;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SupportSQLitePooledConnection implements Transactor, RawConnectionAccessor {
    public final SupportSQLiteConnection a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class SupportSQLiteTransactor<T> implements TransactionScope<T>, RawConnectionAccessor {
        public SupportSQLiteTransactor() {
        }

        @Override // androidx.room.PooledConnection
        public final Object c(String str, Function1 function1, ContinuationImpl continuationImpl) {
            return SupportSQLitePooledConnection.this.c(str, function1, continuationImpl);
        }

        @Override // androidx.room.coroutines.RawConnectionAccessor
        public final SQLiteConnection d() {
            return SupportSQLitePooledConnection.this.a;
        }
    }

    public SupportSQLitePooledConnection(SupportSQLiteConnection supportSQLiteConnection) {
        this.a = supportSQLiteConnection;
    }

    @Override // androidx.room.Transactor
    public final Object a(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, SuspendLambda suspendLambda) {
        return e(sQLiteTransactionType, function2, suspendLambda);
    }

    @Override // androidx.room.Transactor
    public final Object b(SuspendLambda suspendLambda) {
        return Boolean.valueOf(this.a.j.F0());
    }

    @Override // androidx.room.PooledConnection
    public final Object c(String str, Function1 function1, ContinuationImpl continuationImpl) {
        SupportSQLiteStatement a1 = this.a.a1(str);
        try {
            Object b = function1.b(a1);
            AutoCloseableKt.a(a1, null);
            return b;
        } finally {
        }
    }

    @Override // androidx.room.coroutines.RawConnectionAccessor
    public final SQLiteConnection d() {
        return this.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, ContinuationImpl continuationImpl) {
        SupportSQLitePooledConnection$transaction$1 supportSQLitePooledConnection$transaction$1;
        int i;
        SupportSQLitePooledConnection supportSQLitePooledConnection;
        SupportSQLiteDatabase supportSQLiteDatabase;
        if (continuationImpl instanceof SupportSQLitePooledConnection$transaction$1) {
            supportSQLitePooledConnection$transaction$1 = (SupportSQLitePooledConnection$transaction$1) continuationImpl;
            int i2 = supportSQLitePooledConnection$transaction$1.q;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                supportSQLitePooledConnection$transaction$1.q = i2 - Integer.MIN_VALUE;
                Object obj = supportSQLitePooledConnection$transaction$1.o;
                Object obj2 = CoroutineSingletons.j;
                i = supportSQLitePooledConnection$transaction$1.q;
                if (i == 0) {
                    if (i == 1) {
                        supportSQLiteDatabase = supportSQLitePooledConnection$transaction$1.n;
                        supportSQLitePooledConnection = (SupportSQLitePooledConnection) supportSQLitePooledConnection$transaction$1.m;
                        try {
                            ResultKt.b(obj);
                        } catch (Throwable th) {
                            th = th;
                            supportSQLiteDatabase.m0();
                            if (!supportSQLiteDatabase.F0()) {
                            }
                            throw th;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    SupportSQLiteDatabase supportSQLiteDatabase2 = this.a.j;
                    supportSQLiteDatabase2.F0();
                    int ordinal = sQLiteTransactionType.ordinal();
                    if (ordinal != 0) {
                        if (ordinal != 1) {
                            if (ordinal == 2) {
                                supportSQLiteDatabase2.o();
                            } else {
                                k8.e();
                                return null;
                            }
                        } else {
                            supportSQLiteDatabase2.Y();
                        }
                    } else {
                        supportSQLiteDatabase2.G();
                    }
                    try {
                        Object supportSQLiteTransactor = new SupportSQLiteTransactor();
                        supportSQLitePooledConnection$transaction$1.m = this;
                        supportSQLitePooledConnection$transaction$1.n = supportSQLiteDatabase2;
                        supportSQLitePooledConnection$transaction$1.q = 1;
                        Object n = function2.n(supportSQLiteTransactor, supportSQLitePooledConnection$transaction$1);
                        if (n == obj2) {
                            return obj2;
                        }
                        supportSQLitePooledConnection = this;
                        supportSQLiteDatabase = supportSQLiteDatabase2;
                        obj = n;
                    } catch (Throwable th2) {
                        th = th2;
                        supportSQLitePooledConnection = this;
                        supportSQLiteDatabase = supportSQLiteDatabase2;
                        supportSQLiteDatabase.m0();
                        if (!supportSQLiteDatabase.F0()) {
                            supportSQLitePooledConnection.getClass();
                        }
                        throw th;
                    }
                }
                supportSQLiteDatabase.W();
                supportSQLiteDatabase.m0();
                if (!supportSQLiteDatabase.F0()) {
                    supportSQLitePooledConnection.getClass();
                }
                return obj;
            }
        }
        supportSQLitePooledConnection$transaction$1 = new SupportSQLitePooledConnection$transaction$1(this, continuationImpl);
        Object obj3 = supportSQLitePooledConnection$transaction$1.o;
        Object obj22 = CoroutineSingletons.j;
        i = supportSQLitePooledConnection$transaction$1.q;
        if (i == 0) {
        }
        supportSQLiteDatabase.W();
        supportSQLiteDatabase.m0();
        if (!supportSQLiteDatabase.F0()) {
        }
        return obj3;
    }
}
