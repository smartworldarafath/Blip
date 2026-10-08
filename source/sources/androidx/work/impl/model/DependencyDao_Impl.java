package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteStatement;
import defpackage.q7;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DependencyDao_Impl implements DependencyDao {
    public final RoomDatabase a;
    public final AnonymousClass1 b = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.work.impl.model.DependencyDao_Impl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends EntityInsertAdapter<Dependency> {
        @Override // androidx.room.EntityInsertAdapter
        public final void a(SQLiteStatement sQLiteStatement, Object obj) {
            Dependency dependency = (Dependency) obj;
            sQLiteStatement.getClass();
            dependency.getClass();
            sQLiteStatement.T(1, dependency.a);
            sQLiteStatement.T(2, dependency.b);
        }

        @Override // androidx.room.EntityInsertAdapter
        public final String b() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.work.impl.model.DependencyDao_Impl$1, java.lang.Object] */
    public DependencyDao_Impl(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
    }

    public final List a(String str) {
        str.getClass();
        return (List) DBUtil.b(this.a, true, false, new q7(str, 0));
    }
}
