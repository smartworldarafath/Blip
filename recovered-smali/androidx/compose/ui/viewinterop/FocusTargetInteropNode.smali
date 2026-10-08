.class final Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# instance fields
.field public A:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

.field public final z:Landroidx/compose/ui/focus/FocusTargetNode;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 5
    .line 6
    new-instance v1, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode$focusTargetNode$1;

    .line 7
    .line 8
    const-string v6, "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V"

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v2, 0x2

    .line 12
    const-class v4, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;

    .line 13
    .line 14
    const-string v5, "onFocusStateChange"

    .line 15
    .line 16
    move-object v3, p0

    .line 17
    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const/16 p0, 0x9

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, v2, v1, p0}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>(ILkotlin/jvm/functions/Function2;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 27
    .line 28
    .line 29
    iput-object v0, v3, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->z:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final s0()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/compose/ui/viewinterop/b;

    .line 7
    .line 8
    invoke-direct {v1, v0, p0}, Landroidx/compose/ui/viewinterop/b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/compose/ui/layout/PinnableContainer;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->z:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->d1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->A:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {v1}, Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;->a()V

    .line 35
    .line 36
    .line 37
    :cond_0
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Landroidx/compose/ui/layout/PinnableContainer;->b()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->A:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 46
    .line 47
    :cond_2
    return-void
.end method
