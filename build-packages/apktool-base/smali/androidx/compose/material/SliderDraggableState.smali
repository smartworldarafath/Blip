.class final Landroidx/compose/material/SliderDraggableState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/gestures/DraggableState;


# instance fields
.field public final a:Lrf;

.field public final b:Landroidx/compose/runtime/MutableState;

.field public final c:Landroidx/compose/material/SliderDraggableState$dragScope$1;

.field public final d:Landroidx/compose/foundation/MutatorMutex;


# direct methods
.method public constructor <init>(Lrf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/SliderDraggableState;->a:Lrf;

    .line 5
    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/compose/material/SliderDraggableState;->b:Landroidx/compose/runtime/MutableState;

    .line 13
    .line 14
    new-instance p1, Landroidx/compose/material/SliderDraggableState$dragScope$1;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Landroidx/compose/material/SliderDraggableState$dragScope$1;-><init>(Landroidx/compose/material/SliderDraggableState;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/material/SliderDraggableState;->c:Landroidx/compose/material/SliderDraggableState$dragScope$1;

    .line 20
    .line 21
    new-instance p1, Landroidx/compose/foundation/MutatorMutex;

    .line 22
    .line 23
    invoke-direct {p1}, Landroidx/compose/foundation/MutatorMutex;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroidx/compose/material/SliderDraggableState;->d:Landroidx/compose/foundation/MutatorMutex;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/material/SliderDraggableState$drag$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/material/SliderDraggableState$drag$2;-><init>(Landroidx/compose/material/SliderDraggableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method
