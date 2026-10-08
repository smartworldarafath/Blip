package androidx.room.driver;

import androidx.room.coroutines.ConnectionPool;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SupportSQLiteConnectionPool implements ConnectionPool {
    public final SupportSQLiteDriver j;

    public SupportSQLiteConnectionPool(SupportSQLiteDriver supportSQLiteDriver) {
        this.j = supportSQLiteDriver;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.j.a.close();
    }

    @Override // androidx.room.coroutines.ConnectionPool
    public final Object j0(boolean z, Function2 function2, ContinuationImpl continuationImpl) {
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = this.j.a;
        supportSQLiteOpenHelper.getClass();
        return function2.n(new SupportSQLitePooledConnection(new SupportSQLiteConnection(supportSQLiteOpenHelper.h0())), continuationImpl);
    }
}
