.class final Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;
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
.field public final synthetic k:Landroidx/compose/animation/EnterExitTransitionModifierNode;

.field public final synthetic l:Landroidx/compose/runtime/State;

.field public final synthetic m:J

.field public final synthetic n:J

.field public final synthetic o:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic p:J

.field public final synthetic q:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;JJJLandroidx/compose/ui/layout/Placeable;JLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;->k:Landroidx/compose/animation/EnterExitTransitionModifierNode;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;->l:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    iput-wide p5, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;->m:J

    .line 6
    .line 7
    iput-wide p7, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;->n:J

    .line 8
    .line 9
    iput-object p9, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;->o:Landroidx/compose/ui/layout/Placeable;

    .line 10
    .line 11
    iput-wide p10, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;->p:J

    .line 12
    .line 13
    iput-object p12, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;->q:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;->k:Landroidx/compose/animation/EnterExitTransitionModifierNode;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->D:Landroidx/compose/animation/SharedMutableTransformState;

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;->l:Landroidx/compose/runtime/State;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroidx/compose/ui/unit/IntOffset;

    .line 18
    .line 19
    iget-wide v4, v4, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-wide v4, v2

    .line 23
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/animation/SharedMutableTransformState;->b()Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/compose/animation/SharedMutableTransformState;->b()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_1

    .line 31
    .line 32
    iget-object v6, v1, Landroidx/compose/animation/SharedMutableTransformState;->c:Landroidx/compose/animation/TransformScopeImpl;

    .line 33
    .line 34
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-virtual {v1}, Landroidx/compose/animation/SharedMutableTransformState;->b()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    iput-wide v4, v1, Landroidx/compose/animation/SharedMutableTransformState;->i:J

    .line 48
    .line 49
    :cond_2
    iget-object v7, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->H:Landroidx/compose/ui/Alignment;

    .line 50
    .line 51
    if-eqz v7, :cond_3

    .line 52
    .line 53
    iget-wide v10, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;->n:J

    .line 54
    .line 55
    sget-object v12, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 56
    .line 57
    iget-wide v8, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;->m:J

    .line 58
    .line 59
    invoke-interface/range {v7 .. v12}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    :cond_3
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    const/16 v2, 0x20

    .line 68
    .line 69
    shr-long v3, v0, v2

    .line 70
    .line 71
    long-to-int v3, v3

    .line 72
    iget-wide v4, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;->p:J

    .line 73
    .line 74
    shr-long v6, v4, v2

    .line 75
    .line 76
    long-to-int v2, v6

    .line 77
    add-int/2addr v3, v2

    .line 78
    const-wide v6, 0xffffffffL

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    and-long/2addr v0, v6

    .line 84
    long-to-int v0, v0

    .line 85
    and-long v1, v4, v6

    .line 86
    .line 87
    long-to-int v1, v1

    .line 88
    add-int/2addr v0, v1

    .line 89
    iget-object v1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;->q:Lkotlin/jvm/functions/Function1;

    .line 90
    .line 91
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;->o:Landroidx/compose/ui/layout/Placeable;

    .line 92
    .line 93
    invoke-virtual {p1, p0, v3, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->m(Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;)V

    .line 94
    .line 95
    .line 96
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p0
.end method
