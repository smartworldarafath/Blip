.class public abstract Lcoil3/intercept/EngineInterceptorKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lcoil3/intercept/EngineInterceptor$ExecuteResult;Lcoil3/request/ImageRequest;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lcoil3/intercept/EngineInterceptor$ExecuteResult;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    instance-of v4, v3, Lcoil3/intercept/EngineInterceptorKt$transform$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;

    .line 15
    .line 16
    iget v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->u:I

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
    iput v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->u:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;

    .line 29
    .line 30
    invoke-direct {v4, v3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->t:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    iget v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->u:I

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    const/4 v7, 0x0

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    if-ne v5, v6, :cond_1

    .line 44
    .line 45
    iget v0, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->s:I

    .line 46
    .line 47
    iget v1, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->r:I

    .line 48
    .line 49
    iget-object v2, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->q:Ljava/util/List;

    .line 50
    .line 51
    iget-object v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->p:Lcoil3/EventListener;

    .line 52
    .line 53
    iget-object v8, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->o:Lcoil3/request/Options;

    .line 54
    .line 55
    iget-object v9, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->n:Lcoil3/request/ImageRequest;

    .line 56
    .line 57
    iget-object v10, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->m:Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 58
    .line 59
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    check-cast v3, Landroid/graphics/Bitmap;

    .line 63
    .line 64
    iget-object v11, v4, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 65
    .line 66
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {v11}, Lkotlinx/coroutines/JobKt;->c(Lkotlin/coroutines/CoroutineContext;)V

    .line 70
    .line 71
    .line 72
    add-int/2addr v1, v6

    .line 73
    move-object/from16 v16, v8

    .line 74
    .line 75
    move v8, v0

    .line 76
    move-object v0, v10

    .line 77
    move-object v10, v3

    .line 78
    move-object v3, v2

    .line 79
    move-object/from16 v2, v16

    .line 80
    .line 81
    move-object/from16 v16, v9

    .line 82
    .line 83
    move v9, v1

    .line 84
    move-object/from16 v1, v16

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 89
    .line 90
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object v7

    .line 94
    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    sget-object v3, Lcoil3/request/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    .line 98
    .line 99
    invoke-static {v1, v3}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_3

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_3
    iget-object v5, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->a:Lcoil3/Image;

    .line 113
    .line 114
    instance-of v8, v5, Lcoil3/BitmapImage;

    .line 115
    .line 116
    if-nez v8, :cond_4

    .line 117
    .line 118
    sget-object v9, Lcoil3/request/ImageRequestsKt;->d:Lcoil3/Extras$Key;

    .line 119
    .line 120
    invoke-static {v1, v9}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    check-cast v9, Ljava/lang/Boolean;

    .line 125
    .line 126
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-nez v9, :cond_4

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_4
    const/4 v9, 0x0

    .line 134
    if-eqz v8, :cond_6

    .line 135
    .line 136
    move-object v8, v5

    .line 137
    check-cast v8, Lcoil3/BitmapImage;

    .line 138
    .line 139
    iget-object v8, v8, Lcoil3/BitmapImage;->a:Landroid/graphics/Bitmap;

    .line 140
    .line 141
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    if-nez v10, :cond_5

    .line 146
    .line 147
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 148
    .line 149
    :cond_5
    sget-object v11, Lcoil3/util/Utils_androidKt;->a:[Landroid/graphics/Bitmap$Config;

    .line 150
    .line 151
    invoke-static {v11, v10}, Lkotlin/collections/ArraysKt;->c([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    if-eqz v10, :cond_6

    .line 156
    .line 157
    move-object v5, v8

    .line 158
    goto :goto_2

    .line 159
    :cond_6
    iget-object v8, v2, Lcoil3/request/Options;->a:Landroid/content/Context;

    .line 160
    .line 161
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    invoke-static {v5, v8}, Lcoil3/Image_androidKt;->a(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    sget-object v5, Lcoil3/request/ImageRequests_androidKt;->b:Lcoil3/Extras$Key;

    .line 170
    .line 171
    invoke-static {v2, v5}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    move-object v11, v5

    .line 176
    check-cast v11, Landroid/graphics/Bitmap$Config;

    .line 177
    .line 178
    iget-object v12, v2, Lcoil3/request/Options;->b:Lcoil3/size/Size;

    .line 179
    .line 180
    iget-object v13, v2, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    .line 181
    .line 182
    sget-object v5, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    .line 183
    .line 184
    invoke-static {v2, v5}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    move-object v14, v5

    .line 189
    check-cast v14, Lcoil3/size/Size;

    .line 190
    .line 191
    iget-object v5, v2, Lcoil3/request/Options;->d:Lcoil3/size/Precision;

    .line 192
    .line 193
    sget-object v8, Lcoil3/size/Precision;->k:Lcoil3/size/Precision;

    .line 194
    .line 195
    if-ne v5, v8, :cond_7

    .line 196
    .line 197
    move v15, v6

    .line 198
    goto :goto_1

    .line 199
    :cond_7
    move v15, v9

    .line 200
    :goto_1
    invoke-static/range {v10 .. v15}, Lcoil3/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;Z)Landroid/graphics/Bitmap;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    move-object v10, v5

    .line 212
    move-object/from16 v5, p3

    .line 213
    .line 214
    :goto_3
    if-lt v9, v8, :cond_8

    .line 215
    .line 216
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    new-instance v1, Lcoil3/BitmapImage;

    .line 220
    .line 221
    invoke-direct {v1, v10}, Lcoil3/BitmapImage;-><init>(Landroid/graphics/Bitmap;)V

    .line 222
    .line 223
    .line 224
    iget-boolean v2, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->b:Z

    .line 225
    .line 226
    iget-object v3, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->c:Lcoil3/decode/DataSource;

    .line 227
    .line 228
    iget-object v0, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->d:Ljava/lang/String;

    .line 229
    .line 230
    new-instance v4, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 231
    .line 232
    invoke-direct {v4, v1, v2, v3, v0}, Lcoil3/intercept/EngineInterceptor$ExecuteResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return-object v4

    .line 236
    :cond_8
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    if-eqz v10, :cond_9

    .line 241
    .line 242
    invoke-static {}, Lio/sentry/d;->i()V

    .line 243
    .line 244
    .line 245
    return-object v7

    .line 246
    :cond_9
    iget-object v10, v2, Lcoil3/request/Options;->b:Lcoil3/size/Size;

    .line 247
    .line 248
    iput-object v0, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->m:Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 249
    .line 250
    iput-object v1, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->n:Lcoil3/request/ImageRequest;

    .line 251
    .line 252
    iput-object v2, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->o:Lcoil3/request/Options;

    .line 253
    .line 254
    iput-object v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->p:Lcoil3/EventListener;

    .line 255
    .line 256
    iput-object v3, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->q:Ljava/util/List;

    .line 257
    .line 258
    iput v9, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->r:I

    .line 259
    .line 260
    iput v8, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->s:I

    .line 261
    .line 262
    iput v6, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->u:I

    .line 263
    .line 264
    throw v7
.end method
