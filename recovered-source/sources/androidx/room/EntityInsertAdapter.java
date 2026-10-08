package androidx.room;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.jdk7.AutoCloseableKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EntityInsertAdapter<T> {
    public abstract void a(SQLiteStatement sQLiteStatement, Object obj);

    public abstract String b();

    public final void c(SQLiteConnection sQLiteConnection, Object obj) {
        sQLiteConnection.getClass();
        if (obj == null) {
            return;
        }
        SQLiteStatement a1 = sQLiteConnection.a1(b());
        try {
            a(a1, obj);
            a1.V0();
            AutoCloseableKt.a(a1, null);
        } finally {
        }
    }
}
