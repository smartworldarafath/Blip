package androidx.sqlite;

import android.database.SQLException;
import kotlin.jdk7.AutoCloseableKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SQLite {
    public static final void a(SQLiteConnection sQLiteConnection, String str) {
        sQLiteConnection.getClass();
        SQLiteStatement a1 = sQLiteConnection.a1(str);
        try {
            a1.V0();
            AutoCloseableKt.a(a1, null);
        } finally {
        }
    }

    public static final void b(int i, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Error code: " + i);
        sb.append(", message: ".concat(str));
        throw new SQLException(sb.toString());
    }
}
