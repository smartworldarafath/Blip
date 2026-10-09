.class public final synthetic Landroidx/compose/foundation/pager/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 4
    .line 5
    sget-object p0, Landroidx/compose/foundation/pager/DefaultPagerState;->G:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 6
    .line 7
    iget-object p0, p2, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p1, p2, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerScrollPosition;->b()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/high16 v0, -0x41000000    # -0.5f

    .line 24
    .line 25
    const/high16 v1, 0x3f000000    # 0.5f

    .line 26
    .line 27
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2}, Landroidx/compose/foundation/pager/DefaultPagerState;->l()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
