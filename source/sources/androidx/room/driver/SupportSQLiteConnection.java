package androidx.room.driver;

import androidx.room.driver.SupportSQLiteStatement;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import java.util.Locale;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SupportSQLiteConnection implements SQLiteConnection {
    public final SupportSQLiteDatabase j;

    public SupportSQLiteConnection(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.getClass();
        this.j = supportSQLiteDatabase;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.room.driver.SupportSQLiteStatement$SupportAndroidSQLiteStatement, androidx.room.driver.SupportSQLiteStatement] */
    @Override // androidx.sqlite.SQLiteConnection
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final SupportSQLiteStatement a1(String str) {
        str.getClass();
        SupportSQLiteDatabase supportSQLiteDatabase = this.j;
        supportSQLiteDatabase.getClass();
        String obj = StringsKt.U(str).toString();
        if (obj.length() >= 3) {
            String upperCase = obj.substring(0, 3).toUpperCase(Locale.ROOT);
            upperCase.getClass();
            int hashCode = upperCase.hashCode();
            if (hashCode == 79487 ? upperCase.equals("PRA") : !(hashCode == 81978 ? !upperCase.equals("SEL") : !(hashCode == 85954 && upperCase.equals("WIT")))) {
                ?? supportSQLiteStatement = new SupportSQLiteStatement(supportSQLiteDatabase, str);
                supportSQLiteStatement.m = new int[0];
                supportSQLiteStatement.n = new long[0];
                supportSQLiteStatement.o = new double[0];
                supportSQLiteStatement.p = new String[0];
                supportSQLiteStatement.q = new byte[0];
                return supportSQLiteStatement;
            }
        }
        return new SupportSQLiteStatement.SupportOtherAndroidSQLiteStatement(supportSQLiteDatabase, str);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.j.close();
    }
}
