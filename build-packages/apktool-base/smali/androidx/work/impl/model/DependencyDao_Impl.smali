.class public final Landroidx/work/impl/model/DependencyDao_Impl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/work/impl/model/DependencyDao;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/work/impl/model/DependencyDao_Impl$1;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Landroidx/work/impl/model/DependencyDao_Impl$1;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl;->b:Landroidx/work/impl/model/DependencyDao_Impl$1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq7;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, v1}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/work/impl/model/DependencyDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-static {p0, p1, v1, v0}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/util/List;

    .line 18
    .line 19
    return-object p0
.end method
