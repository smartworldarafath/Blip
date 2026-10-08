.class final Landroidx/compose/runtime/Recomposer$recompositionRunner$2;
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
    c = "androidx.compose.runtime.Recomposer$recompositionRunner$2"
    f = "Recomposer.kt"
    l = {
        0x439
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lp;

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Landroidx/compose/runtime/Recomposer;

.field public final synthetic r:Lkotlin/jvm/functions/Function3;

.field public final synthetic s:Landroidx/compose/runtime/MonotonicFrameClock;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->q:Landroidx/compose/runtime/Recomposer;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->r:Lkotlin/jvm/functions/Function3;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->s:Landroidx/compose/runtime/MonotonicFrameClock;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->r:Lkotlin/jvm/functions/Function3;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->s:Landroidx/compose/runtime/MonotonicFrameClock;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->q:Landroidx/compose/runtime/Recomposer;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->p:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->o:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->n:Lp;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->p:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 16
    .line 17
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto/16 :goto_9

    .line 24
    .line 25
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->p:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 37
    .line 38
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->d(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->q:Landroidx/compose/runtime/Recomposer;

    .line 47
    .line 48
    iget-object v4, p1, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v4

    .line 51
    :try_start_1
    iget-object v5, p1, Landroidx/compose/runtime/Recomposer;->e:Ljava/lang/Throwable;

    .line 52
    .line 53
    if-nez v5, :cond_12

    .line 54
    .line 55
    iget-object v5, p1, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 56
    .line 57
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Landroidx/compose/runtime/Recomposer$State;

    .line 62
    .line 63
    sget-object v6, Landroidx/compose/runtime/Recomposer$State;->k:Landroidx/compose/runtime/Recomposer$State;

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-lez v5, :cond_11

    .line 70
    .line 71
    iget-object v5, p1, Landroidx/compose/runtime/Recomposer;->d:Lkotlinx/coroutines/Job;

    .line 72
    .line 73
    if-nez v5, :cond_10

    .line 74
    .line 75
    iput-object v1, p1, Landroidx/compose/runtime/Recomposer;->d:Lkotlinx/coroutines/Job;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/compose/runtime/Recomposer;->y()Lkotlinx/coroutines/CancellableContinuation;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    const-string p1, "called outside of runRecomposeAndApplyChanges"

    .line 84
    .line 85
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    goto/16 :goto_c

    .line 91
    .line 92
    :cond_2
    :goto_0
    monitor-exit v4

    .line 93
    iget-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->q:Landroidx/compose/runtime/Recomposer;

    .line 94
    .line 95
    new-instance v4, Ld;

    .line 96
    .line 97
    const/16 v5, 0x11

    .line 98
    .line 99
    invoke-direct {v4, v5, p1}, Ld;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->d(Lkotlin/jvm/functions/Function2;)Lp;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    sget-object v4, Landroidx/compose/runtime/Recomposer;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 107
    .line 108
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->q:Landroidx/compose/runtime/Recomposer;

    .line 109
    .line 110
    iget-object v4, v4, Landroidx/compose/runtime/Recomposer;->y:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 111
    .line 112
    :cond_3
    sget-object v5, Landroidx/compose/runtime/Recomposer;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 113
    .line 114
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    check-cast v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 119
    .line 120
    move-object v7, v6

    .line 121
    check-cast v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 122
    .line 123
    sget-object v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/EndOfChain;->a:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/EndOfChain;

    .line 124
    .line 125
    iget-object v9, v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->l:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 126
    .line 127
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-eqz v10, :cond_4

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    invoke-virtual {v7}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    if-eqz v10, :cond_5

    .line 139
    .line 140
    new-instance v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 141
    .line 142
    invoke-direct {v7, v8, v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9, v4, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->a(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    new-instance v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 150
    .line 151
    invoke-direct {v8, v4, v4, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V

    .line 152
    .line 153
    .line 154
    move-object v7, v8

    .line 155
    goto :goto_1

    .line 156
    :cond_5
    iget-object v10, v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->k:Ljava/lang/Object;

    .line 157
    .line 158
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    check-cast v11, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 166
    .line 167
    new-instance v12, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 168
    .line 169
    iget-object v11, v11, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->a:Ljava/lang/Object;

    .line 170
    .line 171
    invoke-direct {v12, v11, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9, v10, v12}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->a(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    new-instance v11, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 179
    .line 180
    invoke-direct {v11, v10, v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v9, v4, v11}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->a(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    new-instance v9, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 188
    .line 189
    iget-object v7, v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->j:Ljava/lang/Object;

    .line 190
    .line 191
    invoke-direct {v9, v7, v4, v8}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V

    .line 192
    .line 193
    .line 194
    move-object v7, v9

    .line 195
    :goto_1
    if-eq v6, v7, :cond_6

    .line 196
    .line 197
    invoke-interface {v5, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_3

    .line 202
    .line 203
    :cond_6
    :try_start_2
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->q:Landroidx/compose/runtime/Recomposer;

    .line 204
    .line 205
    iget-object v5, v4, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 206
    .line 207
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 208
    :try_start_3
    invoke-virtual {v4}, Landroidx/compose/runtime/Recomposer;->E()Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 212
    :try_start_4
    monitor-exit v5

    .line 213
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    const/4 v6, 0x0

    .line 218
    move v7, v6

    .line 219
    :goto_2
    if-ge v7, v5, :cond_a

    .line 220
    .line 221
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    check-cast v8, Landroidx/compose/runtime/ControlledComposition;

    .line 226
    .line 227
    check-cast v8, Landroidx/compose/runtime/CompositionImpl;

    .line 228
    .line 229
    iget-object v8, v8, Landroidx/compose/runtime/CompositionImpl;->o:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 230
    .line 231
    iget-object v8, v8, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->l:[Ljava/lang/Object;

    .line 232
    .line 233
    array-length v9, v8

    .line 234
    move v10, v6

    .line 235
    :goto_3
    if-ge v10, v9, :cond_9

    .line 236
    .line 237
    aget-object v11, v8, v10

    .line 238
    .line 239
    instance-of v12, v11, Landroidx/compose/runtime/RecomposeScope;

    .line 240
    .line 241
    if-eqz v12, :cond_7

    .line 242
    .line 243
    check-cast v11, Landroidx/compose/runtime/RecomposeScope;

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_7
    move-object v11, v2

    .line 247
    :goto_4
    if-eqz v11, :cond_8

    .line 248
    .line 249
    check-cast v11, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 250
    .line 251
    iget-object v12, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->a:Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 252
    .line 253
    if-eqz v12, :cond_8

    .line 254
    .line 255
    invoke-interface {v12, v11, v2}, Landroidx/compose/runtime/RecomposeScopeOwner;->c(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 256
    .line 257
    .line 258
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :goto_5
    move-object v13, v0

    .line 265
    move-object v0, p1

    .line 266
    move-object p1, v13

    .line 267
    goto :goto_9

    .line 268
    :catchall_2
    move-exception v0

    .line 269
    goto :goto_5

    .line 270
    :cond_a
    new-instance v4, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$2;

    .line 271
    .line 272
    iget-object v5, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->r:Lkotlin/jvm/functions/Function3;

    .line 273
    .line 274
    iget-object v6, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->s:Landroidx/compose/runtime/MonotonicFrameClock;

    .line 275
    .line 276
    invoke-direct {v4, v5, v6, v2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$2;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)V

    .line 277
    .line 278
    .line 279
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->p:Ljava/lang/Object;

    .line 280
    .line 281
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->n:Lp;

    .line 282
    .line 283
    iput v3, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->o:I

    .line 284
    .line 285
    invoke-static {v4, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 289
    if-ne v3, v0, :cond_b

    .line 290
    .line 291
    return-object v0

    .line 292
    :cond_b
    move-object v0, p1

    .line 293
    :goto_6
    invoke-interface {v0}, Landroidx/compose/runtime/snapshots/ObserverHandle;->a()V

    .line 294
    .line 295
    .line 296
    iget-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->q:Landroidx/compose/runtime/Recomposer;

    .line 297
    .line 298
    iget-object v0, p1, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 299
    .line 300
    monitor-enter v0

    .line 301
    :try_start_5
    iget-object v3, p1, Landroidx/compose/runtime/Recomposer;->d:Lkotlinx/coroutines/Job;

    .line 302
    .line 303
    if-ne v3, v1, :cond_c

    .line 304
    .line 305
    iput-object v2, p1, Landroidx/compose/runtime/Recomposer;->d:Lkotlinx/coroutines/Job;

    .line 306
    .line 307
    goto :goto_7

    .line 308
    :catchall_3
    move-exception p0

    .line 309
    goto :goto_8

    .line 310
    :cond_c
    :goto_7
    invoke-virtual {p1}, Landroidx/compose/runtime/Recomposer;->y()Lkotlinx/coroutines/CancellableContinuation;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    if-eqz p1, :cond_d

    .line 315
    .line 316
    const-string p1, "called outside of runRecomposeAndApplyChanges"

    .line 317
    .line 318
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 319
    .line 320
    .line 321
    :cond_d
    monitor-exit v0

    .line 322
    sget-object p1, Landroidx/compose/runtime/Recomposer;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 323
    .line 324
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->q:Landroidx/compose/runtime/Recomposer;

    .line 325
    .line 326
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->y:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 327
    .line 328
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer$Companion;->a(Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V

    .line 329
    .line 330
    .line 331
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 332
    .line 333
    return-object p0

    .line 334
    :goto_8
    monitor-exit v0

    .line 335
    throw p0

    .line 336
    :catchall_4
    move-exception v0

    .line 337
    :try_start_6
    monitor-exit v5

    .line 338
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 339
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/snapshots/ObserverHandle;->a()V

    .line 340
    .line 341
    .line 342
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->q:Landroidx/compose/runtime/Recomposer;

    .line 343
    .line 344
    iget-object v3, v0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 345
    .line 346
    monitor-enter v3

    .line 347
    :try_start_7
    iget-object v4, v0, Landroidx/compose/runtime/Recomposer;->d:Lkotlinx/coroutines/Job;

    .line 348
    .line 349
    if-ne v4, v1, :cond_e

    .line 350
    .line 351
    iput-object v2, v0, Landroidx/compose/runtime/Recomposer;->d:Lkotlinx/coroutines/Job;

    .line 352
    .line 353
    goto :goto_a

    .line 354
    :catchall_5
    move-exception p0

    .line 355
    goto :goto_b

    .line 356
    :cond_e
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer;->y()Lkotlinx/coroutines/CancellableContinuation;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    if-eqz v0, :cond_f

    .line 361
    .line 362
    const-string v0, "called outside of runRecomposeAndApplyChanges"

    .line 363
    .line 364
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 365
    .line 366
    .line 367
    :cond_f
    monitor-exit v3

    .line 368
    sget-object v0, Landroidx/compose/runtime/Recomposer;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 369
    .line 370
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->q:Landroidx/compose/runtime/Recomposer;

    .line 371
    .line 372
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->y:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 373
    .line 374
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer$Companion;->a(Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V

    .line 375
    .line 376
    .line 377
    throw p1

    .line 378
    :goto_b
    monitor-exit v3

    .line 379
    throw p0

    .line 380
    :cond_10
    :try_start_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 381
    .line 382
    const-string p1, "Recomposer already running"

    .line 383
    .line 384
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw p0

    .line 388
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 389
    .line 390
    const-string p1, "Recomposer shut down"

    .line 391
    .line 392
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw p0

    .line 396
    :cond_12
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 397
    :goto_c
    monitor-exit v4

    .line 398
    throw p0
.end method
