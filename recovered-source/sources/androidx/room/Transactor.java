package androidx.room;

import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Transactor extends PooledConnection {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SQLiteTransactionType {
        public static final SQLiteTransactionType j;
        public static final SQLiteTransactionType k;
        public static final /* synthetic */ SQLiteTransactionType[] l;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.room.Transactor$SQLiteTransactionType] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.room.Transactor$SQLiteTransactionType] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.room.Transactor$SQLiteTransactionType] */
        static {
            ?? r0 = new Enum("DEFERRED", 0);
            j = r0;
            ?? r1 = new Enum("IMMEDIATE", 1);
            k = r1;
            SQLiteTransactionType[] sQLiteTransactionTypeArr = {r0, r1, new Enum("EXCLUSIVE", 2)};
            l = sQLiteTransactionTypeArr;
            EnumEntriesKt.a(sQLiteTransactionTypeArr);
        }

        public static SQLiteTransactionType valueOf(String str) {
            return (SQLiteTransactionType) Enum.valueOf(SQLiteTransactionType.class, str);
        }

        public static SQLiteTransactionType[] values() {
            return (SQLiteTransactionType[]) l.clone();
        }
    }

    Object a(SQLiteTransactionType sQLiteTransactionType, Function2 function2, SuspendLambda suspendLambda);

    Object b(SuspendLambda suspendLambda);
}
