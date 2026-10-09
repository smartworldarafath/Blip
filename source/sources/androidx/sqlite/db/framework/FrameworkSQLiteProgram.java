package androidx.sqlite.db.framework;

import android.database.sqlite.SQLiteProgram;
import androidx.sqlite.db.SupportSQLiteProgram;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FrameworkSQLiteProgram implements SupportSQLiteProgram {
    public final SQLiteProgram j;

    public FrameworkSQLiteProgram(SQLiteProgram sQLiteProgram) {
        sQLiteProgram.getClass();
        this.j = sQLiteProgram;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void j(int i, long j) {
        this.j.bindLong(i, j);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void k(int i, byte[] bArr) {
        this.j.bindBlob(i, bArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void l(int i) {
        this.j.bindNull(i);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void u(int i, String str) {
        str.getClass();
        this.j.bindString(i, str);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public final void u0(double d, int i) {
        this.j.bindDouble(i, d);
    }
}
