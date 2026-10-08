.class public final Landroidx/work/impl/Migration_3_4;
.super Landroidx/room/migration/Migration;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final c:Landroidx/work/impl/Migration_3_4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/work/impl/Migration_3_4;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x4

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/work/impl/Migration_3_4;->c:Landroidx/work/impl/Migration_3_4;

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
    const-string p0, "\n    UPDATE workspec SET schedule_requested_at = 0\n    WHERE state NOT IN (2, 3, 5)\n        AND schedule_requested_at = -1\n        AND interval_duration <> 0\n    "

    .line 5
    .line 6
    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->t(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
