.class public abstract Lnet/blip/android/ui/util/TransferClipboardKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    :try_start_0
    invoke-static {p0, v0, v1}, Lnet/blip/android/ui/util/TransferClipboardKt;->d(Landroid/content/Context;Ljava/lang/String;Z)Lnet/blip/android/ui/util/TransferClipboardLocation;

    .line 38
    .line 39
    .line 40
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    new-instance v2, Lkotlin/Result$Failure;

    .line 44
    .line 45
    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    move-object v0, v2

    .line 49
    :goto_1
    nop

    .line 50
    instance-of v2, v0, Lkotlin/Result$Failure;

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    :cond_1
    if-eqz v0, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 59
    :cond_3
    return v1
.end method

.method public static final b(Landroid/content/Context;Lnet/blip/libblip/frontend/Transfer;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 5

    .line 1
    instance-of v0, p3, Lnet/blip/android/ui/util/TransferClipboardKt$copyTransferToClipboard$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lnet/blip/android/ui/util/TransferClipboardKt$copyTransferToClipboard$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/ui/util/TransferClipboardKt$copyTransferToClipboard$1;->o:I

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
    iput v1, v0, Lnet/blip/android/ui/util/TransferClipboardKt$copyTransferToClipboard$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/ui/util/TransferClipboardKt$copyTransferToClipboard$1;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lnet/blip/android/ui/util/TransferClipboardKt$copyTransferToClipboard$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/android/ui/util/TransferClipboardKt$copyTransferToClipboard$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    iget-object p0, v0, Lnet/blip/android/ui/util/TransferClipboardKt$copyTransferToClipboard$1;->m:Landroid/content/Context;

    .line 38
    .line 39
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :try_start_1
    iput-object p0, v0, Lnet/blip/android/ui/util/TransferClipboardKt$copyTransferToClipboard$1;->m:Landroid/content/Context;

    .line 53
    .line 54
    iput v4, v0, Lnet/blip/android/ui/util/TransferClipboardKt$copyTransferToClipboard$1;->o:I

    .line 55
    .line 56
    invoke-static {p1, p2, v0}, Lnet/blip/libblip/Transfer_DerivedKt;->e(Lnet/blip/libblip/frontend/Transfer;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    if-ne p3, v1, :cond_3

    .line 61
    .line 62
    return-object v1

    .line 63
    :cond_3
    :goto_1
    check-cast p3, Ljava/util/List;

    .line 64
    .line 65
    new-instance p1, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {p0, v0, v4}, Lnet/blip/android/ui/util/TransferClipboardKt;->d(Landroid/content/Context;Ljava/lang/String;Z)Lnet/blip/android/ui/util/TransferClipboardLocation;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-ne p2, p3, :cond_d

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-nez p2, :cond_c

    .line 111
    .line 112
    new-instance p2, Ljava/util/ArrayList;

    .line 113
    .line 114
    const/16 p3, 0xa

    .line 115
    .line 116
    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    if-eqz p3, :cond_6

    .line 132
    .line 133
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    check-cast p3, Lnet/blip/android/ui/util/TransferClipboardLocation;

    .line 138
    .line 139
    new-instance v0, Lnet/blip/android/ui/util/TransferClipboardItem;

    .line 140
    .line 141
    new-instance v1, Landroid/content/ClipData$Item;

    .line 142
    .line 143
    invoke-static {p0, p3}, Lnet/blip/android/ui/util/TransferClipboardKt;->c(Landroid/content/Context;Lnet/blip/android/ui/util/TransferClipboardLocation;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    iget-object v4, p3, Lnet/blip/android/ui/util/TransferClipboardLocation;->a:Landroid/net/Uri;

    .line 148
    .line 149
    invoke-direct {v1, v2, v3, v3, v4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 150
    .line 151
    .line 152
    iget-object p3, p3, Lnet/blip/android/ui/util/TransferClipboardLocation;->b:Ljava/lang/String;

    .line 153
    .line 154
    invoke-direct {v0, v1, p3}, Lnet/blip/android/ui/util/TransferClipboardItem;-><init>(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    new-instance p1, Lkotlin/collections/builders/SetBuilder;

    .line 162
    .line 163
    invoke-direct {p1}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_7

    .line 175
    .line 176
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lnet/blip/android/ui/util/TransferClipboardItem;

    .line 181
    .line 182
    iget-object v0, v0, Lnet/blip/android/ui/util/TransferClipboardItem;->b:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result p3

    .line 192
    if-eqz p3, :cond_8

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object p3

    .line 199
    :cond_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_a

    .line 204
    .line 205
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Lnet/blip/android/ui/util/TransferClipboardItem;

    .line 210
    .line 211
    iget-object v0, v0, Lnet/blip/android/ui/util/TransferClipboardItem;->a:Landroid/content/ClipData$Item;

    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    if-eqz v0, :cond_9

    .line 218
    .line 219
    const-string p3, "text/plain"

    .line 220
    .line 221
    invoke-virtual {p1, p3}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    :cond_a
    :goto_5
    invoke-static {p1}, Lkotlin/collections/SetsKt;->a(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    const/4 p3, 0x0

    .line 229
    new-array p3, p3, [Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {p1, p3}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, [Ljava/lang/String;

    .line 236
    .line 237
    new-instance p3, Landroid/content/ClipData;

    .line 238
    .line 239
    new-instance v0, Landroid/content/ClipDescription;

    .line 240
    .line 241
    const-string v1, "Received with Blip"

    .line 242
    .line 243
    invoke-direct {v0, v1, p1}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    check-cast p1, Lnet/blip/android/ui/util/TransferClipboardItem;

    .line 251
    .line 252
    iget-object p1, p1, Lnet/blip/android/ui/util/TransferClipboardItem;->a:Landroid/content/ClipData$Item;

    .line 253
    .line 254
    invoke-direct {p3, v0, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 255
    .line 256
    .line 257
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_b

    .line 270
    .line 271
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, Lnet/blip/android/ui/util/TransferClipboardItem;

    .line 276
    .line 277
    iget-object v0, v0, Lnet/blip/android/ui/util/TransferClipboardItem;->a:Landroid/content/ClipData$Item;

    .line 278
    .line 279
    invoke-virtual {p3, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 280
    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_b
    const-string p1, "clipboard"

    .line 284
    .line 285
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    check-cast p0, Landroid/content/ClipboardManager;

    .line 293
    .line 294
    invoke-virtual {p0, p3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 298
    .line 299
    .line 300
    move-result p0

    .line 301
    new-instance p1, Ljava/lang/Integer;

    .line 302
    .line 303
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 304
    .line 305
    .line 306
    return-object p1

    .line 307
    :cond_c
    const-string p0, "Transfer has no items"

    .line 308
    .line 309
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 310
    .line 311
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw p1

    .line 315
    :cond_d
    const-string p0, "Transfer contains unsupported locations"

    .line 316
    .line 317
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 318
    .line 319
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :catchall_0
    move-exception p0

    .line 324
    new-instance p1, Lkotlin/Result$Failure;

    .line 325
    .line 326
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 327
    .line 328
    .line 329
    return-object p1
.end method

.method public static final c(Landroid/content/Context;Lnet/blip/android/ui/util/TransferClipboardLocation;)Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p1, Lnet/blip/android/ui/util/TransferClipboardLocation;->c:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v2, 0x2e

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, v1

    .line 25
    :goto_0
    const-string v2, "txt"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const-string v4, "url"

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    goto/16 :goto_8

    .line 42
    .line 43
    :cond_1
    iget-object v3, p1, Lnet/blip/android/ui/util/TransferClipboardLocation;->d:Ljava/io/File;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const/16 v6, 0x2000

    .line 47
    .line 48
    const-wide/32 v7, 0xf4240

    .line 49
    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 54
    .line 55
    .line 56
    move-result-wide p0

    .line 57
    cmp-long p0, p0, v7

    .line 58
    .line 59
    if-lez p0, :cond_2

    .line 60
    .line 61
    goto/16 :goto_8

    .line 62
    .line 63
    :cond_2
    sget-object p0, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance p1, Ljava/io/InputStreamReader;

    .line 69
    .line 70
    new-instance v7, Ljava/io/FileInputStream;

    .line 71
    .line 72
    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, v7, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 76
    .line 77
    .line 78
    :try_start_0
    new-instance p0, Ljava/io/StringWriter;

    .line 79
    .line 80
    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 81
    .line 82
    .line 83
    new-array v3, v6, [C

    .line 84
    .line 85
    invoke-virtual {p1, v3}, Ljava/io/Reader;->read([C)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    :goto_1
    if-ltz v6, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0, v3, v5, v6}, Ljava/io/Writer;->write([CII)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v3}, Ljava/io/Reader;->read([C)I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    iget-object p1, p1, Lnet/blip/android/ui/util/TransferClipboardLocation;->a:Landroid/net/Uri;

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    if-eqz p0, :cond_7

    .line 128
    .line 129
    :try_start_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    .line 133
    .line 134
    new-array v3, v6, [B

    .line 135
    .line 136
    const-wide/16 v9, 0x0

    .line 137
    .line 138
    :goto_2
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    .line 139
    .line 140
    .line 141
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 142
    if-ltz v6, :cond_6

    .line 143
    .line 144
    int-to-long v11, v6

    .line 145
    add-long/2addr v9, v11

    .line 146
    cmp-long v11, v9, v7

    .line 147
    .line 148
    if-lez v11, :cond_5

    .line 149
    .line 150
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 151
    .line 152
    .line 153
    return-object v1

    .line 154
    :cond_5
    :try_start_3
    invoke-virtual {p1, v3, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catchall_2
    move-exception p1

    .line 159
    goto :goto_3

    .line 160
    :cond_6
    sget-object v3, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 170
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 171
    .line 172
    .line 173
    move-object p0, p1

    .line 174
    goto :goto_4

    .line 175
    :goto_3
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 176
    :catchall_3
    move-exception v0

    .line 177
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    throw v0

    .line 181
    :cond_7
    move-object p0, v1

    .line 182
    :goto_4
    if-nez p0, :cond_8

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_8
    :goto_5
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_9

    .line 190
    .line 191
    return-object p0

    .line 192
    :cond_9
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_b

    .line 197
    .line 198
    :try_start_5
    invoke-static {p0}, Lnet/blip/shared/InternetShortcut$Companion;->a(Ljava/lang/String;)Lnet/blip/shared/InternetShortcut;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    iget-object p0, p0, Lnet/blip/shared/InternetShortcut;->c:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :catchall_4
    move-exception p0

    .line 206
    new-instance p1, Lkotlin/Result$Failure;

    .line 207
    .line 208
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    move-object p0, p1

    .line 212
    :goto_6
    nop

    .line 213
    instance-of p1, p0, Lkotlin/Result$Failure;

    .line 214
    .line 215
    if-eqz p1, :cond_a

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_a
    move-object v1, p0

    .line 219
    :goto_7
    check-cast v1, Ljava/lang/String;

    .line 220
    .line 221
    :cond_b
    :goto_8
    return-object v1
.end method

.method public static final d(Landroid/content/Context;Ljava/lang/String;Z)Lnet/blip/android/ui/util/TransferClipboardLocation;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_6

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const v4, 0x2ff57c

    .line 17
    .line 18
    .line 19
    if-eq v3, v4, :cond_5

    .line 20
    .line 21
    const p1, 0x38b73479

    .line 22
    .line 23
    .line 24
    if-eq v3, p1, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    const-string p1, "content"

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const-string v1, "vnd.android.document/directory"

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    new-instance v1, Lnet/blip/android/ui/util/TransferClipboardLocation;

    .line 57
    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    invoke-static {p0, v0}, Landroidx/documentfile/provider/DocumentFile;->b(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->d()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    move-object p0, v2

    .line 70
    :goto_0
    invoke-direct {v1, v0, p1, p0, v2}, Lnet/blip/android/ui/util/TransferClipboardLocation;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 71
    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_5
    const-string p2, "file"

    .line 75
    .line 76
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_6

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_6
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    if-nez p2, :cond_7

    .line 88
    .line 89
    new-instance p2, Ljava/io/File;

    .line 90
    .line 91
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_7
    invoke-static {v0}, Landroidx/core/net/UriKt;->a(Landroid/net/Uri;)Ljava/io/File;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    :goto_1
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_8

    .line 104
    .line 105
    :goto_2
    return-object v2

    .line 106
    :cond_8
    const p1, 0x7f11007e

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p0, p1, p2}, Landroidx/core/content/FileProvider;->d(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance v0, Lnet/blip/android/ui/util/TransferClipboardLocation;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    if-nez p0, :cond_9

    .line 131
    .line 132
    const-string p0, "application/octet-stream"

    .line 133
    .line 134
    :cond_9
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-direct {v0, p1, p0, v1, p2}, Lnet/blip/android/ui/util/TransferClipboardLocation;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 139
    .line 140
    .line 141
    return-object v0
.end method
