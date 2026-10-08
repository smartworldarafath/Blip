package androidx.room.util;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import defpackage.jb;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.SetsKt;
import kotlin.collections.builders.MapBuilder;
import kotlin.collections.builders.SetBuilder;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TableInfo {
    public final String a;
    public final Map b;
    public final Set c;
    public final Set d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Column {
        public final String a;
        public final String b;
        public final boolean c;
        public final int d;
        public final String e;
        public final int f;
        public final int g;

        public Column(int i, int i2, String str, String str2, String str3, boolean z) {
            int i3;
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
            this.c = z;
            this.d = i;
            this.e = str3;
            this.f = i2;
            String upperCase = str2.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            if (StringsKt.i(upperCase, "INT", false)) {
                i3 = 3;
            } else if (!StringsKt.i(upperCase, "CHAR", false) && !StringsKt.i(upperCase, "CLOB", false) && !StringsKt.i(upperCase, "TEXT", false)) {
                if (StringsKt.i(upperCase, "BLOB", false)) {
                    i3 = 5;
                } else if (!StringsKt.i(upperCase, "REAL", false) && !StringsKt.i(upperCase, "FLOA", false) && !StringsKt.i(upperCase, "DOUB", false)) {
                    i3 = 1;
                } else {
                    i3 = 4;
                }
            } else {
                i3 = 2;
            }
            this.g = i3;
        }

        public final boolean equals(Object obj) {
            boolean z;
            boolean z2;
            if (this != obj) {
                if (obj instanceof Column) {
                    if (this.d > 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Column column = (Column) obj;
                    int i = column.f;
                    if (column.d > 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z == z2 && Intrinsics.a(this.a, column.a) && this.c == column.c) {
                        String str = column.e;
                        int i2 = this.f;
                        String str2 = this.e;
                        if ((i2 != 1 || i != 2 || str2 == null || TableInfoKt.a(str2, str)) && ((i2 != 2 || i != 1 || str == null || TableInfoKt.a(str, str2)) && ((i2 == 0 || i2 != i || (str2 == null ? str == null : TableInfoKt.a(str2, str))) && this.g == column.g))) {
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int i;
            int hashCode = ((this.a.hashCode() * 31) + this.g) * 31;
            if (this.c) {
                i = 1231;
            } else {
                i = 1237;
            }
            return ((hashCode + i) * 31) + this.d;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("\n            |Column {\n            |   name = '");
            sb.append(this.a);
            sb.append("',\n            |   type = '");
            sb.append(this.b);
            sb.append("',\n            |   affinity = '");
            sb.append(this.g);
            sb.append("',\n            |   notNull = '");
            sb.append(this.c);
            sb.append("',\n            |   primaryKeyPosition = '");
            sb.append(this.d);
            sb.append("',\n            |   defaultValue = '");
            String str = this.e;
            if (str == null) {
                str = "undefined";
            }
            sb.append(str);
            sb.append("'\n            |}\n        ");
            return StringsKt.z(StringsKt.W(sb.toString()));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        /* JADX WARN: Code restructure failed: missing block: B:69:0x01db, code lost:
        
            r0 = kotlin.collections.SetsKt.a(r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x01df, code lost:
        
            kotlin.jdk7.AutoCloseableKt.a(r2, null);
            r10 = r0;
         */
        /* JADX WARN: Finally extract failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static TableInfo a(SQLiteConnection sQLiteConnection, String str) {
            boolean z;
            String r0;
            Map b;
            SetBuilder setBuilder;
            boolean z2;
            sQLiteConnection.getClass();
            SQLiteStatement a1 = sQLiteConnection.a1("PRAGMA table_info(`" + str + "`)");
            try {
                long j = 0;
                if (!a1.V0()) {
                    b = EmptyMap.j;
                    AutoCloseableKt.a(a1, null);
                } else {
                    int a = SQLiteStatementUtil.a(a1, "name");
                    int a2 = SQLiteStatementUtil.a(a1, "type");
                    int a3 = SQLiteStatementUtil.a(a1, "notnull");
                    int a4 = SQLiteStatementUtil.a(a1, "pk");
                    int a5 = SQLiteStatementUtil.a(a1, "dflt_value");
                    MapBuilder mapBuilder = new MapBuilder();
                    do {
                        String r02 = a1.r0(a);
                        String r03 = a1.r0(a2);
                        if (a1.getLong(a3) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        int i = (int) a1.getLong(a4);
                        if (a1.isNull(a5)) {
                            r0 = null;
                        } else {
                            r0 = a1.r0(a5);
                        }
                        mapBuilder.put(r02, new Column(i, 2, r02, r03, r0, z));
                    } while (a1.V0());
                    b = mapBuilder.b();
                    AutoCloseableKt.a(a1, null);
                }
                a1 = sQLiteConnection.a1("PRAGMA foreign_key_list(`" + str + "`)");
                try {
                    int a6 = SQLiteStatementUtil.a(a1, "id");
                    int a7 = SQLiteStatementUtil.a(a1, "seq");
                    int a8 = SQLiteStatementUtil.a(a1, "table");
                    int a9 = SQLiteStatementUtil.a(a1, "on_delete");
                    int a10 = SQLiteStatementUtil.a(a1, "on_update");
                    List a11 = SchemaInfoUtilKt.a(a1);
                    a1.reset();
                    SetBuilder setBuilder2 = new SetBuilder();
                    while (a1.V0()) {
                        if (a1.getLong(a7) == j) {
                            int i2 = (int) a1.getLong(a6);
                            ArrayList arrayList = new ArrayList();
                            ArrayList arrayList2 = new ArrayList();
                            int i3 = a6;
                            ArrayList arrayList3 = new ArrayList();
                            for (Object obj : a11) {
                                int i4 = a7;
                                List list = a11;
                                if (((ForeignKeyWithSequence) obj).j == i2) {
                                    arrayList3.add(obj);
                                }
                                a7 = i4;
                                a11 = list;
                            }
                            int i5 = a7;
                            List list2 = a11;
                            Iterator it = arrayList3.iterator();
                            while (it.hasNext()) {
                                ForeignKeyWithSequence foreignKeyWithSequence = (ForeignKeyWithSequence) it.next();
                                arrayList.add(foreignKeyWithSequence.l);
                                arrayList2.add(foreignKeyWithSequence.m);
                            }
                            setBuilder2.add(new ForeignKey(a1.r0(a8), a1.r0(a9), a1.r0(a10), arrayList, arrayList2));
                            a6 = i3;
                            a7 = i5;
                            a11 = list2;
                            j = 0;
                        }
                    }
                    SetBuilder a12 = SetsKt.a(setBuilder2);
                    AutoCloseableKt.a(a1, null);
                    a1 = sQLiteConnection.a1("PRAGMA index_list(`" + str + "`)");
                    try {
                        int a13 = SQLiteStatementUtil.a(a1, "name");
                        int a14 = SQLiteStatementUtil.a(a1, "origin");
                        int a15 = SQLiteStatementUtil.a(a1, "unique");
                        if (a13 != -1 && a14 != -1 && a15 != -1) {
                            SetBuilder setBuilder3 = new SetBuilder();
                            while (true) {
                                if (!a1.V0()) {
                                    break;
                                }
                                if ("c".equals(a1.r0(a14))) {
                                    String r04 = a1.r0(a13);
                                    if (a1.getLong(a15) == 1) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    Index b2 = SchemaInfoUtilKt.b(sQLiteConnection, r04, z2);
                                    if (b2 == null) {
                                        AutoCloseableKt.a(a1, null);
                                        setBuilder = null;
                                        break;
                                    }
                                    setBuilder3.add(b2);
                                }
                            }
                        } else {
                            AutoCloseableKt.a(a1, null);
                            setBuilder = null;
                        }
                        return new TableInfo(str, b, a12, setBuilder);
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ForeignKey {
        public final String a;
        public final String b;
        public final String c;
        public final List d;
        public final List e;

        public ForeignKey(String str, String str2, String str3, List list, List list2) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = list;
            this.e = list2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ForeignKey) {
                ForeignKey foreignKey = (ForeignKey) obj;
                if (!Intrinsics.a(this.a, foreignKey.a) || !Intrinsics.a(this.b, foreignKey.b) || !Intrinsics.a(this.c, foreignKey.c) || !this.d.equals(foreignKey.d)) {
                    return false;
                }
                return this.e.equals(foreignKey.e);
            }
            return false;
        }

        public final int hashCode() {
            return this.e.hashCode() + ((this.d.hashCode() + jb.c(this.c, jb.c(this.b, this.a.hashCode() * 31, 31), 31)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("\n            |ForeignKey {\n            |   referenceTable = '");
            sb.append(this.a);
            sb.append("',\n            |   onDelete = '");
            sb.append(this.b);
            sb.append("',\n            |   onUpdate = '");
            sb.append(this.c);
            sb.append("',\n            |   columnNames = {");
            StringsKt.z(CollectionsKt.y(CollectionsKt.Q(this.d), ",", null, null, null, 62));
            StringsKt.z("},");
            Unit unit = Unit.a;
            sb.append(unit);
            sb.append("\n            |   referenceColumnNames = {");
            StringsKt.z(CollectionsKt.y(CollectionsKt.Q(this.e), ",", null, null, null, 62));
            StringsKt.z(" }");
            sb.append(unit);
            sb.append("\n            |}\n        ");
            return StringsKt.z(StringsKt.W(sb.toString()));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Index {
        public final String a;
        public final boolean b;
        public final List c;
        public final List d;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0, types: [java.util.List, java.util.Collection] */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList] */
        public Index(String str, boolean z, List list, List list2) {
            str.getClass();
            this.a = str;
            this.b = z;
            this.c = list;
            this.d = list2;
            if (list2.isEmpty()) {
                int size = list.size();
                list2 = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    list2.add("ASC");
                }
            }
            this.d = list2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Index) {
                Index index = (Index) obj;
                String str = index.a;
                if (this.b == index.b && this.c.equals(index.c) && Intrinsics.a(this.d, index.d)) {
                    String str2 = this.a;
                    if (StringsKt.J(str2, "index_", false)) {
                        return StringsKt.J(str, "index_", false);
                    }
                    return str2.equals(str);
                }
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            String str = this.a;
            if (StringsKt.J(str, "index_", false)) {
                hashCode = -1184239155;
            } else {
                hashCode = str.hashCode();
            }
            return this.d.hashCode() + ((this.c.hashCode() + (((hashCode * 31) + (this.b ? 1 : 0)) * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("\n            |Index {\n            |   name = '");
            sb.append(this.a);
            sb.append("',\n            |   unique = '");
            sb.append(this.b);
            sb.append("',\n            |   columns = {");
            StringsKt.z(CollectionsKt.y(this.c, ",", null, null, null, 62));
            StringsKt.z("},");
            Unit unit = Unit.a;
            sb.append(unit);
            sb.append("\n            |   orders = {");
            StringsKt.z(CollectionsKt.y(this.d, ",", null, null, null, 62));
            StringsKt.z(" }");
            sb.append(unit);
            sb.append("\n            |}\n        ");
            return StringsKt.z(StringsKt.W(sb.toString()));
        }
    }

    public TableInfo(String str, Map map, AbstractSet abstractSet, AbstractSet abstractSet2) {
        abstractSet.getClass();
        this.a = str;
        this.b = map;
        this.c = abstractSet;
        this.d = abstractSet2;
    }

    public final boolean equals(Object obj) {
        Set set;
        if (this != obj) {
            if (obj instanceof TableInfo) {
                TableInfo tableInfo = (TableInfo) obj;
                if (!this.a.equals(tableInfo.a) || !this.b.equals(tableInfo.b) || !Intrinsics.a(this.c, tableInfo.c)) {
                    return false;
                }
                Set set2 = this.d;
                if (set2 != null && (set = tableInfo.d) != null) {
                    return set2.equals(set);
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.Object, java.util.Comparator] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, java.util.Comparator] */
    public final String toString() {
        Collection collection;
        StringBuilder sb = new StringBuilder("\n            |TableInfo {\n            |    name = '");
        sb.append(this.a);
        sb.append("',\n            |    columns = {");
        sb.append(TableInfoKt.b(CollectionsKt.R(this.b.values(), new Object())));
        sb.append("\n            |    foreignKeys = {");
        sb.append(TableInfoKt.b(this.c));
        sb.append("\n            |    indices = {");
        Set set = this.d;
        if (set != null) {
            collection = CollectionsKt.R(set, new Object());
        } else {
            collection = EmptyList.j;
        }
        sb.append(TableInfoKt.b(collection));
        sb.append("\n            |}\n        ");
        return StringsKt.W(sb.toString());
    }
}
