.class public final Landroidx/work/impl/Migration_1_2;
.super Landroidx/room/migration/Migration;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final c:Landroidx/work/impl/Migration_1_2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/work/impl/Migration_1_2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/work/impl/Migration_1_2;->c:Landroidx/work/impl/Migration_1_2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "\n    CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id`\n    INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`)\n    REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )\n    "

    .line 5
    .line 6
    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->t(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p0, "\n    INSERT INTO SystemIdInfo(work_spec_id, system_id)\n    SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo\n    "

    .line 10
    .line 11
    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->t(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "DROP TABLE IF EXISTS alarmInfo"

    .line 15
    .line 16
    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->t(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p0, "\n                INSERT OR IGNORE INTO worktag(tag, work_spec_id)\n                SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec\n                "

    .line 20
    .line 21
    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->t(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
