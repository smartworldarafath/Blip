.class public abstract Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;
.super Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider<",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

.field public final c:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

.field public final d:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->b:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->c:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->d:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(IIIJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;
    .locals 7

    .line 1
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->d:I

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v4, p2

    .line 6
    move v5, p3

    .line 7
    move-wide v2, p4

    .line 8
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->c(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final c(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->b:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 6
    .line 7
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->b(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->b:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;->d(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v11

    .line 19
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->c:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 20
    .line 21
    move-wide/from16 v13, p2

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1, v13, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;->b(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJ)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->f(J)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->e(J)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    const-string v2, "does not have fixed height"

    .line 45
    .line 46
    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    :goto_0
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    .line 54
    .line 55
    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->e:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 56
    .line 57
    iget-object v4, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->k:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 58
    .line 59
    invoke-interface {v4}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->f:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 64
    .line 65
    iget-object v12, v4, Landroidx/compose/foundation/lazy/grid/LazyGridState;->m:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 66
    .line 67
    new-instance v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 68
    .line 69
    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->h:I

    .line 70
    .line 71
    iget-wide v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->i:J

    .line 72
    .line 73
    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->g:I

    .line 74
    .line 75
    move-object v0, v3

    .line 76
    move v3, v2

    .line 77
    move-object v2, v0

    .line 78
    move/from16 v15, p4

    .line 79
    .line 80
    move/from16 v16, p5

    .line 81
    .line 82
    move-object v0, v4

    .line 83
    move/from16 v4, p6

    .line 84
    .line 85
    invoke-direct/range {v0 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;-><init>(ILjava/lang/Object;IILandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JII)V

    .line 86
    .line 87
    .line 88
    return-object v0
.end method
