.class public final Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic a:Landroidx/compose/animation/core/Transition;

.field public final synthetic b:Landroidx/compose/animation/core/Transition$DeferredAnimation;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;->a:Landroidx/compose/animation/core/Transition;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;->b:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;->a:Landroidx/compose/animation/core/Transition;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;->b:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->b:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->j:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
