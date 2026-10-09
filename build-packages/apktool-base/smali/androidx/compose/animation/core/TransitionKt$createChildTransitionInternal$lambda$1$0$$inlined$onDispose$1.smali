.class public final Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$lambda$1$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic a:Landroidx/compose/animation/core/Transition;

.field public final synthetic b:Landroidx/compose/animation/core/TransitionInstance;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TransitionInstance;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$lambda$1$0$$inlined$onDispose$1;->a:Landroidx/compose/animation/core/Transition;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$lambda$1$0$$inlined$onDispose$1;->b:Landroidx/compose/animation/core/TransitionInstance;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$lambda$1$0$$inlined$onDispose$1;->b:Landroidx/compose/animation/core/TransitionInstance;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$lambda$1$0$$inlined$onDispose$1;->a:Landroidx/compose/animation/core/Transition;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
