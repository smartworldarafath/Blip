.class public final Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;
.implements Landroidx/compose/foundation/gestures/ScrollScope;


# instance fields
.field public final synthetic a:Landroidx/compose/foundation/gestures/ScrollScope;

.field public final synthetic b:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollScope;Landroidx/compose/foundation/pager/PagerState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->b:Landroidx/compose/foundation/pager/PagerState;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->a:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->b:Landroidx/compose/foundation/pager/PagerState;

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
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->b:Landroidx/compose/foundation/pager/PagerState;

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
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroidx/compose/foundation/pager/PageInfo;

    .line 16
    .line 17
    check-cast p0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 18
    .line 19
    iget p0, p0, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 20
    .line 21
    return p0
.end method

.method public final c(II)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->b:Landroidx/compose/foundation/pager/PagerState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const/4 v1, 0x0

    .line 9
    cmpg-float v2, v0, v1

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    int-to-float p2, p2

    .line 15
    div-float v1, p2, v0

    .line 16
    .line 17
    :goto_0
    const/4 p2, 0x1

    .line 18
    invoke-virtual {p0, p1, v1, p2}, Landroidx/compose/foundation/pager/PagerState;->r(IFZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->b:Landroidx/compose/foundation/pager/PagerState;

    .line 2
    .line 3
    iget p0, p0, Landroidx/compose/foundation/pager/PagerState;->f:I

    .line 4
    .line 5
    return p0
.end method

.method public final e(I)I
    .locals 10

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->b:Landroidx/compose/foundation/pager/PagerState;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sub-int/2addr p1, v0

    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    mul-int/2addr v0, p1

    .line 15
    int-to-float p1, v0

    .line 16
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->b()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    mul-float/2addr v0, v1

    .line 28
    sub-float/2addr p1, v0

    .line 29
    const/4 v0, 0x0

    .line 30
    add-float/2addr p1, v0

    .line 31
    invoke-static {p1}, Lkotlin/math/MathKt;->b(F)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerScrollPositionKt;->a(Landroidx/compose/foundation/pager/PagerState;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    int-to-long v2, p1

    .line 40
    add-long v4, v0, v2

    .line 41
    .line 42
    iget-wide v6, p0, Landroidx/compose/foundation/pager/PagerState;->h:J

    .line 43
    .line 44
    iget-wide v8, p0, Landroidx/compose/foundation/pager/PagerState;->g:J

    .line 45
    .line 46
    invoke-static/range {v4 .. v9}, Lkotlin/ranges/RangesKt;->e(JJJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerScrollPositionKt;->a(Landroidx/compose/foundation/pager/PagerState;)J

    .line 51
    .line 52
    .line 53
    move-result-wide p0

    .line 54
    sub-long/2addr v0, p0

    .line 55
    long-to-int p0, v0

    .line 56
    return p0
.end method

.method public final f(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->a:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/foundation/gestures/ScrollScope;->f(F)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final g()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->b:Landroidx/compose/foundation/pager/PagerState;

    .line 2
    .line 3
    iget p0, p0, Landroidx/compose/foundation/pager/PagerState;->e:I

    .line 4
    .line 5
    return p0
.end method
