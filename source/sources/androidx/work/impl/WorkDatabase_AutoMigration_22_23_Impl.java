package androidx.work.impl;

import androidx.room.migration.Migration;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WorkDatabase_AutoMigration_22_23_Impl extends Migration {
    @Override // androidx.room.migration.Migration
    public final void a(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLite.a(sQLiteConnection, "ALTER TABLE `WorkSpec` ADD COLUMN `trace_tag` TEXT DEFAULT NULL");
    }
}
