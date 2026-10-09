package androidx.room.util;

import androidx.room.util.TableInfo;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jdk7.AutoCloseableKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SchemaInfoUtilKt {
    public static final List a(SQLiteStatement sQLiteStatement) {
        int a = SQLiteStatementUtil.a(sQLiteStatement, "id");
        int a2 = SQLiteStatementUtil.a(sQLiteStatement, "seq");
        int a3 = SQLiteStatementUtil.a(sQLiteStatement, "from");
        int a4 = SQLiteStatementUtil.a(sQLiteStatement, "to");
        ListBuilder o = CollectionsKt.o();
        while (sQLiteStatement.V0()) {
            o.add(new ForeignKeyWithSequence((int) sQLiteStatement.getLong(a), (int) sQLiteStatement.getLong(a2), sQLiteStatement.r0(a3), sQLiteStatement.r0(a4)));
        }
        return CollectionsKt.Q(CollectionsKt.l(o));
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, java.util.Comparator] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object, java.util.Comparator] */
    public static final TableInfo.Index b(SQLiteConnection sQLiteConnection, String str, boolean z) {
        String str2;
        SQLiteStatement a1 = sQLiteConnection.a1("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int a = SQLiteStatementUtil.a(a1, "seqno");
            int a2 = SQLiteStatementUtil.a(a1, "cid");
            int a3 = SQLiteStatementUtil.a(a1, "name");
            int a4 = SQLiteStatementUtil.a(a1, "desc");
            if (a != -1 && a2 != -1 && a3 != -1 && a4 != -1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                while (a1.V0()) {
                    if (((int) a1.getLong(a2)) >= 0) {
                        int i = (int) a1.getLong(a);
                        String r0 = a1.r0(a3);
                        if (a1.getLong(a4) > 0) {
                            str2 = "DESC";
                        } else {
                            str2 = "ASC";
                        }
                        linkedHashMap.put(Integer.valueOf(i), r0);
                        linkedHashMap2.put(Integer.valueOf(i), str2);
                    }
                }
                List R = CollectionsKt.R(linkedHashMap.entrySet(), new Object());
                ArrayList arrayList = new ArrayList(CollectionsKt.m(R, 10));
                Iterator it = R.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Map.Entry) it.next()).getValue());
                }
                List X = CollectionsKt.X(arrayList);
                List R2 = CollectionsKt.R(linkedHashMap2.entrySet(), new Object());
                ArrayList arrayList2 = new ArrayList(CollectionsKt.m(R2, 10));
                Iterator it2 = R2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add((String) ((Map.Entry) it2.next()).getValue());
                }
                TableInfo.Index index = new TableInfo.Index(str, z, X, CollectionsKt.X(arrayList2));
                AutoCloseableKt.a(a1, null);
                return index;
            }
            AutoCloseableKt.a(a1, null);
            return null;
        } finally {
        }
    }
}
