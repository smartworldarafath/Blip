.class final Landroidx/compose/foundation/MutatorMutex$mutateWith$2;
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
    c = "androidx.compose.foundation.MutatorMutex$mutateWith$2"
    f = "MutatorMutex.kt"
    l = {
        0xd4,
        0xa7
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lkotlinx/coroutines/sync/Mutex;

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public q:Landroidx/compose/foundation/MutatorMutex;

.field public r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Landroidx/compose/foundation/MutatePriority;

.field public final synthetic u:Landroidx/compose/foundation/MutatorMutex;

.field public final synthetic v:Lkotlin/jvm/functions/Function2;

.field public final synthetic w:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/foundation/MutatorMutex;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->t:Landroidx/compose/foundation/MutatePriority;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->u:Landroidx/compose/foundation/MutatorMutex;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->v:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->w:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;

    .line 2
    .line 3
    iget-object v3, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->v:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iget-object v4, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->w:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->t:Landroidx/compose/foundation/MutatePriority;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->u:Landroidx/compose/foundation/MutatorMutex;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;-><init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/foundation/MutatorMutex;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->s:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->r:I

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
    iget-object v0, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->o:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/compose/foundation/MutatorMutex;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->s:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroidx/compose/foundation/MutatorMutex$Mutator;

    .line 23
    .line 24
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto/16 :goto_4

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
    iget-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->q:Landroidx/compose/foundation/MutatorMutex;

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->p:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v5, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->o:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 45
    .line 46
    iget-object v6, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 47
    .line 48
    iget-object v7, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->s:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v7, Landroidx/compose/foundation/MutatorMutex$Mutator;

    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    move-object p1, v6

    .line 56
    move-object v6, v5

    .line 57
    move-object v5, p1

    .line 58
    move-object p1, v1

    .line 59
    move-object v1, v7

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->s:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 67
    .line 68
    new-instance v1, Landroidx/compose/foundation/MutatorMutex$Mutator;

    .line 69
    .line 70
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget-object v5, Lkotlinx/coroutines/Job$Key;->j:Lkotlinx/coroutines/Job$Key;

    .line 75
    .line 76
    invoke-interface {p1, v5}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    check-cast p1, Lkotlinx/coroutines/Job;

    .line 84
    .line 85
    iget-object v5, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->t:Landroidx/compose/foundation/MutatePriority;

    .line 86
    .line 87
    invoke-direct {v1, v5, p1}, Landroidx/compose/foundation/MutatorMutex$Mutator;-><init>(Landroidx/compose/foundation/MutatePriority;Lkotlinx/coroutines/Job;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->u:Landroidx/compose/foundation/MutatorMutex;

    .line 91
    .line 92
    invoke-static {p1, v1}, Landroidx/compose/foundation/MutatorMutex;->a(Landroidx/compose/foundation/MutatorMutex;Landroidx/compose/foundation/MutatorMutex$Mutator;)V

    .line 93
    .line 94
    .line 95
    iget-object v5, p1, Landroidx/compose/foundation/MutatorMutex;->b:Lkotlinx/coroutines/sync/MutexImpl;

    .line 96
    .line 97
    iput-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->s:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object v5, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 100
    .line 101
    iget-object v6, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->v:Lkotlin/jvm/functions/Function2;

    .line 102
    .line 103
    iput-object v6, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->o:Ljava/lang/Object;

    .line 104
    .line 105
    iget-object v7, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->w:Ljava/lang/Object;

    .line 106
    .line 107
    iput-object v7, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->p:Ljava/lang/Object;

    .line 108
    .line 109
    iput-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->q:Landroidx/compose/foundation/MutatorMutex;

    .line 110
    .line 111
    iput v3, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->r:I

    .line 112
    .line 113
    invoke-virtual {v5, p0}, Lkotlinx/coroutines/sync/MutexImpl;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    if-ne v3, v0, :cond_3

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    move-object v3, v7

    .line 121
    :goto_0
    :try_start_1
    iput-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->s:Ljava/lang/Object;

    .line 122
    .line 123
    iput-object v5, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 124
    .line 125
    iput-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->o:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object v4, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->p:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object v4, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->q:Landroidx/compose/foundation/MutatorMutex;

    .line 130
    .line 131
    iput v2, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->r:I

    .line 132
    .line 133
    invoke-interface {v6, v3, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 137
    if-ne p0, v0, :cond_4

    .line 138
    .line 139
    :goto_1
    return-object v0

    .line 140
    :cond_4
    move-object v0, p1

    .line 141
    move-object p1, p0

    .line 142
    move-object p0, v1

    .line 143
    move-object v1, v5

    .line 144
    :goto_2
    :try_start_2
    iget-object v0, v0, Landroidx/compose/foundation/MutatorMutex;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 145
    .line 146
    :cond_5
    invoke-virtual {v0, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_6

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    if-eq v2, p0, :cond_5

    .line 158
    .line 159
    :goto_3
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    return-object p1

    .line 163
    :catchall_1
    move-exception p0

    .line 164
    goto :goto_6

    .line 165
    :catchall_2
    move-exception p0

    .line 166
    move-object v0, p1

    .line 167
    move-object p1, p0

    .line 168
    move-object p0, v1

    .line 169
    move-object v1, v5

    .line 170
    :goto_4
    :try_start_3
    iget-object v0, v0, Landroidx/compose/foundation/MutatorMutex;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 171
    .line 172
    :goto_5
    invoke-virtual {v0, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_7

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    if-ne v2, p0, :cond_7

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_7
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    :goto_6
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    throw p0
.end method
