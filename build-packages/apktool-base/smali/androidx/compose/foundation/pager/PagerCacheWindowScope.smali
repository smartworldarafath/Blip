.class final Landroidx/compose/foundation/pager/PagerCacheWindowScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/CacheWindowScope;


# instance fields
.field public final a:Lia;

.field public b:Landroidx/compose/foundation/pager/PagerMeasureResult;

.field public c:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;


# direct methods
.method public constructor <init>(Lia;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->a:Lia;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->u:J

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->c:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v6, Landroidx/compose/foundation/pager/e;

    .line 12
    .line 13
    invoke-direct {v6, p2, p0}, Landroidx/compose/foundation/pager/e;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/pager/PagerCacheWindowScope;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    move v2, p1

    .line 18
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->a(IJZLkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    const-string p0, "state"

    .line 28
    .line 29
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0
.end method

.method public final b()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 26
    .line 27
    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 28
    .line 29
    int-to-long v0, v0

    .line 30
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->h:I

    .line 35
    .line 36
    int-to-long v2, p0

    .line 37
    sub-long/2addr v0, v2

    .line 38
    const-wide/16 v2, 0x0

    .line 39
    .line 40
    cmp-long p0, v0, v2

    .line 41
    .line 42
    if-gez p0, :cond_1

    .line 43
    .line 44
    move-wide v0, v2

    .line 45
    :cond_1
    long-to-int p0, v0

    .line 46
    return p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    return p0
.end method

.method public final d()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 26
    .line 27
    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 28
    .line 29
    int-to-long v0, v0

    .line 30
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget v2, v2, Landroidx/compose/foundation/pager/PagerMeasureResult;->h:I

    .line 35
    .line 36
    int-to-long v2, v2

    .line 37
    add-long/2addr v0, v2

    .line 38
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->i()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    int-to-long v2, p0

    .line 43
    const-wide/16 v4, 0x1

    .line 44
    .line 45
    sub-long/2addr v2, v4

    .line 46
    cmp-long p0, v0, v2

    .line 47
    .line 48
    if-lez p0, :cond_1

    .line 49
    .line 50
    move-wide v0, v2

    .line 51
    :cond_1
    long-to-int p0, v0

    .line 52
    return p0
.end method

.method public final e()Landroidx/compose/foundation/pager/PagerMeasureResult;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->b:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "layoutInfo"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final f()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 26
    .line 27
    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->j:I

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v1, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    .line 34
    .line 35
    add-int/2addr v0, v1

    .line 36
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget v1, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->c:I

    .line 41
    .line 42
    add-int/2addr v0, v1

    .line 43
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->g:I

    .line 48
    .line 49
    sub-int/2addr v0, p0

    .line 50
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0
.end method

.method public final g()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 26
    .line 27
    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->j:I

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->f:I

    .line 34
    .line 35
    neg-int p0, p0

    .line 36
    add-int/2addr v0, p0

    .line 37
    if-lez v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v1, v0

    .line 41
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public final h()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerLayoutInfoKt;->a(Landroidx/compose/foundation/pager/PagerLayoutInfo;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final i()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->a:Lia;

    .line 2
    .line 3
    invoke-virtual {p0}, Lia;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
