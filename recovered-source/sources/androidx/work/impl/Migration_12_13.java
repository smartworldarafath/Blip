package androidx.work.impl;

import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Migration_12_13 extends Migration {
    public static final Migration_12_13 c = new Migration(12, 13);

    @Override // androidx.room.migration.Migration
    public final void b(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.getClass();
        supportSQLiteDatabase.t("UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL ");
        supportSQLiteDatabase.t("UPDATE workspec SET content_uri_triggers = x'' WHERE content_uri_triggers is NULL");
    }
}
