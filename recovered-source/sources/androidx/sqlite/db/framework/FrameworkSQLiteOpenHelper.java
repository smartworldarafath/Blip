package androidx.sqlite.db.framework;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import android.util.Pair;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import androidx.sqlite.util.ProcessLock;
import defpackage.k8;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FrameworkSQLiteOpenHelper implements SupportSQLiteOpenHelper {
    public final Context j;
    public final String k;
    public final SupportSQLiteOpenHelper.Callback l;
    public final boolean m;
    public final boolean n;
    public final Lazy o;
    public boolean p;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DBRefHolder {
        public FrameworkSQLiteDatabase a = null;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class OpenHelper extends SQLiteOpenHelper {
        public static final /* synthetic */ int q = 0;
        public final Context j;
        public final DBRefHolder k;
        public final SupportSQLiteOpenHelper.Callback l;
        public final boolean m;
        public boolean n;
        public final ProcessLock o;
        public boolean p;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class CallbackException extends RuntimeException {
            public final CallbackName j;
            public final Throwable k;

            public CallbackException(CallbackName callbackName, Throwable th) {
                super(th);
                this.j = callbackName;
                this.k = th;
            }

            @Override // java.lang.Throwable
            public final Throwable getCause() {
                return this.k;
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class CallbackName {
            public static final CallbackName j;
            public static final CallbackName k;
            public static final CallbackName l;
            public static final CallbackName m;
            public static final CallbackName n;
            public static final /* synthetic */ CallbackName[] o;

            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper$OpenHelper$CallbackName] */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper$OpenHelper$CallbackName] */
            /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper$OpenHelper$CallbackName] */
            /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper$OpenHelper$CallbackName] */
            /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper$OpenHelper$CallbackName] */
            static {
                ?? r0 = new Enum("ON_CONFIGURE", 0);
                j = r0;
                ?? r1 = new Enum("ON_CREATE", 1);
                k = r1;
                ?? r2 = new Enum("ON_UPGRADE", 2);
                l = r2;
                ?? r3 = new Enum("ON_DOWNGRADE", 3);
                m = r3;
                ?? r4 = new Enum("ON_OPEN", 4);
                n = r4;
                CallbackName[] callbackNameArr = {r0, r1, r2, r3, r4};
                o = callbackNameArr;
                EnumEntriesKt.a(callbackNameArr);
            }

            public static CallbackName valueOf(String str) {
                return (CallbackName) Enum.valueOf(CallbackName.class, str);
            }

            public static CallbackName[] values() {
                return (CallbackName[]) o.clone();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenHelper(Context context, String str, final DBRefHolder dBRefHolder, final SupportSQLiteOpenHelper.Callback callback, boolean z) {
            super(context, str, null, callback.a, new DatabaseErrorHandler() { // from class: androidx.sqlite.db.framework.b
                @Override // android.database.DatabaseErrorHandler
                public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    int i = FrameworkSQLiteOpenHelper.OpenHelper.q;
                    sQLiteDatabase.getClass();
                    FrameworkSQLiteOpenHelper.DBRefHolder dBRefHolder2 = dBRefHolder;
                    FrameworkSQLiteDatabase frameworkSQLiteDatabase = dBRefHolder2.a;
                    if (frameworkSQLiteDatabase == null || !frameworkSQLiteDatabase.j.equals(sQLiteDatabase)) {
                        frameworkSQLiteDatabase = new FrameworkSQLiteDatabase(sQLiteDatabase);
                        dBRefHolder2.a = frameworkSQLiteDatabase;
                    }
                    SQLiteDatabase sQLiteDatabase2 = frameworkSQLiteDatabase.j;
                    SupportSQLiteOpenHelper.Callback.this.getClass();
                    Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + frameworkSQLiteDatabase + ".path");
                    if (!sQLiteDatabase2.isOpen()) {
                        String path = sQLiteDatabase2.getPath();
                        if (path != null) {
                            SupportSQLiteOpenHelper.Callback.a(path);
                            return;
                        }
                        return;
                    }
                    List<Pair<String, String>> list = null;
                    try {
                        try {
                            list = sQLiteDatabase2.getAttachedDbs();
                        } catch (SQLiteException unused) {
                        }
                        try {
                            frameworkSQLiteDatabase.close();
                        } catch (IOException unused2) {
                        }
                    } finally {
                        if (list != null) {
                            Iterator<T> it = list.iterator();
                            while (it.hasNext()) {
                                Object obj = ((Pair) it.next()).second;
                                obj.getClass();
                                SupportSQLiteOpenHelper.Callback.a((String) obj);
                            }
                        } else {
                            String path2 = sQLiteDatabase2.getPath();
                            if (path2 != null) {
                                SupportSQLiteOpenHelper.Callback.a(path2);
                            }
                        }
                    }
                }
            });
            String str2;
            context.getClass();
            callback.getClass();
            this.j = context;
            this.k = dBRefHolder;
            this.l = callback;
            this.m = z;
            if (str == null) {
                str2 = UUID.randomUUID().toString();
                str2.getClass();
            } else {
                str2 = str;
            }
            this.o = new ProcessLock(str2, context.getCacheDir(), false);
        }

        public final SupportSQLiteDatabase a(boolean z) {
            boolean z2;
            ProcessLock processLock = this.o;
            try {
                if (!this.p && getDatabaseName() != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                processLock.a(z2);
                this.n = false;
                SQLiteDatabase n = n(z);
                if (this.n) {
                    close();
                    SupportSQLiteDatabase a = a(z);
                    processLock.b();
                    return a;
                }
                FrameworkSQLiteDatabase h = h(n);
                processLock.b();
                return h;
            } catch (Throwable th) {
                processLock.b();
                throw th;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public final void close() {
            ProcessLock processLock = this.o;
            try {
                processLock.a(processLock.a);
                super.close();
                this.k.a = null;
                this.p = false;
            } finally {
                processLock.b();
            }
        }

        public final FrameworkSQLiteDatabase h(SQLiteDatabase sQLiteDatabase) {
            DBRefHolder dBRefHolder = this.k;
            dBRefHolder.getClass();
            FrameworkSQLiteDatabase frameworkSQLiteDatabase = dBRefHolder.a;
            if (frameworkSQLiteDatabase != null && frameworkSQLiteDatabase.j.equals(sQLiteDatabase)) {
                return frameworkSQLiteDatabase;
            }
            FrameworkSQLiteDatabase frameworkSQLiteDatabase2 = new FrameworkSQLiteDatabase(sQLiteDatabase);
            dBRefHolder.a = frameworkSQLiteDatabase2;
            return frameworkSQLiteDatabase2;
        }

        public final SQLiteDatabase n(boolean z) {
            SQLiteDatabase readableDatabase;
            SQLiteDatabase readableDatabase2;
            File parentFile;
            String databaseName = getDatabaseName();
            boolean z2 = this.p;
            Context context = this.j;
            if (databaseName != null && !z2 && (parentFile = context.getDatabasePath(databaseName).getParentFile()) != null) {
                parentFile.mkdirs();
                if (!parentFile.isDirectory()) {
                    Log.w("SupportSQLite", "Invalid database parent file, not a directory: " + parentFile);
                }
            }
            try {
                if (z) {
                    SQLiteDatabase writableDatabase = getWritableDatabase();
                    writableDatabase.getClass();
                    return writableDatabase;
                }
                SQLiteDatabase readableDatabase3 = getReadableDatabase();
                readableDatabase3.getClass();
                return readableDatabase3;
            } catch (Throwable unused) {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException unused2) {
                }
                try {
                    if (z) {
                        readableDatabase2 = getWritableDatabase();
                        readableDatabase2.getClass();
                    } else {
                        readableDatabase2 = getReadableDatabase();
                        readableDatabase2.getClass();
                    }
                    return readableDatabase2;
                } catch (Throwable th) {
                    th = th;
                    if (th instanceof CallbackException) {
                        CallbackException callbackException = (CallbackException) th;
                        int ordinal = callbackException.j.ordinal();
                        th = callbackException.k;
                        if (ordinal != 0 && ordinal != 1 && ordinal != 2 && ordinal != 3) {
                            if (ordinal == 4) {
                                if (!(th instanceof SQLiteException)) {
                                    throw th;
                                }
                            } else {
                                k8.e();
                                return null;
                            }
                        } else {
                            throw th;
                        }
                    }
                    if ((th instanceof SQLiteException) && databaseName != null && this.m) {
                        context.deleteDatabase(databaseName);
                        try {
                            if (z) {
                                readableDatabase = getWritableDatabase();
                                readableDatabase.getClass();
                            } else {
                                readableDatabase = getReadableDatabase();
                                readableDatabase.getClass();
                            }
                            return readableDatabase;
                        } catch (CallbackException e) {
                            throw e.k;
                        }
                    }
                    throw th;
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.getClass();
            boolean z = this.n;
            SupportSQLiteOpenHelper.Callback callback = this.l;
            if (!z && callback.a != sQLiteDatabase.getVersion()) {
                sQLiteDatabase.setMaxSqlCacheSize(1);
            }
            try {
                h(sQLiteDatabase);
                callback.getClass();
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.j, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.getClass();
            try {
                this.l.b(h(sQLiteDatabase));
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.k, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            sQLiteDatabase.getClass();
            this.n = true;
            try {
                this.l.c(h(sQLiteDatabase), i, i2);
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.m, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onOpen(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.getClass();
            if (!this.n) {
                try {
                    this.l.d(h(sQLiteDatabase));
                } catch (Throwable th) {
                    throw new CallbackException(CallbackName.n, th);
                }
            }
            this.p = true;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            sQLiteDatabase.getClass();
            this.n = true;
            try {
                this.l.e(h(sQLiteDatabase), i, i2);
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.l, th);
            }
        }
    }

    public FrameworkSQLiteOpenHelper(Context context, String str, SupportSQLiteOpenHelper.Callback callback, boolean z, boolean z2) {
        context.getClass();
        callback.getClass();
        this.j = context;
        this.k = str;
        this.l = callback;
        this.m = z;
        this.n = z2;
        this.o = LazyKt.b(new Function0() { // from class: androidx.sqlite.db.framework.a
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                FrameworkSQLiteOpenHelper.OpenHelper openHelper;
                FrameworkSQLiteOpenHelper frameworkSQLiteOpenHelper = FrameworkSQLiteOpenHelper.this;
                String str2 = frameworkSQLiteOpenHelper.k;
                if (str2 != null && frameworkSQLiteOpenHelper.m) {
                    Context context2 = frameworkSQLiteOpenHelper.j;
                    context2.getClass();
                    File noBackupFilesDir = context2.getNoBackupFilesDir();
                    noBackupFilesDir.getClass();
                    openHelper = new FrameworkSQLiteOpenHelper.OpenHelper(frameworkSQLiteOpenHelper.j, new File(noBackupFilesDir, str2).getAbsolutePath(), new FrameworkSQLiteOpenHelper.DBRefHolder(), frameworkSQLiteOpenHelper.l, frameworkSQLiteOpenHelper.n);
                } else {
                    openHelper = new FrameworkSQLiteOpenHelper.OpenHelper(frameworkSQLiteOpenHelper.j, frameworkSQLiteOpenHelper.k, new FrameworkSQLiteOpenHelper.DBRefHolder(), frameworkSQLiteOpenHelper.l, frameworkSQLiteOpenHelper.n);
                }
                openHelper.setWriteAheadLoggingEnabled(frameworkSQLiteOpenHelper.p);
                return openHelper;
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Lazy lazy = this.o;
        if (lazy.c()) {
            ((OpenHelper) lazy.getValue()).close();
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final String getDatabaseName() {
        return this.k;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final SupportSQLiteDatabase h0() {
        return ((OpenHelper) this.o.getValue()).a(true);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final void setWriteAheadLoggingEnabled(boolean z) {
        Lazy lazy = this.o;
        if (lazy.c()) {
            ((OpenHelper) lazy.getValue()).setWriteAheadLoggingEnabled(z);
        }
        this.p = z;
    }
}
