.class public final Landroidx/room/coroutines/ConnectionPoolImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# instance fields
.field public final j:Landroidx/room/coroutines/Pool;

.field public final k:Landroidx/room/coroutines/Pool;

.field public final l:Ljava/lang/ThreadLocal;

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:J


# direct methods
.method public constructor <init>(Landroidx/room/BaseRoomConnectionManager$DriverWrapper;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->l:Ljava/lang/ThreadLocal;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    sget-object v0, Lkotlin/time/Duration;->k:Lkotlin/time/Duration$Companion;

    const/16 v0, 0x1e

    sget-object v1, Lkotlin/time/DurationUnit;->m:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->d(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->n:J

    .line 73
    new-instance v0, Landroidx/room/coroutines/Pool;

    new-instance v1, Lr1;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p1}, Lr1;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->j:Landroidx/room/coroutines/Pool;

    .line 74
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->k:Landroidx/room/coroutines/Pool;

    return-void
.end method

.method public constructor <init>(Landroidx/room/BaseRoomConnectionManager$DriverWrapper;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->l:Ljava/lang/ThreadLocal;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    sget-object v0, Lkotlin/time/Duration;->k:Lkotlin/time/Duration$Companion;

    .line 23
    .line 24
    const/16 v0, 0x1e

    .line 25
    .line 26
    sget-object v2, Lkotlin/time/DurationUnit;->m:Lkotlin/time/DurationUnit;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lkotlin/time/DurationKt;->d(ILkotlin/time/DurationUnit;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    iput-wide v2, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->n:J

    .line 33
    .line 34
    if-lez p3, :cond_0

    .line 35
    .line 36
    new-instance v0, Landroidx/room/coroutines/Pool;

    .line 37
    .line 38
    new-instance v2, Lm6;

    .line 39
    .line 40
    invoke-direct {v2, p1, p2, v1}, Lm6;-><init>(Landroidx/room/BaseRoomConnectionManager$DriverWrapper;Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p3, v2}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->j:Landroidx/room/coroutines/Pool;

    .line 47
    .line 48
    new-instance p3, Landroidx/room/coroutines/Pool;

    .line 49
    .line 50
    new-instance v0, Lm6;

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-direct {v0, p1, p2, v1}, Lm6;-><init>(Landroidx/room/BaseRoomConnectionManager$DriverWrapper;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p3, v1, v0}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 57
    .line 58
    .line 59
    iput-object p3, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->k:Landroidx/room/coroutines/Pool;

    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    const-string p0, "Maximum number of readers must be greater than 0"

    .line 63
    .line 64
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    throw p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "reader"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "writer"

    .line 7
    .line 8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Timed out attempting to acquire a "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, " connection."

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, "\n\nWriter pool:\n"

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->k:Landroidx/room/coroutines/Pool;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroidx/room/coroutines/Pool;->c(Ljava/lang/StringBuilder;)V

    .line 43
    .line 44
    .line 45
    const-string p1, "Reader pool:"

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 p1, 0xa

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->j:Landroidx/room/coroutines/Pool;

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroidx/room/coroutines/Pool;->c(Ljava/lang/StringBuilder;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const/4 p1, 0x5

    .line 65
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->b(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    throw p0
.end method

.method public final close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->j:Landroidx/room/coroutines/Pool;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/room/coroutines/Pool;->b()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->k:Landroidx/room/coroutines/Pool;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/room/coroutines/Pool;->b()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final j0(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    instance-of v4, v0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v0

    .line 14
    check-cast v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    .line 15
    .line 16
    iget v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->v:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->v:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    .line 29
    .line 30
    invoke-direct {v4, v1, v0}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;-><init>(Landroidx/room/coroutines/ConnectionPoolImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v5, v4, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 34
    .line 35
    iget-object v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->t:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 38
    .line 39
    iget v7, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->v:I

    .line 40
    .line 41
    const-string v8, "ROLLBACK TRANSACTION"

    .line 42
    .line 43
    const/4 v10, 0x4

    .line 44
    const/4 v11, 0x3

    .line 45
    const/4 v12, 0x2

    .line 46
    const/4 v13, 0x1

    .line 47
    const/4 v14, 0x0

    .line 48
    if-eqz v7, :cond_5

    .line 49
    .line 50
    if-eq v7, v13, :cond_4

    .line 51
    .line 52
    if-eq v7, v12, :cond_3

    .line 53
    .line 54
    if-eq v7, v11, :cond_2

    .line 55
    .line 56
    if-ne v7, v10, :cond_1

    .line 57
    .line 58
    iget-object v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->n:Ljava/io/Serializable;

    .line 59
    .line 60
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 61
    .line 62
    iget-object v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->m:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Landroidx/room/coroutines/Pool;

    .line 65
    .line 66
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto/16 :goto_c

    .line 70
    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object v12, v1

    .line 73
    :goto_1
    move-object v1, v0

    .line 74
    goto/16 :goto_d

    .line 75
    .line 76
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 77
    .line 78
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v14

    .line 82
    :cond_2
    iget-boolean v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->s:Z

    .line 83
    .line 84
    iget-object v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->r:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 85
    .line 86
    iget-object v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->q:Lkotlin/coroutines/CoroutineContext;

    .line 87
    .line 88
    iget-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 89
    .line 90
    iget-object v7, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->o:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v7, Landroidx/room/coroutines/Pool;

    .line 93
    .line 94
    iget-object v11, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->n:Ljava/io/Serializable;

    .line 95
    .line 96
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 97
    .line 98
    iget-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->m:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v12, Landroidx/room/coroutines/ConnectionPoolImpl;

    .line 101
    .line 102
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .line 104
    .line 105
    move-object v0, v3

    .line 106
    move-object v3, v11

    .line 107
    goto/16 :goto_6

    .line 108
    .line 109
    :catchall_1
    move-exception v0

    .line 110
    move-object v15, v2

    .line 111
    move v2, v1

    .line 112
    move-object v1, v12

    .line 113
    move-object v12, v3

    .line 114
    move-object v3, v11

    .line 115
    goto/16 :goto_7

    .line 116
    .line 117
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_1a

    .line 135
    .line 136
    iget-object v0, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->l:Ljava/lang/ThreadLocal;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    check-cast v7, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 143
    .line 144
    sget-object v15, Landroidx/room/coroutines/ConnectionElement;->k:Landroidx/room/coroutines/ConnectionElement$Key;

    .line 145
    .line 146
    if-nez v7, :cond_7

    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-interface {v5, v15}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    check-cast v7, Landroidx/room/coroutines/ConnectionElement;

    .line 156
    .line 157
    if-eqz v7, :cond_6

    .line 158
    .line 159
    iget-object v7, v7, Landroidx/room/coroutines/ConnectionElement;->j:Landroidx/room/coroutines/PooledConnectionImpl;

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_6
    move-object v7, v14

    .line 163
    :cond_7
    :goto_2
    if-eqz v7, :cond_d

    .line 164
    .line 165
    if-nez v2, :cond_9

    .line 166
    .line 167
    iget-boolean v1, v7, Landroidx/room/coroutines/PooledConnectionImpl;->b:Z

    .line 168
    .line 169
    if-nez v1, :cond_8

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_8
    const-string v0, "Cannot upgrade connection from reader to writer"

    .line 173
    .line 174
    invoke-static {v13, v0}, Landroidx/sqlite/SQLite;->b(ILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v14

    .line 178
    :cond_9
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-interface {v5, v15}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-nez v1, :cond_b

    .line 186
    .line 187
    new-instance v1, Landroidx/room/coroutines/ConnectionElement;

    .line 188
    .line 189
    invoke-direct {v1, v7}, Landroidx/room/coroutines/ConnectionElement;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    new-instance v2, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 196
    .line 197
    invoke-direct {v2, v7, v0}, Lkotlinx/coroutines/internal/ThreadLocalElement;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v1, v2}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->c(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$2;

    .line 205
    .line 206
    invoke-direct {v1, v3, v7, v14}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/room/coroutines/PooledConnectionImpl;Lkotlin/coroutines/Continuation;)V

    .line 207
    .line 208
    .line 209
    iput v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->v:I

    .line 210
    .line 211
    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-ne v0, v6, :cond_a

    .line 216
    .line 217
    goto/16 :goto_b

    .line 218
    .line 219
    :cond_a
    return-object v0

    .line 220
    :cond_b
    iput v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->v:I

    .line 221
    .line 222
    invoke-interface {v3, v7, v4}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-ne v0, v6, :cond_c

    .line 227
    .line 228
    goto/16 :goto_b

    .line 229
    .line 230
    :cond_c
    return-object v0

    .line 231
    :cond_d
    if-eqz v2, :cond_e

    .line 232
    .line 233
    iget-object v0, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->j:Landroidx/room/coroutines/Pool;

    .line 234
    .line 235
    :goto_4
    move-object v7, v0

    .line 236
    goto :goto_5

    .line 237
    :cond_e
    iget-object v0, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->k:Landroidx/room/coroutines/Pool;

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :goto_5
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 241
    .line 242
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 243
    .line 244
    .line 245
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 249
    .line 250
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 251
    .line 252
    .line 253
    :try_start_3
    iget-wide v9, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->n:J

    .line 254
    .line 255
    new-instance v0, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;

    .line 256
    .line 257
    invoke-direct {v0, v15, v7, v14}, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/room/coroutines/Pool;Lkotlin/coroutines/Continuation;)V

    .line 258
    .line 259
    .line 260
    iput-object v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->m:Ljava/lang/Object;

    .line 261
    .line 262
    move-object v13, v3

    .line 263
    check-cast v13, Ljava/io/Serializable;

    .line 264
    .line 265
    iput-object v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->n:Ljava/io/Serializable;

    .line 266
    .line 267
    iput-object v7, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->o:Ljava/lang/Object;

    .line 268
    .line 269
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 270
    .line 271
    iput-object v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->q:Lkotlin/coroutines/CoroutineContext;

    .line 272
    .line 273
    iput-object v15, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->r:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 274
    .line 275
    iput-boolean v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->s:Z

    .line 276
    .line 277
    iput v11, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->v:I

    .line 278
    .line 279
    invoke-static {v9, v10}, Lkotlinx/coroutines/DelayKt;->d(J)J

    .line 280
    .line 281
    .line 282
    move-result-wide v9

    .line 283
    invoke-static {v9, v10, v0, v4}, Lkotlinx/coroutines/TimeoutKt;->b(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 287
    if-ne v0, v6, :cond_f

    .line 288
    .line 289
    goto/16 :goto_b

    .line 290
    .line 291
    :cond_f
    move-object v0, v12

    .line 292
    move-object v12, v1

    .line 293
    move v1, v2

    .line 294
    move-object v2, v15

    .line 295
    :goto_6
    move-object v15, v2

    .line 296
    move v2, v1

    .line 297
    move-object v1, v0

    .line 298
    move-object v0, v14

    .line 299
    goto :goto_8

    .line 300
    :catchall_2
    move-exception v0

    .line 301
    :goto_7
    move-object/from16 v16, v12

    .line 302
    .line 303
    move-object v12, v1

    .line 304
    move-object/from16 v1, v16

    .line 305
    .line 306
    :goto_8
    :try_start_4
    iget-object v9, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v9, Landroidx/room/coroutines/ConnectionWithLock;

    .line 309
    .line 310
    if-eqz v9, :cond_11

    .line 311
    .line 312
    new-instance v10, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 313
    .line 314
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    iput-object v5, v9, Landroidx/room/coroutines/ConnectionWithLock;->l:Lkotlin/coroutines/CoroutineContext;

    .line 318
    .line 319
    new-instance v5, Ljava/lang/Throwable;

    .line 320
    .line 321
    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    .line 322
    .line 323
    .line 324
    iput-object v5, v9, Landroidx/room/coroutines/ConnectionWithLock;->m:Ljava/lang/Throwable;

    .line 325
    .line 326
    iget-object v5, v12, Landroidx/room/coroutines/ConnectionPoolImpl;->j:Landroidx/room/coroutines/Pool;

    .line 327
    .line 328
    iget-object v11, v12, Landroidx/room/coroutines/ConnectionPoolImpl;->k:Landroidx/room/coroutines/Pool;

    .line 329
    .line 330
    if-eq v5, v11, :cond_10

    .line 331
    .line 332
    if-eqz v2, :cond_10

    .line 333
    .line 334
    const/4 v5, 0x1

    .line 335
    goto :goto_9

    .line 336
    :cond_10
    const/4 v5, 0x0

    .line 337
    :goto_9
    invoke-direct {v10, v9, v5}, Landroidx/room/coroutines/PooledConnectionImpl;-><init>(Landroidx/room/coroutines/ConnectionWithLock;Z)V

    .line 338
    .line 339
    .line 340
    goto :goto_a

    .line 341
    :catchall_3
    move-exception v0

    .line 342
    move-object v12, v1

    .line 343
    move-object v2, v7

    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    :cond_11
    move-object v10, v14

    .line 347
    :goto_a
    iput-object v10, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 348
    .line 349
    instance-of v5, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 350
    .line 351
    if-nez v5, :cond_17

    .line 352
    .line 353
    if-nez v0, :cond_16

    .line 354
    .line 355
    if-eqz v10, :cond_15

    .line 356
    .line 357
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    new-instance v0, Landroidx/room/coroutines/ConnectionElement;

    .line 361
    .line 362
    invoke-direct {v0, v10}, Landroidx/room/coroutines/ConnectionElement;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;)V

    .line 363
    .line 364
    .line 365
    iget-object v2, v12, Landroidx/room/coroutines/ConnectionPoolImpl;->l:Ljava/lang/ThreadLocal;

    .line 366
    .line 367
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    new-instance v5, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 371
    .line 372
    invoke-direct {v5, v10, v2}, Lkotlinx/coroutines/internal/ThreadLocalElement;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    .line 373
    .line 374
    .line 375
    invoke-static {v0, v5}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->c(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    new-instance v2, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$4;

    .line 380
    .line 381
    invoke-direct {v2, v3, v1, v14}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$4;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 382
    .line 383
    .line 384
    iput-object v7, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->m:Ljava/lang/Object;

    .line 385
    .line 386
    iput-object v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->n:Ljava/io/Serializable;

    .line 387
    .line 388
    iput-object v14, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->o:Ljava/lang/Object;

    .line 389
    .line 390
    iput-object v14, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 391
    .line 392
    iput-object v14, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->q:Lkotlin/coroutines/CoroutineContext;

    .line 393
    .line 394
    iput-object v14, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->r:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 395
    .line 396
    const/4 v3, 0x4

    .line 397
    iput v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->v:I

    .line 398
    .line 399
    invoke-static {v0, v2, v4}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 403
    if-ne v0, v6, :cond_12

    .line 404
    .line 405
    :goto_b
    return-object v6

    .line 406
    :cond_12
    move-object v2, v7

    .line 407
    :goto_c
    :try_start_5
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v1, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 410
    .line 411
    if-eqz v1, :cond_14

    .line 412
    .line 413
    iget-object v3, v1, Landroidx/room/coroutines/PooledConnectionImpl;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 414
    .line 415
    const/4 v4, 0x0

    .line 416
    const/4 v5, 0x1

    .line 417
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 418
    .line 419
    .line 420
    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 421
    if-eqz v3, :cond_13

    .line 422
    .line 423
    :try_start_6
    iget-object v3, v1, Landroidx/room/coroutines/PooledConnectionImpl;->a:Landroidx/room/coroutines/ConnectionWithLock;

    .line 424
    .line 425
    invoke-static {v3, v8}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 426
    .line 427
    .line 428
    :catch_0
    :cond_13
    :try_start_7
    iget-object v1, v1, Landroidx/room/coroutines/PooledConnectionImpl;->a:Landroidx/room/coroutines/ConnectionWithLock;

    .line 429
    .line 430
    iput-object v14, v1, Landroidx/room/coroutines/ConnectionWithLock;->l:Lkotlin/coroutines/CoroutineContext;

    .line 431
    .line 432
    iput-object v14, v1, Landroidx/room/coroutines/ConnectionWithLock;->m:Ljava/lang/Throwable;

    .line 433
    .line 434
    invoke-virtual {v2, v1}, Landroidx/room/coroutines/Pool;->d(Landroidx/room/coroutines/ConnectionWithLock;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 435
    .line 436
    .line 437
    :catchall_4
    :cond_14
    return-object v0

    .line 438
    :cond_15
    :try_start_8
    const-string v0, "Required value was null."

    .line 439
    .line 440
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 441
    .line 442
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw v2

    .line 446
    :cond_16
    throw v0

    .line 447
    :cond_17
    invoke-virtual {v12, v2}, Landroidx/room/coroutines/ConnectionPoolImpl;->a(Z)V

    .line 448
    .line 449
    .line 450
    throw v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 451
    :catchall_5
    move-exception v0

    .line 452
    move-object v1, v0

    .line 453
    move-object v2, v7

    .line 454
    :goto_d
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 455
    :catchall_6
    move-exception v0

    .line 456
    move-object v3, v0

    .line 457
    :try_start_a
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 460
    .line 461
    if-eqz v0, :cond_19

    .line 462
    .line 463
    iget-object v4, v0, Landroidx/room/coroutines/PooledConnectionImpl;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 464
    .line 465
    const/4 v5, 0x0

    .line 466
    const/4 v6, 0x1

    .line 467
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 468
    .line 469
    .line 470
    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 471
    if-eqz v4, :cond_18

    .line 472
    .line 473
    :try_start_b
    iget-object v4, v0, Landroidx/room/coroutines/PooledConnectionImpl;->a:Landroidx/room/coroutines/ConnectionWithLock;

    .line 474
    .line 475
    invoke-static {v4, v8}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 476
    .line 477
    .line 478
    :catch_1
    :cond_18
    :try_start_c
    iget-object v0, v0, Landroidx/room/coroutines/PooledConnectionImpl;->a:Landroidx/room/coroutines/ConnectionWithLock;

    .line 479
    .line 480
    iput-object v14, v0, Landroidx/room/coroutines/ConnectionWithLock;->l:Lkotlin/coroutines/CoroutineContext;

    .line 481
    .line 482
    iput-object v14, v0, Landroidx/room/coroutines/ConnectionWithLock;->m:Ljava/lang/Throwable;

    .line 483
    .line 484
    invoke-virtual {v2, v0}, Landroidx/room/coroutines/Pool;->d(Landroidx/room/coroutines/ConnectionWithLock;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 485
    .line 486
    .line 487
    goto :goto_e

    .line 488
    :catchall_7
    move-exception v0

    .line 489
    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 490
    .line 491
    .line 492
    :cond_19
    :goto_e
    throw v3

    .line 493
    :cond_1a
    const/16 v0, 0x15

    .line 494
    .line 495
    const-string v1, "Connection pool is closed"

    .line 496
    .line 497
    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->b(ILjava/lang/String;)V

    .line 498
    .line 499
    .line 500
    throw v14
.end method
