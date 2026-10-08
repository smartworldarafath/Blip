package androidx.work.impl;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WorkMigration9To10 extends Migration {
    public final Context c;

    public WorkMigration9To10(Context context) {
        super(9, 10);
        this.c = context;
    }

    @Override // androidx.room.migration.Migration
    public final void b(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.getClass();
        supportSQLiteDatabase.t("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
        Context context = this.c;
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
        if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
            long j = 0;
            long j2 = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
            if (sharedPreferences.getBoolean("reschedule_needed", false)) {
                j = 1;
            }
            supportSQLiteDatabase.o();
            try {
                supportSQLiteDatabase.V(new Object[]{"last_cancel_all_time_ms", Long.valueOf(j2)});
                supportSQLiteDatabase.V(new Object[]{"reschedule_needed", Long.valueOf(j)});
                sharedPreferences.edit().clear().apply();
                supportSQLiteDatabase.W();
            } finally {
            }
        }
        SharedPreferences sharedPreferences2 = context.getSharedPreferences("androidx.work.util.id", 0);
        if (!sharedPreferences2.contains("next_job_scheduler_id") && !sharedPreferences2.contains("next_job_scheduler_id")) {
            return;
        }
        int i = sharedPreferences2.getInt("next_job_scheduler_id", 0);
        int i2 = sharedPreferences2.getInt("next_alarm_manager_id", 0);
        supportSQLiteDatabase.o();
        try {
            supportSQLiteDatabase.V(new Object[]{"next_job_scheduler_id", Integer.valueOf(i)});
            supportSQLiteDatabase.V(new Object[]{"next_alarm_manager_id", Integer.valueOf(i2)});
            sharedPreferences2.edit().clear().apply();
            supportSQLiteDatabase.W();
        } finally {
        }
    }
}
