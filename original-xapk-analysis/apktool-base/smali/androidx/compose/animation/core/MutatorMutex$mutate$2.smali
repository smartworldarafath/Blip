.class final Landroidx/compose/animation/core/MutatorMutex$mutate$2;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.animation.core.MutatorMutex$mutate$2"
    f = "InternalMutatorMutex.kt"
    l = {
        0xb2,
        0x7e
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lkotlinx/coroutines/sync/Mutex;

.field public o:Ljava/lang/Object;

.field public p:Landroidx/compose/animation/core/MutatorMutex;

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Landroidx/compose/animation/core/MutatorMutex;

.field public final synthetic t:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/animation/core/MutatePriority;->j:Landroidx/compose/animation/core/MutatePriority;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->s:Landroidx/compose/animation/core/MutatorMutex;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->t:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/animation/core/MutatePriority;->j:Landroidx/compose/animation/core/MutatePriority;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->s:Landroidx/compose/animation/core/MutatorMutex;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->t:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/animation/core/MutatorMutex$mutate$2;-><init>(Landroidx/compose/animation/core/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->r:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->q:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-eq v1, v3, :cond_1

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->o:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/compose/animation/core/MutatorMutex;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->r:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    .line 23
    .line 24
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v4

    .line 38
    :cond_1
    iget-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->p:Landroidx/compose/animation/core/MutatorMutex;

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->o:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    iget-object v5, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 45
    .line 46
    iget-object v6, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->r:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v6, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    move-object p1, v1

    .line 54
    move-object v1, v6

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->r:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 62
    .line 63
    new-instance v1, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    .line 64
    .line 65
    sget-object v5, Landroidx/compose/animation/core/MutatePriority;->j:Landroidx/compose/animation/core/MutatePriority;

    .line 66
    .line 67
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget-object v5, Lkotlinx/coroutines/Job$Key;->j:Lkotlinx/coroutines/Job$Key;

    .line 72
    .line 73
    invoke-interface {p1, v5}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    check-cast p1, Lkotlinx/coroutines/Job;

    .line 81
    .line 82
    invoke-direct {v1, p1}, Landroidx/compose/animation/core/MutatorMutex$Mutator;-><init>(Lkotlinx/coroutines/Job;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->s:Landroidx/compose/animation/core/MutatorMutex;

    .line 86
    .line 87
    iget-object v5, p1, Landroidx/compose/animation/core/MutatorMutex;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    .line 89
    :goto_0
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    .line 94
    .line 95
    if-eqz v6, :cond_4

    .line 96
    .line 97
    sget-object v7, Landroidx/compose/animation/core/MutatePriority;->j:Landroidx/compose/animation/core/MutatePriority;

    .line 98
    .line 99
    invoke-virtual {v7, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-ltz v7, :cond_3

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    new-instance p0, Ljava/util/concurrent/CancellationException;

    .line 107
    .line 108
    const-string p1, "Current mutation had a higher priority"

    .line 109
    .line 110
    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :cond_4
    :goto_1
    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_b

    .line 119
    .line 120
    if-eqz v6, :cond_5

    .line 121
    .line 122
    iget-object v5, v6, Landroidx/compose/animation/core/MutatorMutex$Mutator;->a:Lkotlinx/coroutines/Job;

    .line 123
    .line 124
    new-instance v6, Landroidx/compose/animation/core/MutationInterruptedException;

    .line 125
    .line 126
    const-string v7, "Mutation interrupted"

    .line 127
    .line 128
    invoke-direct {v6, v7}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v5, v6}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    iget-object v5, p1, Landroidx/compose/animation/core/MutatorMutex;->b:Lkotlinx/coroutines/sync/MutexImpl;

    .line 135
    .line 136
    iput-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->r:Ljava/lang/Object;

    .line 137
    .line 138
    iput-object v5, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 139
    .line 140
    iget-object v6, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->t:Lkotlin/jvm/functions/Function1;

    .line 141
    .line 142
    iput-object v6, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->o:Ljava/lang/Object;

    .line 143
    .line 144
    iput-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->p:Landroidx/compose/animation/core/MutatorMutex;

    .line 145
    .line 146
    iput v3, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->q:I

    .line 147
    .line 148
    invoke-virtual {v5, p0}, Lkotlinx/coroutines/sync/MutexImpl;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-ne v3, v0, :cond_6

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    move-object v3, v6

    .line 156
    :goto_2
    :try_start_1
    iput-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->r:Ljava/lang/Object;

    .line 157
    .line 158
    iput-object v5, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 159
    .line 160
    iput-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->o:Ljava/lang/Object;

    .line 161
    .line 162
    iput-object v4, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->p:Landroidx/compose/animation/core/MutatorMutex;

    .line 163
    .line 164
    iput v2, p0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;->q:I

    .line 165
    .line 166
    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 170
    if-ne p0, v0, :cond_7

    .line 171
    .line 172
    :goto_3
    return-object v0

    .line 173
    :cond_7
    move-object v0, p1

    .line 174
    move-object p1, p0

    .line 175
    move-object p0, v1

    .line 176
    move-object v1, v5

    .line 177
    :goto_4
    :try_start_2
    iget-object v0, v0, Landroidx/compose/animation/core/MutatorMutex;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 178
    .line 179
    :cond_8
    invoke-virtual {v0, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_9

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    if-eq v2, p0, :cond_8

    .line 191
    .line 192
    :goto_5
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    return-object p1

    .line 196
    :catchall_1
    move-exception p0

    .line 197
    goto :goto_8

    .line 198
    :catchall_2
    move-exception p0

    .line 199
    move-object v0, p1

    .line 200
    move-object p1, p0

    .line 201
    move-object p0, v1

    .line 202
    move-object v1, v5

    .line 203
    :goto_6
    :try_start_3
    iget-object v0, v0, Landroidx/compose/animation/core/MutatorMutex;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 204
    .line 205
    :goto_7
    invoke-virtual {v0, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-nez v2, :cond_a

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    if-ne v2, p0, :cond_a

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_a
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    :goto_8
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    throw p0

    .line 223
    :cond_b
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    if-eq v7, v6, :cond_4

    .line 228
    .line 229
    goto/16 :goto_0
.end method
