.class final Landroidx/compose/animation/AnimatedContentMeasurePolicy$lookaheadPlacementBlock$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/animation/AnimatedContentMeasurePolicy;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/AnimatedContentMeasurePolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentMeasurePolicy$lookaheadPlacementBlock$1;->k:Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy$lookaheadPlacementBlock$1;->k:Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    .line 8
    .line 9
    iget-object v2, v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->b:[Landroidx/compose/ui/layout/Placeable;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v3, v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->d:I

    .line 15
    .line 16
    iget v4, v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->f:I

    .line 17
    .line 18
    array-length v5, v2

    .line 19
    const/4 v6, 0x0

    .line 20
    :goto_0
    if-ge v6, v5, :cond_1

    .line 21
    .line 22
    aget-object v7, v2, v6

    .line 23
    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    iget-object v8, v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->a:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 27
    .line 28
    iget-object v9, v8, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->b:Landroidx/compose/ui/Alignment;

    .line 29
    .line 30
    iget v8, v7, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 31
    .line 32
    iget v10, v7, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 33
    .line 34
    int-to-long v11, v8

    .line 35
    const/16 v8, 0x20

    .line 36
    .line 37
    shl-long/2addr v11, v8

    .line 38
    int-to-long v13, v10

    .line 39
    const-wide v15, 0xffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    and-long/2addr v13, v15

    .line 45
    or-long v10, v11, v13

    .line 46
    .line 47
    int-to-long v12, v3

    .line 48
    shl-long/2addr v12, v8

    .line 49
    move/from16 p0, v8

    .line 50
    .line 51
    move-object v14, v9

    .line 52
    int-to-long v8, v4

    .line 53
    and-long/2addr v8, v15

    .line 54
    or-long/2addr v12, v8

    .line 55
    move-object v9, v14

    .line 56
    sget-object v14, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 57
    .line 58
    invoke-interface/range {v9 .. v14}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v8

    .line 62
    shr-long v10, v8, p0

    .line 63
    .line 64
    long-to-int v10, v10

    .line 65
    and-long/2addr v8, v15

    .line 66
    long-to-int v8, v8

    .line 67
    invoke-static {v0, v7, v10, v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->g(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 68
    .line 69
    .line 70
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object v0
.end method
