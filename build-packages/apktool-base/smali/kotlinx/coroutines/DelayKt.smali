.class public abstract Lkotlinx/coroutines/DelayKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 4

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/DelayKt$awaitCancellation$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lkotlinx/coroutines/DelayKt$awaitCancellation$1;

    .line 7
    .line 8
    iget v1, v0, Lkotlinx/coroutines/DelayKt$awaitCancellation$1;->n:I

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
    iput v1, v0, Lkotlinx/coroutines/DelayKt$awaitCancellation$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/DelayKt$awaitCancellation$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/DelayKt$awaitCancellation$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lkotlinx/coroutines/DelayKt$awaitCancellation$1;->n:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput v3, v0, Lkotlinx/coroutines/DelayKt$awaitCancellation$1;->n:I

    .line 50
    .line 51
    new-instance p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p0, v3, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->v()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-ne p0, v1, :cond_3

    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    :goto_1
    invoke-static {}, Lf7;->h()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static final b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 9
    .line 10
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->v()V

    .line 19
    .line 20
    .line 21
    const-wide v1, 0x7fffffffffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmp-long p2, p0, v1

    .line 27
    .line 28
    if-gez p2, :cond_1

    .line 29
    .line 30
    iget-object p2, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->n:Lkotlin/coroutines/CoroutineContext;

    .line 31
    .line 32
    invoke-static {p2}, Lkotlinx/coroutines/DelayKt;->c(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p2, p0, p1, v0}, Lkotlinx/coroutines/Delay;->S(JLkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 44
    .line 45
    if-ne p0, p1, :cond_2

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static final c(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor$Key;->j:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of v0, p0, Lkotlinx/coroutines/Delay;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Lkotlinx/coroutines/Delay;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    if-nez p0, :cond_1

    .line 16
    .line 17
    sget-object p0, Lkotlinx/coroutines/DefaultExecutorKt;->a:Lkotlinx/coroutines/Delay;

    .line 18
    .line 19
    :cond_1
    return-object p0
.end method

.method public static final d(J)J
    .locals 4

    .line 1
    sget-object v0, Lkotlin/time/Duration;->k:Lkotlin/time/Duration$Companion;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v2, p0, v0

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-lez v2, :cond_0

    .line 9
    .line 10
    move v2, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ne v2, v3, :cond_1

    .line 14
    .line 15
    const-wide/32 v0, 0xf423f

    .line 16
    .line 17
    .line 18
    sget-object v2, Lkotlin/time/DurationUnit;->k:Lkotlin/time/DurationUnit;

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->e(JLkotlin/time/DurationUnit;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-static {p0, p1, v0, v1}, Lkotlin/time/Duration;->g(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    invoke-static {p0, p1}, Lkotlin/time/Duration;->d(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    return-wide p0

    .line 33
    :cond_1
    if-nez v2, :cond_2

    .line 34
    .line 35
    return-wide v0

    .line 36
    :cond_2
    invoke-static {}, Lk8;->e()V

    .line 37
    .line 38
    .line 39
    return-wide v0
.end method
