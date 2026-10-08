package androidx.room;

import androidx.room.RoomDatabase;
import androidx.room.RoomOpenDelegate;
import androidx.room.concurrent.ExclusiveLock;
import androidx.room.concurrent.FileLock;
import androidx.room.driver.SupportSQLiteConnection;
import androidx.room.migration.Migration;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.SQLiteStatement;
import defpackage.q;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BaseRoomConnectionManager {
    public boolean a;
    public boolean b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class DriverWrapper implements SQLiteDriver {
        public final SQLiteDriver a;
        public final /* synthetic */ RoomConnectionManager b;

        public DriverWrapper(RoomConnectionManager roomConnectionManager, SQLiteDriver sQLiteDriver) {
            sQLiteDriver.getClass();
            this.b = roomConnectionManager;
            this.a = sQLiteDriver;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x00b2 A[Catch: all -> 0x00b3, TRY_ENTER, TryCatch #1 {all -> 0x00b3, blocks: (B:20:0x00b2, B:22:0x00b5, B:23:0x00b8), top: B:18:0x00b0 }] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00b5 A[Catch: all -> 0x00b3, TryCatch #1 {all -> 0x00b3, blocks: (B:20:0x00b2, B:22:0x00b5, B:23:0x00b8), top: B:18:0x00b0 }] */
        @Override // androidx.sqlite.SQLiteDriver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final SQLiteConnection a(final String str) {
            boolean z;
            FileChannel fileChannel;
            FileChannel fileChannel2;
            str.getClass();
            boolean equals = str.equals(":memory:");
            RoomConnectionManager roomConnectionManager = this.b;
            if (!equals) {
                str = roomConnectionManager.c.a.getDatabasePath(str).getAbsolutePath();
                str.getClass();
            }
            boolean z2 = true;
            if (!roomConnectionManager.a && !roomConnectionManager.b && !str.equals(":memory:")) {
                z = true;
            } else {
                z = false;
            }
            ExclusiveLock exclusiveLock = new ExclusiveLock(str, z);
            Function1 function1 = new Function1() { // from class: androidx.room.BaseRoomConnectionManager$DriverWrapper$openLocked$2
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    Throwable th = (Throwable) obj;
                    th.getClass();
                    throw new IllegalStateException(q.l(new StringBuilder("Unable to open database '"), str, "'. Was a proper path / name used in Room's database builder?"), th);
                }
            };
            ReentrantLock reentrantLock = exclusiveLock.a;
            reentrantLock.lock();
            FileLock fileLock = exclusiveLock.b;
            if (fileLock != null) {
                try {
                    fileLock.a();
                } catch (Throwable th) {
                    th = th;
                    z2 = false;
                    try {
                        if (!z2) {
                            throw th;
                        }
                        function1.b(th);
                        throw null;
                    } finally {
                        reentrantLock.unlock();
                    }
                }
            }
            try {
                try {
                    if (!roomConnectionManager.b) {
                        SQLiteConnection a = this.a.a(str);
                        if (!roomConnectionManager.a) {
                            try {
                                roomConnectionManager.b = true;
                                BaseRoomConnectionManager.a(roomConnectionManager, a);
                                roomConnectionManager.b = false;
                            } catch (Throwable th2) {
                                roomConnectionManager.b = false;
                                throw th2;
                            }
                        } else {
                            if (roomConnectionManager.c.g == RoomDatabase.JournalMode.l) {
                                SQLite.a(a, "PRAGMA synchronous = NORMAL");
                            } else {
                                SQLite.a(a, "PRAGMA synchronous = FULL");
                            }
                            BaseRoomConnectionManager.b(a);
                            roomConnectionManager.d.d(a);
                        }
                        if (fileLock != null && (fileChannel2 = fileLock.b) != null) {
                            try {
                                fileChannel2.close();
                                fileLock.b = null;
                            } finally {
                            }
                        }
                        return a;
                    }
                    throw new IllegalStateException("Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?");
                } catch (Throwable th3) {
                    if (fileLock != null && (fileChannel = fileLock.b) != null) {
                        try {
                            fileChannel.close();
                            fileLock.b = null;
                        } finally {
                        }
                    }
                    throw th3;
                }
            } catch (Throwable th4) {
                th = th4;
                if (!z2) {
                }
            }
        }
    }

    public static final void a(RoomConnectionManager roomConnectionManager, SQLiteConnection sQLiteConnection) {
        Object failure;
        RoomOpenDelegate roomOpenDelegate = roomConnectionManager.d;
        DatabaseConfiguration databaseConfiguration = roomConnectionManager.c;
        RoomDatabase.JournalMode journalMode = databaseConfiguration.g;
        RoomDatabase.JournalMode journalMode2 = RoomDatabase.JournalMode.l;
        if (journalMode == journalMode2) {
            SQLite.a(sQLiteConnection, "PRAGMA journal_mode = WAL");
        } else {
            SQLite.a(sQLiteConnection, "PRAGMA journal_mode = TRUNCATE");
        }
        if (databaseConfiguration.g == journalMode2) {
            SQLite.a(sQLiteConnection, "PRAGMA synchronous = NORMAL");
        } else {
            SQLite.a(sQLiteConnection, "PRAGMA synchronous = FULL");
        }
        b(sQLiteConnection);
        SQLiteStatement a1 = sQLiteConnection.a1("PRAGMA user_version");
        try {
            a1.V0();
            int i = (int) a1.getLong(0);
            AutoCloseableKt.a(a1, null);
            if (i != roomOpenDelegate.a) {
                SQLite.a(sQLiteConnection, "BEGIN EXCLUSIVE TRANSACTION");
                try {
                    if (i == 0) {
                        roomConnectionManager.c(sQLiteConnection);
                    } else {
                        roomConnectionManager.d(sQLiteConnection, i, roomOpenDelegate.a);
                    }
                    SQLite.a(sQLiteConnection, "PRAGMA user_version = " + roomOpenDelegate.a);
                    failure = Unit.a;
                } catch (Throwable th) {
                    failure = new Result.Failure(th);
                }
                if (!(failure instanceof Result.Failure)) {
                    SQLite.a(sQLiteConnection, "END TRANSACTION");
                }
                Throwable a = Result.a(failure);
                if (a != null) {
                    SQLite.a(sQLiteConnection, "ROLLBACK TRANSACTION");
                    throw a;
                }
            }
            roomConnectionManager.e(sQLiteConnection);
        } finally {
        }
    }

    public static void b(SQLiteConnection sQLiteConnection) {
        SQLiteStatement a1 = sQLiteConnection.a1("PRAGMA busy_timeout");
        try {
            a1.V0();
            long j = a1.getLong(0);
            AutoCloseableKt.a(a1, null);
            if (j < 3000) {
                SQLite.a(sQLiteConnection, "PRAGMA busy_timeout = 3000");
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.a(a1, th);
                throw th2;
            }
        }
    }

    public final void c(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement a1 = sQLiteConnection.a1("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (a1.V0()) {
                if (a1.getLong(0) == 0) {
                    z = true;
                }
            }
            AutoCloseableKt.a(a1, null);
            RoomConnectionManager roomConnectionManager = (RoomConnectionManager) this;
            RoomOpenDelegate roomOpenDelegate = roomConnectionManager.d;
            roomOpenDelegate.a(sQLiteConnection);
            if (!z) {
                RoomOpenDelegate.ValidationResult g = roomOpenDelegate.g(sQLiteConnection);
                if (!g.a) {
                    throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + g.b).toString());
                }
            }
            f(sQLiteConnection);
            roomOpenDelegate.c(sQLiteConnection);
            Iterator it = roomConnectionManager.e.iterator();
            while (it.hasNext()) {
                ((RoomDatabase.Callback) it.next()).getClass();
                if (sQLiteConnection instanceof SupportSQLiteConnection) {
                    ((SupportSQLiteConnection) sQLiteConnection).j.getClass();
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.a(a1, th);
                throw th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x00a1 A[EDGE_INSN: B:131:0x00a1->B:115:0x00a1 BREAK  A[LOOP:4: B:93:0x0028->B:116:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(SQLiteConnection sQLiteConnection, int i, int i2) {
        boolean z;
        Iterable iterable;
        Pair pair;
        boolean z2;
        boolean z3;
        sQLiteConnection.getClass();
        RoomConnectionManager roomConnectionManager = (RoomConnectionManager) this;
        DatabaseConfiguration databaseConfiguration = roomConnectionManager.c;
        RoomDatabase.MigrationContainer migrationContainer = databaseConfiguration.d;
        migrationContainer.getClass();
        if (i == i2) {
            iterable = EmptyList.j;
        } else {
            if (i2 > i) {
                z = true;
            } else {
                z = false;
            }
            ArrayList arrayList = new ArrayList();
            int i3 = i;
            do {
                if (z) {
                    if (i3 >= i2) {
                        iterable = arrayList;
                        break;
                    }
                    LinkedHashMap linkedHashMap = migrationContainer.a;
                    if (!z) {
                        TreeMap treeMap = (TreeMap) linkedHashMap.get(Integer.valueOf(i3));
                        if (treeMap != null) {
                            pair = new Pair(treeMap, treeMap.descendingKeySet());
                            if (pair != null) {
                                break;
                            }
                            Map map = (Map) pair.j;
                            Iterator it = ((Iterable) pair.k).iterator();
                            while (it.hasNext()) {
                                int intValue = ((Number) it.next()).intValue();
                                if (z) {
                                    if (i3 + 1 <= intValue && intValue <= i2) {
                                        Object obj = map.get(Integer.valueOf(intValue));
                                        obj.getClass();
                                        arrayList.add(obj);
                                        z2 = true;
                                        i3 = intValue;
                                        break;
                                    }
                                } else if (i2 <= intValue && intValue < i3) {
                                    Object obj2 = map.get(Integer.valueOf(intValue));
                                    obj2.getClass();
                                    arrayList.add(obj2);
                                    z2 = true;
                                    i3 = intValue;
                                    break;
                                    break;
                                }
                            }
                            z2 = false;
                        }
                        pair = null;
                        if (pair != null) {
                        }
                    } else {
                        TreeMap treeMap2 = (TreeMap) linkedHashMap.get(Integer.valueOf(i3));
                        if (treeMap2 != null) {
                            pair = new Pair(treeMap2, treeMap2.keySet());
                            if (pair != null) {
                            }
                        }
                        pair = null;
                        if (pair != null) {
                        }
                    }
                } else {
                    if (i3 <= i2) {
                        iterable = arrayList;
                        break;
                    }
                    LinkedHashMap linkedHashMap2 = migrationContainer.a;
                    if (!z) {
                    }
                }
            } while (z2);
            iterable = null;
        }
        RoomOpenDelegate roomOpenDelegate = roomConnectionManager.d;
        if (iterable != null) {
            roomOpenDelegate.f(sQLiteConnection);
            Iterator it2 = iterable.iterator();
            while (it2.hasNext()) {
                ((Migration) it2.next()).a(sQLiteConnection);
            }
            RoomOpenDelegate.ValidationResult g = roomOpenDelegate.g(sQLiteConnection);
            if (g.a) {
                roomOpenDelegate.e(sQLiteConnection);
                f(sQLiteConnection);
                return;
            } else {
                throw new IllegalStateException(("Migration didn't properly handle: " + g.b).toString());
            }
        }
        databaseConfiguration.getClass();
        if (i <= i2 || !databaseConfiguration.l) {
            Set set = databaseConfiguration.m;
            if (databaseConfiguration.k && (set == null || !set.contains(Integer.valueOf(i)))) {
                z3 = true;
                if (z3) {
                    if (databaseConfiguration.s) {
                        SQLiteStatement a1 = sQLiteConnection.a1("SELECT name, type FROM sqlite_master WHERE type = 'table' OR type = 'view'");
                        try {
                            ListBuilder o = CollectionsKt.o();
                            while (a1.V0()) {
                                String r0 = a1.r0(0);
                                if (!StringsKt.J(r0, "sqlite_", false) && !r0.equals("android_metadata")) {
                                    o.add(new Pair(r0, Boolean.valueOf(Intrinsics.a(a1.r0(1), "view"))));
                                }
                            }
                            ListBuilder l = CollectionsKt.l(o);
                            AutoCloseableKt.a(a1, null);
                            ListIterator listIterator = l.listIterator(0);
                            while (listIterator.hasNext()) {
                                Pair pair2 = (Pair) listIterator.next();
                                String str = (String) pair2.j;
                                if (((Boolean) pair2.k).booleanValue()) {
                                    SQLite.a(sQLiteConnection, "DROP VIEW IF EXISTS " + str);
                                } else {
                                    SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS " + str);
                                }
                            }
                        } finally {
                        }
                    } else {
                        roomOpenDelegate.b(sQLiteConnection);
                    }
                    Iterator it3 = roomConnectionManager.e.iterator();
                    while (it3.hasNext()) {
                        ((RoomDatabase.Callback) it3.next()).getClass();
                        if (sQLiteConnection instanceof SupportSQLiteConnection) {
                            ((SupportSQLiteConnection) sQLiteConnection).j.getClass();
                        }
                    }
                    roomOpenDelegate.a(sQLiteConnection);
                    return;
                }
                throw new IllegalStateException(("A migration from " + i + " to " + i2 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions.").toString());
            }
        }
        z3 = false;
        if (z3) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(SQLiteConnection sQLiteConnection) {
        boolean z;
        Object failure;
        RoomOpenDelegate.ValidationResult g;
        String str;
        sQLiteConnection.getClass();
        SQLiteStatement a1 = sQLiteConnection.a1("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name = 'room_master_table'");
        try {
            if (a1.V0()) {
                if (a1.getLong(0) != 0) {
                    z = true;
                    AutoCloseableKt.a(a1, null);
                    if (!z) {
                        a1 = sQLiteConnection.a1("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1");
                        try {
                            if (a1.V0()) {
                                str = a1.r0(0);
                            } else {
                                str = null;
                            }
                            AutoCloseableKt.a(a1, null);
                            RoomOpenDelegate roomOpenDelegate = ((RoomConnectionManager) this).d;
                            if (!roomOpenDelegate.b.equals(str) && !roomOpenDelegate.c.equals(str)) {
                                throw new IllegalStateException(("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: " + roomOpenDelegate.b + ", found: " + str).toString());
                            }
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } finally {
                            }
                        }
                    } else {
                        SQLite.a(sQLiteConnection, "BEGIN EXCLUSIVE TRANSACTION");
                        try {
                            g = ((RoomConnectionManager) this).d.g(sQLiteConnection);
                        } catch (Throwable th2) {
                            failure = new Result.Failure(th2);
                        }
                        if (g.a) {
                            ((RoomConnectionManager) this).d.e(sQLiteConnection);
                            f(sQLiteConnection);
                            failure = Unit.a;
                            if (!(failure instanceof Result.Failure)) {
                                SQLite.a(sQLiteConnection, "END TRANSACTION");
                            }
                            Throwable a = Result.a(failure);
                            if (a != null) {
                                SQLite.a(sQLiteConnection, "ROLLBACK TRANSACTION");
                                throw a;
                            }
                        } else {
                            throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + g.b).toString());
                        }
                    }
                    RoomConnectionManager roomConnectionManager = (RoomConnectionManager) this;
                    roomConnectionManager.d.d(sQLiteConnection);
                    for (RoomDatabase.Callback callback : roomConnectionManager.e) {
                        callback.getClass();
                        if (sQLiteConnection instanceof SupportSQLiteConnection) {
                            callback.a(((SupportSQLiteConnection) sQLiteConnection).j);
                        }
                    }
                    this.a = true;
                }
            }
            z = false;
            AutoCloseableKt.a(a1, null);
            if (!z) {
            }
            RoomConnectionManager roomConnectionManager2 = (RoomConnectionManager) this;
            roomConnectionManager2.d.d(sQLiteConnection);
            while (r0.hasNext()) {
            }
            this.a = true;
        } catch (Throwable th3) {
            try {
                throw th3;
            } finally {
            }
        }
    }

    public final void f(SQLiteConnection sQLiteConnection) {
        SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        SQLite.a(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + ((RoomConnectionManager) this).d.b + "')");
    }
}
