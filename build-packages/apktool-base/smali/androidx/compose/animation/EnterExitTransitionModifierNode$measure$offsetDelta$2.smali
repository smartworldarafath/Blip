.class final Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$offsetDelta$2;
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
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$offsetDelta$2;->k:Landroidx/compose/animation/EnterExitTransitionModifierNode;

    .line 2
    .line 3
    iput-wide p2, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$offsetDelta$2;->l:J

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
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$offsetDelta$2;->k:Landroidx/compose/animation/EnterExitTransitionModifierNode;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->H:Landroidx/compose/ui/Alignment;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/animation/EnterExitTransitionModifierNode;->Y0()Landroidx/compose/ui/Alignment;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->H:Landroidx/compose/ui/Alignment;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/animation/EnterExitTransitionModifierNode;->Y0()Landroidx/compose/ui/Alignment;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    if-eq p1, v1, :cond_4

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    if-ne p1, v1, :cond_3

    .line 41
    .line 42
    iget-object p1, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->C:Landroidx/compose/animation/ExitTransition;

    .line 43
    .line 44
    check-cast p1, Landroidx/compose/animation/ExitTransitionImpl;

    .line 45
    .line 46
    iget-object p1, p1, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 47
    .line 48
    iget-object p1, p1, Landroidx/compose/animation/TransitionData;->c:Landroidx/compose/animation/ChangeSize;

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    iget-object p1, p1, Landroidx/compose/animation/ChangeSize;->b:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    new-instance v1, Landroidx/compose/ui/unit/IntSize;

    .line 55
    .line 56
    iget-wide v3, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$offsetDelta$2;->l:J

    .line 57
    .line 58
    invoke-direct {v1, v3, v4}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    .line 66
    .line 67
    iget-wide v5, p0, Landroidx/compose/ui/unit/IntSize;->a:J

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/compose/animation/EnterExitTransitionModifierNode;->Y0()Landroidx/compose/ui/Alignment;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 77
    .line 78
    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 79
    .line 80
    .line 81
    move-result-wide p0

    .line 82
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->H:Landroidx/compose/ui/Alignment;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/unit/IntOffset;->b(JJ)J

    .line 92
    .line 93
    .line 94
    move-result-wide p0

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-static {}, Lk8;->e()V

    .line 97
    .line 98
    .line 99
    const/4 p0, 0x0

    .line 100
    return-object p0

    .line 101
    :cond_4
    :goto_0
    const-wide/16 p0, 0x0

    .line 102
    .line 103
    :goto_1
    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    .line 104
    .line 105
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 106
    .line 107
    .line 108
    return-object v0
.end method
