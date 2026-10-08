.class public final Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;
.super Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SupportOpenHelperCallback"
.end annotation


# instance fields
.field public final synthetic b:Landroidx/room/RoomConnectionManager;


# direct methods
.method public constructor <init>(Landroidx/room/RoomConnectionManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->b:Landroidx/room/RoomConnectionManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->b:Landroidx/room/RoomConnectionManager;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/room/BaseRoomConnectionManager;->c(Landroidx/sqlite/SQLiteConnection;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->e(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->b:Landroidx/room/RoomConnectionManager;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/room/BaseRoomConnectionManager;->e(Landroidx/sqlite/SQLiteConnection;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->g:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 12
    .line 13
    return-void
.end method

.method public final e(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;->b:Landroidx/room/RoomConnectionManager;

    .line 7
    .line 8
    invoke-virtual {p0, v0, p2, p3}, Landroidx/room/BaseRoomConnectionManager;->d(Landroidx/sqlite/SQLiteConnection;II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
