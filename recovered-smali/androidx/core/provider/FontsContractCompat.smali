.class public abstract Landroidx/core/provider/FontsContractCompat;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontsContractCompat$FontInfo;,
        Landroidx/core/provider/FontsContractCompat$FontFamilyResult;,
        Landroidx/core/provider/FontsContractCompat$FontRequestCallback;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 2

    .line 1
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    aget-object p1, p1, v1

    .line 13
    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0, p1}, Landroidx/core/provider/FontProvider;->a(Landroid/content/Context;Ljava/util/List;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/util/ArrayList;IZILandroid/os/Handler;Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    new-instance v0, Landroidx/core/provider/CallbackWrapper;

    .line 2
    .line 3
    new-instance v1, Landroidx/core/provider/RequestExecutor$HandlerExecutor;

    .line 4
    .line 5
    invoke-direct {v1, p5}, Landroidx/core/provider/RequestExecutor$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p6, v1}, Landroidx/core/provider/CallbackWrapper;-><init>(Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;Ljava/util/concurrent/Executor;)V

    .line 9
    .line 10
    .line 11
    const/4 p5, 0x0

    .line 12
    if-eqz p3, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    const/4 p6, 0x1

    .line 19
    if-gt p3, p6, :cond_2

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroidx/core/provider/FontRequest;

    .line 27
    .line 28
    sget-object v1, Landroidx/core/provider/FontRequestWorker;->a:Landroidx/collection/LruCache;

    .line 29
    .line 30
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v2, p6}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    aget-object v1, v1, p3

    .line 40
    .line 41
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {p2, v1}, Landroidx/core/provider/FontRequestWorker;->a(ILjava/util/List;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sget-object v2, Landroidx/core/provider/FontRequestWorker;->a:Landroidx/collection/LruCache;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Landroidx/collection/LruCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroid/graphics/Typeface;

    .line 62
    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 66
    .line 67
    invoke-direct {p0, v2}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Landroidx/core/provider/CallbackWrapper;->a(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_0
    const/4 v2, -0x1

    .line 75
    if-ne p4, v2, :cond_1

    .line 76
    .line 77
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance p4, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {p4, p6}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .line 85
    .line 86
    aget-object p1, p1, p3

    .line 87
    .line 88
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v1, p0, p1, p2}, Landroidx/core/provider/FontRequestWorker;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {v0, p0}, Landroidx/core/provider/CallbackWrapper;->a(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->a:Landroid/graphics/Typeface;

    .line 106
    .line 107
    return-object p0

    .line 108
    :cond_1
    new-instance p3, Landroidx/core/provider/FontRequestWorker$1;

    .line 109
    .line 110
    invoke-direct {p3, v1, p0, p1, p2}, Landroidx/core/provider/FontRequestWorker$1;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V

    .line 111
    .line 112
    .line 113
    :try_start_0
    sget-object p0, Landroidx/core/provider/FontRequestWorker;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 114
    .line 115
    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 116
    .line 117
    .line 118
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 119
    int-to-long p1, p4

    .line 120
    :try_start_1
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 121
    .line 122
    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 126
    :try_start_2
    check-cast p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 127
    .line 128
    invoke-virtual {v0, p0}, Landroidx/core/provider/CallbackWrapper;->a(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->a:Landroid/graphics/Typeface;

    .line 132
    .line 133
    return-object p0

    .line 134
    :catch_0
    move-exception p0

    .line 135
    goto :goto_0

    .line 136
    :catch_1
    move-exception p0

    .line 137
    goto :goto_1

    .line 138
    :catch_2
    new-instance p0, Ljava/lang/InterruptedException;

    .line 139
    .line 140
    const-string p1, "timeout"

    .line 141
    .line 142
    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :goto_0
    throw p0

    .line 147
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 148
    .line 149
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 153
    :catch_3
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 154
    .line 155
    const/4 p1, -0x3

    .line 156
    invoke-direct {p0, p1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p0}, Landroidx/core/provider/CallbackWrapper;->a(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 160
    .line 161
    .line 162
    return-object p5

    .line 163
    :cond_2
    const-string p0, "Fallbacks with blocking fetches are not supported for performance reasons"

    .line 164
    .line 165
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-object p5

    .line 169
    :cond_3
    invoke-static {p2, p1}, Landroidx/core/provider/FontRequestWorker;->a(ILjava/util/List;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    sget-object p4, Landroidx/core/provider/FontRequestWorker;->a:Landroidx/collection/LruCache;

    .line 174
    .line 175
    invoke-virtual {p4, p3}, Landroidx/collection/LruCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p4

    .line 179
    check-cast p4, Landroid/graphics/Typeface;

    .line 180
    .line 181
    if-eqz p4, :cond_4

    .line 182
    .line 183
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 184
    .line 185
    invoke-direct {p0, p4}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(Landroid/graphics/Typeface;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, p0}, Landroidx/core/provider/CallbackWrapper;->a(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 189
    .line 190
    .line 191
    return-object p4

    .line 192
    :cond_4
    new-instance p4, Landroidx/core/provider/FontRequestWorker$2;

    .line 193
    .line 194
    invoke-direct {p4, v0}, Landroidx/core/provider/FontRequestWorker$2;-><init>(Landroidx/core/provider/CallbackWrapper;)V

    .line 195
    .line 196
    .line 197
    sget-object p6, Landroidx/core/provider/FontRequestWorker;->c:Ljava/lang/Object;

    .line 198
    .line 199
    monitor-enter p6

    .line 200
    :try_start_3
    sget-object v0, Landroidx/core/provider/FontRequestWorker;->d:Landroidx/collection/SimpleArrayMap;

    .line 201
    .line 202
    invoke-virtual {v0, p3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    check-cast v1, Ljava/util/ArrayList;

    .line 207
    .line 208
    if-eqz v1, :cond_5

    .line 209
    .line 210
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    monitor-exit p6

    .line 214
    return-object p5

    .line 215
    :catchall_0
    move-exception p0

    .line 216
    goto :goto_3

    .line 217
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p3, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    monitor-exit p6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    new-instance p4, Landroidx/core/provider/FontRequestWorker$3;

    .line 230
    .line 231
    invoke-direct {p4, p3, p0, p1, p2}, Landroidx/core/provider/FontRequestWorker$3;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 232
    .line 233
    .line 234
    sget-object p0, Landroidx/core/provider/FontRequestWorker;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 235
    .line 236
    new-instance p1, Landroidx/core/provider/FontRequestWorker$4;

    .line 237
    .line 238
    invoke-direct {p1, p3}, Landroidx/core/provider/FontRequestWorker$4;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    if-nez p2, :cond_6

    .line 246
    .line 247
    new-instance p2, Landroid/os/Handler;

    .line 248
    .line 249
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 250
    .line 251
    .line 252
    move-result-object p3

    .line 253
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_6
    new-instance p2, Landroid/os/Handler;

    .line 258
    .line 259
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 260
    .line 261
    .line 262
    :goto_2
    new-instance p3, Landroidx/core/provider/RequestExecutor$ReplyRunnable;

    .line 263
    .line 264
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 265
    .line 266
    .line 267
    iput-object p4, p3, Landroidx/core/provider/RequestExecutor$ReplyRunnable;->j:Ljava/util/concurrent/Callable;

    .line 268
    .line 269
    iput-object p1, p3, Landroidx/core/provider/RequestExecutor$ReplyRunnable;->k:Landroidx/core/util/Consumer;

    .line 270
    .line 271
    iput-object p2, p3, Landroidx/core/provider/RequestExecutor$ReplyRunnable;->l:Landroid/os/Handler;

    .line 272
    .line 273
    invoke-virtual {p0, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 274
    .line 275
    .line 276
    return-object p5

    .line 277
    :goto_3
    :try_start_4
    monitor-exit p6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    throw p0
.end method
