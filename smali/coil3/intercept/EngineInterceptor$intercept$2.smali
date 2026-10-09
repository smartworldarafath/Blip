.class final Lcoil3/intercept/EngineInterceptor$intercept$2;
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
        "Lcoil3/request/SuccessResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.intercept.EngineInterceptor$intercept$2"
    f = "EngineInterceptor.kt"
    l = {
        0x4d
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lcoil3/intercept/EngineInterceptor;

.field public final synthetic p:Lcoil3/request/ImageRequest;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lcoil3/request/Options;

.field public final synthetic s:Lcoil3/EventListener;

.field public final synthetic t:Lcoil3/memory/MemoryCache$Key;

.field public final synthetic u:Lcoil3/intercept/Interceptor$Chain;


# direct methods
.method public constructor <init>(Lcoil3/intercept/EngineInterceptor;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lcoil3/memory/MemoryCache$Key;Lcoil3/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->o:Lcoil3/intercept/EngineInterceptor;

    .line 2
    .line 3
    iput-object p2, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->p:Lcoil3/request/ImageRequest;

    .line 4
    .line 5
    iput-object p3, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->q:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->r:Lcoil3/request/Options;

    .line 8
    .line 9
    iput-object p5, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->s:Lcoil3/EventListener;

    .line 10
    .line 11
    iput-object p6, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->t:Lcoil3/memory/MemoryCache$Key;

    .line 12
    .line 13
    iput-object p7, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->u:Lcoil3/intercept/Interceptor$Chain;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
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
    invoke-virtual {p0, p1, p2}, Lcoil3/intercept/EngineInterceptor$intercept$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcoil3/intercept/EngineInterceptor$intercept$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    new-instance v0, Lcoil3/intercept/EngineInterceptor$intercept$2;

    .line 2
    .line 3
    iget-object v6, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->t:Lcoil3/memory/MemoryCache$Key;

    .line 4
    .line 5
    iget-object v7, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->u:Lcoil3/intercept/Interceptor$Chain;

    .line 6
    .line 7
    iget-object v1, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->o:Lcoil3/intercept/EngineInterceptor;

    .line 8
    .line 9
    iget-object v2, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->p:Lcoil3/request/ImageRequest;

    .line 10
    .line 11
    iget-object v3, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->q:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v4, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->r:Lcoil3/request/Options;

    .line 14
    .line 15
    iget-object v5, p0, Lcoil3/intercept/EngineInterceptor$intercept$2;->s:Lcoil3/EventListener;

    .line 16
    .line 17
    move-object v8, p2

    .line 18
    invoke-direct/range {v0 .. v8}, Lcoil3/intercept/EngineInterceptor$intercept$2;-><init>(Lcoil3/intercept/EngineInterceptor;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lcoil3/memory/MemoryCache$Key;Lcoil3/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->n:I

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    const/4 v8, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-ne v0, v8, :cond_0

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    move-object/from16 v0, p1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v7

    .line 25
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->o:Lcoil3/intercept/EngineInterceptor;

    .line 29
    .line 30
    iget-object v1, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->p:Lcoil3/request/ImageRequest;

    .line 31
    .line 32
    iget-object v2, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->q:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v3, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->r:Lcoil3/request/Options;

    .line 35
    .line 36
    iget-object v4, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->s:Lcoil3/EventListener;

    .line 37
    .line 38
    iput v8, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->n:I

    .line 39
    .line 40
    invoke-static/range {v0 .. v5}, Lcoil3/intercept/EngineInterceptor;->b(Lcoil3/intercept/EngineInterceptor;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-ne v0, v6, :cond_2

    .line 45
    .line 46
    return-object v6

    .line 47
    :cond_2
    :goto_0
    check-cast v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 48
    .line 49
    iget-object v1, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->o:Lcoil3/intercept/EngineInterceptor;

    .line 50
    .line 51
    iget-object v1, v1, Lcoil3/intercept/EngineInterceptor;->b:Lcoil3/util/AndroidSystemCallbacks;

    .line 52
    .line 53
    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v2, v1, Lcoil3/util/AndroidSystemCallbacks;->a:Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcoil3/RealImageLoader;

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget-object v3, v1, Lcoil3/util/AndroidSystemCallbacks;->d:Landroid/content/Context;

    .line 65
    .line 66
    if-nez v3, :cond_4

    .line 67
    .line 68
    iget-object v2, v2, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    .line 69
    .line 70
    iget-object v2, v2, Lcoil3/RealImageLoader$Options;->a:Landroid/content/Context;

    .line 71
    .line 72
    iput-object v2, v1, Lcoil3/util/AndroidSystemCallbacks;->d:Landroid/content/Context;

    .line 73
    .line 74
    iget-object v3, v1, Lcoil3/util/AndroidSystemCallbacks;->c:Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    goto/16 :goto_7

    .line 82
    .line 83
    :cond_3
    invoke-virtual {v1}, Lcoil3/util/AndroidSystemCallbacks;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_1
    monitor-exit v1

    .line 87
    iget-object v1, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->o:Lcoil3/intercept/EngineInterceptor;

    .line 88
    .line 89
    iget-object v1, v1, Lcoil3/intercept/EngineInterceptor;->d:Lcoil3/memory/MemoryCacheService;

    .line 90
    .line 91
    iget-object v10, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->t:Lcoil3/memory/MemoryCache$Key;

    .line 92
    .line 93
    iget-object v2, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->p:Lcoil3/request/ImageRequest;

    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    if-eqz v10, :cond_6

    .line 97
    .line 98
    iget-object v2, v2, Lcoil3/request/ImageRequest;->i:Lcoil3/request/CachePolicy;

    .line 99
    .line 100
    iget-boolean v2, v2, Lcoil3/request/CachePolicy;->k:Z

    .line 101
    .line 102
    if-eqz v2, :cond_6

    .line 103
    .line 104
    iget-object v2, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->a:Lcoil3/Image;

    .line 105
    .line 106
    invoke-interface {v2}, Lcoil3/Image;->j()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-nez v2, :cond_5

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    iget-object v1, v1, Lcoil3/memory/MemoryCacheService;->a:Lcoil3/RealImageLoader;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcoil3/RealImageLoader;->d()Lcoil3/memory/MemoryCache;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-nez v1, :cond_7

    .line 120
    .line 121
    :cond_6
    :goto_2
    move v1, v3

    .line 122
    goto :goto_4

    .line 123
    :cond_7
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 124
    .line 125
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v4, "coil#is_sampled"

    .line 129
    .line 130
    iget-boolean v6, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->b:Z

    .line 131
    .line 132
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    iget-object v4, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->d:Ljava/lang/String;

    .line 140
    .line 141
    if-eqz v4, :cond_8

    .line 142
    .line 143
    const-string v6, "coil#disk_cache_key"

    .line 144
    .line 145
    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :cond_8
    new-instance v4, Lcoil3/memory/MemoryCache$Value;

    .line 149
    .line 150
    iget-object v11, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->a:Lcoil3/Image;

    .line 151
    .line 152
    invoke-direct {v4, v11, v2}, Lcoil3/memory/MemoryCache$Value;-><init>(Lcoil3/Image;Ljava/util/Map;)V

    .line 153
    .line 154
    .line 155
    check-cast v1, Lcoil3/memory/RealMemoryCache;

    .line 156
    .line 157
    const-string v2, "Image size must be non-negative: "

    .line 158
    .line 159
    iget-object v6, v1, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    .line 160
    .line 161
    monitor-enter v6

    .line 162
    :try_start_1
    invoke-interface {v11}, Lcoil3/Image;->i()J

    .line 163
    .line 164
    .line 165
    move-result-wide v13

    .line 166
    const-wide/16 v15, 0x0

    .line 167
    .line 168
    cmp-long v9, v13, v15

    .line 169
    .line 170
    if-ltz v9, :cond_9

    .line 171
    .line 172
    iget-object v9, v1, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/RealStrongMemoryCache;

    .line 173
    .line 174
    iget-object v12, v4, Lcoil3/memory/MemoryCache$Value;->b:Ljava/util/Map;

    .line 175
    .line 176
    invoke-virtual/range {v9 .. v14}, Lcoil3/memory/RealStrongMemoryCache;->a(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    .line 178
    .line 179
    monitor-exit v6

    .line 180
    move v1, v8

    .line 181
    goto :goto_4

    .line 182
    :catchall_1
    move-exception v0

    .line 183
    goto :goto_3

    .line 184
    :cond_9
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 206
    :goto_3
    monitor-exit v6

    .line 207
    throw v0

    .line 208
    :goto_4
    iget-object v10, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->a:Lcoil3/Image;

    .line 209
    .line 210
    iget-object v11, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->p:Lcoil3/request/ImageRequest;

    .line 211
    .line 212
    iget-object v12, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->c:Lcoil3/decode/DataSource;

    .line 213
    .line 214
    iget-object v2, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->t:Lcoil3/memory/MemoryCache$Key;

    .line 215
    .line 216
    if-eqz v1, :cond_a

    .line 217
    .line 218
    move-object v13, v2

    .line 219
    goto :goto_5

    .line 220
    :cond_a
    move-object v13, v7

    .line 221
    :goto_5
    iget-object v14, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->d:Ljava/lang/String;

    .line 222
    .line 223
    iget-boolean v15, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->b:Z

    .line 224
    .line 225
    iget-object v0, v5, Lcoil3/intercept/EngineInterceptor$intercept$2;->u:Lcoil3/intercept/Interceptor$Chain;

    .line 226
    .line 227
    instance-of v1, v0, Lcoil3/intercept/RealInterceptorChain;

    .line 228
    .line 229
    if-eqz v1, :cond_b

    .line 230
    .line 231
    check-cast v0, Lcoil3/intercept/RealInterceptorChain;

    .line 232
    .line 233
    iget-boolean v0, v0, Lcoil3/intercept/RealInterceptorChain;->g:Z

    .line 234
    .line 235
    if-eqz v0, :cond_b

    .line 236
    .line 237
    move/from16 v16, v8

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_b
    move/from16 v16, v3

    .line 241
    .line 242
    :goto_6
    new-instance v9, Lcoil3/request/SuccessResult;

    .line 243
    .line 244
    invoke-direct/range {v9 .. v16}, Lcoil3/request/SuccessResult;-><init>(Lcoil3/Image;Lcoil3/request/ImageRequest;Lcoil3/decode/DataSource;Lcoil3/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V

    .line 245
    .line 246
    .line 247
    return-object v9

    .line 248
    :goto_7
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    throw v0
.end method
