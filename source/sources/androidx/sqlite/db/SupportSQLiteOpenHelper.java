package androidx.sqlite.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import defpackage.u2;
import java.io.Closeable;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface SupportSQLiteOpenHelper extends Closeable {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Callback {
        public final int a;

        public Callback(int i) {
            this.a = i;
        }

        public static void a(String str) {
            int i;
            boolean z;
            if (!str.equalsIgnoreCase(":memory:")) {
                int length = str.length() - 1;
                int i2 = 0;
                boolean z2 = false;
                while (i2 <= length) {
                    if (!z2) {
                        i = i2;
                    } else {
                        i = length;
                    }
                    if (Intrinsics.b(str.charAt(i), 32) <= 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z2) {
                        if (!z) {
                            z2 = true;
                        } else {
                            i2++;
                        }
                    } else if (!z) {
                        break;
                    } else {
                        length--;
                    }
                }
                if (str.subSequence(i2, length + 1).toString().length() != 0) {
                    Log.w("SupportSQLite", "deleting the database file: ".concat(str));
                    try {
                        SQLiteDatabase.deleteDatabase(new File(str));
                    } catch (Exception e) {
                        Log.w("SupportSQLite", "delete failed: ", e);
                    }
                }
            }
        }

        public abstract void b(FrameworkSQLiteDatabase frameworkSQLiteDatabase);

        public abstract void c(FrameworkSQLiteDatabase frameworkSQLiteDatabase, int i, int i2);

        public abstract void d(FrameworkSQLiteDatabase frameworkSQLiteDatabase);

        public abstract void e(FrameworkSQLiteDatabase frameworkSQLiteDatabase, int i, int i2);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Configuration {
        public final Context a;
        public final String b;
        public final Callback c;
        public final boolean d;
        public final boolean e;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static class Builder {
            public final Context a;
            public String b;
            public Callback c;
            public boolean d;
            public boolean e;

            public Builder(Context context) {
                context.getClass();
                this.a = context;
            }

            public final Configuration a() {
                String str;
                Callback callback = this.c;
                if (callback != null) {
                    if (this.d && ((str = this.b) == null || str.length() == 0)) {
                        u2.g("Must set a non-null database name to a configuration that uses the no backup directory.");
                        return null;
                    }
                    return new Configuration(this.a, this.b, callback, this.d, this.e);
                }
                u2.g("Must set a callback to create the configuration.");
                return null;
            }
        }

        public Configuration(Context context, String str, Callback callback, boolean z, boolean z2) {
            context.getClass();
            callback.getClass();
            this.a = context;
            this.b = str;
            this.c = callback;
            this.d = z;
            this.e = z2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Factory {
        SupportSQLiteOpenHelper a(Configuration configuration);
    }

    String getDatabaseName();

    SupportSQLiteDatabase h0();

    void setWriteAheadLoggingEnabled(boolean z);
}
