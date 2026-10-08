.class final Landroidx/room/driver/SupportSQLitePooledConnection$SupportSQLiteTransactor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/room/TransactionScope;
.implements Landroidx/room/coroutines/RawConnectionAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/driver/SupportSQLitePooledConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SupportSQLiteTransactor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/room/TransactionScope<",
        "TT;>;",
        "Landroidx/room/coroutines/RawConnectionAccessor;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/room/driver/SupportSQLitePooledConnection;


# direct methods
.method public constructor <init>(Landroidx/room/driver/SupportSQLitePooledConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/driver/SupportSQLitePooledConnection$SupportSQLiteTransactor;->a:Landroidx/room/driver/SupportSQLitePooledConnection;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/driver/SupportSQLitePooledConnection$SupportSQLiteTransactor;->a:Landroidx/room/driver/SupportSQLitePooledConnection;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/driver/SupportSQLitePooledConnection;->c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final d()Landroidx/sqlite/SQLiteConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/driver/SupportSQLitePooledConnection$SupportSQLiteTransactor;->a:Landroidx/room/driver/SupportSQLitePooledConnection;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/room/driver/SupportSQLitePooledConnection;->a:Landroidx/room/driver/SupportSQLiteConnection;

    .line 4
    .line 5
    return-object p0
.end method
