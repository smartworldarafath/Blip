.class final Landroidx/compose/animation/VeilModifierNode$draw$veilColor$1;
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
        "Landroidx/compose/ui/graphics/Color;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/animation/VeilModifierNode;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/VeilModifierNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$1;->k:Landroidx/compose/animation/VeilModifierNode;

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
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$1;->k:Landroidx/compose/animation/VeilModifierNode;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierNode;->y:Landroidx/compose/animation/EnterTransition;

    .line 16
    .line 17
    check-cast p0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/compose/animation/EnterTransitionImpl;->b:Landroidx/compose/animation/TransitionData;

    .line 20
    .line 21
    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->c:Landroidx/compose/animation/core/SpringSpec;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    sget-object v0, Landroidx/compose/animation/EnterExitState;->l:Landroidx/compose/animation/EnterExitState;

    .line 25
    .line 26
    invoke-interface {p1, v1, v0}, Landroidx/compose/animation/core/Transition$Segment;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierNode;->z:Landroidx/compose/animation/ExitTransition;

    .line 33
    .line 34
    check-cast p0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 37
    .line 38
    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->c:Landroidx/compose/animation/core/SpringSpec;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->c:Landroidx/compose/animation/core/SpringSpec;

    .line 42
    .line 43
    return-object p0
.end method
