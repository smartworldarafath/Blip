.class public abstract Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;
.super Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider<",
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Landroidx/compose/foundation/lazy/LazyListItemProvider;

.field public final c:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

.field public final d:J


# direct methods
.method public constructor <init>(JLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->b:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 5
    .line 6
    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->c:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const p2, 0x7fffffff

    .line 13
    .line 14
    .line 15
    const/4 p3, 0x5

    .line 16
    const/4 p4, 0x0

    .line 17
    invoke-static {p4, p1, p4, p2, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d:J

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(IIIJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p4, p5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->c(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final c(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->b:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 6
    .line 7
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v10

    .line 13
    iget-object v2, v2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;->d(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v11

    .line 19
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->c:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 20
    .line 21
    move-wide/from16 v13, p2

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1, v13, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;->b(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJ)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    .line 28
    .line 29
    iget v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->f:I

    .line 30
    .line 31
    add-int/lit8 v3, v3, -0x1

    .line 32
    .line 33
    if-ne v1, v3, :cond_0

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    move v7, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->g:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :goto_1
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 42
    .line 43
    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->e:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 44
    .line 45
    iget-object v4, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->k:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 46
    .line 47
    invoke-interface {v4}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget-object v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->l:Landroidx/compose/foundation/lazy/LazyListState;

    .line 52
    .line 53
    iget-object v12, v5, Landroidx/compose/foundation/lazy/LazyListState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 54
    .line 55
    move-object v5, v3

    .line 56
    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->h:Landroidx/compose/ui/Alignment$Horizontal;

    .line 57
    .line 58
    move-object v6, v5

    .line 59
    iget v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->i:I

    .line 60
    .line 61
    move-object v8, v6

    .line 62
    iget v6, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->j:I

    .line 63
    .line 64
    iget-wide v0, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->k:J

    .line 65
    .line 66
    move-wide v15, v0

    .line 67
    move-object v0, v8

    .line 68
    move-wide v8, v15

    .line 69
    move/from16 v1, p1

    .line 70
    .line 71
    invoke-direct/range {v0 .. v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;-><init>(ILjava/util/List;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/unit/LayoutDirection;IIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;J)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method
