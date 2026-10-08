.class final Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/animation/core/Transition$Segment<",
        "Ljava/lang/Object;",
        ">;",
        "Landroidx/compose/animation/core/FiniteAnimationSpec<",
        "Landroidx/compose/ui/unit/IntSize;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;

.field public final synthetic l:J


# direct methods
.method public constructor <init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1;->k:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;

    .line 2
    .line 3
    iput-wide p2, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1;->l:J

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Landroidx/compose/animation/core/Transition$Segment;

    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1;->k:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;

    .line 8
    .line 9
    iget-object v2, v1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->z:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-wide v4, v1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->G:J

    .line 24
    .line 25
    const-wide v6, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-wide v4, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1;->l:J

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-wide v4, v1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->G:J

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p0, v1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->z:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 43
    .line 44
    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->d:Landroidx/collection/MutableScatterMap;

    .line 45
    .line 46
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->a()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Landroidx/compose/runtime/State;

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    .line 63
    .line 64
    iget-wide v4, p0, Landroidx/compose/ui/unit/IntSize;->a:J

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move-wide v4, v2

    .line 68
    :goto_0
    iget-object p0, v1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->z:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 69
    .line 70
    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->d:Landroidx/collection/MutableScatterMap;

    .line 71
    .line 72
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->c()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Landroidx/compose/runtime/State;

    .line 81
    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    .line 89
    .line 90
    iget-wide v2, p0, Landroidx/compose/ui/unit/IntSize;->a:J

    .line 91
    .line 92
    :cond_3
    iget-object p0, v1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;->y:Landroidx/compose/runtime/MutableState;

    .line 93
    .line 94
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    check-cast p0, Landroidx/compose/animation/SizeTransform;

    .line 99
    .line 100
    if-eqz p0, :cond_5

    .line 101
    .line 102
    check-cast p0, Landroidx/compose/animation/SizeTransformImpl;

    .line 103
    .line 104
    iget-object p0, p0, Landroidx/compose/animation/SizeTransformImpl;->a:Lkotlin/jvm/functions/Function2;

    .line 105
    .line 106
    new-instance p1, Landroidx/compose/ui/unit/IntSize;

    .line 107
    .line 108
    invoke-direct {p1, v4, v5}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    .line 112
    .line 113
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 114
    .line 115
    .line 116
    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    check-cast p0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 121
    .line 122
    if-nez p0, :cond_4

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    return-object p0

    .line 126
    :cond_5
    :goto_1
    const/high16 p0, 0x43c80000    # 400.0f

    .line 127
    .line 128
    const/4 p1, 0x5

    .line 129
    const/4 v0, 0x0

    .line 130
    const/4 v1, 0x0

    .line 131
    invoke-static {v0, p0, v1, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0
.end method
