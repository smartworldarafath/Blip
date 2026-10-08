package androidx.room.driver;

import android.database.Cursor;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteDatabase;
import defpackage.u2;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SupportSQLiteStatement implements SQLiteStatement {
    public final SupportSQLiteDatabase j;
    public final String k;
    public boolean l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SupportAndroidSQLiteStatement extends SupportSQLiteStatement {
        public int[] m;
        public long[] n;
        public double[] o;
        public String[] p;
        public byte[][] q;
        public Cursor r;

        public static void q(Cursor cursor, int i) {
            if (i >= 0 && i < cursor.getColumnCount()) {
                return;
            }
            SQLite.b(25, "column index out of range");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void T(int i, String str) {
            str.getClass();
            a();
            h(3, i);
            this.m[i] = 3;
            this.p[i] = str;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean V0() {
            a();
            n();
            Cursor cursor = this.r;
            if (cursor != null) {
                return cursor.moveToNext();
            }
            u2.l("Required value was null.");
            return false;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            if (!this.l) {
                a();
                this.m = new int[0];
                this.n = new long[0];
                this.o = new double[0];
                this.p = new String[0];
                this.q = new byte[0];
                reset();
            }
            this.l = true;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final byte[] getBlob(int i) {
            a();
            Cursor v = v();
            q(v, i);
            byte[] blob = v.getBlob(i);
            blob.getClass();
            return blob;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final int getColumnCount() {
            a();
            n();
            Cursor cursor = this.r;
            if (cursor != null) {
                return cursor.getColumnCount();
            }
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getColumnName(int i) {
            a();
            n();
            Cursor cursor = this.r;
            if (cursor != null) {
                q(cursor, i);
                String columnName = cursor.getColumnName(i);
                columnName.getClass();
                return columnName;
            }
            u2.l("Required value was null.");
            return null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final long getLong(int i) {
            a();
            Cursor v = v();
            q(v, i);
            return v.getLong(i);
        }

        public final void h(int i, int i2) {
            int i3 = i2 + 1;
            int[] iArr = this.m;
            if (iArr.length < i3) {
                this.m = Arrays.copyOf(iArr, i3);
            }
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            byte[][] bArr = this.q;
                            if (bArr.length < i3) {
                                this.q = (byte[][]) Arrays.copyOf(bArr, i3);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    String[] strArr = this.p;
                    if (strArr.length < i3) {
                        this.p = (String[]) Arrays.copyOf(strArr, i3);
                        return;
                    }
                    return;
                }
                double[] dArr = this.o;
                if (dArr.length < i3) {
                    this.o = Arrays.copyOf(dArr, i3);
                    return;
                }
                return;
            }
            long[] jArr = this.n;
            if (jArr.length < i3) {
                this.n = Arrays.copyOf(jArr, i3);
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean isNull(int i) {
            a();
            Cursor v = v();
            q(v, i);
            return v.isNull(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void j(int i, long j) {
            a();
            h(1, i);
            this.m[i] = 1;
            this.n[i] = j;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void k(int i, byte[] bArr) {
            a();
            h(4, i);
            this.m[i] = 4;
            this.q[i] = bArr;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void l(int i) {
            a();
            h(5, i);
            this.m[i] = 5;
        }

        public final void n() {
            if (this.r == null) {
                this.r = this.j.w0(new SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1(this));
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String r0(int i) {
            a();
            Cursor v = v();
            q(v, i);
            String string = v.getString(i);
            string.getClass();
            return string;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void reset() {
            a();
            Cursor cursor = this.r;
            if (cursor != null) {
                cursor.close();
            }
            this.r = null;
        }

        public final Cursor v() {
            Cursor cursor = this.r;
            if (cursor != null) {
                return cursor;
            }
            SQLite.b(21, "no row");
            throw null;
        }
    }

    public SupportSQLiteStatement(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        this.j = supportSQLiteDatabase;
        this.k = str;
    }

    public final void a() {
        if (!this.l) {
            return;
        }
        SQLite.b(21, "statement is closed");
        throw null;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SupportOtherAndroidSQLiteStatement extends SupportSQLiteStatement {
        public final androidx.sqlite.db.SupportSQLiteStatement m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SupportOtherAndroidSQLiteStatement(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
            super(supportSQLiteDatabase, str);
            supportSQLiteDatabase.getClass();
            str.getClass();
            this.m = supportSQLiteDatabase.z(str);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void T(int i, String str) {
            str.getClass();
            a();
            this.m.u(i, str);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean V0() {
            a();
            this.m.m();
            return false;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            this.m.close();
            this.l = true;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final byte[] getBlob(int i) {
            a();
            SQLite.b(21, "no row");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final int getColumnCount() {
            a();
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getColumnName(int i) {
            a();
            SQLite.b(21, "no row");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final long getLong(int i) {
            a();
            SQLite.b(21, "no row");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean isNull(int i) {
            a();
            SQLite.b(21, "no row");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void j(int i, long j) {
            a();
            this.m.j(i, j);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void k(int i, byte[] bArr) {
            a();
            this.m.k(i, bArr);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void l(int i) {
            a();
            this.m.l(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String r0(int i) {
            a();
            SQLite.b(21, "no row");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void reset() {
        }
    }
}
