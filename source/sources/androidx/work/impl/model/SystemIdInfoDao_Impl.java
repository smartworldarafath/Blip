package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.sqlite.SQLiteStatement;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SystemIdInfoDao_Impl implements SystemIdInfoDao {
    public final RoomDatabase a;
    public final AnonymousClass1 b = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.work.impl.model.SystemIdInfoDao_Impl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends EntityInsertAdapter<SystemIdInfo> {
        @Override // androidx.room.EntityInsertAdapter
        public final void a(SQLiteStatement sQLiteStatement, Object obj) {
            SystemIdInfo systemIdInfo = (SystemIdInfo) obj;
            sQLiteStatement.getClass();
            systemIdInfo.getClass();
            sQLiteStatement.T(1, systemIdInfo.a);
            sQLiteStatement.j(2, systemIdInfo.b);
            sQLiteStatement.j(3, systemIdInfo.c);
        }

        @Override // androidx.room.EntityInsertAdapter
        public final String b() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, androidx.work.impl.model.SystemIdInfoDao_Impl$1] */
    public SystemIdInfoDao_Impl(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
    }
}
