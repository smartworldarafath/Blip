.class public final Landroidx/compose/foundation/gestures/DraggableNode;
.super Landroidx/compose/foundation/gestures/DragGestureNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public S:Landroidx/compose/foundation/gestures/DraggableState;

.field public T:Z

.field public U:Lkotlin/jvm/functions/Function3;

.field public V:Lkotlin/jvm/functions/Function3;

.field public W:Z


# virtual methods
.method public final f1(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->S:Landroidx/compose/foundation/gestures/DraggableState;

    .line 7
    .line 8
    sget-object v2, Landroidx/compose/foundation/MutatePriority;->k:Landroidx/compose/foundation/MutatePriority;

    .line 9
    .line 10
    new-instance v3, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v3, p1, p0, v0, v4}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/gestures/DraggableNode;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    check-cast p2, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 17
    .line 18
    invoke-interface {v1, v2, v3, p2}, Landroidx/compose/foundation/gestures/DraggableState;->a(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 23
    .line 24
    if-ne p0, p1, :cond_1

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method public final k1(J)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->U:Lkotlin/jvm/functions/Function3;

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/foundation/gestures/DraggableKt;->a:Lkotlin/jvm/functions/Function3;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->m:Lkotlinx/coroutines/CoroutineStart;

    .line 21
    .line 22
    new-instance v2, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {v2, p0, p1, p2, v3}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;JLkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    invoke-static {v0, v3, v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final l1(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->V:Lkotlin/jvm/functions/Function3;

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/foundation/gestures/DraggableKt;->b:Lkotlin/jvm/functions/Function3;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->m:Lkotlinx/coroutines/CoroutineStart;

    .line 26
    .line 27
    new-instance v3, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-direct {v3, p0, p1, v0, v4}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    invoke-static {v1, v4, v2, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
.end method

.method public final q1()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->T:Z

    .line 2
    .line 3
    return p0
.end method
