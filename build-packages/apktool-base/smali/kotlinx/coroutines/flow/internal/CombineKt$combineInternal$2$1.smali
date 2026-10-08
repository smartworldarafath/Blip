.class final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;
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
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1"
    f = "Combine.kt"
    l = {
        0x1c
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:[Lkotlinx/coroutines/flow/Flow;

.field public final synthetic p:I

.field public final synthetic q:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic r:Lkotlinx/coroutines/channels/BufferedChannel;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;ILjava/util/concurrent/atomic/AtomicInteger;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->o:[Lkotlinx/coroutines/flow/Flow;

    .line 2
    .line 3
    iput p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->p:I

    .line 4
    .line 5
    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->r:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
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
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;

    .line 2
    .line 3
    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->r:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 6
    .line 7
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->o:[Lkotlinx/coroutines/flow/Flow;

    .line 8
    .line 9
    iget v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->p:I

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;-><init>([Lkotlinx/coroutines/flow/Flow;ILjava/util/concurrent/atomic/AtomicInteger;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->r:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    if-ne v1, v5, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :try_start_1
    iget-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->o:[Lkotlinx/coroutines/flow/Flow;

    .line 31
    .line 32
    iget v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->p:I

    .line 33
    .line 34
    aget-object p1, p1, v1

    .line 35
    .line 36
    new-instance v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1;

    .line 37
    .line 38
    invoke-direct {v6, v4, v1}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$1;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;I)V

    .line 39
    .line 40
    .line 41
    iput v5, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;->n:I

    .line 42
    .line 43
    invoke-interface {p1, v6, p0}, Lkotlinx/coroutines/flow/Flow;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    if-ne p0, v0, :cond_2

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v4, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->m(Ljava/lang/Throwable;)Z

    .line 57
    .line 58
    .line 59
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p0

    .line 62
    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v4, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->m(Ljava/lang/Throwable;)Z

    .line 69
    .line 70
    .line 71
    :cond_4
    throw p0
.end method
