package androidx.room;

import android.content.Context;
import android.content.Intent;
import androidx.room.BaseRoomConnectionManager;
import androidx.room.RoomDatabase;
import androidx.room.RoomOpenDelegate;
import androidx.room.coroutines.ConnectionPool;
import androidx.room.coroutines.ConnectionPoolImpl;
import androidx.room.driver.SupportSQLiteConnection;
import androidx.room.driver.SupportSQLiteConnectionPool;
import androidx.room.driver.SupportSQLiteDriver;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import defpackage.ma;
import defpackage.u2;
import defpackage.wc;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RoomConnectionManager extends BaseRoomConnectionManager {
    public final DatabaseConfiguration c;
    public final RoomOpenDelegate d;
    public final List e;
    public final ConnectionPool f;
    public SupportSQLiteDatabase g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class NoOpOpenDelegate extends RoomOpenDelegate {
        @Override // androidx.room.RoomOpenDelegate
        public final void a(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void b(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void c(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void d(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void e(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void f(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final RoomOpenDelegate.ValidationResult g(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class SupportOpenHelperCallback extends SupportSQLiteOpenHelper.Callback {
        public SupportOpenHelperCallback(int i) {
            super(i);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public final void b(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
            RoomConnectionManager.this.c(new SupportSQLiteConnection(frameworkSQLiteDatabase));
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public final void c(FrameworkSQLiteDatabase frameworkSQLiteDatabase, int i, int i2) {
            e(frameworkSQLiteDatabase, i, i2);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public final void d(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
            SupportSQLiteConnection supportSQLiteConnection = new SupportSQLiteConnection(frameworkSQLiteDatabase);
            RoomConnectionManager roomConnectionManager = RoomConnectionManager.this;
            roomConnectionManager.e(supportSQLiteConnection);
            roomConnectionManager.g = frameworkSQLiteDatabase;
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public final void e(FrameworkSQLiteDatabase frameworkSQLiteDatabase, int i, int i2) {
            RoomConnectionManager.this.d(new SupportSQLiteConnection(frameworkSQLiteDatabase), i, i2);
        }
    }

    public RoomConnectionManager(DatabaseConfiguration databaseConfiguration, RoomOpenDelegate roomOpenDelegate) {
        int i;
        ConnectionPoolImpl connectionPoolImpl;
        RoomDatabase.JournalMode journalMode = databaseConfiguration.g;
        SupportSQLiteOpenHelper.Factory factory = databaseConfiguration.c;
        String str = databaseConfiguration.b;
        this.c = databaseConfiguration;
        this.d = roomOpenDelegate;
        List list = databaseConfiguration.e;
        this.e = list == null ? EmptyList.j : list;
        SQLiteDriver sQLiteDriver = databaseConfiguration.t;
        if (sQLiteDriver == null) {
            if (factory != null) {
                Context context = databaseConfiguration.a;
                context.getClass();
                SupportSQLiteOpenHelper.Configuration.Builder builder = new SupportSQLiteOpenHelper.Configuration.Builder(context);
                builder.b = str;
                builder.c = new SupportOpenHelperCallback(roomOpenDelegate.a);
                this.f = new SupportSQLiteConnectionPool(new SupportSQLiteDriver(factory.a(builder.a())));
            } else {
                u2.g("SQLiteManager was constructed with both null driver and open helper factory!");
                throw null;
            }
        } else {
            if (str == null) {
                connectionPoolImpl = new ConnectionPoolImpl(new BaseRoomConnectionManager.DriverWrapper(this, sQLiteDriver));
            } else {
                BaseRoomConnectionManager.DriverWrapper driverWrapper = new BaseRoomConnectionManager.DriverWrapper(this, sQLiteDriver);
                int ordinal = journalMode.ordinal();
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        i = 4;
                    } else {
                        throw new IllegalStateException(("Can't get max number of reader for journal mode '" + journalMode + '\'').toString());
                    }
                } else {
                    i = 1;
                }
                int ordinal2 = journalMode.ordinal();
                if (ordinal2 != 1 && ordinal2 != 2) {
                    throw new IllegalStateException(("Can't get max number of writers for journal mode '" + journalMode + '\'').toString());
                }
                connectionPoolImpl = new ConnectionPoolImpl(driverWrapper, str, i);
            }
            this.f = connectionPoolImpl;
        }
        boolean z = journalMode == RoomDatabase.JournalMode.l;
        SupportSQLiteOpenHelper g = g();
        if (g != null) {
            g.setWriteAheadLoggingEnabled(z);
        }
    }

    public final SupportSQLiteOpenHelper g() {
        SupportSQLiteConnectionPool supportSQLiteConnectionPool;
        ConnectionPool connectionPool = this.f;
        if (connectionPool instanceof SupportSQLiteConnectionPool) {
            supportSQLiteConnectionPool = (SupportSQLiteConnectionPool) connectionPool;
        } else {
            supportSQLiteConnectionPool = null;
        }
        if (supportSQLiteConnectionPool == null) {
            return null;
        }
        return supportSQLiteConnectionPool.j.a;
    }

    public RoomConnectionManager(DatabaseConfiguration databaseConfiguration, wc wcVar) {
        this.c = databaseConfiguration;
        this.d = new RoomOpenDelegate("", -1, "");
        List list = databaseConfiguration.e;
        EmptyList emptyList = EmptyList.j;
        this.e = list == null ? emptyList : list;
        final ma maVar = new ma(15, this);
        ArrayList G = CollectionsKt.G(list == null ? emptyList : list, new RoomDatabase.Callback() { // from class: androidx.room.RoomConnectionManager$installOnOpenCallback$newCallbacks$1
            @Override // androidx.room.RoomDatabase.Callback
            public final void a(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.getClass();
                ma.this.b(supportSQLiteDatabase);
            }
        });
        Context context = databaseConfiguration.a;
        String str = databaseConfiguration.b;
        SupportSQLiteOpenHelper.Factory factory = databaseConfiguration.c;
        RoomDatabase.MigrationContainer migrationContainer = databaseConfiguration.d;
        boolean z = databaseConfiguration.f;
        RoomDatabase.JournalMode journalMode = databaseConfiguration.g;
        Executor executor = databaseConfiguration.h;
        Executor executor2 = databaseConfiguration.i;
        Intent intent = databaseConfiguration.j;
        boolean z2 = databaseConfiguration.k;
        boolean z3 = databaseConfiguration.l;
        Set set = databaseConfiguration.m;
        String str2 = databaseConfiguration.n;
        File file = databaseConfiguration.o;
        Callable callable = databaseConfiguration.p;
        List list2 = databaseConfiguration.q;
        List list3 = databaseConfiguration.r;
        boolean z4 = databaseConfiguration.s;
        SQLiteDriver sQLiteDriver = databaseConfiguration.t;
        CoroutineContext coroutineContext = databaseConfiguration.u;
        context.getClass();
        migrationContainer.getClass();
        executor.getClass();
        executor2.getClass();
        list2.getClass();
        list3.getClass();
        wcVar.b(new DatabaseConfiguration(context, str, factory, migrationContainer, G, z, journalMode, executor, executor2, intent, z2, z3, set, str2, file, callable, list2, list3, z4, sQLiteDriver, coroutineContext));
        throw null;
    }
}
