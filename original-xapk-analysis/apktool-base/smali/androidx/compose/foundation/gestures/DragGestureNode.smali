.class public abstract Landroidx/compose/foundation/gestures/DragGestureNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/foundation/gestures/DraggableGestureConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/DragGestureNode$WhenMappings;
    }
.end annotation


# instance fields
.field public A:Lkotlin/jvm/functions/Function1;

.field public B:Z

.field public C:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public D:Lkotlinx/coroutines/channels/BufferedChannel;

.field public E:Landroidx/compose/foundation/interaction/DragInteraction$Start;

.field public F:Z

.field public G:Z

.field public H:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

.field public I:J

.field public J:Landroidx/compose/ui/node/DelegatableNode;

.field public K:Landroidx/compose/ui/node/DelegatableNode;

.field public L:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

.field public M:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

.field public N:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

.field public O:Landroidx/compose/foundation/gestures/DragDetectionState;

.field public P:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

.field public Q:Landroidx/compose/foundation/gestures/TouchSlopDetector;

.field public R:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

.field public z:Landroidx/compose/foundation/gestures/Orientation;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->A:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->B:Z

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->C:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 11
    .line 12
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    iput-wide p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:J

    .line 15
    .line 16
    return-void
.end method

.method public static final b1(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->C:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 55
    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    new-instance v5, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 59
    .line 60
    invoke-direct {v5, p1}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 61
    .line 62
    .line 63
    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->o:I

    .line 64
    .line 65
    invoke-interface {v2, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->a(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    iput-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 73
    .line 74
    :cond_4
    new-instance p1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 75
    .line 76
    const-wide/16 v0, 0x0

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-direct {p1, v0, v1, v2}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode;->l1(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V

    .line 83
    .line 84
    .line 85
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    return-object p0
.end method

.method public static final c1(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->q:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->q:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->q:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    if-eq v2, v4, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->n:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 40
    .line 41
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->m:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 42
    .line 43
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->m:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 55
    .line 56
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 64
    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->C:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    new-instance v5, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 72
    .line 73
    invoke-direct {v5, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->m:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 77
    .line 78
    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->q:I

    .line 79
    .line 80
    invoke-interface {v2, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->a(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-ne p2, v1, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    :goto_1
    new-instance p2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->C:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 93
    .line 94
    if-eqz v2, :cond_6

    .line 95
    .line 96
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->m:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 97
    .line 98
    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->n:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 99
    .line 100
    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->q:I

    .line 101
    .line 102
    invoke-interface {v2, p2, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->a(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-ne v0, v1, :cond_5

    .line 107
    .line 108
    :goto_2
    return-object v1

    .line 109
    :cond_5
    move-object v0, p1

    .line 110
    move-object p1, p2

    .line 111
    :goto_3
    move-object p2, p1

    .line 112
    move-object p1, v0

    .line 113
    :cond_6
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 114
    .line 115
    iget-wide p1, p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;->a:J

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->k1(J)V

    .line 118
    .line 119
    .line 120
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    return-object p0
.end method

.method public static final d1(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->p:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->p:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->m:Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 38
    .line 39
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 53
    .line 54
    if-eqz p2, :cond_4

    .line 55
    .line 56
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->C:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    new-instance v5, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 61
    .line 62
    invoke-direct {v5, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->m:Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 66
    .line 67
    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->p:I

    .line 68
    .line 69
    invoke-interface {v2, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->a(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-ne p2, v1, :cond_3

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_3
    :goto_1
    iput-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 77
    .line 78
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode;->l1(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V

    .line 79
    .line 80
    .line 81
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0
.end method

.method public static i1(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJI)V
    .locals 3

    .line 1
    and-int/lit8 p6, p6, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const-wide/16 p4, 0x0

    .line 6
    .line 7
    :cond_0
    iget-object p6, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->M:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p6, :cond_1

    .line 11
    .line 12
    new-instance p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 13
    .line 14
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 19
    .line 20
    const-wide v1, 0x7fffffffffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide v1, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->b:J

    .line 26
    .line 27
    iput-boolean v0, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->c:Z

    .line 28
    .line 29
    iput-object p6, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->M:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 30
    .line 31
    :cond_1
    iput-object p1, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 32
    .line 33
    iput-wide p2, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->b:J

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->Q:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 36
    .line 37
    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    new-instance p1, Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 42
    .line 43
    invoke-direct {p1, p2}, Landroidx/compose/foundation/gestures/TouchSlopDetector;-><init>(Landroidx/compose/foundation/gestures/Orientation;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->Q:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iput-object p2, p1, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a:Landroidx/compose/foundation/gestures/Orientation;

    .line 50
    .line 51
    iput-wide p4, p1, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    .line 52
    .line 53
    :goto_0
    iput-boolean v0, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->c:Z

    .line 54
    .line 55
    iput-object p6, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->O:Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public K(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iput-boolean v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->G:Z

    .line 9
    .line 10
    iget-boolean v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->B:Z

    .line 11
    .line 12
    if-eqz v4, :cond_3b

    .line 13
    .line 14
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->J:Landroidx/compose/ui/node/DelegatableNode;

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/compose/foundation/GestureNodeKt;->a(Landroidx/compose/foundation/GestureConnection;)Landroidx/compose/ui/node/DelegatableNode;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 23
    .line 24
    .line 25
    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->J:Landroidx/compose/ui/node/DelegatableNode;

    .line 26
    .line 27
    :cond_0
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->O:Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez v4, :cond_2

    .line 31
    .line 32
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->H:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 33
    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    new-instance v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 37
    .line 38
    sget-object v6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->l:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v6, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 44
    .line 45
    iput-boolean v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->b:Z

    .line 46
    .line 47
    iput-boolean v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->c:Z

    .line 48
    .line 49
    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->H:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 50
    .line 51
    :cond_1
    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->O:Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 52
    .line 53
    :cond_2
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->O:Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 54
    .line 55
    if-eqz v4, :cond_3a

    .line 56
    .line 57
    instance-of v6, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 58
    .line 59
    const-wide v7, 0x7fffffffffffffffL

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    const-wide/16 v9, 0x0

    .line 65
    .line 66
    if-eqz v6, :cond_b

    .line 67
    .line 68
    check-cast v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 69
    .line 70
    iget-object v6, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_3

    .line 77
    .line 78
    goto/16 :goto_15

    .line 79
    .line 80
    :cond_3
    invoke-static {v1, v5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerEvent;Z)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-nez v5, :cond_4

    .line 85
    .line 86
    goto/16 :goto_15

    .line 87
    .line 88
    :cond_4
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 89
    .line 90
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 95
    .line 96
    iget-object v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 97
    .line 98
    sget-object v6, Landroidx/compose/foundation/gestures/DragGestureNode$WhenMappings;->a:[I

    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    aget v5, v6, v5

    .line 105
    .line 106
    if-ne v5, v3, :cond_6

    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->q1()Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_5

    .line 113
    .line 114
    sget-object v5, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->j:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    sget-object v5, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->k:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_6
    iget-object v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 121
    .line 122
    :goto_0
    iput-object v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 123
    .line 124
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->j:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 125
    .line 126
    if-ne v2, v6, :cond_8

    .line 127
    .line 128
    sget-object v6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->k:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 129
    .line 130
    if-ne v5, v6, :cond_7

    .line 131
    .line 132
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 133
    .line 134
    .line 135
    iput-boolean v3, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->b:Z

    .line 136
    .line 137
    :cond_7
    iput-boolean v3, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->c:Z

    .line 138
    .line 139
    :cond_8
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 140
    .line 141
    if-ne v2, v3, :cond_3b

    .line 142
    .line 143
    sget-object v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->j:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 144
    .line 145
    if-ne v5, v2, :cond_9

    .line 146
    .line 147
    iget-wide v2, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 148
    .line 149
    const-wide/16 v4, 0x0

    .line 150
    .line 151
    const/16 v6, 0xc

    .line 152
    .line 153
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/DragGestureNode;->i1(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJI)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_9
    iget-boolean v2, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->b:Z

    .line 158
    .line 159
    if-eqz v2, :cond_3b

    .line 160
    .line 161
    invoke-virtual {v0, v1, v1, v9, v10}, Landroidx/compose/foundation/gestures/DragGestureNode;->p1(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v9, v10, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->o1(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 165
    .line 166
    .line 167
    iget-wide v1, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 168
    .line 169
    iget-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->L:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 170
    .line 171
    if-nez v3, :cond_a

    .line 172
    .line 173
    new-instance v3, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 174
    .line 175
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-wide v7, v3, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->a:J

    .line 179
    .line 180
    iput-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->L:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 181
    .line 182
    :cond_a
    iput-wide v1, v3, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->a:J

    .line 183
    .line 184
    iput-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->O:Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 185
    .line 186
    return-void

    .line 187
    :cond_b
    instance-of v6, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 188
    .line 189
    const/4 v11, 0x0

    .line 190
    if-eqz v6, :cond_25

    .line 191
    .line 192
    check-cast v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 193
    .line 194
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->j:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 195
    .line 196
    if-ne v2, v6, :cond_c

    .line 197
    .line 198
    goto/16 :goto_15

    .line 199
    .line 200
    :cond_c
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 201
    .line 202
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    move v9, v5

    .line 207
    :goto_1
    if-ge v9, v6, :cond_e

    .line 208
    .line 209
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    move-object v12, v10

    .line 214
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 215
    .line 216
    iget-wide v12, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 217
    .line 218
    iget-wide v14, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->b:J

    .line 219
    .line 220
    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    if-eqz v12, :cond_d

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_d
    add-int/lit8 v9, v9, 0x1

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_e
    move-object v10, v11

    .line 231
    :goto_2
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 232
    .line 233
    if-nez v10, :cond_12

    .line 234
    .line 235
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    move v9, v5

    .line 240
    :goto_3
    if-ge v9, v6, :cond_10

    .line 241
    .line 242
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    move-object v12, v10

    .line 247
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 248
    .line 249
    iget-boolean v12, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 250
    .line 251
    if-eqz v12, :cond_f

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_10
    move-object v10, v11

    .line 258
    :goto_4
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 259
    .line 260
    if-nez v10, :cond_11

    .line 261
    .line 262
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->g1()V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_11
    iget-wide v12, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 267
    .line 268
    iput-wide v12, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->b:J

    .line 269
    .line 270
    :cond_12
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 271
    .line 272
    const-string v9, "AwaitTouchSlop.touchSlopDetector was not initialized"

    .line 273
    .line 274
    const-string v12, "AwaitTouchSlop.initialDown was not initialized"

    .line 275
    .line 276
    if-ne v2, v6, :cond_15

    .line 277
    .line 278
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-nez v6, :cond_1f

    .line 283
    .line 284
    invoke-static {v10}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    if-eqz v6, :cond_17

    .line 289
    .line 290
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    move v6, v5

    .line 295
    :goto_5
    if-ge v6, v3, :cond_14

    .line 296
    .line 297
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    move-object v8, v7

    .line 302
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 303
    .line 304
    iget-boolean v8, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 305
    .line 306
    if-eqz v8, :cond_13

    .line 307
    .line 308
    move-object v11, v7

    .line 309
    goto :goto_6

    .line 310
    :cond_13
    add-int/lit8 v6, v6, 0x1

    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_14
    :goto_6
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 314
    .line 315
    if-nez v11, :cond_16

    .line 316
    .line 317
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->g1()V

    .line 318
    .line 319
    .line 320
    :cond_15
    :goto_7
    move-object v6, v4

    .line 321
    goto/16 :goto_b

    .line 322
    .line 323
    :cond_16
    iget-wide v6, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 324
    .line 325
    iput-wide v6, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->b:J

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_17
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->t:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 329
    .line 330
    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 335
    .line 336
    iget v6, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    .line 337
    .line 338
    invoke-static {v1, v6}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->g(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    iget-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->Q:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 343
    .line 344
    if-eqz v6, :cond_1e

    .line 345
    .line 346
    invoke-static {v10, v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 347
    .line 348
    .line 349
    move-result-wide v13

    .line 350
    invoke-static {v6, v13, v14, v1}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a(Landroidx/compose/foundation/gestures/TouchSlopDetector;JF)J

    .line 351
    .line 352
    .line 353
    move-result-wide v13

    .line 354
    const-wide v15, 0x7fffffff7fffffffL

    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    and-long/2addr v15, v13

    .line 360
    const-wide v17, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    cmp-long v1, v15, v17

    .line 366
    .line 367
    if-eqz v1, :cond_1d

    .line 368
    .line 369
    invoke-static {v10, v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 370
    .line 371
    .line 372
    move-result-wide v7

    .line 373
    move-object v6, v4

    .line 374
    iget-wide v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:J

    .line 375
    .line 376
    invoke-static {v3, v4, v7, v8}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    .line 377
    .line 378
    .line 379
    move-result-wide v3

    .line 380
    iput-wide v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:J

    .line 381
    .line 382
    const/16 v1, 0x20

    .line 383
    .line 384
    shr-long/2addr v3, v1

    .line 385
    long-to-int v1, v3

    .line 386
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    iget-wide v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:J

    .line 395
    .line 396
    const-wide v7, 0xffffffffL

    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    and-long/2addr v3, v7

    .line 402
    long-to-int v3, v3

    .line 403
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    float-to-double v3, v3

    .line 412
    float-to-double v7, v1

    .line 413
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .line 414
    .line 415
    .line 416
    move-result-wide v3

    .line 417
    double-to-float v1, v3

    .line 418
    const v3, 0x42652ee1

    .line 419
    .line 420
    .line 421
    mul-float/2addr v1, v3

    .line 422
    iget-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 423
    .line 424
    if-nez v3, :cond_18

    .line 425
    .line 426
    :goto_8
    const/4 v3, 0x1

    .line 427
    goto :goto_a

    .line 428
    :cond_18
    sget-object v4, Landroidx/compose/foundation/gestures/DraggableKt;->a:Lkotlin/jvm/functions/Function3;

    .line 429
    .line 430
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 431
    .line 432
    const/high16 v7, 0x41f00000    # 30.0f

    .line 433
    .line 434
    if-ne v3, v4, :cond_19

    .line 435
    .line 436
    cmpg-float v3, v1, v7

    .line 437
    .line 438
    if-gtz v3, :cond_1a

    .line 439
    .line 440
    goto :goto_9

    .line 441
    :cond_19
    cmpl-float v3, v1, v7

    .line 442
    .line 443
    if-lez v3, :cond_1a

    .line 444
    .line 445
    const/high16 v3, 0x42b40000    # 90.0f

    .line 446
    .line 447
    cmpg-float v3, v1, v3

    .line 448
    .line 449
    if-gtz v3, :cond_1a

    .line 450
    .line 451
    :goto_9
    goto :goto_8

    .line 452
    :cond_1a
    move v3, v5

    .line 453
    :goto_a
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 454
    .line 455
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 456
    .line 457
    .line 458
    new-instance v7, La8;

    .line 459
    .line 460
    invoke-direct {v7, v1, v4, v5}, La8;-><init>(FLjava/lang/Object;I)V

    .line 461
    .line 462
    .line 463
    sget-object v1, Landroidx/compose/foundation/gestures/DraggableKt;->a:Lkotlin/jvm/functions/Function3;

    .line 464
    .line 465
    new-instance v1, Lc;

    .line 466
    .line 467
    const/16 v8, 0x12

    .line 468
    .line 469
    invoke-direct {v1, v8, v7}, Lc;-><init>(ILjava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    invoke-static {v0, v1}, Landroidx/compose/foundation/GestureNodeKt;->b(Landroidx/compose/ui/node/DelegatingNode;Lkotlin/jvm/functions/Function1;)V

    .line 473
    .line 474
    .line 475
    if-nez v3, :cond_1b

    .line 476
    .line 477
    iget-boolean v1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 478
    .line 479
    if-eqz v1, :cond_1b

    .line 480
    .line 481
    const/4 v15, 0x1

    .line 482
    iput-boolean v15, v6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->c:Z

    .line 483
    .line 484
    goto :goto_b

    .line 485
    :cond_1b
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 486
    .line 487
    .line 488
    iget-object v1, v6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 489
    .line 490
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v1, v10, v13, v14}, Landroidx/compose/foundation/gestures/DragGestureNode;->p1(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v13, v14, v10}, Landroidx/compose/foundation/gestures/DragGestureNode;->o1(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 497
    .line 498
    .line 499
    iget-wide v3, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 500
    .line 501
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->L:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 502
    .line 503
    if-nez v1, :cond_1c

    .line 504
    .line 505
    new-instance v1, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 506
    .line 507
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 508
    .line 509
    .line 510
    const-wide v7, 0x7fffffffffffffffL

    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    iput-wide v7, v1, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->a:J

    .line 516
    .line 517
    iput-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->L:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 518
    .line 519
    :cond_1c
    iput-wide v3, v1, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->a:J

    .line 520
    .line 521
    iput-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->O:Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 522
    .line 523
    goto :goto_b

    .line 524
    :cond_1d
    move v15, v3

    .line 525
    move-object v6, v4

    .line 526
    iput-boolean v15, v6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->c:Z

    .line 527
    .line 528
    iget-wide v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:J

    .line 529
    .line 530
    invoke-static {v10, v15}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 531
    .line 532
    .line 533
    move-result-wide v7

    .line 534
    invoke-static {v3, v4, v7, v8}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    .line 535
    .line 536
    .line 537
    move-result-wide v3

    .line 538
    iput-wide v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:J

    .line 539
    .line 540
    goto :goto_b

    .line 541
    :cond_1e
    const-string v0, "Touch slop detector not initialized."

    .line 542
    .line 543
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    return-void

    .line 547
    :cond_1f
    move-object v6, v4

    .line 548
    iget-object v1, v6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 549
    .line 550
    if-eqz v1, :cond_21

    .line 551
    .line 552
    iget-wide v3, v6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->b:J

    .line 553
    .line 554
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->Q:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 555
    .line 556
    if-eqz v7, :cond_20

    .line 557
    .line 558
    invoke-virtual {v0, v1, v3, v4, v7}, Landroidx/compose/foundation/gestures/DragGestureNode;->h1(Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V

    .line 559
    .line 560
    .line 561
    goto :goto_b

    .line 562
    :cond_20
    invoke-static {v9}, Lu2;->g(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    return-void

    .line 566
    :cond_21
    invoke-static {v12}, Lu2;->g(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    return-void

    .line 570
    :goto_b
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 571
    .line 572
    if-ne v2, v1, :cond_3b

    .line 573
    .line 574
    iget-boolean v1, v6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->c:Z

    .line 575
    .line 576
    if-eqz v1, :cond_3b

    .line 577
    .line 578
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    if-eqz v1, :cond_24

    .line 583
    .line 584
    iget-object v1, v6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 585
    .line 586
    if-eqz v1, :cond_23

    .line 587
    .line 588
    iget-wide v2, v6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->b:J

    .line 589
    .line 590
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->Q:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 591
    .line 592
    if-eqz v4, :cond_22

    .line 593
    .line 594
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/gestures/DragGestureNode;->h1(Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V

    .line 595
    .line 596
    .line 597
    return-void

    .line 598
    :cond_22
    invoke-static {v9}, Lu2;->g(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    return-void

    .line 602
    :cond_23
    invoke-static {v12}, Lu2;->g(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    return-void

    .line 606
    :cond_24
    iput-boolean v5, v6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->c:Z

    .line 607
    .line 608
    return-void

    .line 609
    :cond_25
    instance-of v3, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 610
    .line 611
    if-eqz v3, :cond_2d

    .line 612
    .line 613
    check-cast v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 614
    .line 615
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 616
    .line 617
    if-eq v2, v3, :cond_26

    .line 618
    .line 619
    goto/16 :goto_15

    .line 620
    .line 621
    :cond_26
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 622
    .line 623
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    move v3, v5

    .line 628
    :goto_c
    if-ge v3, v2, :cond_28

    .line 629
    .line 630
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v6

    .line 634
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 635
    .line 636
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 637
    .line 638
    .line 639
    move-result v6

    .line 640
    if-eqz v6, :cond_27

    .line 641
    .line 642
    move v3, v5

    .line 643
    goto :goto_d

    .line 644
    :cond_27
    add-int/lit8 v3, v3, 0x1

    .line 645
    .line 646
    goto :goto_c

    .line 647
    :cond_28
    const/4 v3, 0x1

    .line 648
    :goto_d
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 649
    .line 650
    .line 651
    move-result v2

    .line 652
    :goto_e
    if-ge v5, v2, :cond_2c

    .line 653
    .line 654
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v6

    .line 658
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 659
    .line 660
    iget-boolean v6, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 661
    .line 662
    if-eqz v6, :cond_2b

    .line 663
    .line 664
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 665
    .line 666
    .line 667
    move-result v2

    .line 668
    if-eqz v2, :cond_29

    .line 669
    .line 670
    goto :goto_f

    .line 671
    :cond_29
    if-eqz v3, :cond_3b

    .line 672
    .line 673
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 678
    .line 679
    iget-wide v1, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 680
    .line 681
    iget-object v3, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 682
    .line 683
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 684
    .line 685
    .line 686
    iget-wide v5, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 687
    .line 688
    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    .line 689
    .line 690
    .line 691
    move-result-wide v1

    .line 692
    move-wide v2, v1

    .line 693
    iget-object v1, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 694
    .line 695
    if-eqz v1, :cond_2a

    .line 696
    .line 697
    move-wide v5, v2

    .line 698
    iget-wide v2, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->b:J

    .line 699
    .line 700
    move-wide v4, v5

    .line 701
    const/16 v6, 0x8

    .line 702
    .line 703
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/DragGestureNode;->i1(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJI)V

    .line 704
    .line 705
    .line 706
    return-void

    .line 707
    :cond_2a
    const-string v0, "AwaitGesturePickup.initialDown was not initialized."

    .line 708
    .line 709
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    return-void

    .line 713
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    .line 714
    .line 715
    goto :goto_e

    .line 716
    :cond_2c
    :goto_f
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->g1()V

    .line 717
    .line 718
    .line 719
    return-void

    .line 720
    :cond_2d
    instance-of v3, v4, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 721
    .line 722
    if-eqz v3, :cond_39

    .line 723
    .line 724
    check-cast v4, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 725
    .line 726
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 727
    .line 728
    if-eq v2, v3, :cond_2e

    .line 729
    .line 730
    goto/16 :goto_15

    .line 731
    .line 732
    :cond_2e
    iget-wide v2, v4, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->a:J

    .line 733
    .line 734
    iget-object v6, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 735
    .line 736
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 737
    .line 738
    .line 739
    move-result v7

    .line 740
    move v8, v5

    .line 741
    :goto_10
    if-ge v8, v7, :cond_30

    .line 742
    .line 743
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v12

    .line 747
    move-object v13, v12

    .line 748
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 749
    .line 750
    iget-wide v13, v13, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 751
    .line 752
    invoke-static {v13, v14, v2, v3}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 753
    .line 754
    .line 755
    move-result v13

    .line 756
    if-eqz v13, :cond_2f

    .line 757
    .line 758
    goto :goto_11

    .line 759
    :cond_2f
    add-int/lit8 v8, v8, 0x1

    .line 760
    .line 761
    goto :goto_10

    .line 762
    :cond_30
    move-object v12, v11

    .line 763
    :goto_11
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 764
    .line 765
    if-nez v12, :cond_31

    .line 766
    .line 767
    goto/16 :goto_15

    .line 768
    .line 769
    :cond_31
    invoke-static {v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 770
    .line 771
    .line 772
    move-result v2

    .line 773
    sget-object v3, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->a:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 774
    .line 775
    if-eqz v2, :cond_36

    .line 776
    .line 777
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 778
    .line 779
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 780
    .line 781
    .line 782
    move-result v2

    .line 783
    move v6, v5

    .line 784
    :goto_12
    if-ge v6, v2, :cond_33

    .line 785
    .line 786
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v7

    .line 790
    move-object v8, v7

    .line 791
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 792
    .line 793
    iget-boolean v8, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 794
    .line 795
    if-eqz v8, :cond_32

    .line 796
    .line 797
    goto :goto_13

    .line 798
    :cond_32
    add-int/lit8 v6, v6, 0x1

    .line 799
    .line 800
    goto :goto_12

    .line 801
    :cond_33
    move-object v7, v11

    .line 802
    :goto_13
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 803
    .line 804
    if-nez v7, :cond_35

    .line 805
    .line 806
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 807
    .line 808
    .line 809
    move-result v1

    .line 810
    if-nez v1, :cond_34

    .line 811
    .line 812
    invoke-static {v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 813
    .line 814
    .line 815
    move-result v1

    .line 816
    if-eqz v1, :cond_34

    .line 817
    .line 818
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->t:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 819
    .line 820
    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 825
    .line 826
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->e()F

    .line 827
    .line 828
    .line 829
    move-result v1

    .line 830
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->n1()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 831
    .line 832
    .line 833
    move-result-object v2

    .line 834
    invoke-static {v2, v12}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->a(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->n1()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 838
    .line 839
    .line 840
    move-result-object v2

    .line 841
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 842
    .line 843
    .line 844
    move-result-wide v3

    .line 845
    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a(J)J

    .line 846
    .line 847
    .line 848
    move-result-wide v1

    .line 849
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->n1()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 850
    .line 851
    .line 852
    move-result-object v3

    .line 853
    iget-object v3, v3, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;

    .line 854
    .line 855
    iget-object v4, v3, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 856
    .line 857
    iget-object v6, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->d:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 858
    .line 859
    invoke-static {v6, v11}, Lkotlin/collections/ArraysKt;->o([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    .line 860
    .line 861
    .line 862
    iput v5, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->e:I

    .line 863
    .line 864
    iget-object v4, v3, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 865
    .line 866
    iget-object v6, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->d:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 867
    .line 868
    invoke-static {v6, v11}, Lkotlin/collections/ArraysKt;->o([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    .line 869
    .line 870
    .line 871
    iput v5, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->e:I

    .line 872
    .line 873
    iput-wide v9, v3, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->c:J

    .line 874
    .line 875
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->m1()Lkotlinx/coroutines/channels/Channel;

    .line 876
    .line 877
    .line 878
    move-result-object v3

    .line 879
    new-instance v4, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 880
    .line 881
    invoke-static {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt;->b(J)J

    .line 882
    .line 883
    .line 884
    move-result-wide v1

    .line 885
    invoke-direct {v4, v1, v2, v5}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZ)V

    .line 886
    .line 887
    .line 888
    invoke-interface {v3, v4}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    iput-boolean v5, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->G:Z

    .line 892
    .line 893
    goto :goto_14

    .line 894
    :cond_34
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->m1()Lkotlinx/coroutines/channels/Channel;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    invoke-interface {v1, v3}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    :goto_14
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->g1()V

    .line 902
    .line 903
    .line 904
    return-void

    .line 905
    :cond_35
    iget-wide v0, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 906
    .line 907
    iput-wide v0, v4, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->a:J

    .line 908
    .line 909
    return-void

    .line 910
    :cond_36
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 911
    .line 912
    .line 913
    move-result v1

    .line 914
    if-eqz v1, :cond_37

    .line 915
    .line 916
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->m1()Lkotlinx/coroutines/channels/Channel;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    invoke-interface {v0, v3}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    return-void

    .line 924
    :cond_37
    const/4 v15, 0x1

    .line 925
    invoke-static {v12, v15}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 926
    .line 927
    .line 928
    move-result-wide v1

    .line 929
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    .line 930
    .line 931
    .line 932
    move-result v1

    .line 933
    const/4 v2, 0x0

    .line 934
    cmpg-float v1, v1, v2

    .line 935
    .line 936
    if-nez v1, :cond_38

    .line 937
    .line 938
    goto :goto_15

    .line 939
    :cond_38
    invoke-static {v12, v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 940
    .line 941
    .line 942
    move-result-wide v1

    .line 943
    invoke-virtual {v0, v1, v2, v12}, Landroidx/compose/foundation/gestures/DragGestureNode;->o1(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 944
    .line 945
    .line 946
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 947
    .line 948
    .line 949
    return-void

    .line 950
    :cond_39
    invoke-static {}, Lk8;->e()V

    .line 951
    .line 952
    .line 953
    return-void

    .line 954
    :cond_3a
    const-string v0, "currentDragState should not be null"

    .line 955
    .line 956
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    :cond_3b
    :goto_15
    return-void
.end method

.method public final L()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->G:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->g1()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->F:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->m1()Lkotlinx/coroutines/channels/Channel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->a:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->P:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->G:Z

    .line 26
    .line 27
    return-void
.end method

.method public final R0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->F:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->e1()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->K:Landroidx/compose/ui/node/DelegatableNode;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->Z0(Landroidx/compose/ui/node/DelegatableNode;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->J:Landroidx/compose/ui/node/DelegatableNode;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->Z0(Landroidx/compose/ui/node/DelegatableNode;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->K:Landroidx/compose/ui/node/DelegatableNode;

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->J:Landroidx/compose/ui/node/DelegatableNode;

    .line 25
    .line 26
    return-void
.end method

.method public final T()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->O:Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 6
    .line 7
    instance-of v0, p0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 12
    .line 13
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->c:Z

    .line 14
    .line 15
    if-eqz p0, :cond_3

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v0, p0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    instance-of v0, p0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :goto_0
    const-string p0, "waiting"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    instance-of p0, p0, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 31
    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    const-string p0, "recognized"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_3
    const-string p0, "idle"

    .line 38
    .line 39
    return-object p0
.end method

.method public final b0()Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->C:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public abstract f1(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final g1()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:J

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->H:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 11
    .line 12
    sget-object v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->l:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 18
    .line 19
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->b:Z

    .line 20
    .line 21
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->c:Z

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->H:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 24
    .line 25
    :cond_0
    sget-object v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->l:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 26
    .line 27
    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 28
    .line 29
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->b:Z

    .line 30
    .line 31
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->c:Z

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->O:Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 34
    .line 35
    return-void
.end method

.method public final h1(Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->N:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 12
    .line 13
    const-wide v1, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->b:J

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->N:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 21
    .line 22
    :cond_0
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 23
    .line 24
    iput-wide p2, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->b:J

    .line 25
    .line 26
    const-wide/16 p1, 0x0

    .line 27
    .line 28
    iput-wide p1, p4, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->O:Landroidx/compose/foundation/gestures/DragDetectionState;

    .line 31
    .line 32
    return-void
.end method

.method public final j1(Landroidx/compose/foundation/gestures/DragEvent;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->F:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->F:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->r1()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->m1()Lkotlinx/coroutines/channels/Channel;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final k0()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->R:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->j:Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 9
    .line 10
    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->F:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->a:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->j1(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->p:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->s:Landroidx/compose/foundation/gestures/OffsetSmoother;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Landroidx/compose/foundation/gestures/OffsetSmoother;->a:I

    .line 26
    .line 27
    iget-object p0, p0, Landroidx/compose/foundation/gestures/OffsetSmoother;->b:Landroidx/collection/MutableLongList;

    .line 28
    .line 29
    iput v0, p0, Landroidx/collection/LongList;->b:I

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public abstract k1(J)V
.end method

.method public abstract l1(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V
.end method

.method public final m(Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v1, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->b:I

    .line 8
    .line 9
    iget-object v1, v1, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-boolean v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->B:Z

    .line 12
    .line 13
    if-eqz v4, :cond_43

    .line 14
    .line 15
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->R:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    new-instance v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 20
    .line 21
    invoke-direct {v4, v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V

    .line 22
    .line 23
    .line 24
    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->R:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 25
    .line 26
    :cond_0
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->K:Landroidx/compose/ui/node/DelegatableNode;

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->R:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v4}, Landroidx/compose/foundation/GestureNodeKt;->a(Landroidx/compose/foundation/GestureConnection;)Landroidx/compose/ui/node/DelegatableNode;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 40
    .line 41
    .line 42
    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->K:Landroidx/compose/ui/node/DelegatableNode;

    .line 43
    .line 44
    :cond_1
    iget-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->R:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 45
    .line 46
    if-eqz v5, :cond_43

    .line 47
    .line 48
    iget-object v0, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->j:Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 49
    .line 50
    iget-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->o:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 51
    .line 52
    const/4 v11, 0x0

    .line 53
    if-nez v4, :cond_3

    .line 54
    .line 55
    iget-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->k:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 56
    .line 57
    if-nez v4, :cond_2

    .line 58
    .line 59
    new-instance v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 60
    .line 61
    sget-object v6, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->l:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 67
    .line 68
    iput-boolean v11, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->b:Z

    .line 69
    .line 70
    iput-boolean v11, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->c:Z

    .line 71
    .line 72
    iput-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->k:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 73
    .line 74
    :cond_2
    iput-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->o:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 75
    .line 76
    :cond_3
    iget-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->o:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 77
    .line 78
    if-eqz v4, :cond_42

    .line 79
    .line 80
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 81
    .line 82
    const-wide v12, 0x7fffffffffffffffL

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    const-wide/16 v14, 0x0

    .line 88
    .line 89
    const/4 v7, 0x1

    .line 90
    if-eqz v6, :cond_d

    .line 91
    .line 92
    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_4

    .line 99
    .line 100
    goto/16 :goto_18

    .line 101
    .line 102
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    :goto_0
    if-ge v11, v6, :cond_6

    .line 107
    .line 108
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    check-cast v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 113
    .line 114
    invoke-static {v8}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-nez v8, :cond_5

    .line 119
    .line 120
    goto/16 :goto_18

    .line 121
    .line 122
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    move-object v6, v1

    .line 130
    check-cast v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 131
    .line 132
    iget-object v1, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 133
    .line 134
    sget-object v8, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$WhenMappings;->a:[I

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    aget v1, v8, v1

    .line 141
    .line 142
    if-ne v1, v7, :cond_8

    .line 143
    .line 144
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->q1()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_7

    .line 149
    .line 150
    sget-object v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->j:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_7
    sget-object v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->k:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_8
    iget-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 157
    .line 158
    :goto_1
    iput-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 159
    .line 160
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->j:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 161
    .line 162
    if-ne v2, v1, :cond_a

    .line 163
    .line 164
    sget-object v1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->k:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 165
    .line 166
    if-ne v0, v1, :cond_9

    .line 167
    .line 168
    iput-boolean v7, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 169
    .line 170
    iput-boolean v7, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->b:Z

    .line 171
    .line 172
    :cond_9
    iput-boolean v7, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->c:Z

    .line 173
    .line 174
    :cond_a
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 175
    .line 176
    if-ne v2, v1, :cond_43

    .line 177
    .line 178
    sget-object v1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->j:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 179
    .line 180
    if-ne v0, v1, :cond_b

    .line 181
    .line 182
    iget-wide v7, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    .line 183
    .line 184
    const-wide/16 v9, 0x0

    .line 185
    .line 186
    const/16 v11, 0xc

    .line 187
    .line 188
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->c(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJI)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_b
    iget-boolean v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->b:Z

    .line 193
    .line 194
    if-eqz v0, :cond_43

    .line 195
    .line 196
    new-instance v8, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 197
    .line 198
    invoke-direct {v8, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 199
    .line 200
    .line 201
    const-wide/16 v9, 0x0

    .line 202
    .line 203
    move-object v7, v6

    .line 204
    invoke-virtual/range {v5 .. v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->f(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 205
    .line 206
    .line 207
    new-instance v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 208
    .line 209
    invoke-direct {v0, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v6, v0, v14, v15}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->e(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 213
    .line 214
    .line 215
    iget-wide v0, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    .line 216
    .line 217
    iget-object v2, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->l:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 218
    .line 219
    if-nez v2, :cond_c

    .line 220
    .line 221
    new-instance v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 222
    .line 223
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 224
    .line 225
    .line 226
    iput-wide v12, v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->a:J

    .line 227
    .line 228
    iput-object v2, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->l:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 229
    .line 230
    :cond_c
    iput-wide v0, v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->a:J

    .line 231
    .line 232
    iput-object v2, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->o:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 233
    .line 234
    return-void

    .line 235
    :cond_d
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .line 236
    .line 237
    if-eqz v6, :cond_23

    .line 238
    .line 239
    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .line 240
    .line 241
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->j:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 242
    .line 243
    if-ne v2, v6, :cond_e

    .line 244
    .line 245
    goto/16 :goto_18

    .line 246
    .line 247
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    move v9, v11

    .line 252
    :goto_2
    if-ge v9, v6, :cond_10

    .line 253
    .line 254
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    move-object v14, v10

    .line 259
    check-cast v14, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 260
    .line 261
    iget-wide v14, v14, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    .line 262
    .line 263
    move/from16 p1, v9

    .line 264
    .line 265
    iget-wide v8, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->b:J

    .line 266
    .line 267
    invoke-static {v14, v15, v8, v9}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    if-eqz v8, :cond_f

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_f
    add-int/lit8 v9, p1, 0x1

    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_10
    const/4 v10, 0x0

    .line 278
    :goto_3
    check-cast v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 279
    .line 280
    if-nez v10, :cond_14

    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    move v8, v11

    .line 287
    :goto_4
    if-ge v8, v6, :cond_12

    .line 288
    .line 289
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    move-object v10, v9

    .line 294
    check-cast v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 295
    .line 296
    iget-boolean v10, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    .line 297
    .line 298
    if-eqz v10, :cond_11

    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_11
    add-int/lit8 v8, v8, 0x1

    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_12
    const/4 v9, 0x0

    .line 305
    :goto_5
    move-object v10, v9

    .line 306
    check-cast v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 307
    .line 308
    if-nez v10, :cond_13

    .line 309
    .line 310
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a()V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :cond_13
    iget-wide v8, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    .line 315
    .line 316
    iput-wide v8, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->b:J

    .line 317
    .line 318
    :cond_14
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 319
    .line 320
    const-string v14, "AwaitTouchSlop.touchSlopDetector was not initialized"

    .line 321
    .line 322
    const-string v15, "AwaitTouchSlop.initialDown was not initialized"

    .line 323
    .line 324
    if-ne v2, v6, :cond_1f

    .line 325
    .line 326
    iget-boolean v6, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 327
    .line 328
    if-nez v6, :cond_1c

    .line 329
    .line 330
    invoke-static {v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->a(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    if-eqz v6, :cond_18

    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    move v3, v11

    .line 341
    :goto_6
    if-ge v3, v0, :cond_16

    .line 342
    .line 343
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    move-object v7, v6

    .line 348
    check-cast v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 349
    .line 350
    iget-boolean v7, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    .line 351
    .line 352
    if-eqz v7, :cond_15

    .line 353
    .line 354
    move-object v8, v6

    .line 355
    goto :goto_7

    .line 356
    :cond_15
    add-int/lit8 v3, v3, 0x1

    .line 357
    .line 358
    goto :goto_6

    .line 359
    :cond_16
    const/4 v8, 0x0

    .line 360
    :goto_7
    check-cast v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 361
    .line 362
    if-nez v8, :cond_17

    .line 363
    .line 364
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a()V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_8

    .line 368
    .line 369
    :cond_17
    iget-wide v0, v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    .line 370
    .line 371
    iput-wide v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->b:J

    .line 372
    .line 373
    goto/16 :goto_8

    .line 374
    .line 375
    :cond_18
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->t:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 376
    .line 377
    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 382
    .line 383
    sget v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a:F

    .line 384
    .line 385
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->f()F

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    iget-object v6, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->q:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 390
    .line 391
    if-eqz v6, :cond_1b

    .line 392
    .line 393
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 394
    .line 395
    new-instance v8, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 396
    .line 397
    invoke-direct {v8, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 398
    .line 399
    .line 400
    invoke-static {v10, v0, v8, v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->c(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    .line 401
    .line 402
    .line 403
    move-result-wide v8

    .line 404
    invoke-static {v6, v8, v9, v1}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a(Landroidx/compose/foundation/gestures/TouchSlopDetector;JF)J

    .line 405
    .line 406
    .line 407
    move-result-wide v0

    .line 408
    const-wide v8, 0x7fffffff7fffffffL

    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    and-long/2addr v8, v0

    .line 414
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    cmp-long v6, v8, v16

    .line 420
    .line 421
    if-eqz v6, :cond_1a

    .line 422
    .line 423
    iput-boolean v7, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 424
    .line 425
    iget-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 426
    .line 427
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    new-instance v8, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 431
    .line 432
    invoke-direct {v8, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 433
    .line 434
    .line 435
    move-object v7, v10

    .line 436
    move-wide v9, v0

    .line 437
    invoke-virtual/range {v5 .. v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->f(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 438
    .line 439
    .line 440
    move-object v10, v7

    .line 441
    new-instance v6, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 442
    .line 443
    invoke-direct {v6, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v5, v10, v6, v0, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->e(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 447
    .line 448
    .line 449
    iget-wide v0, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    .line 450
    .line 451
    iget-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->l:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 452
    .line 453
    if-nez v3, :cond_19

    .line 454
    .line 455
    new-instance v3, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 456
    .line 457
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 458
    .line 459
    .line 460
    iput-wide v12, v3, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->a:J

    .line 461
    .line 462
    iput-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->l:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 463
    .line 464
    :cond_19
    iput-wide v0, v3, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->a:J

    .line 465
    .line 466
    iput-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->o:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 467
    .line 468
    goto :goto_8

    .line 469
    :cond_1a
    iput-boolean v7, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->c:Z

    .line 470
    .line 471
    goto :goto_8

    .line 472
    :cond_1b
    const-string v0, "Touch slop detector not initialized."

    .line 473
    .line 474
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :cond_1c
    iget-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 479
    .line 480
    if-eqz v0, :cond_1e

    .line 481
    .line 482
    iget-wide v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->b:J

    .line 483
    .line 484
    iget-object v1, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->q:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 485
    .line 486
    if-eqz v1, :cond_1d

    .line 487
    .line 488
    invoke-virtual {v5, v0, v6, v7, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V

    .line 489
    .line 490
    .line 491
    goto :goto_8

    .line 492
    :cond_1d
    invoke-static {v14}, Lu2;->g(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    return-void

    .line 496
    :cond_1e
    invoke-static {v15}, Lu2;->g(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    return-void

    .line 500
    :cond_1f
    :goto_8
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 501
    .line 502
    if-ne v2, v0, :cond_43

    .line 503
    .line 504
    iget-boolean v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->c:Z

    .line 505
    .line 506
    if-eqz v0, :cond_43

    .line 507
    .line 508
    iget-boolean v0, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 509
    .line 510
    if-eqz v0, :cond_22

    .line 511
    .line 512
    iget-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 513
    .line 514
    if-eqz v0, :cond_21

    .line 515
    .line 516
    iget-wide v1, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->b:J

    .line 517
    .line 518
    iget-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->q:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 519
    .line 520
    if-eqz v3, :cond_20

    .line 521
    .line 522
    invoke-virtual {v5, v0, v1, v2, v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V

    .line 523
    .line 524
    .line 525
    return-void

    .line 526
    :cond_20
    invoke-static {v14}, Lu2;->g(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    return-void

    .line 530
    :cond_21
    invoke-static {v15}, Lu2;->g(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    return-void

    .line 534
    :cond_22
    iput-boolean v11, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->c:Z

    .line 535
    .line 536
    return-void

    .line 537
    :cond_23
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .line 538
    .line 539
    if-eqz v6, :cond_2b

    .line 540
    .line 541
    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .line 542
    .line 543
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 544
    .line 545
    if-eq v2, v6, :cond_24

    .line 546
    .line 547
    goto/16 :goto_18

    .line 548
    .line 549
    :cond_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    move v6, v11

    .line 554
    :goto_9
    if-ge v6, v2, :cond_26

    .line 555
    .line 556
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v8

    .line 560
    check-cast v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 561
    .line 562
    iget-boolean v8, v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 563
    .line 564
    if-eqz v8, :cond_25

    .line 565
    .line 566
    move v7, v11

    .line 567
    goto :goto_a

    .line 568
    :cond_25
    add-int/lit8 v6, v6, 0x1

    .line 569
    .line 570
    goto :goto_9

    .line 571
    :cond_26
    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    :goto_b
    if-ge v11, v2, :cond_2a

    .line 576
    .line 577
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v6

    .line 581
    check-cast v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 582
    .line 583
    iget-boolean v6, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    .line 584
    .line 585
    if-eqz v6, :cond_29

    .line 586
    .line 587
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    if-eqz v2, :cond_27

    .line 592
    .line 593
    goto :goto_c

    .line 594
    :cond_27
    if-eqz v7, :cond_43

    .line 595
    .line 596
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    check-cast v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 601
    .line 602
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 603
    .line 604
    new-instance v6, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 605
    .line 606
    invoke-direct {v6, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 607
    .line 608
    .line 609
    invoke-static {v1, v2, v6}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->d(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    .line 610
    .line 611
    .line 612
    move-result-wide v1

    .line 613
    iget-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->a:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 614
    .line 615
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 616
    .line 617
    .line 618
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 619
    .line 620
    new-instance v7, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 621
    .line 622
    invoke-direct {v7, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 623
    .line 624
    .line 625
    invoke-static {v6, v0, v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->d(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    .line 626
    .line 627
    .line 628
    move-result-wide v6

    .line 629
    invoke-static {v1, v2, v6, v7}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    .line 630
    .line 631
    .line 632
    move-result-wide v9

    .line 633
    iget-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->a:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 634
    .line 635
    if-eqz v6, :cond_28

    .line 636
    .line 637
    iget-wide v7, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->b:J

    .line 638
    .line 639
    const/16 v11, 0x8

    .line 640
    .line 641
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->c(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJI)V

    .line 642
    .line 643
    .line 644
    return-void

    .line 645
    :cond_28
    const-string v0, "AwaitGesturePickup.initialDown was not initialized."

    .line 646
    .line 647
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    return-void

    .line 651
    :cond_29
    add-int/lit8 v11, v11, 0x1

    .line 652
    .line 653
    goto :goto_b

    .line 654
    :cond_2a
    :goto_c
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a()V

    .line 655
    .line 656
    .line 657
    return-void

    .line 658
    :cond_2b
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 659
    .line 660
    if-eqz v6, :cond_41

    .line 661
    .line 662
    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 663
    .line 664
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 665
    .line 666
    if-eq v2, v6, :cond_2c

    .line 667
    .line 668
    goto/16 :goto_18

    .line 669
    .line 670
    :cond_2c
    iget-wide v8, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->a:J

    .line 671
    .line 672
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 673
    .line 674
    .line 675
    move-result v2

    .line 676
    move v6, v11

    .line 677
    :goto_d
    if-ge v6, v2, :cond_2e

    .line 678
    .line 679
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v10

    .line 683
    move-object v12, v10

    .line 684
    check-cast v12, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 685
    .line 686
    iget-wide v12, v12, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    .line 687
    .line 688
    invoke-static {v12, v13, v8, v9}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 689
    .line 690
    .line 691
    move-result v12

    .line 692
    if-eqz v12, :cond_2d

    .line 693
    .line 694
    goto :goto_e

    .line 695
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    .line 696
    .line 697
    goto :goto_d

    .line 698
    :cond_2e
    const/4 v10, 0x0

    .line 699
    :goto_e
    check-cast v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 700
    .line 701
    if-nez v10, :cond_2f

    .line 702
    .line 703
    goto/16 :goto_18

    .line 704
    .line 705
    :cond_2f
    iget-wide v8, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 706
    .line 707
    invoke-static {v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->a(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 708
    .line 709
    .line 710
    move-result v2

    .line 711
    sget-object v6, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->a:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 712
    .line 713
    if-eqz v2, :cond_3e

    .line 714
    .line 715
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 716
    .line 717
    .line 718
    move-result v2

    .line 719
    move v13, v11

    .line 720
    :goto_f
    if-ge v13, v2, :cond_31

    .line 721
    .line 722
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v16

    .line 726
    const/16 p1, 0x0

    .line 727
    .line 728
    move-object/from16 v12, v16

    .line 729
    .line 730
    check-cast v12, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 731
    .line 732
    iget-boolean v12, v12, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    .line 733
    .line 734
    if-eqz v12, :cond_30

    .line 735
    .line 736
    goto :goto_10

    .line 737
    :cond_30
    add-int/lit8 v13, v13, 0x1

    .line 738
    .line 739
    goto :goto_f

    .line 740
    :cond_31
    const/16 p1, 0x0

    .line 741
    .line 742
    const/16 v16, 0x0

    .line 743
    .line 744
    :goto_10
    move-object/from16 v1, v16

    .line 745
    .line 746
    check-cast v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 747
    .line 748
    if-nez v1, :cond_3d

    .line 749
    .line 750
    iget-boolean v1, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 751
    .line 752
    if-nez v1, :cond_3c

    .line 753
    .line 754
    invoke-static {v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->a(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    if-eqz v1, :cond_3c

    .line 759
    .line 760
    new-instance v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 761
    .line 762
    invoke-direct {v1, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->d()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    iget-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 770
    .line 771
    iget-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->r:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;

    .line 772
    .line 773
    iget-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->b:Landroidx/collection/MutableObjectList;

    .line 774
    .line 775
    const/16 p2, 0x20

    .line 776
    .line 777
    shr-long v12, v8, p2

    .line 778
    .line 779
    long-to-int v12, v12

    .line 780
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 781
    .line 782
    .line 783
    move-result v12

    .line 784
    const-wide v16, 0xffffffffL

    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    and-long v8, v8, v16

    .line 790
    .line 791
    long-to-int v8, v8

    .line 792
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 793
    .line 794
    .line 795
    move-result v8

    .line 796
    invoke-static {v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 797
    .line 798
    .line 799
    move-result v9

    .line 800
    if-eqz v9, :cond_32

    .line 801
    .line 802
    iput v11, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 803
    .line 804
    invoke-virtual {v6}, Landroidx/collection/MutableObjectList;->k()V

    .line 805
    .line 806
    .line 807
    :cond_32
    invoke-static {v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->a(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 808
    .line 809
    .line 810
    move-result v9

    .line 811
    if-nez v9, :cond_37

    .line 812
    .line 813
    invoke-static {v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 814
    .line 815
    .line 816
    move-result v9

    .line 817
    if-nez v9, :cond_37

    .line 818
    .line 819
    iget v8, v6, Landroidx/collection/ObjectList;->b:I

    .line 820
    .line 821
    const/4 v9, 0x3

    .line 822
    if-ne v8, v9, :cond_33

    .line 823
    .line 824
    iget v8, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 825
    .line 826
    add-int/lit8 v12, v8, 0x1

    .line 827
    .line 828
    iput v12, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 829
    .line 830
    invoke-virtual {v6, v8, v10}, Landroidx/collection/MutableObjectList;->p(ILjava/lang/Object;)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    goto :goto_11

    .line 834
    :cond_33
    invoke-virtual {v6, v10}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 835
    .line 836
    .line 837
    :goto_11
    iget v8, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 838
    .line 839
    if-ne v8, v9, :cond_34

    .line 840
    .line 841
    iput v11, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 842
    .line 843
    :cond_34
    iget-object v4, v6, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 844
    .line 845
    iget v8, v6, Landroidx/collection/ObjectList;->b:I

    .line 846
    .line 847
    move/from16 v12, p1

    .line 848
    .line 849
    move v9, v11

    .line 850
    :goto_12
    if-ge v9, v8, :cond_35

    .line 851
    .line 852
    aget-object v13, v4, v9

    .line 853
    .line 854
    check-cast v13, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 855
    .line 856
    iget-wide v14, v13, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 857
    .line 858
    shr-long v13, v14, p2

    .line 859
    .line 860
    long-to-int v13, v13

    .line 861
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 862
    .line 863
    .line 864
    move-result v13

    .line 865
    add-float/2addr v12, v13

    .line 866
    add-int/lit8 v9, v9, 0x1

    .line 867
    .line 868
    const-wide/16 v14, 0x0

    .line 869
    .line 870
    goto :goto_12

    .line 871
    :cond_35
    iget v4, v6, Landroidx/collection/ObjectList;->b:I

    .line 872
    .line 873
    int-to-float v8, v4

    .line 874
    div-float/2addr v12, v8

    .line 875
    iget-object v8, v6, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 876
    .line 877
    move/from16 v13, p1

    .line 878
    .line 879
    move v9, v11

    .line 880
    :goto_13
    if-ge v9, v4, :cond_36

    .line 881
    .line 882
    aget-object v14, v8, v9

    .line 883
    .line 884
    check-cast v14, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 885
    .line 886
    iget-wide v14, v14, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 887
    .line 888
    and-long v14, v14, v16

    .line 889
    .line 890
    long-to-int v14, v14

    .line 891
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 892
    .line 893
    .line 894
    move-result v14

    .line 895
    add-float/2addr v13, v14

    .line 896
    add-int/lit8 v9, v9, 0x1

    .line 897
    .line 898
    goto :goto_13

    .line 899
    :cond_36
    iget v4, v6, Landroidx/collection/ObjectList;->b:I

    .line 900
    .line 901
    int-to-float v4, v4

    .line 902
    div-float v8, v13, v4

    .line 903
    .line 904
    :cond_37
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 905
    .line 906
    .line 907
    move-result v4

    .line 908
    int-to-long v12, v4

    .line 909
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 910
    .line 911
    .line 912
    move-result v4

    .line 913
    int-to-long v8, v4

    .line 914
    shl-long v12, v12, p2

    .line 915
    .line 916
    and-long v8, v8, v16

    .line 917
    .line 918
    or-long/2addr v8, v12

    .line 919
    if-nez v3, :cond_38

    .line 920
    .line 921
    goto :goto_16

    .line 922
    :cond_38
    iget v1, v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->a:I

    .line 923
    .line 924
    if-ne v1, v7, :cond_39

    .line 925
    .line 926
    shr-long v8, v8, p2

    .line 927
    .line 928
    long-to-int v1, v8

    .line 929
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 930
    .line 931
    .line 932
    move-result v1

    .line 933
    goto :goto_14

    .line 934
    :cond_39
    const/4 v4, 0x2

    .line 935
    if-ne v1, v4, :cond_3b

    .line 936
    .line 937
    and-long v8, v8, v16

    .line 938
    .line 939
    long-to-int v1, v8

    .line 940
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 941
    .line 942
    .line 943
    move-result v1

    .line 944
    :goto_14
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 945
    .line 946
    if-ne v3, v4, :cond_3a

    .line 947
    .line 948
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 949
    .line 950
    .line 951
    move-result v1

    .line 952
    int-to-long v3, v1

    .line 953
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 954
    .line 955
    .line 956
    move-result v1

    .line 957
    :goto_15
    int-to-long v8, v1

    .line 958
    shl-long v3, v3, p2

    .line 959
    .line 960
    and-long v8, v8, v16

    .line 961
    .line 962
    or-long/2addr v8, v3

    .line 963
    goto :goto_16

    .line 964
    :cond_3a
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 965
    .line 966
    .line 967
    move-result v3

    .line 968
    int-to-long v3, v3

    .line 969
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 970
    .line 971
    .line 972
    move-result v1

    .line 973
    goto :goto_15

    .line 974
    :cond_3b
    :goto_16
    iget-wide v3, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->b:J

    .line 975
    .line 976
    iget-object v1, v2, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;

    .line 977
    .line 978
    invoke-virtual {v1, v3, v4, v8, v9}, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->a(JJ)V

    .line 979
    .line 980
    .line 981
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->t:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 982
    .line 983
    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object v1

    .line 987
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 988
    .line 989
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->e()F

    .line 990
    .line 991
    .line 992
    move-result v1

    .line 993
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->d()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 994
    .line 995
    .line 996
    move-result-object v2

    .line 997
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 998
    .line 999
    .line 1000
    move-result-wide v3

    .line 1001
    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a(J)J

    .line 1002
    .line 1003
    .line 1004
    move-result-wide v1

    .line 1005
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->d()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v3

    .line 1009
    iget-object v3, v3, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;

    .line 1010
    .line 1011
    iget-object v4, v3, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 1012
    .line 1013
    iget-object v6, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->d:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 1014
    .line 1015
    const/4 v8, 0x0

    .line 1016
    invoke-static {v6, v8}, Lkotlin/collections/ArraysKt;->o([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    .line 1017
    .line 1018
    .line 1019
    iput v11, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->e:I

    .line 1020
    .line 1021
    iget-object v4, v3, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 1022
    .line 1023
    iget-object v6, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->d:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 1024
    .line 1025
    invoke-static {v6, v8}, Lkotlin/collections/ArraysKt;->o([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    .line 1026
    .line 1027
    .line 1028
    iput v11, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->e:I

    .line 1029
    .line 1030
    const-wide/16 v8, 0x0

    .line 1031
    .line 1032
    iput-wide v8, v3, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->c:J

    .line 1033
    .line 1034
    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 1035
    .line 1036
    invoke-static {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt;->b(J)J

    .line 1037
    .line 1038
    .line 1039
    move-result-wide v1

    .line 1040
    invoke-direct {v3, v1, v2, v7}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZ)V

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/gestures/DragGestureNode;->j1(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 1044
    .line 1045
    .line 1046
    goto :goto_17

    .line 1047
    :cond_3c
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/gestures/DragGestureNode;->j1(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 1048
    .line 1049
    .line 1050
    :goto_17
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a()V

    .line 1051
    .line 1052
    .line 1053
    return-void

    .line 1054
    :cond_3d
    iget-wide v0, v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    .line 1055
    .line 1056
    iput-wide v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->a:J

    .line 1057
    .line 1058
    return-void

    .line 1059
    :cond_3e
    const/16 p1, 0x0

    .line 1060
    .line 1061
    iget-boolean v1, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 1062
    .line 1063
    if-eqz v1, :cond_3f

    .line 1064
    .line 1065
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/gestures/DragGestureNode;->j1(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 1066
    .line 1067
    .line 1068
    return-void

    .line 1069
    :cond_3f
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 1070
    .line 1071
    new-instance v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 1072
    .line 1073
    invoke-direct {v2, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 1074
    .line 1075
    .line 1076
    invoke-static {v10, v1, v2, v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->c(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    .line 1077
    .line 1078
    .line 1079
    move-result-wide v1

    .line 1080
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    .line 1081
    .line 1082
    .line 1083
    move-result v1

    .line 1084
    cmpg-float v1, v1, p1

    .line 1085
    .line 1086
    if-nez v1, :cond_40

    .line 1087
    .line 1088
    goto :goto_18

    .line 1089
    :cond_40
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 1090
    .line 1091
    new-instance v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 1092
    .line 1093
    invoke-direct {v1, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 1094
    .line 1095
    .line 1096
    invoke-static {v10, v0, v1, v11}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->c(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    .line 1097
    .line 1098
    .line 1099
    move-result-wide v0

    .line 1100
    new-instance v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 1101
    .line 1102
    invoke-direct {v2, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v5, v10, v2, v0, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->e(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 1106
    .line 1107
    .line 1108
    iput-boolean v7, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 1109
    .line 1110
    return-void

    .line 1111
    :cond_41
    invoke-static {}, Lk8;->e()V

    .line 1112
    .line 1113
    .line 1114
    return-void

    .line 1115
    :cond_42
    const-string v0, "currentDragState should not be null"

    .line 1116
    .line 1117
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    :cond_43
    :goto_18
    return-void
.end method

.method public final m1()Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->D:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Events channel not initialized."

    .line 7
    .line 8
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final n1()Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->P:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Velocity Tracker not initialized."

    .line 7
    .line 8
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final o1(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:J

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->n1()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p3}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->a(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->m1()Lkotlinx/coroutines/channels/Channel;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance p3, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-direct {p3, p1, p2, v0}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(JZ)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, p3}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final p1(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->P:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->P:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->n1()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->a(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, p2, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 20
    .line 21
    invoke-static {v0, v1, p3, p4}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide p2

    .line 25
    iget-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->A:Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    iget p1, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    .line 28
    .line 29
    new-instance v0, Landroidx/compose/ui/input/pointer/PointerType;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Landroidx/compose/ui/input/pointer/PointerType;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->F:Z

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->D:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    const p1, 0x7fffffff

    .line 55
    .line 56
    .line 57
    const/4 p4, 0x6

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-static {p1, p4, v0}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->D:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->r1()V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->m1()Lkotlinx/coroutines/channels/Channel;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    new-instance p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 73
    .line 74
    invoke-direct {p1, p2, p3}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;-><init>(J)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method public abstract q1()Z
.end method

.method public final r1()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->F:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->D:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const v0, 0x7fffffff

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->D:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;

    .line 24
    .line 25
    invoke-direct {v2, p0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x3

    .line 29
    invoke-static {v0, v1, v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final s1(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;Z)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->A:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->B:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p1, p2, :cond_3

    .line 8
    .line 9
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->B:Z

    .line 10
    .line 11
    if-nez p2, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->K:Landroidx/compose/ui/node/DelegatableNode;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->Z0(Landroidx/compose/ui/node/DelegatableNode;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->J:Landroidx/compose/ui/node/DelegatableNode;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->Z0(Landroidx/compose/ui/node/DelegatableNode;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->K:Landroidx/compose/ui/node/DelegatableNode;

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->J:Landroidx/compose/ui/node/DelegatableNode;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->e1()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->R:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 35
    .line 36
    :cond_2
    move p5, v1

    .line 37
    :cond_3
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->C:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 38
    .line 39
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->e1()V

    .line 46
    .line 47
    .line 48
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->C:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 49
    .line 50
    :cond_4
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 51
    .line 52
    if-eq p1, p4, :cond_5

    .line 53
    .line 54
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    move v1, p5

    .line 58
    :goto_0
    if-eqz v1, :cond_9

    .line 59
    .line 60
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->G:Z

    .line 61
    .line 62
    sget-object p2, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->a:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 63
    .line 64
    if-eqz p1, :cond_7

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->g1()V

    .line 67
    .line 68
    .line 69
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->F:Z

    .line 70
    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->m1()Lkotlinx/coroutines/channels/Channel;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_6
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->P:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 81
    .line 82
    :cond_7
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->R:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 83
    .line 84
    if-eqz p0, :cond_9

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a()V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->j:Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 90
    .line 91
    iget-boolean p3, p1, Landroidx/compose/foundation/gestures/DragGestureNode;->F:Z

    .line 92
    .line 93
    if-eqz p3, :cond_8

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->j1(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 96
    .line 97
    .line 98
    :cond_8
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->p:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 99
    .line 100
    iget-object p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->s:Landroidx/compose/foundation/gestures/OffsetSmoother;

    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    iput p1, p0, Landroidx/compose/foundation/gestures/OffsetSmoother;->a:I

    .line 104
    .line 105
    iget-object p0, p0, Landroidx/compose/foundation/gestures/OffsetSmoother;->b:Landroidx/collection/MutableLongList;

    .line 106
    .line 107
    iput p1, p0, Landroidx/collection/LongList;->b:I

    .line 108
    .line 109
    :cond_9
    return-void
.end method
