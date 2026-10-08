package androidx.room.util;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.jdk7.AutoCloseableKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SQLiteConnectionUtil {
    public static final int a(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement a1 = sQLiteConnection.a1("SELECT changes()");
        try {
            a1.V0();
            int i = (int) a1.getLong(0);
            AutoCloseableKt.a(a1, null);
            return i;
        } finally {
        }
    }
}
