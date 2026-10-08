.class public abstract Lkotlin/DeepRecursiveKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lkotlin/coroutines/intrinsics/CoroutineSingletons;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    sput-object v0, Lkotlin/DeepRecursiveKt;->a:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    return-void
.end method

.method public static final a(Lkotlin/DeepRecursiveFunction;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Lkotlin/DeepRecursiveScopeImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->a:Lkotlin/jvm/functions/Function3;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p0, v0, Lkotlin/DeepRecursiveScopeImpl;->j:Lkotlin/jvm/functions/Function3;

    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    iput-object p0, v0, Lkotlin/DeepRecursiveScopeImpl;->k:Lkotlin/Unit;

    .line 13
    .line 14
    iput-object v0, v0, Lkotlin/DeepRecursiveScopeImpl;->l:Lkotlin/coroutines/Continuation;

    .line 15
    .line 16
    sget-object p0, Lkotlin/DeepRecursiveKt;->a:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    iput-object p0, v0, Lkotlin/DeepRecursiveScopeImpl;->m:Ljava/lang/Object;

    .line 19
    .line 20
    :cond_0
    :goto_0
    iget-object v1, v0, Lkotlin/DeepRecursiveScopeImpl;->m:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v2, v0, Lkotlin/DeepRecursiveScopeImpl;->l:Lkotlin/coroutines/Continuation;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_4

    .line 35
    .line 36
    :try_start_0
    iget-object v1, v0, Lkotlin/DeepRecursiveScopeImpl;->j:Lkotlin/jvm/functions/Function3;

    .line 37
    .line 38
    iget-object v3, v0, Lkotlin/DeepRecursiveScopeImpl;->k:Lkotlin/Unit;

    .line 39
    .line 40
    const/4 v4, 0x3

    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->o()Lkotlin/coroutines/CoroutineContext;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 51
    .line 52
    if-ne v5, v6, :cond_2

    .line 53
    .line 54
    new-instance v5, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1;

    .line 55
    .line 56
    invoke-direct {v5, v2}, Lkotlin/coroutines/jvm/internal/RestrictedContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    new-instance v6, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2;

    .line 61
    .line 62
    invoke-direct {v6, v2, v5}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V

    .line 63
    .line 64
    .line 65
    move-object v5, v6

    .line 66
    :goto_1
    invoke-static {v4, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->c(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v1, v0, v3, v5}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    invoke-static {v4, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->c(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v0, v3, v2}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_2
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 82
    .line 83
    if-eq v1, v3, :cond_0

    .line 84
    .line 85
    invoke-interface {v2, v1}, Lkotlin/coroutines/Continuation;->g(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v1

    .line 90
    new-instance v3, Lkotlin/Result$Failure;

    .line 91
    .line 92
    invoke-direct {v3, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->g(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    iput-object p0, v0, Lkotlin/DeepRecursiveScopeImpl;->m:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-interface {v2, v1}, Lkotlin/coroutines/Continuation;->g(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0
.end method
