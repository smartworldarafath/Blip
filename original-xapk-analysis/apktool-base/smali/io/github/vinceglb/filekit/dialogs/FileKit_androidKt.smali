.class public abstract Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/android/HandlerContext;

    .line 4
    .line 5
    iget-object v0, v0, Lkotlinx/coroutines/android/HandlerContext;->o:Lkotlinx/coroutines/android/HandlerContext;

    .line 6
    .line 7
    new-instance v1, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, p1, p2, v2}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;-><init>(Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final b(Lio/github/vinceglb/filekit/dialogs/FileKitType;Lio/github/vinceglb/filekit/dialogs/PickerMode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p2, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$1;

    .line 7
    .line 8
    iget v1, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$1;->n:I

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
    iput v1, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$1;->n:I

    .line 30
    .line 31
    const/16 v3, 0xa

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    const/4 v5, 0x3

    .line 35
    const/4 v6, 0x1

    .line 36
    const/4 v7, 0x2

    .line 37
    const/4 v8, 0x0

    .line 38
    if-eqz v2, :cond_5

    .line 39
    .line 40
    if-eq v2, v6, :cond_4

    .line 41
    .line 42
    if-eq v2, v7, :cond_3

    .line 43
    .line 44
    if-eq v2, v5, :cond_2

    .line 45
    .line 46
    if-ne v2, v4, :cond_1

    .line 47
    .line 48
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v8

    .line 59
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_6

    .line 67
    .line 68
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_9

    .line 72
    .line 73
    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object p2, Lio/github/vinceglb/filekit/dialogs/FileKitDialog;->a:Ljava/lang/ref/WeakReference;

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Landroidx/activity/result/ActivityResultRegistry;

    .line 83
    .line 84
    if-eqz p2, :cond_17

    .line 85
    .line 86
    sget-object v2, Lio/github/vinceglb/filekit/dialogs/FileKitType$Image;->a:Lio/github/vinceglb/filekit/dialogs/FileKitType$Image;

    .line 87
    .line 88
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    sget-object v10, Lio/github/vinceglb/filekit/dialogs/FileKitType$ImageAndVideo;->a:Lio/github/vinceglb/filekit/dialogs/FileKitType$ImageAndVideo;

    .line 93
    .line 94
    sget-object v11, Lio/github/vinceglb/filekit/dialogs/FileKitType$Video;->a:Lio/github/vinceglb/filekit/dialogs/FileKitType$Video;

    .line 95
    .line 96
    if-nez v9, :cond_d

    .line 97
    .line 98
    invoke-static {p0, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-nez v9, :cond_d

    .line 103
    .line 104
    invoke-static {p0, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-eqz v9, :cond_6

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_6
    instance-of v2, p0, Lio/github/vinceglb/filekit/dialogs/FileKitType$File;

    .line 112
    .line 113
    if-eqz v2, :cond_c

    .line 114
    .line 115
    instance-of v2, p1, Lio/github/vinceglb/filekit/dialogs/PickerMode$Single;

    .line 116
    .line 117
    if-eqz v2, :cond_8

    .line 118
    .line 119
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$8;

    .line 120
    .line 121
    invoke-direct {p1, p2, p0, v8}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$8;-><init>(Landroidx/activity/result/ActivityResultRegistry;Lio/github/vinceglb/filekit/dialogs/FileKitType;Lkotlin/coroutines/Continuation;)V

    .line 122
    .line 123
    .line 124
    iput v5, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$1;->n:I

    .line 125
    .line 126
    invoke-static {p1, v8, v0}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt;->e(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    if-ne p2, v1, :cond_7

    .line 131
    .line 132
    goto/16 :goto_8

    .line 133
    .line 134
    :cond_7
    :goto_1
    check-cast p2, Landroid/net/Uri;

    .line 135
    .line 136
    if-eqz p2, :cond_15

    .line 137
    .line 138
    invoke-static {p2}, Lio/github/vinceglb/filekit/PlatformFile_androidKt;->a(Landroid/net/Uri;)Lio/github/vinceglb/filekit/PlatformFile;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :cond_8
    instance-of p1, p1, Lio/github/vinceglb/filekit/dialogs/PickerMode$Multiple;

    .line 148
    .line 149
    if-eqz p1, :cond_b

    .line 150
    .line 151
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$10;

    .line 152
    .line 153
    invoke-direct {p1, p2, p0, v8}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$10;-><init>(Landroidx/activity/result/ActivityResultRegistry;Lio/github/vinceglb/filekit/dialogs/FileKitType;Lkotlin/coroutines/Continuation;)V

    .line 154
    .line 155
    .line 156
    iput v4, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$1;->n:I

    .line 157
    .line 158
    invoke-static {p1, v8, v0}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt;->e(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    if-ne p2, v1, :cond_9

    .line 163
    .line 164
    goto/16 :goto_8

    .line 165
    .line 166
    :cond_9
    :goto_2
    check-cast p2, Ljava/util/List;

    .line 167
    .line 168
    if-eqz p2, :cond_15

    .line 169
    .line 170
    new-instance p0, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-eqz p2, :cond_a

    .line 188
    .line 189
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    check-cast p2, Landroid/net/Uri;

    .line 194
    .line 195
    invoke-static {p2}, Lio/github/vinceglb/filekit/PlatformFile_androidKt;->a(Landroid/net/Uri;)Lio/github/vinceglb/filekit/PlatformFile;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_a
    return-object p0

    .line 204
    :cond_b
    invoke-static {}, Lk8;->e()V

    .line 205
    .line 206
    .line 207
    return-object v8

    .line 208
    :cond_c
    invoke-static {}, Lk8;->e()V

    .line 209
    .line 210
    .line 211
    return-object v8

    .line 212
    :cond_d
    :goto_4
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_e

    .line 217
    .line 218
    sget-object v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    .line 219
    .line 220
    invoke-static {v2}, Landroidx/activity/result/PickVisualMediaRequestKt;->a(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    goto :goto_5

    .line 225
    :cond_e
    invoke-static {p0, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_f

    .line 230
    .line 231
    sget-object v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VideoOnly;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VideoOnly;

    .line 232
    .line 233
    invoke-static {v2}, Landroidx/activity/result/PickVisualMediaRequestKt;->a(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    goto :goto_5

    .line 238
    :cond_f
    invoke-static {p0, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_16

    .line 243
    .line 244
    sget-object v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    .line 245
    .line 246
    invoke-static {v2}, Landroidx/activity/result/PickVisualMediaRequestKt;->a(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    :goto_5
    instance-of v4, p1, Lio/github/vinceglb/filekit/dialogs/PickerMode$Single;

    .line 251
    .line 252
    if-nez v4, :cond_13

    .line 253
    .line 254
    instance-of v4, p1, Lio/github/vinceglb/filekit/dialogs/PickerMode$Multiple;

    .line 255
    .line 256
    if-eqz v4, :cond_12

    .line 257
    .line 258
    new-instance v4, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;

    .line 259
    .line 260
    invoke-direct {v4, p1, p2, v2, v8}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;-><init>(Lio/github/vinceglb/filekit/dialogs/PickerMode;Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/PickVisualMediaRequest;Lkotlin/coroutines/Continuation;)V

    .line 261
    .line 262
    .line 263
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$6;

    .line 264
    .line 265
    invoke-direct {p1, p2, p0, v8}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$6;-><init>(Landroidx/activity/result/ActivityResultRegistry;Lio/github/vinceglb/filekit/dialogs/FileKitType;Lkotlin/coroutines/Continuation;)V

    .line 266
    .line 267
    .line 268
    iput v7, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$1;->n:I

    .line 269
    .line 270
    invoke-static {v4, p1, v0}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt;->e(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    if-ne p2, v1, :cond_10

    .line 275
    .line 276
    goto :goto_8

    .line 277
    :cond_10
    :goto_6
    check-cast p2, Ljava/util/List;

    .line 278
    .line 279
    if-eqz p2, :cond_15

    .line 280
    .line 281
    new-instance p0, Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    .line 289
    .line 290
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result p2

    .line 298
    if-eqz p2, :cond_11

    .line 299
    .line 300
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    check-cast p2, Landroid/net/Uri;

    .line 305
    .line 306
    invoke-static {p2}, Lio/github/vinceglb/filekit/PlatformFile_androidKt;->a(Landroid/net/Uri;)Lio/github/vinceglb/filekit/PlatformFile;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_11
    return-object p0

    .line 315
    :cond_12
    const-string p0, "Unsupported mode: "

    .line 316
    .line 317
    invoke-static {p1, p0}, Lio/sentry/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    return-object v8

    .line 321
    :cond_13
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$2;

    .line 322
    .line 323
    invoke-direct {p1, p2, v2, v8}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$2;-><init>(Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/PickVisualMediaRequest;Lkotlin/coroutines/Continuation;)V

    .line 324
    .line 325
    .line 326
    new-instance v2, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$3;

    .line 327
    .line 328
    invoke-direct {v2, p2, p0, v8}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$3;-><init>(Landroidx/activity/result/ActivityResultRegistry;Lio/github/vinceglb/filekit/dialogs/FileKitType;Lkotlin/coroutines/Continuation;)V

    .line 329
    .line 330
    .line 331
    iput v6, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$1;->n:I

    .line 332
    .line 333
    invoke-static {p1, v2, v0}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt;->e(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    if-ne p2, v1, :cond_14

    .line 338
    .line 339
    :goto_8
    return-object v1

    .line 340
    :cond_14
    :goto_9
    check-cast p2, Landroid/net/Uri;

    .line 341
    .line 342
    if-eqz p2, :cond_15

    .line 343
    .line 344
    invoke-static {p2}, Lio/github/vinceglb/filekit/PlatformFile_androidKt;->a(Landroid/net/Uri;)Lio/github/vinceglb/filekit/PlatformFile;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    return-object p0

    .line 353
    :cond_15
    return-object v8

    .line 354
    :cond_16
    invoke-static {}, Lk8;->e()V

    .line 355
    .line 356
    .line 357
    return-object v8

    .line 358
    :cond_17
    new-instance p0, Lio/github/vinceglb/filekit/exceptions/FileKitNotInitializedException;

    .line 359
    .line 360
    const-string p1, "FileKit not initialized on Android. Please call FileKit.init(activity) first."

    .line 361
    .line 362
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    throw p0
.end method

.method public static final c(Lio/github/vinceglb/filekit/PlatformFile;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$openDirectoryPicker$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$openDirectoryPicker$1;

    .line 7
    .line 8
    iget v1, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$openDirectoryPicker$1;->p:I

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
    iput v1, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$openDirectoryPicker$1;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$openDirectoryPicker$1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$openDirectoryPicker$1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$openDirectoryPicker$1;->p:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    iget-object p0, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$openDirectoryPicker$1;->n:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v0, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$openDirectoryPicker$1;->m:Ljava/lang/String;

    .line 40
    .line 41
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_3

    .line 47
    :catch_1
    move-exception p0

    .line 48
    goto :goto_4

    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v4

    .line 55
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Lio/github/vinceglb/filekit/dialogs/FileKitDialog;->a:Ljava/lang/ref/WeakReference;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry;

    .line 65
    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    new-instance v2, Landroidx/activity/result/contract/ActivityResultContracts$OpenDocumentTree;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    invoke-static {p0}, Lio/github/vinceglb/filekit/PlatformFile_androidKt;->c(Lio/github/vinceglb/filekit/PlatformFile;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move-object p0, v4

    .line 85
    :goto_1
    const-string v5, "No Android activity is available to open the directory picker."

    .line 86
    .line 87
    const-string v6, "Android rejected the directory picker launch."

    .line 88
    .line 89
    :try_start_1
    iput-object v5, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$openDirectoryPicker$1;->m:Ljava/lang/String;

    .line 90
    .line 91
    iput-object v6, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$openDirectoryPicker$1;->n:Ljava/lang/String;

    .line 92
    .line 93
    iput v3, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$openDirectoryPicker$1;->p:I

    .line 94
    .line 95
    invoke-static {p1, v2, p0, v0}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt;->a(Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 99
    if-ne p1, v1, :cond_4

    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_4
    move-object v0, v5

    .line 103
    move-object p0, v6

    .line 104
    :goto_2
    :try_start_2
    check-cast p1, Landroid/net/Uri;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    invoke-static {p1}, Lio/github/vinceglb/filekit/PlatformFile_androidKt;->a(Landroid/net/Uri;)Lio/github/vinceglb/filekit/PlatformFile;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_5
    return-object v4

    .line 114
    :catch_2
    move-exception p1

    .line 115
    move-object p0, v6

    .line 116
    goto :goto_3

    .line 117
    :catch_3
    move-exception p0

    .line 118
    move-object v0, v5

    .line 119
    goto :goto_4

    .line 120
    :goto_3
    new-instance v0, Lio/github/vinceglb/filekit/dialogs/FileKitDialogException;

    .line 121
    .line 122
    invoke-direct {v0, p1, p0}, Lio/github/vinceglb/filekit/dialogs/FileKitDialogException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :goto_4
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKitDialogException;

    .line 127
    .line 128
    invoke-direct {p1, p0, v0}, Lio/github/vinceglb/filekit/dialogs/FileKitDialogException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    :cond_6
    new-instance p0, Lio/github/vinceglb/filekit/exceptions/FileKitNotInitializedException;

    .line 133
    .line 134
    const-string p1, "FileKit not initialized on Android. Please call FileKit.init(activity) first."

    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
.end method

.method public static final d(Lio/github/vinceglb/filekit/dialogs/FileKitType;Lio/github/vinceglb/filekit/dialogs/PickerMode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$platformOpenFilePicker$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$platformOpenFilePicker$1;

    .line 7
    .line 8
    iget v1, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$platformOpenFilePicker$1;->n:I

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
    iput v1, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$platformOpenFilePicker$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$platformOpenFilePicker$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$platformOpenFilePicker$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$platformOpenFilePicker$1;->n:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v4

    .line 47
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput v3, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$platformOpenFilePicker$1;->n:I

    .line 51
    .line 52
    invoke-static {p0, p1, v0}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt;->b(Lio/github/vinceglb/filekit/dialogs/FileKitType;Lio/github/vinceglb/filekit/dialogs/PickerMode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    if-ne p2, v1, :cond_3

    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 60
    .line 61
    sget p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt;->a:I

    .line 62
    .line 63
    new-instance p0, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;

    .line 64
    .line 65
    invoke-direct {p0, p2, v4}, Lio/github/vinceglb/filekit/dialogs/UtilsKt$toPickerStateFlow$1;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->g(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

.method public static final e(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;

    .line 7
    .line 8
    iget v1, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;->o:I

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
    iput v1, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;->o:I

    .line 30
    .line 31
    const-string v3, "No Android activity is available to open the file picker."

    .line 32
    .line 33
    const-string v4, "Android rejected the file picker launch."

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-eq v2, v6, :cond_2

    .line 41
    .line 42
    if-ne v2, v5, :cond_1

    .line 43
    .line 44
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-object p2

    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto :goto_4

    .line 50
    :catch_1
    move-exception p0

    .line 51
    goto :goto_5

    .line 52
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v7

    .line 58
    :cond_2
    iget-object p0, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;->m:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 59
    .line 60
    move-object p1, p0

    .line 61
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 62
    .line 63
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 64
    .line 65
    .line 66
    return-object p2

    .line 67
    :catch_2
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :catch_3
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :try_start_2
    move-object p2, p1

    .line 75
    check-cast p2, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 76
    .line 77
    iput-object p2, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;->m:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 78
    .line 79
    iput v6, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;->o:I

    .line 80
    .line 81
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 85
    if-ne p0, v1, :cond_4

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    return-object p0

    .line 89
    :goto_1
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKitPickerException;

    .line 90
    .line 91
    invoke-direct {p1, v4, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :goto_2
    if-eqz p1, :cond_6

    .line 96
    .line 97
    :try_start_3
    iput-object v7, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;->m:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 98
    .line 99
    iput v5, v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;->o:I

    .line 100
    .line 101
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 105
    if-ne p0, v1, :cond_5

    .line 106
    .line 107
    :goto_3
    return-object v1

    .line 108
    :cond_5
    return-object p0

    .line 109
    :goto_4
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKitPickerException;

    .line 110
    .line 111
    invoke-direct {p1, v4, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :goto_5
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKitPickerException;

    .line 116
    .line 117
    invoke-direct {p1, v3, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_6
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKitPickerException;

    .line 122
    .line 123
    invoke-direct {p1, v3, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method public static final f(Lio/github/vinceglb/filekit/dialogs/FileKitType;)[Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/github/vinceglb/filekit/dialogs/FileKitType$Image;->a:Lio/github/vinceglb/filekit/dialogs/FileKitType$Image;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "image/*"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-array p0, v3, [Ljava/lang/String;

    .line 17
    .line 18
    aput-object v1, p0, v2

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    sget-object v0, Lio/github/vinceglb/filekit/dialogs/FileKitType$Video;->a:Lio/github/vinceglb/filekit/dialogs/FileKitType$Video;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v4, "video/*"

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-array p0, v3, [Ljava/lang/String;

    .line 32
    .line 33
    aput-object v4, p0, v2

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    sget-object v0, Lio/github/vinceglb/filekit/dialogs/FileKitType$ImageAndVideo;->a:Lio/github/vinceglb/filekit/dialogs/FileKitType$ImageAndVideo;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/4 p0, 0x2

    .line 45
    new-array p0, p0, [Ljava/lang/String;

    .line 46
    .line 47
    aput-object v1, p0, v2

    .line 48
    .line 49
    aput-object v4, p0, v3

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    instance-of p0, p0, Lio/github/vinceglb/filekit/dialogs/FileKitType$File;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    const-string p0, "File type does not use visual fallback MIME types"

    .line 58
    .line 59
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_3
    invoke-static {}, Lk8;->e()V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method
