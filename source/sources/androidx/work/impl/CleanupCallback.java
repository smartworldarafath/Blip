package androidx.work.impl;

import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.work.Clock;
import androidx.work.SystemClock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CleanupCallback extends RoomDatabase.Callback {
    public final Clock a;

    public CleanupCallback(SystemClock systemClock) {
        systemClock.getClass();
        this.a = systemClock;
    }

    @Override // androidx.room.RoomDatabase.Callback
    public final void a(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.getClass();
        supportSQLiteDatabase.o();
        try {
            StringBuilder sb = new StringBuilder("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < ");
            ((SystemClock) this.a).getClass();
            sb.append(System.currentTimeMillis() - 86400000);
            sb.append(" AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))");
            supportSQLiteDatabase.t(sb.toString());
            supportSQLiteDatabase.W();
        } finally {
            supportSQLiteDatabase.m0();
        }
    }
}
