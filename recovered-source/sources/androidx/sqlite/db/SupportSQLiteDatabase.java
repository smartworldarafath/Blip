package androidx.sqlite.db;

import android.content.ContentValues;
import android.database.Cursor;
import androidx.room.driver.SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;
import java.io.Closeable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface SupportSQLiteDatabase extends Closeable {
    boolean F0();

    void G();

    boolean N0();

    void V(Object[] objArr);

    void W();

    int X0(ContentValues contentValues, Object[] objArr);

    void Y();

    boolean isOpen();

    void m0();

    void o();

    void t(String str);

    Cursor w0(SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1 supportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1);

    SupportSQLiteStatement z(String str);
}
