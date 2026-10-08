package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.sqlite.SQLiteStatement;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WorkNameDao_Impl implements WorkNameDao {
    public final RoomDatabase a;
    public final AnonymousClass1 b = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.work.impl.model.WorkNameDao_Impl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends EntityInsertAdapter<WorkName> {
        @Override // androidx.room.EntityInsertAdapter
        public final void a(SQLiteStatement sQLiteStatement, Object obj) {
            WorkName workName = (WorkName) obj;
            sQLiteStatement.getClass();
            workName.getClass();
            sQLiteStatement.T(1, workName.a);
            sQLiteStatement.T(2, workName.b);
        }

        @Override // androidx.room.EntityInsertAdapter
        public final String b() {
            return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, androidx.work.impl.model.WorkNameDao_Impl$1] */
    public WorkNameDao_Impl(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
    }
}
