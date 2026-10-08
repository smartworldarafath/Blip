.class public final Landroidx/compose/foundation/FocusableNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/SemanticsModifierNode;
.implements Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/node/TraversableNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/FocusableNode$TraverseKey;
    }
.end annotation


# static fields
.field public static final F:Landroidx/compose/foundation/FocusableNode$TraverseKey;


# instance fields
.field public final A:Lkotlin/jvm/functions/Function1;

.field public B:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

.field public C:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

.field public D:Landroidx/compose/ui/node/NodeCoordinator;

.field public final E:Landroidx/compose/ui/focus/FocusTargetModifierNode;

.field public z:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/FocusableNode$TraverseKey;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/FocusableNode;->F:Landroidx/compose/foundation/FocusableNode$TraverseKey;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function1;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->z:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/foundation/FocusableNode;->A:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/foundation/FocusableNode$focusTargetNode$1;

    .line 9
    .line 10
    const-string v5, "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V"

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v1, 0x2

    .line 14
    const-class v3, Landroidx/compose/foundation/FocusableNode;

    .line 15
    .line 16
    const-string v4, "onFocusStateChange"

    .line 17
    .line 18
    move-object v2, p0

    .line 19
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 23
    .line 24
    const/16 p1, 0xa

    .line 25
    .line 26
    invoke-direct {p0, p2, v0, p1}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>(ILkotlin/jvm/functions/Function2;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p0}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 30
    .line 31
    .line 32
    iput-object p0, v2, Landroidx/compose/foundation/FocusableNode;->E:Landroidx/compose/ui/focus/FocusTargetModifierNode;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final E0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->E:Landroidx/compose/ui/focus/FocusTargetModifierNode;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->d1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 14
    .line 15
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 16
    .line 17
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    aget-object v2, v2, v3

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroidx/compose/foundation/FocusableNode$applySemantics$1;

    .line 33
    .line 34
    const-string v7, "requestFocus()Z"

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    const-class v5, Landroidx/compose/foundation/FocusableNode;

    .line 39
    .line 40
    const-string v6, "requestFocus"

    .line 41
    .line 42
    move-object v4, p0

    .line 43
    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsActions;->w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 47
    .line 48
    new-instance v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final K0(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->D:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->E:Landroidx/compose/ui/focus/FocusTargetModifierNode;

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->d1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/compose/foundation/FocusableNode;->D:Landroidx/compose/ui/node/NodeCoordinator;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusableNode;->c1()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusableNode;->c1()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final N0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final S0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->C:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/FocusableNode;->C:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 10
    .line 11
    return-void
.end method

.method public final b1(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lkotlinx/coroutines/internal/ContextScope;

    .line 10
    .line 11
    iget-object v0, v0, Lkotlinx/coroutines/internal/ContextScope;->j:Lkotlin/coroutines/CoroutineContext;

    .line 12
    .line 13
    sget-object v1, Lkotlinx/coroutines/Job$Key;->j:Lkotlinx/coroutines/Job$Key;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v2, Lb;

    .line 25
    .line 26
    const/16 v3, 0xc

    .line 27
    .line 28
    invoke-direct {v2, v3, p1, p2}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v2}, Lkotlinx/coroutines/Job;->v0(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v0, v1

    .line 37
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-instance v2, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;

    .line 42
    .line 43
    invoke-direct {v2, p1, p2, v0, v1}, Landroidx/compose/foundation/FocusableNode$emitWithFallback$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/DisposableHandle;Lkotlin/coroutines/Continuation;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x3

    .line 47
    invoke-static {p0, v1, v1, v2, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-interface {p1, p2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final c1()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 6
    .line 7
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "visitAncestors called on an unattached node"

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    if-eqz p0, :cond_c

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 27
    .line 28
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 29
    .line 30
    iget v1, v1, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 31
    .line 32
    const/high16 v2, 0x40000

    .line 33
    .line 34
    and-int/2addr v1, v2

    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v1, :cond_a

    .line 37
    .line 38
    :goto_1
    if-eqz v0, :cond_a

    .line 39
    .line 40
    iget v1, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 41
    .line 42
    and-int/2addr v1, v2

    .line 43
    if-eqz v1, :cond_9

    .line 44
    .line 45
    move-object v1, v0

    .line 46
    move-object v4, v3

    .line 47
    :goto_2
    if-eqz v1, :cond_9

    .line 48
    .line 49
    instance-of v5, v1, Landroidx/compose/ui/node/TraversableNode;

    .line 50
    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    move-object v5, v1

    .line 54
    check-cast v5, Landroidx/compose/ui/node/TraversableNode;

    .line 55
    .line 56
    invoke-interface {v5}, Landroidx/compose/ui/node/TraversableNode;->p()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    sget-object v6, Landroidx/compose/foundation/FocusedBoundsObserverNode;->x:Landroidx/compose/foundation/FocusedBoundsObserverNode$TraverseKey;

    .line 61
    .line 62
    if-eq v6, v5, :cond_1

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_1
    return-void

    .line 66
    :cond_2
    :goto_3
    iget v5, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 67
    .line 68
    and-int/2addr v5, v2

    .line 69
    if-eqz v5, :cond_8

    .line 70
    .line 71
    instance-of v5, v1, Landroidx/compose/ui/node/DelegatingNode;

    .line 72
    .line 73
    if-eqz v5, :cond_8

    .line 74
    .line 75
    move-object v5, v1

    .line 76
    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 77
    .line 78
    iget-object v5, v5, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    :goto_4
    const/4 v7, 0x1

    .line 82
    if-eqz v5, :cond_7

    .line 83
    .line 84
    iget v8, v5, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 85
    .line 86
    and-int/2addr v8, v2

    .line 87
    if-eqz v8, :cond_6

    .line 88
    .line 89
    add-int/lit8 v6, v6, 0x1

    .line 90
    .line 91
    if-ne v6, v7, :cond_3

    .line 92
    .line 93
    move-object v1, v5

    .line 94
    goto :goto_5

    .line 95
    :cond_3
    if-nez v4, :cond_4

    .line 96
    .line 97
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    .line 98
    .line 99
    const/16 v7, 0x10

    .line 100
    .line 101
    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 102
    .line 103
    invoke-direct {v4, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    if-eqz v1, :cond_5

    .line 107
    .line 108
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    move-object v1, v3

    .line 112
    :cond_5
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    :goto_5
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_7
    if-ne v6, v7, :cond_8

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_8
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    goto :goto_2

    .line 126
    :cond_9
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    if-eqz p0, :cond_b

    .line 134
    .line 135
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 136
    .line 137
    if-eqz v0, :cond_b

    .line 138
    .line 139
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_b
    move-object v0, v3

    .line 143
    goto :goto_0

    .line 144
    :cond_c
    return-void
.end method

.method public final d1(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->z:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->z:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->B:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Landroidx/compose/foundation/FocusableNode;->B:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->z:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final p()Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/foundation/FocusableNode;->F:Landroidx/compose/foundation/FocusableNode$TraverseKey;

    .line 2
    .line 3
    return-object p0
.end method

.method public final s0()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lp0;

    .line 7
    .line 8
    const/16 v2, 0x10

    .line 9
    .line 10
    invoke-direct {v1, v2, v0, p0}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v1}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroidx/compose/ui/layout/PinnableContainer;

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->E:Landroidx/compose/ui/focus/FocusTargetModifierNode;

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->d1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->C:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;->a()V

    .line 39
    .line 40
    .line 41
    :cond_0
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-interface {v0}, Landroidx/compose/ui/layout/PinnableContainer;->b()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    :goto_0
    iput-object v0, p0, Landroidx/compose/foundation/FocusableNode;->C:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 50
    .line 51
    :cond_2
    return-void
.end method
