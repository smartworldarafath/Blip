.class public final Landroidx/compose/animation/core/TransitionKt$rememberTransition$lambda$1$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic a:Landroidx/compose/animation/core/TransitionState;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/TransitionState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$lambda$1$0$$inlined$onDispose$1;->a:Landroidx/compose/animation/core/TransitionState;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$lambda$1$0$$inlined$onDispose$1;->a:Landroidx/compose/animation/core/TransitionState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->r(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
