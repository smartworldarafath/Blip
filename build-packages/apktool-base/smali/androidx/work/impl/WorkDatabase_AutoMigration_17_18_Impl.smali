.class public final Landroidx/work/impl/WorkDatabase_AutoMigration_17_18_Impl;
.super Landroidx/room/migration/Migration;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public final a(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807"

    .line 5
    .line 6
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p0, "ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0"

    .line 10
    .line 11
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
