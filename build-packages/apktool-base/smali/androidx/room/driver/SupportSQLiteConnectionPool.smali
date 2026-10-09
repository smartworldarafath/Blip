.class public final Landroidx/room/driver/SupportSQLiteConnectionPool;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# instance fields
.field public final j:Landroidx/room/driver/SupportSQLiteDriver;


# direct methods
.method public constructor <init>(Landroidx/room/driver/SupportSQLiteDriver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->j:Landroidx/room/driver/SupportSQLiteDriver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->j:Landroidx/room/driver/SupportSQLiteDriver;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteDriver;->a:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j0(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->j:Landroidx/room/driver/SupportSQLiteDriver;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteDriver;->a:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/room/driver/SupportSQLitePooledConnection;

    .line 9
    .line 10
    new-instance v0, Landroidx/room/driver/SupportSQLiteConnection;

    .line 11
    .line 12
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->h0()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Landroidx/room/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0}, Landroidx/room/driver/SupportSQLitePooledConnection;-><init>(Landroidx/room/driver/SupportSQLiteConnection;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, p1, p3}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
