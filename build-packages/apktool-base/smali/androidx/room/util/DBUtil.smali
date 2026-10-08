.class public abstract Landroidx/room/util/DBUtil;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/room/RoomDatabase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/CoroutineContext;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "coroutineScope"

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->o()Lkotlin/coroutines/CoroutineContext;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Landroidx/room/TransactionElement;->j:Landroidx/room/TransactionElement$Key;

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/room/RoomDatabase;->a:Lkotlinx/coroutines/internal/ContextScope;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Lkotlinx/coroutines/internal/ContextScope;->j:Lkotlin/coroutines/CoroutineContext;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v1

    .line 33
    :cond_1
    invoke-static {}, Lio/sentry/d;->i()V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_2
    iget-object p0, p0, Landroidx/room/RoomDatabase;->a:Lkotlinx/coroutines/internal/ContextScope;

    .line 38
    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    iget-object p0, p0, Lkotlinx/coroutines/internal/ContextScope;->j:Lkotlin/coroutines/CoroutineContext;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v1
.end method

.method public static final b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->a()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->j()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->k()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/room/RoomDatabase;->h:Ljava/lang/ThreadLocal;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    .line 29
    .line 30
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_1
    :goto_0
    new-instance v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    move-object v1, p0

    .line 39
    move v4, p1

    .line 40
    move v5, p2

    .line 41
    move-object v3, p3

    .line 42
    invoke-direct/range {v0 .. v5}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1;-><init>(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;ZZ)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt;->a(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final c(Landroidx/room/RoomDatabase;ZLii;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->q:I

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
    iput v1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->q:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->p:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->q:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x3

    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x1

    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    if-eq v2, v6, :cond_3

    .line 38
    .line 39
    if-eq v2, v5, :cond_2

    .line 40
    .line 41
    if-ne v2, v4, :cond_1

    .line 42
    .line 43
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object p3

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_2
    iget-boolean p1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->o:Z

    .line 54
    .line 55
    iget-object p2, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->n:Lii;

    .line 56
    .line 57
    iget-object p0, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->m:Landroidx/room/RoomDatabase;

    .line 58
    .line 59
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-object p3

    .line 67
    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->j()Z

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-eqz p3, :cond_6

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->m()Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-eqz p3, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->k()Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_6

    .line 87
    .line 88
    new-instance p3, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1;

    .line 89
    .line 90
    invoke-direct {p3, p0, v3, p2, p1}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1;-><init>(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;Z)V

    .line 91
    .line 92
    .line 93
    iput v6, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->q:I

    .line 94
    .line 95
    invoke-virtual {p0, p1, p3, v0}, Landroidx/room/RoomDatabase;->p(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    if-ne p0, v1, :cond_5

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    return-object p0

    .line 103
    :cond_6
    iput-object p0, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->m:Landroidx/room/RoomDatabase;

    .line 104
    .line 105
    iput-object p2, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->n:Lii;

    .line 106
    .line 107
    iput-boolean p1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->o:Z

    .line 108
    .line 109
    iput v5, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->q:I

    .line 110
    .line 111
    invoke-static {p0, v0}, Landroidx/room/util/DBUtil;->a(Landroidx/room/RoomDatabase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/CoroutineContext;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    if-ne p3, v1, :cond_7

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_7
    :goto_1
    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    .line 119
    .line 120
    new-instance v2, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1;

    .line 121
    .line 122
    invoke-direct {v2, p0, v3, p2, p1}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1;-><init>(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;Z)V

    .line 123
    .line 124
    .line 125
    iput-object v3, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->m:Landroidx/room/RoomDatabase;

    .line 126
    .line 127
    iput-object v3, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->n:Lii;

    .line 128
    .line 129
    iput v4, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->q:I

    .line 130
    .line 131
    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    if-ne p0, v1, :cond_8

    .line 136
    .line 137
    :goto_2
    return-object v1

    .line 138
    :cond_8
    return-object p0
.end method
