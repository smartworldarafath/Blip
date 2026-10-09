.class final Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;
.super Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SizeModifierNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;"
    }
.end annotation


# instance fields
.field public A:Landroidx/compose/ui/layout/Placeable;

.field public B:Landroidx/compose/ui/layout/Placeable;

.field public C:J

.field public D:J

.field public final E:Lkotlin/jvm/functions/Function1;

.field public final F:Lkotlin/jvm/functions/Function1;

.field public G:J

.field public x:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public y:Landroidx/compose/runtime/MutableState;

.field public z:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->x:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->y:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->z:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 9
    .line 10
    const-wide/16 p1, 0x0

    .line 11
    .line 12
    iput-wide p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->C:J

    .line 13
    .line 14
    iput-wide p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->D:J

    .line 15
    .line 16
    new-instance p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$lookaheadPlacementBlock$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$lookaheadPlacementBlock$1;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->E:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    new-instance p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$approachPlacementBlock$1;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$approachPlacementBlock$1;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->F:Lkotlin/jvm/functions/Function1;

    .line 29
    .line 30
    const-wide p1, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    iput-wide p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->G:J

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final S0()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->G:J

    .line 7
    .line 8
    return-void
.end method

.method public final j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    .line 1
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->f0()Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const-wide v0, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/16 p4, 0x20

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 19
    .line 20
    iget v2, p2, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 21
    .line 22
    int-to-long v3, p3

    .line 23
    shl-long/2addr v3, p4

    .line 24
    int-to-long v5, v2

    .line 25
    and-long/2addr v5, v0

    .line 26
    or-long v2, v3, v5

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p3, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->x:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 30
    .line 31
    iget v2, p2, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 32
    .line 33
    if-nez p3, :cond_1

    .line 34
    .line 35
    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 36
    .line 37
    int-to-long v2, v2

    .line 38
    shl-long/2addr v2, p4

    .line 39
    int-to-long v4, p3

    .line 40
    and-long/2addr v4, v0

    .line 41
    or-long/2addr v2, v4

    .line 42
    iput-wide v2, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->G:J

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget v3, p2, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 46
    .line 47
    int-to-long v4, v2

    .line 48
    shl-long/2addr v4, p4

    .line 49
    int-to-long v2, v3

    .line 50
    and-long/2addr v2, v0

    .line 51
    or-long/2addr v2, v4

    .line 52
    new-instance v4, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1;

    .line 53
    .line 54
    invoke-direct {v4, p0, v2, v3}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;J)V

    .line 55
    .line 56
    .line 57
    new-instance v5, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$2;

    .line 58
    .line 59
    invoke-direct {v5, p0, v2, v3}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$2;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;J)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p3, v4, v2, v2, v5}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-virtual {p3}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    .line 72
    .line 73
    iget-wide v2, v2, Landroidx/compose/ui/unit/IntSize;->a:J

    .line 74
    .line 75
    invoke-virtual {p3}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    check-cast p3, Landroidx/compose/ui/unit/IntSize;

    .line 80
    .line 81
    iget-wide v4, p3, Landroidx/compose/ui/unit/IntSize;->a:J

    .line 82
    .line 83
    iput-wide v4, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->G:J

    .line 84
    .line 85
    :goto_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->f0()Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-eqz p3, :cond_2

    .line 90
    .line 91
    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->A:Landroidx/compose/ui/layout/Placeable;

    .line 92
    .line 93
    iput-wide v2, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->C:J

    .line 94
    .line 95
    shr-long p2, v2, p4

    .line 96
    .line 97
    long-to-int p2, p2

    .line 98
    and-long p3, v2, v0

    .line 99
    .line 100
    long-to-int p3, p3

    .line 101
    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->E:Lkotlin/jvm/functions/Function1;

    .line 102
    .line 103
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 104
    .line 105
    .line 106
    move-result-object p4

    .line 107
    invoke-interface {p1, p2, p3, p4, p0}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :cond_2
    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->B:Landroidx/compose/ui/layout/Placeable;

    .line 113
    .line 114
    iput-wide v2, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->D:J

    .line 115
    .line 116
    shr-long p2, v2, p4

    .line 117
    .line 118
    long-to-int p2, p2

    .line 119
    and-long p3, v2, v0

    .line 120
    .line 121
    long-to-int p3, p3

    .line 122
    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->F:Lkotlin/jvm/functions/Function1;

    .line 123
    .line 124
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object p4

    .line 128
    invoke-interface {p1, p2, p3, p4, p0}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0
.end method
