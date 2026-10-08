.class public abstract Landroidx/room/RoomOpenDelegate;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/room/RoomOpenDelegateMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomOpenDelegate$ValidationResult;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/room/RoomOpenDelegate;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/room/RoomOpenDelegate;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/room/RoomOpenDelegate;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract b(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract c(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract d(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract e(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract f(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract g(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;
.end method
