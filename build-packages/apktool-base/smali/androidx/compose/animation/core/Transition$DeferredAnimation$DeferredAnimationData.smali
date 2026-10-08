.class public final Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/Transition$DeferredAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeferredAnimationData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/State<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final j:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

.field public k:Lkotlin/jvm/functions/Function1;

.field public l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Landroidx/compose/animation/core/Transition$DeferredAnimation;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->m:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->j:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->k:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->l:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Landroidx/compose/animation/core/Transition$Segment;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->l:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->c()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->m:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/compose/animation/core/Transition$DeferredAnimation;->c:Landroidx/compose/animation/core/Transition;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->h()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->j:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->l:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->a()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object p0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->k:Lkotlin/jvm/functions/Function1;

    .line 34
    .line 35
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 40
    .line 41
    invoke-virtual {v2, p2, v0, p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->j(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->k:Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 52
    .line 53
    invoke-virtual {v2, v0, p0, p2, p3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->k(Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->m:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->c:Landroidx/compose/animation/core/Transition;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1, v1}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->b(Landroidx/compose/animation/core/Transition$Segment;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->j:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->s:Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
