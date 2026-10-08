.class final Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;
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
        "Landroidx/compose/ui/graphics/TransformOrigin;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/ui/graphics/TransformOrigin;

.field public final synthetic l:Landroidx/compose/animation/EnterTransition;

.field public final synthetic m:Landroidx/compose/animation/ExitTransition;

.field public final synthetic n:Landroidx/compose/animation/SharedMutableTransformState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/TransformOrigin;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Landroidx/compose/animation/SharedMutableTransformState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;->k:Landroidx/compose/ui/graphics/TransformOrigin;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;->l:Landroidx/compose/animation/EnterTransition;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;->m:Landroidx/compose/animation/ExitTransition;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;->n:Landroidx/compose/animation/SharedMutableTransformState;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroidx/compose/animation/EnterExitState;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    iget-object v1, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;->m:Landroidx/compose/animation/ExitTransition;

    .line 9
    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq p1, v2, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-ne p1, v2, :cond_1

    .line 17
    .line 18
    check-cast v1, Landroidx/compose/animation/ExitTransitionImpl;

    .line 19
    .line 20
    iget-object p1, v1, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/compose/animation/TransitionData;->d:Landroidx/compose/animation/Scale;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-wide p0, p1, Landroidx/compose/animation/Scale;->b:J

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;->n:Landroidx/compose/animation/SharedMutableTransformState;

    .line 30
    .line 31
    iget-wide p0, p0, Landroidx/compose/animation/SharedMutableTransformState;->h:J

    .line 32
    .line 33
    :goto_0
    new-instance v0, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {}, Lk8;->e()V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;->k:Landroidx/compose/ui/graphics/TransformOrigin;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;->l:Landroidx/compose/animation/EnterTransition;

    .line 47
    .line 48
    check-cast p0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/compose/animation/EnterTransitionImpl;->b:Landroidx/compose/animation/TransitionData;

    .line 51
    .line 52
    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->d:Landroidx/compose/animation/Scale;

    .line 53
    .line 54
    if-eqz p0, :cond_4

    .line 55
    .line 56
    iget-wide p0, p0, Landroidx/compose/animation/Scale;->b:J

    .line 57
    .line 58
    new-instance v0, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 59
    .line 60
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    check-cast v1, Landroidx/compose/animation/ExitTransitionImpl;

    .line 65
    .line 66
    iget-object p0, v1, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 67
    .line 68
    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->d:Landroidx/compose/animation/Scale;

    .line 69
    .line 70
    if-eqz p0, :cond_5

    .line 71
    .line 72
    iget-wide p0, p0, Landroidx/compose/animation/Scale;->b:J

    .line 73
    .line 74
    new-instance v0, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 75
    .line 76
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 80
    .line 81
    iget-wide p0, v0, Landroidx/compose/ui/graphics/TransformOrigin;->a:J

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_6
    sget-wide p0, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 85
    .line 86
    :goto_2
    new-instance v0, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 87
    .line 88
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 89
    .line 90
    .line 91
    return-object v0
.end method
