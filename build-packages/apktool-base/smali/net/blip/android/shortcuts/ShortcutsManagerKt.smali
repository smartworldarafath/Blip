.class public abstract Lnet/blip/android/shortcuts/ShortcutsManagerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/activity/ComponentActivity;Lnet/blip/libblip/Peer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p2, Lnet/blip/android/shortcuts/ShortcutsManagerKt$createPeerShortcut$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/blip/android/shortcuts/ShortcutsManagerKt$createPeerShortcut$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/shortcuts/ShortcutsManagerKt$createPeerShortcut$1;->p:I

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
    iput v1, v0, Lnet/blip/android/shortcuts/ShortcutsManagerKt$createPeerShortcut$1;->p:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lnet/blip/android/shortcuts/ShortcutsManagerKt$createPeerShortcut$1;

    .line 22
    .line 23
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p2, v7, Lnet/blip/android/shortcuts/ShortcutsManagerKt$createPeerShortcut$1;->o:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v1, v7, Lnet/blip/android/shortcuts/ShortcutsManagerKt$createPeerShortcut$1;->p:I

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v10, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v10, :cond_1

    .line 39
    .line 40
    iget-object p1, v7, Lnet/blip/android/shortcuts/ShortcutsManagerKt$createPeerShortcut$1;->n:Lnet/blip/libblip/Peer;

    .line 41
    .line 42
    iget-object p0, v7, Lnet/blip/android/shortcuts/ShortcutsManagerKt$createPeerShortcut$1;->m:Landroidx/activity/ComponentActivity;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_5

    .line 48
    :catch_0
    move-exception v0

    .line 49
    :goto_2
    move-object p2, v0

    .line 50
    goto/16 :goto_8

    .line 51
    .line 52
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v9

    .line 58
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/high16 p2, 0x43000000    # 128.0f

    .line 62
    .line 63
    :try_start_1
    invoke-static {p2, p2}, Landroidx/compose/ui/unit/DpKt;->a(FF)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 76
    .line 77
    invoke-static {p2}, Landroidx/compose/ui/unit/DensityKt;->b(F)Landroidx/compose/ui/unit/Density;

    .line 78
    .line 79
    .line 80
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 81
    :try_start_2
    sget-object p2, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 82
    .line 83
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 84
    .line 85
    .line 86
    :try_start_4
    instance-of p2, p1, Lnet/blip/libblip/Peer$User;

    .line 87
    .line 88
    if-eqz p2, :cond_3

    .line 89
    .line 90
    move-object p2, p1

    .line 91
    check-cast p2, Lnet/blip/libblip/Peer$User;

    .line 92
    .line 93
    iget-object p2, p2, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {p2}, Lnet/blip/libblip/User_DerivedKt;->b(Lnet/blip/libblip/User;)Z

    .line 99
    .line 100
    .line 101
    move-result p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 102
    goto :goto_4

    .line 103
    :goto_3
    move-object v1, p0

    .line 104
    goto :goto_7

    .line 105
    :cond_3
    move p2, v8

    .line 106
    :goto_4
    xor-int/lit8 v5, p2, 0x1

    .line 107
    .line 108
    :try_start_5
    new-instance p2, Lnet/blip/android/shortcuts/b;

    .line 109
    .line 110
    invoke-direct {p2, p1}, Lnet/blip/android/shortcuts/b;-><init>(Lnet/blip/libblip/Peer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 111
    .line 112
    .line 113
    :try_start_6
    new-instance v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 114
    .line 115
    const v1, -0x7d4f1fd9

    .line 116
    .line 117
    .line 118
    invoke-direct {v6, v1, v10, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 119
    .line 120
    .line 121
    :try_start_7
    iput-object p0, v7, Lnet/blip/android/shortcuts/ShortcutsManagerKt$createPeerShortcut$1;->m:Landroidx/activity/ComponentActivity;

    .line 122
    .line 123
    iput-object p1, v7, Lnet/blip/android/shortcuts/ShortcutsManagerKt$createPeerShortcut$1;->n:Lnet/blip/libblip/Peer;

    .line 124
    .line 125
    iput v10, v7, Lnet/blip/android/shortcuts/ShortcutsManagerKt$createPeerShortcut$1;->p:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 126
    .line 127
    move-object v1, p0

    .line 128
    :try_start_8
    invoke-static/range {v1 .. v7}, Lnet/blip/android/ui/util/CaptureComposableKt;->a(Landroidx/activity/ComponentActivity;JLandroidx/compose/ui/unit/Density;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 132
    if-ne p2, v0, :cond_4

    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_4
    move-object p0, v1

    .line 136
    :goto_5
    :try_start_9
    check-cast p2, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 137
    .line 138
    invoke-static {p2}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->a(Landroidx/compose/ui/graphics/ImageBitmap;)Landroid/graphics/Bitmap;

    .line 139
    .line 140
    .line 141
    move-result-object v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 142
    goto :goto_9

    .line 143
    :catch_1
    move-exception v0

    .line 144
    :goto_6
    move-object p2, v0

    .line 145
    :goto_7
    move-object p0, v1

    .line 146
    goto :goto_8

    .line 147
    :catch_2
    move-exception v0

    .line 148
    move-object v1, p0

    .line 149
    goto :goto_2

    .line 150
    :catch_3
    move-exception v0

    .line 151
    move-object v1, p0

    .line 152
    move-object p0, v0

    .line 153
    move-object p2, p0

    .line 154
    goto :goto_7

    .line 155
    :catch_4
    move-exception v0

    .line 156
    move-object p2, v0

    .line 157
    goto :goto_3

    .line 158
    :catch_5
    move-exception v0

    .line 159
    move-object v1, p0

    .line 160
    goto :goto_6

    .line 161
    :goto_8
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_8

    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_5

    .line 172
    .line 173
    goto/16 :goto_b

    .line 174
    .line 175
    :cond_5
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    .line 176
    .line 177
    if-nez v0, :cond_7

    .line 178
    .line 179
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v2, "capturing avatar composable: "

    .line 184
    .line 185
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    new-array v1, v8, [Lkotlin/Pair;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    const-string v0, "ShortcutsManager"

    .line 201
    .line 202
    invoke-static {v0, p2, v1}, Lnet/blip/libblip/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 203
    .line 204
    .line 205
    :goto_9
    new-instance p2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    .line 206
    .line 207
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-direct {p2, p0, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroidx/activity/ComponentActivity;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iget-object v1, p2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 223
    .line 224
    iput-object v0, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->e:Ljava/lang/CharSequence;

    .line 225
    .line 226
    iput-boolean v10, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->l:Z

    .line 227
    .line 228
    if-eqz v9, :cond_6

    .line 229
    .line 230
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 231
    .line 232
    const/4 v2, 0x5

    .line 233
    invoke-direct {v0, v2}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 234
    .line 235
    .line 236
    iput-object v9, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 237
    .line 238
    goto :goto_a

    .line 239
    :cond_6
    sget-object v0, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 240
    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    const v3, 0x7f0800d6

    .line 253
    .line 254
    .line 255
    invoke-static {v0, v2, v3}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    :goto_a
    iput-object v0, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 260
    .line 261
    const-string v0, "net.blip.android.SHARE_TARGET"

    .line 262
    .line 263
    invoke-static {v0}, Lkotlin/collections/SetsKt;->e(Ljava/lang/Object;)Ljava/util/Set;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    new-instance v2, Landroidx/collection/ArraySet;

    .line 268
    .line 269
    invoke-direct {v2, v8}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v0}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 273
    .line 274
    .line 275
    iput-object v2, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->j:Ljava/util/Set;

    .line 276
    .line 277
    new-instance v0, Landroidx/core/app/Person$Builder;

    .line 278
    .line 279
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    iput-object v2, v0, Landroidx/core/app/Person$Builder;->a:Ljava/lang/String;

    .line 287
    .line 288
    instance-of v2, p1, Lnet/blip/libblip/Peer$Device;

    .line 289
    .line 290
    iput-boolean v2, v0, Landroidx/core/app/Person$Builder;->e:Z

    .line 291
    .line 292
    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->a()Landroidx/core/app/Person;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    filled-new-array {v0}, [Landroidx/core/app/Person;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    iput-object v0, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->i:[Landroidx/core/app/Person;

    .line 301
    .line 302
    sget-object v0, Lnet/blip/android/MainActivity;->G:Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    new-instance v0, Landroid/content/Intent;

    .line 312
    .line 313
    const-class v2, Lnet/blip/android/MainActivity;

    .line 314
    .line 315
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    .line 317
    .line 318
    sget-object p0, Lnet/blip/android/MainActivity;->H:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    .line 322
    .line 323
    const/high16 p0, 0x24000000

    .line 324
    .line 325
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 326
    .line 327
    .line 328
    sget-object p0, Lnet/blip/android/MainActivity;->J:Ljava/lang/String;

    .line 329
    .line 330
    invoke-static {p1}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    .line 336
    .line 337
    filled-new-array {v0}, [Landroid/content/Intent;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    iput-object p0, v1, Landroidx/core/content/pm/ShortcutInfoCompat;->c:[Landroid/content/Intent;

    .line 342
    .line 343
    invoke-virtual {p2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->a()Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    return-object p0

    .line 348
    :cond_7
    throw p2

    .line 349
    :cond_8
    :goto_b
    return-object v9
.end method

.method public static final b(Landroid/content/Context;Lnet/blip/libblip/PeerId;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p0, p1}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->c(Landroid/content/Context;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static final c(Landroid/content/Context;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    invoke-static {p0}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->d(Landroid/content/Context;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Lkotlin/collections/SetsKt;->d(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "peer_shortcuts"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "disabled_shortcut_ids"

    .line 29
    .line 30
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    .line 36
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    const/16 v1, 0x1e

    .line 40
    .line 41
    const-class v2, Landroid/content/pm/ShortcutManager;

    .line 42
    .line 43
    if-ge v0, v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->b(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->a(Landroid/content/Context;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lio/sentry/d;->i()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 94
    .line 95
    invoke-static {v0, p1}, Lj;->r(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->b(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->a(Landroid/content/Context;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_4

    .line 120
    .line 121
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 126
    .line 127
    const-string v1, "This peer is no longer available"

    .line 128
    .line 129
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->b(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->a(Landroid/content/Context;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    check-cast p0, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_3

    .line 154
    .line 155
    :goto_1
    return-void

    .line 156
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {}, Lio/sentry/d;->i()V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lio/sentry/d;->i()V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public static final d(Landroid/content/Context;)Ljava/util/Set;
    .locals 2

    .line 1
    const-string v0, "peer_shortcuts"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "disabled_shortcut_ids"

    .line 9
    .line 10
    sget-object v1, Lkotlin/collections/EmptySet;->j:Lkotlin/collections/EmptySet;

    .line 11
    .line 12
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    check-cast p0, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->a0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    if-nez p0, :cond_1

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_1
    return-object p0
.end method

.method public static final e(Landroid/content/Context;Lnet/blip/libblip/PeerId;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->a(Landroid/content/Context;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    invoke-static {}, Lio/sentry/d;->i()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    throw p0
.end method

.method public static final f(Landroidx/activity/ComponentActivity;Lnet/blip/libblip/Peer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lnet/blip/android/shortcuts/ShortcutsManagerKt$requestPinPeerShortcut$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/blip/android/shortcuts/ShortcutsManagerKt$requestPinPeerShortcut$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/shortcuts/ShortcutsManagerKt$requestPinPeerShortcut$1;->o:I

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
    iput v1, v0, Lnet/blip/android/shortcuts/ShortcutsManagerKt$requestPinPeerShortcut$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/shortcuts/ShortcutsManagerKt$requestPinPeerShortcut$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/blip/android/shortcuts/ShortcutsManagerKt$requestPinPeerShortcut$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/android/shortcuts/ShortcutsManagerKt$requestPinPeerShortcut$1;->o:I

    .line 30
    .line 31
    const-class v3, Landroid/content/pm/ShortcutManager;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v5, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lnet/blip/android/shortcuts/ShortcutsManagerKt$requestPinPeerShortcut$1;->m:Landroidx/activity/ComponentActivity;

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v4

    .line 51
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Landroid/content/pm/ShortcutManager;

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_3

    .line 68
    .line 69
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_3
    iput-object p0, v0, Lnet/blip/android/shortcuts/ShortcutsManagerKt$requestPinPeerShortcut$1;->m:Landroidx/activity/ComponentActivity;

    .line 73
    .line 74
    iput v5, v0, Lnet/blip/android/shortcuts/ShortcutsManagerKt$requestPinPeerShortcut$1;->o:I

    .line 75
    .line 76
    invoke-static {p0, p1, v0}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->a(Landroidx/activity/ComponentActivity;Lnet/blip/libblip/Peer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-ne p2, v1, :cond_4

    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_4
    :goto_1
    check-cast p2, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 84
    .line 85
    if-nez p2, :cond_5

    .line 86
    .line 87
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_5
    iget-object p1, p2, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-static {p0}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->d(Landroid/content/Context;)Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_6

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
    const-string v1, "peer_shortcuts"

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v2, "disabled_shortcut_ids"

    .line 118
    .line 119
    invoke-static {v0, p1}, Lkotlin/collections/SetsKt;->b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    .line 129
    .line 130
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->c(Ljava/util/List;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 162
    .line 163
    iget-object v0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_7
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Landroid/content/pm/ShortcutManager;

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutManager;->enableShortcuts(Ljava/util/List;)V

    .line 176
    .line 177
    .line 178
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->b(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->a(Landroid/content/Context;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_8

    .line 200
    .line 201
    :goto_3
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 206
    .line 207
    invoke-virtual {p2}, Landroidx/core/content/pm/ShortcutInfoCompat;->b()Landroid/content/pm/ShortcutInfo;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    return-object p0

    .line 220
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-static {}, Lio/sentry/d;->i()V

    .line 228
    .line 229
    .line 230
    return-object v4
.end method
