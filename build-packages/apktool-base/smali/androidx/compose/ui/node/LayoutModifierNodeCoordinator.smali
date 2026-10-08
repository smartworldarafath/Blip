.class public final Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
.super Landroidx/compose/ui/node/NodeCoordinator;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/LayoutModifierNodeCoordinator$LookaheadDelegateForLayoutModifierNode;
    }
.end annotation


# static fields
.field public static final n0:Landroidx/compose/ui/graphics/AndroidPaint;


# instance fields
.field public l0:Landroidx/compose/ui/node/LayoutModifierNode;

.field public m0:Landroidx/compose/ui/node/LookaheadDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->f:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/AndroidPaint;->f(J)V

    .line 8
    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->l(F)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->m(I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->n0:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->l0:Landroidx/compose/ui/node/LayoutModifierNode;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator$LookaheadDelegateForLayoutModifierNode;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator$LookaheadDelegateForLayoutModifierNode;-><init>(Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, v0

    .line 18
    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->m0:Landroidx/compose/ui/node/LookaheadDelegate;

    .line 19
    .line 20
    check-cast p2, Landroidx/compose/ui/Modifier$Node;

    .line 21
    .line 22
    iget-object p0, p2, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 23
    .line 24
    iget p0, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 25
    .line 26
    and-int/lit16 p0, p0, 0x200

    .line 27
    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static {}, Lio/sentry/d;->i()V

    .line 32
    .line 33
    .line 34
    throw v0
.end method


# virtual methods
.method public final G1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->p1()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-boolean v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 15
    .line 16
    iget-boolean v2, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 17
    .line 18
    iput-boolean v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->K0()Landroidx/compose/ui/layout/MeasureResult;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->d()V

    .line 25
    .line 26
    .line 27
    iput-boolean v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 28
    .line 29
    return-void
.end method

.method public final H1(Landroidx/compose/ui/node/LayoutModifierNode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->l0:Landroidx/compose/ui/node/LayoutModifierNode;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 13
    .line 14
    iget v0, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 15
    .line 16
    and-int/lit16 v0, v0, 0x200

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lio/sentry/d;->i()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->l0:Landroidx/compose/ui/node/LayoutModifierNode;

    .line 26
    .line 27
    return-void
.end method

.method public final V(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->l0:Landroidx/compose/ui/node/LayoutModifierNode;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p0, v1, p1}, Landroidx/compose/ui/node/LayoutModifierNode;->c(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final Y0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->m0:Landroidx/compose/ui/node/LookaheadDelegate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator$LookaheadDelegateForLayoutModifierNode;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator$LookaheadDelegateForLayoutModifierNode;-><init>(Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->m0:Landroidx/compose/ui/node/LookaheadDelegate;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final b(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->l0:Landroidx/compose/ui/node/LayoutModifierNode;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p0, v1, p1}, Landroidx/compose/ui/node/LayoutModifierNode;->e(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final b0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-wide v1, p1

    .line 4
    move v3, p3

    .line 5
    move-object v5, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->u1(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->G1()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b1()Landroidx/compose/ui/node/LookaheadDelegate;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->m0:Landroidx/compose/ui/node/LookaheadDelegate;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c0(JFLkotlin/jvm/functions/Function1;)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-wide v1, p1

    .line 4
    move v3, p3

    .line 5
    move-object v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->u1(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->G1()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final d1()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->l0:Landroidx/compose/ui/node/LayoutModifierNode;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 6
    .line 7
    return-object p0
.end method

.method public final m(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->l0:Landroidx/compose/ui/node/LayoutModifierNode;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p0, v1, p1}, Landroidx/compose/ui/node/LayoutModifierNode;->a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final p(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->l0:Landroidx/compose/ui/node/LayoutModifierNode;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p0, v1, p1}, Landroidx/compose/ui/node/LayoutModifierNode;->d(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final s0(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->m0:Landroidx/compose/ui/node/LookaheadDelegate;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, v0, Landroidx/compose/ui/node/LookaheadDelegate;->I:Landroidx/collection/MutableObjectIntMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/collection/ObjectIntMap;->a(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/collection/ObjectIntMap;->c:[I

    .line 14
    .line 15
    aget p0, p0, p1

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    const/high16 p0, -0x80000000

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinatorKt;->a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final t1(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->W0(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    invoke-static {p2}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p2}, Landroidx/compose/ui/node/Owner;->getShowLayoutBounds()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 26
    .line 27
    iget-wide v2, p2, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 28
    .line 29
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-wide v0, p2, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 36
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 46
    .line 47
    const/16 p0, 0x20

    .line 48
    .line 49
    shr-long v2, v0, p0

    .line 50
    .line 51
    long-to-int p0, v2

    .line 52
    int-to-float p0, p0

    .line 53
    const/high16 p2, 0x3f000000    # 0.5f

    .line 54
    .line 55
    sub-float v5, p0, p2

    .line 56
    .line 57
    const-wide v2, 0xffffffffL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    and-long/2addr v0, v2

    .line 63
    long-to-int p0, v0

    .line 64
    int-to-float p0, p0

    .line 65
    sub-float v6, p0, p2

    .line 66
    .line 67
    const/high16 v3, 0x3f000000    # 0.5f

    .line 68
    .line 69
    const/high16 v4, 0x3f000000    # 0.5f

    .line 70
    .line 71
    sget-object v7, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->n0:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 72
    .line 73
    move-object v2, p1

    .line 74
    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/graphics/Canvas;->e(FFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method

.method public final w(J)Landroidx/compose/ui/layout/Placeable;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/Placeable;->k0(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->l0:Landroidx/compose/ui/node/LayoutModifierNode;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p0, v1, p1, p2}, Landroidx/compose/ui/node/LayoutModifierNode;->j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->x1(Landroidx/compose/ui/layout/MeasureResult;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->o1()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method
