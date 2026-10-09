.class final Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.room.TriggerBasedInvalidationTracker$createFlow$1"
    f = "InvalidationTracker.kt"
    l = {
        0xe9,
        0xe9,
        0xed
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/room/TriggerBasedInvalidationTracker;

.field public final synthetic q:[I

.field public final synthetic r:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/room/TriggerBasedInvalidationTracker;[I[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->p:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->q:[I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->r:[Ljava/lang/String;

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
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->q:[I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->r:[Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->p:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;[I[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->o:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->n:I

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    iget-object v7, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->q:[I

    .line 10
    .line 11
    const/4 v8, 0x3

    .line 12
    const/4 v9, 0x2

    .line 13
    const/4 v10, 0x1

    .line 14
    iget-object v11, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->p:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 15
    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    if-eq v2, v10, :cond_2

    .line 19
    .line 20
    if-eq v2, v9, :cond_1

    .line 21
    .line 22
    if-eq v2, v8, :cond_0

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v6

    .line 30
    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    const-wide/16 v18, 0x1

    .line 41
    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_1
    iget-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->o:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 47
    .line 48
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v18, 0x1

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_2
    iget-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->o:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 57
    .line 58
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object/from16 v3, p1

    .line 62
    .line 63
    const-wide/16 v18, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->o:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 72
    .line 73
    iget-object v12, v11, Landroidx/room/TriggerBasedInvalidationTracker;->h:Landroidx/room/ObservedTableStates;

    .line 74
    .line 75
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object v13, v12, Landroidx/room/ObservedTableStates;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 82
    .line 83
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 84
    .line 85
    .line 86
    :try_start_1
    array-length v14, v7

    .line 87
    move v15, v5

    .line 88
    move/from16 v16, v15

    .line 89
    .line 90
    :goto_0
    if-ge v15, v14, :cond_5

    .line 91
    .line 92
    aget v17, v7, v15

    .line 93
    .line 94
    const-wide/16 v18, 0x1

    .line 95
    .line 96
    iget-object v3, v12, Landroidx/room/ObservedTableStates;->b:[J

    .line 97
    .line 98
    aget-wide v20, v3, v17

    .line 99
    .line 100
    add-long v22, v20, v18

    .line 101
    .line 102
    aput-wide v22, v3, v17

    .line 103
    .line 104
    const-wide/16 v3, 0x0

    .line 105
    .line 106
    cmp-long v3, v20, v3

    .line 107
    .line 108
    if-nez v3, :cond_4

    .line 109
    .line 110
    iput-boolean v10, v12, Landroidx/room/ObservedTableStates;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    .line 112
    move/from16 v16, v10

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    goto/16 :goto_9

    .line 117
    .line 118
    :cond_4
    :goto_1
    add-int/lit8 v15, v15, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_5
    const-wide/16 v18, 0x1

    .line 122
    .line 123
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 124
    .line 125
    .line 126
    if-eqz v16, :cond_7

    .line 127
    .line 128
    iget-object v3, v11, Landroidx/room/TriggerBasedInvalidationTracker;->a:Landroidx/work/impl/WorkDatabase_Impl;

    .line 129
    .line 130
    iput-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->o:Ljava/lang/Object;

    .line 131
    .line 132
    iput v10, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->n:I

    .line 133
    .line 134
    invoke-static {v3, v0}, Landroidx/room/util/DBUtil;->a(Landroidx/room/RoomDatabase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/CoroutineContext;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-ne v3, v1, :cond_6

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    :goto_2
    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    .line 142
    .line 143
    new-instance v4, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$1;

    .line 144
    .line 145
    invoke-direct {v4, v11, v6}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V

    .line 146
    .line 147
    .line 148
    iput-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->o:Ljava/lang/Object;

    .line 149
    .line 150
    iput v9, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->n:I

    .line 151
    .line 152
    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    if-ne v3, v1, :cond_7

    .line 157
    .line 158
    :goto_3
    return-object v1

    .line 159
    :cond_7
    :goto_4
    :try_start_2
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 160
    .line 161
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 162
    .line 163
    .line 164
    iget-object v4, v11, Landroidx/room/TriggerBasedInvalidationTracker;->i:Landroidx/room/ObservedTableVersions;

    .line 165
    .line 166
    new-instance v9, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    .line 167
    .line 168
    iget-object v12, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->r:[Ljava/lang/String;

    .line 169
    .line 170
    invoke-direct {v9, v3, v2, v12, v7}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/FlowCollector;[Ljava/lang/String;[I)V

    .line 171
    .line 172
    .line 173
    iput-object v6, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->o:Ljava/lang/Object;

    .line 174
    .line 175
    iput v8, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->n:I

    .line 176
    .line 177
    invoke-virtual {v4, v9, v0}, Landroidx/room/ObservedTableVersions;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 178
    .line 179
    .line 180
    return-object v1

    .line 181
    :catchall_2
    move-exception v0

    .line 182
    :goto_5
    iget-object v1, v11, Landroidx/room/TriggerBasedInvalidationTracker;->h:Landroidx/room/ObservedTableStates;

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    iget-object v2, v1, Landroidx/room/ObservedTableStates;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 193
    .line 194
    .line 195
    :try_start_3
    array-length v3, v7

    .line 196
    :goto_6
    if-ge v5, v3, :cond_9

    .line 197
    .line 198
    aget v4, v7, v5

    .line 199
    .line 200
    iget-object v6, v1, Landroidx/room/ObservedTableStates;->b:[J

    .line 201
    .line 202
    aget-wide v8, v6, v4

    .line 203
    .line 204
    sub-long v11, v8, v18

    .line 205
    .line 206
    aput-wide v11, v6, v4

    .line 207
    .line 208
    cmp-long v4, v8, v18

    .line 209
    .line 210
    if-nez v4, :cond_8

    .line 211
    .line 212
    iput-boolean v10, v1, Landroidx/room/ObservedTableStates;->d:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :catchall_3
    move-exception v0

    .line 216
    goto :goto_8

    .line 217
    :cond_8
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_9
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    .line 222
    .line 223
    throw v0

    .line 224
    :goto_8
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 225
    .line 226
    .line 227
    throw v0

    .line 228
    :goto_9
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 229
    .line 230
    .line 231
    throw v0
.end method
