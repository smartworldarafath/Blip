.class public final Landroidx/compose/foundation/pager/PagerBeyondBoundsState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;


# instance fields
.field public final a:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;->a:Landroidx/compose/foundation/pager/PagerState;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;->a:Landroidx/compose/foundation/pager/PagerState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;->a:Landroidx/compose/foundation/pager/PagerState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroidx/compose/foundation/pager/PageInfo;

    .line 22
    .line 23
    check-cast p0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 24
    .line 25
    iget p0, p0, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 26
    .line 27
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final c()I
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;->a:Landroidx/compose/foundation/pager/PagerState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroidx/compose/foundation/pager/PagerLayoutInfoKt;->a(Landroidx/compose/foundation/pager/PagerLayoutInfo;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 32
    .line 33
    iget v1, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 40
    .line 41
    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->c:I

    .line 42
    .line 43
    add-int/2addr v1, p0

    .line 44
    const/4 p0, 0x1

    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    return p0

    .line 48
    :cond_1
    div-int/2addr v0, v1

    .line 49
    if-ge v0, p0, :cond_2

    .line 50
    .line 51
    return p0

    .line 52
    :cond_2
    return v0
.end method

.method public final d()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;->a:Landroidx/compose/foundation/pager/PagerState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    xor-int/lit8 p0, p0, 0x1

    .line 16
    .line 17
    return p0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;->a:Landroidx/compose/foundation/pager/PagerState;

    .line 2
    .line 3
    iget p0, p0, Landroidx/compose/foundation/pager/PagerState;->e:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method
