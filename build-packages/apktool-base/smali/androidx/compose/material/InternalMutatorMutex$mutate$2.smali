.class final Landroidx/compose/material/InternalMutatorMutex$mutate$2;
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
    c = "androidx.compose.material.InternalMutatorMutex$mutate$2"
    f = "InternalMutatorMutex.kt"
    l = {
        0xb4,
        0x67
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lkotlinx/coroutines/sync/Mutex;

.field public o:Ljava/lang/Object;

.field public p:Landroidx/compose/material/InternalMutatorMutex;

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Landroidx/compose/foundation/MutatePriority;

.field public final synthetic t:Landroidx/compose/material/InternalMutatorMutex;

.field public final synthetic u:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/material/InternalMutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->s:Landroidx/compose/foundation/MutatePriority;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->t:Landroidx/compose/material/InternalMutatorMutex;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->u:Lkotlin/jvm/functions/Function1;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->t:Landroidx/compose/material/InternalMutatorMutex;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->u:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->s:Landroidx/compose/foundation/MutatePriority;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Landroidx/compose/material/InternalMutatorMutex$mutate$2;-><init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/material/InternalMutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->r:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->q:I

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
    iget-object v0, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->o:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/compose/material/InternalMutatorMutex;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->r:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroidx/compose/material/InternalMutatorMutex$Mutator;

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
    iget-object v1, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->p:Landroidx/compose/material/InternalMutatorMutex;

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->o:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    iget-object v5, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 45
    .line 46
    iget-object v6, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->r:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v6, Landroidx/compose/material/InternalMutatorMutex$Mutator;

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
    iget-object p1, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->r:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 62
    .line 63
    new-instance v1, Landroidx/compose/material/InternalMutatorMutex$Mutator;

    .line 64
    .line 65
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sget-object v5, Lkotlinx/coroutines/Job$Key;->j:Lkotlinx/coroutines/Job$Key;

    .line 70
    .line 71
    invoke-interface {p1, v5}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    check-cast p1, Lkotlinx/coroutines/Job;

    .line 79
    .line 80
    iget-object v5, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->s:Landroidx/compose/foundation/MutatePriority;

    .line 81
    .line 82
    invoke-direct {v1, v5, p1}, Landroidx/compose/material/InternalMutatorMutex$Mutator;-><init>(Landroidx/compose/foundation/MutatePriority;Lkotlinx/coroutines/Job;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->t:Landroidx/compose/material/InternalMutatorMutex;

    .line 86
    .line 87
    iget-object v5, p1, Landroidx/compose/material/InternalMutatorMutex;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    .line 89
    :goto_0
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Landroidx/compose/material/InternalMutatorMutex$Mutator;

    .line 94
    .line 95
    if-eqz v6, :cond_4

    .line 96
    .line 97
    iget-object v7, v1, Landroidx/compose/material/InternalMutatorMutex$Mutator;->a:Landroidx/compose/foundation/MutatePriority;

    .line 98
    .line 99
    iget-object v8, v6, Landroidx/compose/material/InternalMutatorMutex$Mutator;->a:Landroidx/compose/foundation/MutatePriority;

    .line 100
    .line 101
    invoke-virtual {v7, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-ltz v7, :cond_3

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    new-instance p0, Ljava/util/concurrent/CancellationException;

    .line 109
    .line 110
    const-string p1, "Current mutation had a higher priority"

    .line 111
    .line 112
    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_4
    :goto_1
    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_b

    .line 121
    .line 122
    if-eqz v6, :cond_5

    .line 123
    .line 124
    iget-object v5, v6, Landroidx/compose/material/InternalMutatorMutex$Mutator;->b:Lkotlinx/coroutines/Job;

    .line 125
    .line 126
    invoke-interface {v5, v4}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    iget-object v5, p1, Landroidx/compose/material/InternalMutatorMutex;->b:Lkotlinx/coroutines/sync/MutexImpl;

    .line 130
    .line 131
    iput-object v1, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->r:Ljava/lang/Object;

    .line 132
    .line 133
    iput-object v5, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 134
    .line 135
    iget-object v6, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->u:Lkotlin/jvm/functions/Function1;

    .line 136
    .line 137
    iput-object v6, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->o:Ljava/lang/Object;

    .line 138
    .line 139
    iput-object p1, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->p:Landroidx/compose/material/InternalMutatorMutex;

    .line 140
    .line 141
    iput v3, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->q:I

    .line 142
    .line 143
    invoke-virtual {v5, p0}, Lkotlinx/coroutines/sync/MutexImpl;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    if-ne v3, v0, :cond_6

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    move-object v3, v6

    .line 151
    :goto_2
    :try_start_1
    iput-object v1, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->r:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object v5, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 154
    .line 155
    iput-object p1, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->o:Ljava/lang/Object;

    .line 156
    .line 157
    iput-object v4, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->p:Landroidx/compose/material/InternalMutatorMutex;

    .line 158
    .line 159
    iput v2, p0, Landroidx/compose/material/InternalMutatorMutex$mutate$2;->q:I

    .line 160
    .line 161
    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 165
    if-ne p0, v0, :cond_7

    .line 166
    .line 167
    :goto_3
    return-object v0

    .line 168
    :cond_7
    move-object v0, p1

    .line 169
    move-object p1, p0

    .line 170
    move-object p0, v1

    .line 171
    move-object v1, v5

    .line 172
    :goto_4
    :try_start_2
    iget-object v0, v0, Landroidx/compose/material/InternalMutatorMutex;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 173
    .line 174
    :cond_8
    invoke-virtual {v0, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_9

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    if-eq v2, p0, :cond_8

    .line 186
    .line 187
    :goto_5
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    return-object p1

    .line 191
    :catchall_1
    move-exception p0

    .line 192
    goto :goto_8

    .line 193
    :catchall_2
    move-exception p0

    .line 194
    move-object v0, p1

    .line 195
    move-object p1, p0

    .line 196
    move-object p0, v1

    .line 197
    move-object v1, v5

    .line 198
    :goto_6
    :try_start_3
    iget-object v0, v0, Landroidx/compose/material/InternalMutatorMutex;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 199
    .line 200
    :goto_7
    invoke-virtual {v0, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_a

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    if-ne v2, p0, :cond_a

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_a
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 214
    :goto_8
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :cond_b
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    if-eq v7, v6, :cond_4

    .line 223
    .line 224
    goto/16 :goto_0
.end method
