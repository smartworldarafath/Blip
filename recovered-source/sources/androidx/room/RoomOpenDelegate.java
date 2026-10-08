package androidx.room;

import androidx.sqlite.SQLiteConnection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RoomOpenDelegate implements RoomOpenDelegateMarker {
    public final int a;
    public final String b;
    public final String c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ValidationResult {
        public final boolean a;
        public final String b;

        public ValidationResult(String str, boolean z) {
            this.a = z;
            this.b = str;
        }
    }

    public RoomOpenDelegate(String str, int i, String str2) {
        this.a = i;
        this.b = str;
        this.c = str2;
    }

    public abstract void a(SQLiteConnection sQLiteConnection);

    public abstract void b(SQLiteConnection sQLiteConnection);

    public abstract void c(SQLiteConnection sQLiteConnection);

    public abstract void d(SQLiteConnection sQLiteConnection);

    public abstract void e(SQLiteConnection sQLiteConnection);

    public abstract void f(SQLiteConnection sQLiteConnection);

    public abstract ValidationResult g(SQLiteConnection sQLiteConnection);
}
