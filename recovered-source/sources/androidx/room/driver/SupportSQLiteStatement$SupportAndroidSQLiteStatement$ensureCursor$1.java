package androidx.room.driver;

import androidx.room.driver.SupportSQLiteStatement;
import androidx.sqlite.db.SupportSQLiteProgram;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1 {
    public final /* synthetic */ SupportSQLiteStatement.SupportAndroidSQLiteStatement a;

    public SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1(SupportSQLiteStatement.SupportAndroidSQLiteStatement supportAndroidSQLiteStatement) {
        this.a = supportAndroidSQLiteStatement;
    }

    public final void a(SupportSQLiteProgram supportSQLiteProgram) {
        SupportSQLiteStatement.SupportAndroidSQLiteStatement supportAndroidSQLiteStatement = this.a;
        int length = supportAndroidSQLiteStatement.m.length;
        for (int i = 1; i < length; i++) {
            int i2 = supportAndroidSQLiteStatement.m[i];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 == 5) {
                                supportSQLiteProgram.l(i);
                            }
                        } else {
                            byte[] bArr = supportAndroidSQLiteStatement.q[i];
                            bArr.getClass();
                            supportSQLiteProgram.k(i, bArr);
                        }
                    } else {
                        String str = supportAndroidSQLiteStatement.p[i];
                        str.getClass();
                        supportSQLiteProgram.u(i, str);
                    }
                } else {
                    supportSQLiteProgram.u0(supportAndroidSQLiteStatement.o[i], i);
                }
            } else {
                supportSQLiteProgram.j(i, supportAndroidSQLiteStatement.n[i]);
            }
        }
    }
}
