package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteStatement;
import defpackage.q7;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PreferenceDao_Impl implements PreferenceDao {
    public final RoomDatabase a;
    public final AnonymousClass1 b = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.work.impl.model.PreferenceDao_Impl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends EntityInsertAdapter<Preference> {
        @Override // androidx.room.EntityInsertAdapter
        public final void a(SQLiteStatement sQLiteStatement, Object obj) {
            Preference preference = (Preference) obj;
            sQLiteStatement.getClass();
            preference.getClass();
            sQLiteStatement.T(1, preference.a);
            sQLiteStatement.j(2, preference.b.longValue());
        }

        @Override // androidx.room.EntityInsertAdapter
        public final String b() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, androidx.work.impl.model.PreferenceDao_Impl$1] */
    public PreferenceDao_Impl(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
    }

    public final Long a(String str) {
        return (Long) DBUtil.b(this.a, true, false, new q7(str, 4));
    }
}
