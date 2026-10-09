.class public final Landroidx/room/driver/SupportSQLiteDriver;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/sqlite/SQLiteDriver;


# instance fields
.field public final a:Landroidx/sqlite/db/SupportSQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/room/driver/SupportSQLiteDriver;->a:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/room/driver/SupportSQLiteConnection;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteDriver;->a:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->h0()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {p1, p0}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method
