package androidx.room.driver;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteOpenHelper;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SupportSQLiteDriver implements SQLiteDriver {
    public final SupportSQLiteOpenHelper a;

    public SupportSQLiteDriver(SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        supportSQLiteOpenHelper.getClass();
        this.a = supportSQLiteOpenHelper;
    }

    @Override // androidx.sqlite.SQLiteDriver
    public final SQLiteConnection a(String str) {
        str.getClass();
        return new SupportSQLiteConnection(this.a.h0());
    }
}
