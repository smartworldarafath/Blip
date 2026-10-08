.class final Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;
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
    c = "androidx.navigation.compose.NavHostKt$NavHost$21$1$1$1"
    f = "NavHost.kt"
    l = {
        0x3bc,
        0x3c0
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:F

.field public final synthetic p:Landroidx/compose/animation/core/SeekableTransitionState;

.field public final synthetic q:Landroidx/navigation/NavBackStackEntry;


# direct methods
.method public constructor <init>(FLandroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;->o:F

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;->p:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;->q:Landroidx/navigation/NavBackStackEntry;

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
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;->p:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;->q:Landroidx/navigation/NavBackStackEntry;

    .line 6
    .line 7
    iget p0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;->o:F

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;-><init>(FLandroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;->n:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;->p:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget v4, p0, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;->o:F

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    if-eq v1, v6, :cond_1

    .line 15
    .line 16
    if-ne v1, v5, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    cmpl-float p1, v4, v3

    .line 37
    .line 38
    if-lez p1, :cond_3

    .line 39
    .line 40
    iput v6, p0, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;->n:I

    .line 41
    .line 42
    iget-object p1, v2, Landroidx/compose/animation/core/SeekableTransitionState;->b:Landroidx/compose/runtime/MutableState;

    .line 43
    .line 44
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2, v4, p1, p0}, Landroidx/compose/animation/core/SeekableTransitionState;->o(FLjava/lang/Object;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v0, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    :goto_0
    cmpg-float p1, v4, v3

    .line 58
    .line 59
    if-nez p1, :cond_4

    .line 60
    .line 61
    iput v5, p0, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;->n:I

    .line 62
    .line 63
    iget-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;->q:Landroidx/navigation/NavBackStackEntry;

    .line 64
    .line 65
    invoke-virtual {v2, p1, p0}, Landroidx/compose/animation/core/SeekableTransitionState;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-ne p0, v0, :cond_4

    .line 70
    .line 71
    :goto_1
    return-object v0

    .line 72
    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p0
.end method
