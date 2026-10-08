.class public interface abstract Landroidx/work/impl/model/SystemIdInfoDao;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public a(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/model/SystemIdInfo;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/work/impl/model/WorkGenerationalId;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget p1, p1, Landroidx/work/impl/model/WorkGenerationalId;->b:I

    .line 4
    .line 5
    check-cast p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lpg;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v0, p1, v2}, Lpg;-><init>(Ljava/lang/String;II)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-static {p0, p1, v2, v1}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroidx/work/impl/model/SystemIdInfo;

    .line 24
    .line 25
    return-object p0
.end method
