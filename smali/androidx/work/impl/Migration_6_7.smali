.class public final Landroidx/work/impl/Migration_6_7;
.super Landroidx/room/migration/Migration;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final c:Landroidx/work/impl/Migration_6_7;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/work/impl/Migration_6_7;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x7

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/work/impl/Migration_6_7;->c:Landroidx/work/impl/Migration_6_7;

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
    const-string p0, "\n    CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress`\n    BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`)\n    REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )\n    "

    .line 5
    .line 6
    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->t(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
