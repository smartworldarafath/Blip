.class public final Landroidx/work/impl/model/PreferenceDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Landroidx/work/impl/model/Preference;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Landroidx/work/impl/model/Preference;

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
    iget-object v0, p2, Landroidx/work/impl/model/Preference;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p2, Landroidx/work/impl/model/Preference;->b:Ljava/lang/Long;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const/4 p0, 0x2

    .line 22
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    .line 2
    .line 3
    return-object p0
.end method
