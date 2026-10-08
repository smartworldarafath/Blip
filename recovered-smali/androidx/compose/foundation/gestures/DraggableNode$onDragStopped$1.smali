.class final Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.DraggableNode$onDragStopped$1"
    f = "Draggable.kt"
    l = {
        0x159
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/compose/foundation/gestures/DraggableNode;

.field public final synthetic q:Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

.field public final synthetic r:Landroidx/compose/foundation/gestures/Orientation;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/DraggableNode;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->p:Landroidx/compose/foundation/gestures/DraggableNode;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->q:Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->r:Landroidx/compose/foundation/gestures/Orientation;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->q:Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->r:Landroidx/compose/foundation/gestures/Orientation;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->p:Landroidx/compose/foundation/gestures/DraggableNode;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->o:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->o:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->p:Landroidx/compose/foundation/gestures/DraggableNode;

    .line 29
    .line 30
    iget-object v3, v1, Landroidx/compose/foundation/gestures/DraggableNode;->V:Lkotlin/jvm/functions/Function3;

    .line 31
    .line 32
    iget-object v4, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->q:Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 33
    .line 34
    iget-wide v4, v4, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;->a:J

    .line 35
    .line 36
    iget-boolean v1, v1, Landroidx/compose/foundation/gestures/DraggableNode;->W:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const/high16 v1, -0x40800000    # -1.0f

    .line 41
    .line 42
    :goto_0
    invoke-static {v4, v5, v1}, Landroidx/compose/ui/unit/Velocity;->f(JF)J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :goto_1
    sget-object v1, Landroidx/compose/foundation/gestures/DraggableKt;->a:Lkotlin/jvm/functions/Function3;

    .line 51
    .line 52
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 53
    .line 54
    iget-object v6, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->r:Landroidx/compose/foundation/gestures/Orientation;

    .line 55
    .line 56
    if-ne v6, v1, :cond_3

    .line 57
    .line 58
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Velocity;->c(J)F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Velocity;->b(J)F

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    :goto_2
    new-instance v4, Ljava/lang/Float;

    .line 68
    .line 69
    invoke-direct {v4, v1}, Ljava/lang/Float;-><init>(F)V

    .line 70
    .line 71
    .line 72
    iput v2, p0, Landroidx/compose/foundation/gestures/DraggableNode$onDragStopped$1;->n:I

    .line 73
    .line 74
    invoke-interface {v3, p1, v4, p0}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    if-ne p0, v0, :cond_4

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_4
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0
.end method
