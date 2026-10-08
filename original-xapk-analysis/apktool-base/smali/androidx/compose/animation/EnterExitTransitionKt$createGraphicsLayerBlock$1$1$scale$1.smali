.class final Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1;
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
        "Landroidx/compose/animation/EnterExitState;",
        ">;",
        "Landroidx/compose/animation/core/FiniteAnimationSpec<",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/animation/EnterTransition;

.field public final synthetic l:Landroidx/compose/animation/ExitTransition;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1;->k:Landroidx/compose/animation/EnterTransition;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1;->l:Landroidx/compose/animation/ExitTransition;

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
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/animation/core/Transition$Segment;

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/animation/EnterExitState;->j:Landroidx/compose/animation/EnterExitState;

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/animation/EnterExitState;->k:Landroidx/compose/animation/EnterExitState;

    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Landroidx/compose/animation/core/Transition$Segment;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1;->k:Landroidx/compose/animation/EnterTransition;

    .line 14
    .line 15
    check-cast p0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/animation/EnterTransitionImpl;->b:Landroidx/compose/animation/TransitionData;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->d:Landroidx/compose/animation/Scale;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/compose/animation/Scale;->c:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-object p0

    .line 29
    :cond_1
    :goto_0
    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->b:Landroidx/compose/animation/core/SpringSpec;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    sget-object v0, Landroidx/compose/animation/EnterExitState;->l:Landroidx/compose/animation/EnterExitState;

    .line 33
    .line 34
    invoke-interface {p1, v1, v0}, Landroidx/compose/animation/core/Transition$Segment;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1;->l:Landroidx/compose/animation/ExitTransition;

    .line 41
    .line 42
    check-cast p0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 43
    .line 44
    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->d:Landroidx/compose/animation/Scale;

    .line 47
    .line 48
    if-eqz p0, :cond_4

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/compose/animation/Scale;->c:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 51
    .line 52
    if-nez p0, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-object p0

    .line 56
    :cond_4
    :goto_1
    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->b:Landroidx/compose/animation/core/SpringSpec;

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_5
    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->b:Landroidx/compose/animation/core/SpringSpec;

    .line 60
    .line 61
    return-object p0
.end method
