.class public final Landroidx/work/impl/model/DependencyDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Landroidx/work/impl/model/Dependency;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Landroidx/work/impl/model/Dependency;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    iget-object v0, p2, Landroidx/work/impl/model/Dependency;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x2

    .line 16
    iget-object p2, p2, Landroidx/work/impl/model/Dependency;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-interface {p1, p0, p2}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    .line 2
    .line 3
    return-object p0
.end method
