package androidx.work.impl;

import android.content.ContentValues;
import androidx.room.driver.SupportSQLiteConnection;
import androidx.room.migration.Migration;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WorkDatabase_AutoMigration_14_15_Impl extends Migration {
    public final AutoMigration_14_15 c;

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.work.impl.AutoMigration_14_15, java.lang.Object] */
    public WorkDatabase_AutoMigration_14_15_Impl() {
        super(14, 15);
        this.c = new Object();
    }

    @Override // androidx.room.migration.Migration
    public final void a(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `_new_WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))");
        SQLite.a(sQLiteConnection, "INSERT INTO `_new_WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) SELECT `id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers` FROM `WorkSpec`");
        SQLite.a(sQLiteConnection, "DROP TABLE `WorkSpec`");
        SQLite.a(sQLiteConnection, "ALTER TABLE `_new_WorkSpec` RENAME TO `WorkSpec`");
        SQLite.a(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
        SQLite.a(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)");
        if (sQLiteConnection instanceof SupportSQLiteConnection) {
            SupportSQLiteDatabase supportSQLiteDatabase = ((SupportSQLiteConnection) sQLiteConnection).j;
            supportSQLiteDatabase.getClass();
            supportSQLiteDatabase.t("UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0");
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("last_enqueue_time", Long.valueOf(System.currentTimeMillis()));
            supportSQLiteDatabase.X0(contentValues, new Object[0]);
        }
    }
}
