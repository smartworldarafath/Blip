package androidx.work.impl;

import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.InvalidationTracker;
import androidx.room.ObservedTableStates;
import androidx.room.RoomOpenDelegate;
import androidx.room.RoomOpenDelegateMarker;
import androidx.room.TriggerBasedInvalidationTracker;
import androidx.room.migration.Migration;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.WorkDatabase_Impl;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.PreferenceDao;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.RawWorkInfoDao;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.model.WorkTagDao_Impl;
import defpackage.hh;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {
    public final Lazy k;
    public final Lazy l;
    public final Lazy m;
    public final Lazy n;
    public final Lazy o;
    public final Lazy p;
    public final Lazy q;

    public WorkDatabase_Impl() {
        final int i = 0;
        this.k = LazyKt.b(new Function0(this) { // from class: si
            public final /* synthetic */ WorkDatabase_Impl k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i2 = i;
                WorkDatabase_Impl workDatabase_Impl = this.k;
                switch (i2) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i2 = 1;
        this.l = LazyKt.b(new Function0(this) { // from class: si
            public final /* synthetic */ WorkDatabase_Impl k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i22 = i2;
                WorkDatabase_Impl workDatabase_Impl = this.k;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i3 = 2;
        this.m = LazyKt.b(new Function0(this) { // from class: si
            public final /* synthetic */ WorkDatabase_Impl k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i22 = i3;
                WorkDatabase_Impl workDatabase_Impl = this.k;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i4 = 3;
        this.n = LazyKt.b(new Function0(this) { // from class: si
            public final /* synthetic */ WorkDatabase_Impl k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i22 = i4;
                WorkDatabase_Impl workDatabase_Impl = this.k;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i5 = 4;
        this.o = LazyKt.b(new Function0(this) { // from class: si
            public final /* synthetic */ WorkDatabase_Impl k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i22 = i5;
                WorkDatabase_Impl workDatabase_Impl = this.k;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i6 = 5;
        this.p = LazyKt.b(new Function0(this) { // from class: si
            public final /* synthetic */ WorkDatabase_Impl k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i22 = i6;
                WorkDatabase_Impl workDatabase_Impl = this.k;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i7 = 6;
        this.q = LazyKt.b(new Function0(this) { // from class: si
            public final /* synthetic */ WorkDatabase_Impl k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i22 = i7;
                WorkDatabase_Impl workDatabase_Impl = this.k;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        LazyKt.b(new hh(7, this));
    }

    @Override // androidx.room.RoomDatabase
    public final List c(LinkedHashMap linkedHashMap) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Migration(13, 14));
        arrayList.add(new WorkDatabase_AutoMigration_14_15_Impl());
        arrayList.add(new Migration(16, 17));
        arrayList.add(new Migration(17, 18));
        arrayList.add(new Migration(18, 19));
        arrayList.add(new WorkDatabase_AutoMigration_19_20_Impl());
        arrayList.add(new Migration(20, 21));
        arrayList.add(new Migration(22, 23));
        arrayList.add(new Migration(23, 24));
        return arrayList;
    }

    @Override // androidx.room.RoomDatabase
    public final InvalidationTracker d() {
        return new InvalidationTracker(this, new LinkedHashMap(), new LinkedHashMap(), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.room.RoomDatabase
    public final RoomOpenDelegateMarker e() {
        return new RoomOpenDelegate() { // from class: androidx.work.impl.WorkDatabase_Impl$createOpenDelegate$_openDelegate$1
            {
                super("08b926448d86528e697981ddd30459f7", 24, "149fd8ad55885d3fe3549a37a0163243");
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void a(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.a(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
                SQLite.a(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `backoff_on_system_interruptions` INTEGER, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x'', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))");
                SQLite.a(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
                SQLite.a(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.a(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.a(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
                SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                SQLite.a(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '08b926448d86528e697981ddd30459f7')");
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void b(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `Dependency`");
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `WorkSpec`");
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `WorkTag`");
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `SystemIdInfo`");
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `WorkName`");
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `WorkProgress`");
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS `Preference`");
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void c(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void d(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                SQLite.a(sQLiteConnection, "PRAGMA foreign_keys = ON");
                InvalidationTracker f = WorkDatabase_Impl.this.f();
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = f.b;
                triggerBasedInvalidationTracker.getClass();
                SQLiteStatement a1 = sQLiteConnection.a1("PRAGMA query_only");
                try {
                    a1.V0();
                    boolean z = false;
                    if (a1.getLong(0) != 0) {
                        z = true;
                    }
                    AutoCloseableKt.a(a1, null);
                    if (!z) {
                        SQLite.a(sQLiteConnection, "PRAGMA temp_store = MEMORY");
                        SQLite.a(sQLiteConnection, "PRAGMA recursive_triggers = 1");
                        SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS room_table_modification_log");
                        if (triggerBasedInvalidationTracker.d) {
                            SQLite.a(sQLiteConnection, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
                        } else {
                            SQLite.a(sQLiteConnection, StringsKt.F("CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)", "TEMP", ""));
                        }
                        ObservedTableStates observedTableStates = triggerBasedInvalidationTracker.h;
                        ReentrantLock reentrantLock = observedTableStates.a;
                        reentrantLock.lock();
                        try {
                            observedTableStates.d = true;
                        } finally {
                            reentrantLock.unlock();
                        }
                    }
                    synchronized (f.g) {
                    }
                } finally {
                }
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void e(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void f(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                ListBuilder o = CollectionsKt.o();
                SQLiteStatement a1 = sQLiteConnection.a1("SELECT name FROM sqlite_master WHERE type = 'trigger'");
                while (a1.V0()) {
                    try {
                        o.add(a1.r0(0));
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            AutoCloseableKt.a(a1, th);
                            throw th2;
                        }
                    }
                }
                AutoCloseableKt.a(a1, null);
                ListIterator listIterator = CollectionsKt.l(o).listIterator(0);
                while (listIterator.hasNext()) {
                    String str = (String) listIterator.next();
                    if (StringsKt.J(str, "room_fts_content_sync_", false)) {
                        SQLite.a(sQLiteConnection, "DROP TRIGGER IF EXISTS ".concat(str));
                    }
                }
            }

            @Override // androidx.room.RoomOpenDelegate
            public final RoomOpenDelegate.ValidationResult g(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("work_spec_id", new TableInfo.Column(1, 1, "work_spec_id", "TEXT", null, true));
                linkedHashMap.put("prerequisite_id", new TableInfo.Column(2, 1, "prerequisite_id", "TEXT", null, true));
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                linkedHashSet.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.B("work_spec_id"), CollectionsKt.B("id")));
                linkedHashSet.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.B("prerequisite_id"), CollectionsKt.B("id")));
                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                linkedHashSet2.add(new TableInfo.Index("index_Dependency_work_spec_id", false, CollectionsKt.B("work_spec_id"), CollectionsKt.B("ASC")));
                linkedHashSet2.add(new TableInfo.Index("index_Dependency_prerequisite_id", false, CollectionsKt.B("prerequisite_id"), CollectionsKt.B("ASC")));
                TableInfo tableInfo = new TableInfo("Dependency", linkedHashMap, linkedHashSet, linkedHashSet2);
                TableInfo a = TableInfo.Companion.a(sQLiteConnection, "Dependency");
                if (!tableInfo.equals(a)) {
                    return new RoomOpenDelegate.ValidationResult("Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + tableInfo + "\n Found:\n" + a, false);
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("id", new TableInfo.Column(1, 1, "id", "TEXT", null, true));
                linkedHashMap2.put("state", new TableInfo.Column(0, 1, "state", "INTEGER", null, true));
                linkedHashMap2.put("worker_class_name", new TableInfo.Column(0, 1, "worker_class_name", "TEXT", null, true));
                linkedHashMap2.put("input_merger_class_name", new TableInfo.Column(0, 1, "input_merger_class_name", "TEXT", null, true));
                linkedHashMap2.put("input", new TableInfo.Column(0, 1, "input", "BLOB", null, true));
                linkedHashMap2.put("output", new TableInfo.Column(0, 1, "output", "BLOB", null, true));
                linkedHashMap2.put("initial_delay", new TableInfo.Column(0, 1, "initial_delay", "INTEGER", null, true));
                linkedHashMap2.put("interval_duration", new TableInfo.Column(0, 1, "interval_duration", "INTEGER", null, true));
                linkedHashMap2.put("flex_duration", new TableInfo.Column(0, 1, "flex_duration", "INTEGER", null, true));
                linkedHashMap2.put("run_attempt_count", new TableInfo.Column(0, 1, "run_attempt_count", "INTEGER", null, true));
                linkedHashMap2.put("backoff_policy", new TableInfo.Column(0, 1, "backoff_policy", "INTEGER", null, true));
                linkedHashMap2.put("backoff_delay_duration", new TableInfo.Column(0, 1, "backoff_delay_duration", "INTEGER", null, true));
                linkedHashMap2.put("last_enqueue_time", new TableInfo.Column(0, 1, "last_enqueue_time", "INTEGER", "-1", true));
                linkedHashMap2.put("minimum_retention_duration", new TableInfo.Column(0, 1, "minimum_retention_duration", "INTEGER", null, true));
                linkedHashMap2.put("schedule_requested_at", new TableInfo.Column(0, 1, "schedule_requested_at", "INTEGER", null, true));
                linkedHashMap2.put("run_in_foreground", new TableInfo.Column(0, 1, "run_in_foreground", "INTEGER", null, true));
                linkedHashMap2.put("out_of_quota_policy", new TableInfo.Column(0, 1, "out_of_quota_policy", "INTEGER", null, true));
                linkedHashMap2.put("period_count", new TableInfo.Column(0, 1, "period_count", "INTEGER", "0", true));
                linkedHashMap2.put("generation", new TableInfo.Column(0, 1, "generation", "INTEGER", "0", true));
                linkedHashMap2.put("next_schedule_time_override", new TableInfo.Column(0, 1, "next_schedule_time_override", "INTEGER", "9223372036854775807", true));
                linkedHashMap2.put("next_schedule_time_override_generation", new TableInfo.Column(0, 1, "next_schedule_time_override_generation", "INTEGER", "0", true));
                linkedHashMap2.put("stop_reason", new TableInfo.Column(0, 1, "stop_reason", "INTEGER", "-256", true));
                linkedHashMap2.put("trace_tag", new TableInfo.Column(0, 1, "trace_tag", "TEXT", null, false));
                linkedHashMap2.put("backoff_on_system_interruptions", new TableInfo.Column(0, 1, "backoff_on_system_interruptions", "INTEGER", null, false));
                linkedHashMap2.put("required_network_type", new TableInfo.Column(0, 1, "required_network_type", "INTEGER", null, true));
                linkedHashMap2.put("required_network_request", new TableInfo.Column(0, 1, "required_network_request", "BLOB", "x''", true));
                linkedHashMap2.put("requires_charging", new TableInfo.Column(0, 1, "requires_charging", "INTEGER", null, true));
                linkedHashMap2.put("requires_device_idle", new TableInfo.Column(0, 1, "requires_device_idle", "INTEGER", null, true));
                linkedHashMap2.put("requires_battery_not_low", new TableInfo.Column(0, 1, "requires_battery_not_low", "INTEGER", null, true));
                linkedHashMap2.put("requires_storage_not_low", new TableInfo.Column(0, 1, "requires_storage_not_low", "INTEGER", null, true));
                linkedHashMap2.put("trigger_content_update_delay", new TableInfo.Column(0, 1, "trigger_content_update_delay", "INTEGER", null, true));
                linkedHashMap2.put("trigger_max_content_delay", new TableInfo.Column(0, 1, "trigger_max_content_delay", "INTEGER", null, true));
                linkedHashMap2.put("content_uri_triggers", new TableInfo.Column(0, 1, "content_uri_triggers", "BLOB", null, true));
                LinkedHashSet linkedHashSet3 = new LinkedHashSet();
                LinkedHashSet linkedHashSet4 = new LinkedHashSet();
                linkedHashSet4.add(new TableInfo.Index("index_WorkSpec_schedule_requested_at", false, CollectionsKt.B("schedule_requested_at"), CollectionsKt.B("ASC")));
                linkedHashSet4.add(new TableInfo.Index("index_WorkSpec_last_enqueue_time", false, CollectionsKt.B("last_enqueue_time"), CollectionsKt.B("ASC")));
                TableInfo tableInfo2 = new TableInfo("WorkSpec", linkedHashMap2, linkedHashSet3, linkedHashSet4);
                TableInfo a2 = TableInfo.Companion.a(sQLiteConnection, "WorkSpec");
                if (!tableInfo2.equals(a2)) {
                    return new RoomOpenDelegate.ValidationResult("WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + tableInfo2 + "\n Found:\n" + a2, false);
                }
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                linkedHashMap3.put("tag", new TableInfo.Column(1, 1, "tag", "TEXT", null, true));
                linkedHashMap3.put("work_spec_id", new TableInfo.Column(2, 1, "work_spec_id", "TEXT", null, true));
                LinkedHashSet linkedHashSet5 = new LinkedHashSet();
                linkedHashSet5.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.B("work_spec_id"), CollectionsKt.B("id")));
                LinkedHashSet linkedHashSet6 = new LinkedHashSet();
                linkedHashSet6.add(new TableInfo.Index("index_WorkTag_work_spec_id", false, CollectionsKt.B("work_spec_id"), CollectionsKt.B("ASC")));
                TableInfo tableInfo3 = new TableInfo("WorkTag", linkedHashMap3, linkedHashSet5, linkedHashSet6);
                TableInfo a3 = TableInfo.Companion.a(sQLiteConnection, "WorkTag");
                if (!tableInfo3.equals(a3)) {
                    return new RoomOpenDelegate.ValidationResult("WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + tableInfo3 + "\n Found:\n" + a3, false);
                }
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                linkedHashMap4.put("work_spec_id", new TableInfo.Column(1, 1, "work_spec_id", "TEXT", null, true));
                linkedHashMap4.put("generation", new TableInfo.Column(2, 1, "generation", "INTEGER", "0", true));
                linkedHashMap4.put("system_id", new TableInfo.Column(0, 1, "system_id", "INTEGER", null, true));
                LinkedHashSet linkedHashSet7 = new LinkedHashSet();
                linkedHashSet7.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.B("work_spec_id"), CollectionsKt.B("id")));
                TableInfo tableInfo4 = new TableInfo("SystemIdInfo", linkedHashMap4, linkedHashSet7, new LinkedHashSet());
                TableInfo a4 = TableInfo.Companion.a(sQLiteConnection, "SystemIdInfo");
                if (!tableInfo4.equals(a4)) {
                    return new RoomOpenDelegate.ValidationResult("SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + tableInfo4 + "\n Found:\n" + a4, false);
                }
                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                linkedHashMap5.put("name", new TableInfo.Column(1, 1, "name", "TEXT", null, true));
                linkedHashMap5.put("work_spec_id", new TableInfo.Column(2, 1, "work_spec_id", "TEXT", null, true));
                LinkedHashSet linkedHashSet8 = new LinkedHashSet();
                linkedHashSet8.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.B("work_spec_id"), CollectionsKt.B("id")));
                LinkedHashSet linkedHashSet9 = new LinkedHashSet();
                linkedHashSet9.add(new TableInfo.Index("index_WorkName_work_spec_id", false, CollectionsKt.B("work_spec_id"), CollectionsKt.B("ASC")));
                TableInfo tableInfo5 = new TableInfo("WorkName", linkedHashMap5, linkedHashSet8, linkedHashSet9);
                TableInfo a5 = TableInfo.Companion.a(sQLiteConnection, "WorkName");
                if (!tableInfo5.equals(a5)) {
                    return new RoomOpenDelegate.ValidationResult("WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + tableInfo5 + "\n Found:\n" + a5, false);
                }
                LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                linkedHashMap6.put("work_spec_id", new TableInfo.Column(1, 1, "work_spec_id", "TEXT", null, true));
                linkedHashMap6.put("progress", new TableInfo.Column(0, 1, "progress", "BLOB", null, true));
                LinkedHashSet linkedHashSet10 = new LinkedHashSet();
                linkedHashSet10.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.B("work_spec_id"), CollectionsKt.B("id")));
                TableInfo tableInfo6 = new TableInfo("WorkProgress", linkedHashMap6, linkedHashSet10, new LinkedHashSet());
                TableInfo a6 = TableInfo.Companion.a(sQLiteConnection, "WorkProgress");
                if (!tableInfo6.equals(a6)) {
                    return new RoomOpenDelegate.ValidationResult("WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + tableInfo6 + "\n Found:\n" + a6, false);
                }
                LinkedHashMap linkedHashMap7 = new LinkedHashMap();
                linkedHashMap7.put("key", new TableInfo.Column(1, 1, "key", "TEXT", null, true));
                linkedHashMap7.put("long_value", new TableInfo.Column(0, 1, "long_value", "INTEGER", null, false));
                TableInfo tableInfo7 = new TableInfo("Preference", linkedHashMap7, new LinkedHashSet(), new LinkedHashSet());
                TableInfo a7 = TableInfo.Companion.a(sQLiteConnection, "Preference");
                if (!tableInfo7.equals(a7)) {
                    return new RoomOpenDelegate.ValidationResult("Preference(androidx.work.impl.model.Preference).\n Expected:\n" + tableInfo7 + "\n Found:\n" + a7, false);
                }
                return new RoomOpenDelegate.ValidationResult(null, true);
            }
        };
    }

    @Override // androidx.room.RoomDatabase
    public final Set h() {
        return new LinkedHashSet();
    }

    @Override // androidx.room.RoomDatabase
    public final LinkedHashMap i() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ClassReference a = Reflection.a(WorkSpecDao.class);
        EmptyList emptyList = EmptyList.j;
        linkedHashMap.put(a, emptyList);
        linkedHashMap.put(Reflection.a(DependencyDao.class), emptyList);
        linkedHashMap.put(Reflection.a(WorkTagDao.class), emptyList);
        linkedHashMap.put(Reflection.a(SystemIdInfoDao.class), emptyList);
        linkedHashMap.put(Reflection.a(WorkNameDao.class), emptyList);
        linkedHashMap.put(Reflection.a(WorkProgressDao.class), emptyList);
        linkedHashMap.put(Reflection.a(PreferenceDao.class), emptyList);
        linkedHashMap.put(Reflection.a(RawWorkInfoDao.class), emptyList);
        return linkedHashMap;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final DependencyDao q() {
        return (DependencyDao) this.l.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final PreferenceDao r() {
        return (PreferenceDao) this.q.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final SystemIdInfoDao s() {
        return (SystemIdInfoDao) this.n.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkNameDao t() {
        return (WorkNameDao) this.o.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkProgressDao u() {
        return (WorkProgressDao) this.p.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkSpecDao v() {
        return (WorkSpecDao) this.k.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkTagDao w() {
        return (WorkTagDao) this.m.getValue();
    }
}
