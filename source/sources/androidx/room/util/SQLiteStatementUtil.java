package androidx.room.util;

import androidx.sqlite.SQLiteStatement;
import defpackage.u2;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;

/* loaded from: classes.dex */
public abstract class SQLiteStatementUtil {
    public static final int a(SQLiteStatement sQLiteStatement, String str) {
        sQLiteStatement.getClass();
        int columnCount = sQLiteStatement.getColumnCount();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 < columnCount) {
                if (str.equals(sQLiteStatement.getColumnName(i2))) {
                    break;
                }
                i2++;
            } else {
                i2 = -1;
                break;
            }
        }
        if (i2 >= 0) {
            return i2;
        }
        String str2 = "`" + str + '`';
        int columnCount2 = sQLiteStatement.getColumnCount();
        while (true) {
            if (i < columnCount2) {
                if (str2.equals(sQLiteStatement.getColumnName(i))) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i < 0) {
            return -1;
        }
        return i;
    }

    public static final int b(SQLiteStatement sQLiteStatement, String str) {
        sQLiteStatement.getClass();
        int a = a(sQLiteStatement, str);
        if (a >= 0) {
            return a;
        }
        int columnCount = sQLiteStatement.getColumnCount();
        ArrayList arrayList = new ArrayList(columnCount);
        for (int i = 0; i < columnCount; i++) {
            arrayList.add(sQLiteStatement.getColumnName(i));
        }
        u2.j("Column '", str, "' does not exist. Available columns: [", CollectionsKt.y(arrayList, null, null, null, null, 63), 93);
        return 0;
    }
}
