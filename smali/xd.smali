.class public final synthetic Lxd;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/Processor;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/Processor;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxd;->a:Landroidx/work/impl/Processor;

    .line 5
    .line 6
    iput-object p2, p0, Lxd;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lxd;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lxd;->a:Landroidx/work/impl/Processor;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/impl/Processor;->e:Landroidx/work/impl/WorkDatabase;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->w()Landroidx/work/impl/model/WorkTagDao;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroidx/work/impl/model/WorkTagDao_Impl;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lxd;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v1, v1, Landroidx/work/impl/model/WorkTagDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 20
    .line 21
    new-instance v3, Lq7;

    .line 22
    .line 23
    const/16 v4, 0x14

    .line 24
    .line 25
    invoke-direct {v3, v2, v4}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static {v1, v4, v5, v3}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/List;

    .line 35
    .line 36
    iget-object p0, p0, Lxd;->b:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->b(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
