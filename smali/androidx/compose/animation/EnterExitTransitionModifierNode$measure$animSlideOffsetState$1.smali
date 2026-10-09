.class final Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSlideOffsetState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/animation/EnterExitState;",
        "Landroidx/compose/ui/unit/IntOffset;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/animation/EnterExitTransitionModifierNode;

.field public final synthetic l:J


# direct methods
.method public constructor <init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSlideOffsetState$1;->k:Landroidx/compose/animation/EnterExitTransitionModifierNode;

    .line 2
    .line 3
    iput-wide p2, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSlideOffsetState$1;->l:J

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
    check-cast p1, Landroidx/compose/animation/EnterExitState;

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/animation/EnterExitState;->l:Landroidx/compose/animation/EnterExitState;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSlideOffsetState$1;->k:Landroidx/compose/animation/EnterExitTransitionModifierNode;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->C:Landroidx/compose/animation/ExitTransition;

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->b:Landroidx/compose/animation/Slide;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object p0, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->D:Landroidx/compose/animation/SharedMutableTransformState;

    .line 20
    .line 21
    iget-wide p0, p0, Landroidx/compose/animation/SharedMutableTransformState;->i:J

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object v0, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->B:Landroidx/compose/animation/EnterTransition;

    .line 25
    .line 26
    check-cast v0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/compose/animation/EnterTransitionImpl;->b:Landroidx/compose/animation/TransitionData;

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->b:Landroidx/compose/animation/Slide;

    .line 31
    .line 32
    iget-wide v2, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSlideOffsetState$1;->l:J

    .line 33
    .line 34
    const-wide/16 v4, 0x0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Landroidx/compose/animation/Slide;->a:Lkotlin/jvm/functions/Function1;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    .line 43
    .line 44
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Landroidx/compose/ui/unit/IntOffset;

    .line 52
    .line 53
    iget-wide v6, p0, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-wide v6, v4

    .line 57
    :goto_0
    iget-object p0, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->C:Landroidx/compose/animation/ExitTransition;

    .line 58
    .line 59
    check-cast p0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 60
    .line 61
    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 62
    .line 63
    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->b:Landroidx/compose/animation/Slide;

    .line 64
    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    iget-object p0, p0, Landroidx/compose/animation/Slide;->a:Lkotlin/jvm/functions/Function1;

    .line 68
    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    .line 72
    .line 73
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Landroidx/compose/ui/unit/IntOffset;

    .line 81
    .line 82
    iget-wide v0, p0, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move-wide v0, v4

    .line 86
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_5

    .line 91
    .line 92
    const/4 p1, 0x1

    .line 93
    if-eq p0, p1, :cond_4

    .line 94
    .line 95
    const/4 p1, 0x2

    .line 96
    if-ne p0, p1, :cond_3

    .line 97
    .line 98
    move-wide p0, v0

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-static {}, Lk8;->e()V

    .line 101
    .line 102
    .line 103
    const/4 p0, 0x0

    .line 104
    return-object p0

    .line 105
    :cond_4
    move-wide p0, v4

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    move-wide p0, v6

    .line 108
    :goto_2
    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    .line 109
    .line 110
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 111
    .line 112
    .line 113
    return-object v0
.end method
