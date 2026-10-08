package androidx.sqlite.db.framework;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import androidx.room.driver.SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import defpackage.j6;
import defpackage.q8;
import defpackage.u2;
import java.io.Closeable;
import java.lang.reflect.Method;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FrameworkSQLiteDatabase implements SupportSQLiteDatabase {
    public static final String[] k = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};
    public static final String[] l = new String[0];
    public static final Lazy m;
    public static final Lazy n;
    public final SQLiteDatabase j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.k;
        m = LazyKt.a(lazyThreadSafetyMode, new j6(21));
        n = LazyKt.a(lazyThreadSafetyMode, new j6(22));
    }

    public FrameworkSQLiteDatabase(SQLiteDatabase sQLiteDatabase) {
        this.j = sQLiteDatabase;
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final boolean F0() {
        return this.j.inTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void G() {
        Lazy lazy = n;
        if (((Method) lazy.getValue()) != null) {
            Lazy lazy2 = m;
            if (((Method) lazy2.getValue()) != null) {
                Method method = (Method) lazy.getValue();
                method.getClass();
                Method method2 = (Method) lazy2.getValue();
                method2.getClass();
                Object invoke = method2.invoke(this.j, null);
                if (invoke != null) {
                    method.invoke(invoke, 0, null, 0, null);
                    return;
                } else {
                    u2.l("Required value was null.");
                    return;
                }
            }
        }
        o();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final boolean N0() {
        return this.j.isWriteAheadLoggingEnabled();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void V(Object[] objArr) {
        this.j.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", objArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void W() {
        this.j.setTransactionSuccessful();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final int X0(ContentValues contentValues, Object[] objArr) {
        long j;
        String str;
        int i = 0;
        if (contentValues.size() != 0) {
            int size = contentValues.size();
            int length = objArr.length + size;
            Object[] objArr2 = new Object[length];
            StringBuilder sb = new StringBuilder("UPDATE ");
            sb.append(k[3]);
            sb.append("WorkSpec SET ");
            int i2 = 0;
            for (String str2 : contentValues.keySet()) {
                if (i2 > 0) {
                    str = ",";
                } else {
                    str = "";
                }
                sb.append(str);
                sb.append(str2);
                objArr2[i2] = contentValues.get(str2);
                sb.append("=?");
                i2++;
            }
            for (int i3 = size; i3 < length; i3++) {
                objArr2[i3] = objArr[i3 - size];
            }
            if (!TextUtils.isEmpty("last_enqueue_time = 0 AND interval_duration <> 0 ")) {
                sb.append(" WHERE last_enqueue_time = 0 AND interval_duration <> 0 ");
            }
            Closeable z = z(sb.toString());
            while (i < length) {
                Object obj = objArr2[i];
                i++;
                if (obj == null) {
                    ((FrameworkSQLiteProgram) z).l(i);
                } else if (obj instanceof byte[]) {
                    ((FrameworkSQLiteProgram) z).j.bindBlob(i, (byte[]) obj);
                } else if (obj instanceof Float) {
                    ((FrameworkSQLiteProgram) z).u0(((Number) obj).floatValue(), i);
                } else if (obj instanceof Double) {
                    ((FrameworkSQLiteProgram) z).u0(((Number) obj).doubleValue(), i);
                } else if (obj instanceof Long) {
                    ((FrameworkSQLiteProgram) z).j(i, ((Number) obj).longValue());
                } else if (obj instanceof Integer) {
                    ((FrameworkSQLiteProgram) z).j(i, ((Number) obj).intValue());
                } else if (obj instanceof Short) {
                    ((FrameworkSQLiteProgram) z).j(i, ((Number) obj).shortValue());
                } else if (obj instanceof Byte) {
                    ((FrameworkSQLiteProgram) z).j(i, ((Number) obj).byteValue());
                } else if (obj instanceof String) {
                    ((FrameworkSQLiteProgram) z).j.bindString(i, (String) obj);
                } else if (obj instanceof Boolean) {
                    if (((Boolean) obj).booleanValue()) {
                        j = 1;
                    } else {
                        j = 0;
                    }
                    ((FrameworkSQLiteProgram) z).j(i, j);
                } else {
                    throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
                }
            }
            return ((FrameworkSQLiteStatement) z).k.executeUpdateDelete();
        }
        u2.g("Empty values");
        return 0;
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void Y() {
        this.j.beginTransactionNonExclusive();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final boolean isOpen() {
        return this.j.isOpen();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void m0() {
        this.j.endTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void o() {
        this.j.beginTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void t(String str) {
        this.j.execSQL(str);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final Cursor w0(SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1 supportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1) {
        final q8 q8Var = new q8(0, supportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1);
        Cursor rawQueryWithFactory = this.j.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: r8
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                String[] strArr = FrameworkSQLiteDatabase.k;
                return (Cursor) q8.this.j(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, supportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1.a.k, l, null);
        rawQueryWithFactory.getClass();
        return rawQueryWithFactory;
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final SupportSQLiteStatement z(String str) {
        str.getClass();
        SQLiteStatement compileStatement = this.j.compileStatement(str);
        compileStatement.getClass();
        return new FrameworkSQLiteStatement(compileStatement);
    }
}
