.class public abstract Lnet/blip/android/ui/util/UmbrellaContentPickerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroid/content/Context;Lnet/blip/shared/ScratchFileWriter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    instance-of v1, v0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;

    .line 9
    .line 10
    iget v2, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->t:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->t:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->s:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v3, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->t:I

    .line 32
    .line 33
    const-string v4, "Pasted text"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    const/4 v8, 0x0

    .line 39
    if-eqz v3, :cond_4

    .line 40
    .line 41
    if-eq v3, v7, :cond_3

    .line 42
    .line 43
    if-eq v3, v6, :cond_2

    .line 44
    .line 45
    if-ne v3, v5, :cond_1

    .line 46
    .line 47
    iget v3, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->r:I

    .line 48
    .line 49
    iget v9, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->q:I

    .line 50
    .line 51
    iget-object v10, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->p:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v10, Ljava/util/List;

    .line 54
    .line 55
    iget-object v11, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->o:Ljava/util/List;

    .line 56
    .line 57
    iget-object v12, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->n:Landroid/content/ClipData;

    .line 58
    .line 59
    iget-object v13, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->m:Lnet/blip/shared/ScratchFileWriter;

    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_8

    .line 65
    .line 66
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v8

    .line 72
    :cond_2
    iget v3, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->r:I

    .line 73
    .line 74
    iget v9, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->q:I

    .line 75
    .line 76
    iget-object v10, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->p:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v10, Ljava/lang/String;

    .line 79
    .line 80
    iget-object v10, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->o:Ljava/util/List;

    .line 81
    .line 82
    iget-object v11, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->n:Landroid/content/ClipData;

    .line 83
    .line 84
    iget-object v12, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->m:Lnet/blip/shared/ScratchFileWriter;

    .line 85
    .line 86
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :cond_3
    iget v3, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->r:I

    .line 92
    .line 93
    iget v9, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->q:I

    .line 94
    .line 95
    iget-object v10, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->p:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v10, Ljava/lang/String;

    .line 98
    .line 99
    iget-object v11, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->o:Ljava/util/List;

    .line 100
    .line 101
    iget-object v12, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->n:Landroid/content/ClipData;

    .line 102
    .line 103
    iget-object v13, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->m:Lnet/blip/shared/ScratchFileWriter;

    .line 104
    .line 105
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "clipboard"

    .line 114
    .line 115
    move-object/from16 v3, p0

    .line 116
    .line 117
    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    check-cast v0, Landroid/content/ClipboardManager;

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-nez v0, :cond_5

    .line 131
    .line 132
    sget-object v0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    const/4 v10, 0x0

    .line 145
    move v12, v10

    .line 146
    move-object v10, v3

    .line 147
    move v3, v9

    .line 148
    move v9, v12

    .line 149
    move-object v12, v0

    .line 150
    move-object/from16 v0, p1

    .line 151
    .line 152
    :goto_1
    if-ge v9, v3, :cond_f

    .line 153
    .line 154
    invoke-virtual {v12, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    if-eqz v13, :cond_6

    .line 171
    .line 172
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto/16 :goto_9

    .line 183
    .line 184
    :cond_6
    if-eqz v14, :cond_c

    .line 185
    .line 186
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    invoke-static {v11, v8}, Lnet/blip/shared/InternetShortcutKt;->a(Ljava/lang/String;Ljava/lang/String;)Lnet/blip/shared/InternetShortcut;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    if-eqz v13, :cond_a

    .line 195
    .line 196
    iget-object v14, v13, Lnet/blip/shared/InternetShortcut;->b:Ljava/lang/String;

    .line 197
    .line 198
    if-nez v14, :cond_7

    .line 199
    .line 200
    const-string v14, "Pasted link"

    .line 201
    .line 202
    :cond_7
    iget-object v13, v13, Lnet/blip/shared/InternetShortcut;->a:Lio/ktor/http/Url;

    .line 203
    .line 204
    new-instance v15, Lnet/blip/shared/InternetShortcut;

    .line 205
    .line 206
    invoke-direct {v15, v13, v14}, Lnet/blip/shared/InternetShortcut;-><init>(Lio/ktor/http/Url;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iput-object v0, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->m:Lnet/blip/shared/ScratchFileWriter;

    .line 210
    .line 211
    iput-object v12, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->n:Landroid/content/ClipData;

    .line 212
    .line 213
    iput-object v10, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->o:Ljava/util/List;

    .line 214
    .line 215
    iput-object v11, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->p:Ljava/lang/Object;

    .line 216
    .line 217
    iput v9, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->q:I

    .line 218
    .line 219
    iput v3, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->r:I

    .line 220
    .line 221
    iput v7, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->t:I

    .line 222
    .line 223
    invoke-static {v0, v15, v1}, Lnet/blip/shared/ScratchFileKt;->a(Lnet/blip/shared/ScratchFileWriter;Lnet/blip/shared/InternetShortcut;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v13

    .line 227
    if-ne v13, v2, :cond_8

    .line 228
    .line 229
    goto :goto_7

    .line 230
    :cond_8
    move-object/from16 v16, v13

    .line 231
    .line 232
    move-object v13, v0

    .line 233
    move-object/from16 v0, v16

    .line 234
    .line 235
    move-object/from16 v16, v11

    .line 236
    .line 237
    move-object v11, v10

    .line 238
    move-object/from16 v10, v16

    .line 239
    .line 240
    :goto_2
    check-cast v0, Ljava/lang/String;

    .line 241
    .line 242
    if-nez v0, :cond_9

    .line 243
    .line 244
    move-object/from16 v16, v11

    .line 245
    .line 246
    move-object v11, v10

    .line 247
    move-object/from16 v10, v16

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_9
    move-object v10, v11

    .line 251
    goto :goto_5

    .line 252
    :cond_a
    move-object v13, v0

    .line 253
    :goto_3
    iput-object v13, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->m:Lnet/blip/shared/ScratchFileWriter;

    .line 254
    .line 255
    iput-object v12, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->n:Landroid/content/ClipData;

    .line 256
    .line 257
    iput-object v10, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->o:Ljava/util/List;

    .line 258
    .line 259
    iput-object v8, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->p:Ljava/lang/Object;

    .line 260
    .line 261
    iput v9, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->q:I

    .line 262
    .line 263
    iput v3, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->r:I

    .line 264
    .line 265
    iput v6, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->t:I

    .line 266
    .line 267
    invoke-static {v13, v11, v4, v1}, Lnet/blip/shared/ScratchFileWriter;->b(Lnet/blip/shared/ScratchFileWriter;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    if-ne v0, v2, :cond_b

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_b
    move-object v11, v12

    .line 275
    move-object v12, v13

    .line 276
    :goto_4
    check-cast v0, Ljava/lang/String;

    .line 277
    .line 278
    move-object v13, v12

    .line 279
    move-object v12, v11

    .line 280
    :goto_5
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    :goto_6
    move-object v0, v13

    .line 284
    goto :goto_9

    .line 285
    :cond_c
    if-eqz v11, :cond_e

    .line 286
    .line 287
    invoke-virtual {v11, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    iput-object v0, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->m:Lnet/blip/shared/ScratchFileWriter;

    .line 295
    .line 296
    iput-object v12, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->n:Landroid/content/ClipData;

    .line 297
    .line 298
    iput-object v10, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->o:Ljava/util/List;

    .line 299
    .line 300
    iput-object v10, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->p:Ljava/lang/Object;

    .line 301
    .line 302
    iput v9, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->q:I

    .line 303
    .line 304
    iput v3, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->r:I

    .line 305
    .line 306
    iput v5, v1, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$clipboardLocations$1;->t:I

    .line 307
    .line 308
    invoke-static {v0, v11, v4, v1}, Lnet/blip/shared/ScratchFileWriter;->b(Lnet/blip/shared/ScratchFileWriter;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v11

    .line 312
    if-ne v11, v2, :cond_d

    .line 313
    .line 314
    :goto_7
    return-object v2

    .line 315
    :cond_d
    move-object v13, v0

    .line 316
    move-object v0, v11

    .line 317
    move-object v11, v10

    .line 318
    :goto_8
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-object v10, v11

    .line 322
    goto :goto_6

    .line 323
    :cond_e
    :goto_9
    add-int/2addr v9, v7

    .line 324
    goto/16 :goto_1

    .line 325
    .line 326
    :cond_f
    return-object v10
.end method

.method public static final b(Landroidx/compose/runtime/Composer;)Z
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 22
    .line 23
    if-ne v2, v1, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "android.hardware.camera.any"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    check-cast v2, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0
.end method

.method public static final c(Landroidx/compose/runtime/Composer;)Z
    .locals 7

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Context;

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->u:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/compose/ui/platform/WindowInfo;

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/compose/ui/platform/LazyWindowInfo;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    .line 39
    :cond_0
    const-string v2, "clipboard"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-object v3, v0

    .line 49
    check-cast v3, Landroid/content/ClipboardManager;

    .line 50
    .line 51
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    check-cast v3, Landroid/content/ClipboardManager;

    .line 55
    .line 56
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    if-ne v2, v4, :cond_3

    .line 67
    .line 68
    :cond_2
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 84
    .line 85
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    or-int/2addr v0, v5

    .line 94
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-nez v0, :cond_4

    .line 99
    .line 100
    if-ne v5, v4, :cond_5

    .line 101
    .line 102
    :cond_4
    new-instance v5, Lec;

    .line 103
    .line 104
    const/16 v0, 0x18

    .line 105
    .line 106
    invoke-direct {v5, v0, v3, v2}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 113
    .line 114
    invoke-static {v3, v5, p0}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    or-int/2addr v5, v6

    .line 130
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    or-int/2addr v5, v6

    .line 135
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    if-nez v5, :cond_6

    .line 140
    .line 141
    if-ne v6, v4, :cond_7

    .line 142
    .line 143
    :cond_6
    new-instance v6, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberHasClipboardContent$2$1;

    .line 144
    .line 145
    const/4 v4, 0x0

    .line 146
    invoke-direct {v6, v1, v3, v2, v4}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberHasClipboardContent$2$1;-><init>(ZLandroid/content/ClipboardManager;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_7
    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 153
    .line 154
    invoke-static {v3, v0, v6, p0}, Landroidx/compose/runtime/EffectsKt;->f(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    check-cast p0, Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    return p0
.end method

.method public static final d(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function1;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt;->e(Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function2;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    or-int/2addr v3, v4

    .line 36
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    or-int/2addr v3, v4

    .line 41
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    if-ne v4, v2, :cond_2

    .line 48
    .line 49
    :cond_1
    new-instance v4, Lnet/blip/android/ui/util/b;

    .line 50
    .line 51
    invoke-direct {v4, p0, v0, v1}, Lnet/blip/android/ui/util/b;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 58
    .line 59
    return-object v4
.end method

.method public static final e(Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function2;
    .locals 15

    .line 1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lnet/blip/android/ui/util/LaunchersKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;)Lnet/blip/android/ui/util/SuspendingPermissionState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0}, Lnet/blip/shared/ContentPicker_androidKt;->b(Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    or-int/2addr v2, v3

    .line 22
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    if-ne v3, v4, :cond_1

    .line 32
    .line 33
    :cond_0
    new-instance v3, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;

    .line 34
    .line 35
    invoke-direct {v3, v0, v1, v5}, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;-><init>(Lnet/blip/android/ui/util/SuspendingPermissionState;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    move-object v7, v3

    .line 42
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 43
    .line 44
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/content/Context;

    .line 51
    .line 52
    new-instance v2, Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    sget-object v3, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 58
    .line 59
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 64
    .line 65
    if-eqz v3, :cond_1a

    .line 66
    .line 67
    invoke-static {v3}, Landroidx/lifecycle/ViewModelStoreOwnerDefaults;->a(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const-class v8, Lnet/blip/android/ui/util/LauncherChannelRegistry;

    .line 72
    .line 73
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-static {v8, v3, v5, v6, p0}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lnet/blip/android/ui/util/LauncherChannelRegistry;

    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    new-array v8, v6, [Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    const/4 v10, 0x7

    .line 91
    if-ne v9, v4, :cond_2

    .line 92
    .line 93
    new-instance v9, Lx9;

    .line 94
    .line 95
    invoke-direct {v9, v10}, Lx9;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 102
    .line 103
    invoke-static {v8, v9, p0}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->c([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    check-cast v8, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    if-nez v9, :cond_3

    .line 121
    .line 122
    if-ne v11, v4, :cond_5

    .line 123
    .line 124
    :cond_3
    iget-object v3, v3, Lnet/blip/android/ui/util/LauncherChannelRegistry;->b:Ljava/util/LinkedHashMap;

    .line 125
    .line 126
    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    if-nez v9, :cond_4

    .line 131
    .line 132
    invoke-static {v6, v10, v5}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_4
    move-object v11, v9

    .line 140
    check-cast v11, Lkotlinx/coroutines/channels/Channel;

    .line 141
    .line 142
    invoke-virtual {p0, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_5
    check-cast v11, Lkotlinx/coroutines/channels/Channel;

    .line 146
    .line 147
    invoke-virtual {p0, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    if-nez v3, :cond_6

    .line 156
    .line 157
    if-ne v8, v4, :cond_7

    .line 158
    .line 159
    :cond_6
    new-instance v8, Lnet/blip/android/ui/util/a;

    .line 160
    .line 161
    invoke-direct {v8, v6, v11}, Lnet/blip/android/ui/util/a;-><init>(ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_7
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 168
    .line 169
    invoke-static {v2, v8, p0}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    invoke-virtual {p0, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    or-int/2addr v3, v8

    .line 182
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    if-nez v3, :cond_8

    .line 187
    .line 188
    if-ne v8, v4, :cond_9

    .line 189
    .line 190
    :cond_8
    new-instance v8, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;

    .line 191
    .line 192
    invoke-direct {v8, v2, v11, v5}, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;-><init>(Landroidx/activity/compose/ManagedActivityResultLauncher;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_9
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 199
    .line 200
    new-instance v2, Lnet/blip/android/ui/util/SuspendingLauncher;

    .line 201
    .line 202
    invoke-direct {v2, v8}, Lnet/blip/android/ui/util/SuspendingLauncher;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 203
    .line 204
    .line 205
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 206
    .line 207
    invoke-static {v3, p0}, Lnet/blip/android/ui/util/LaunchersKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;)Lnet/blip/android/ui/util/SuspendingPermissionState;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    or-int/2addr v8, v9

    .line 220
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    or-int/2addr v8, v9

    .line 225
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    if-nez v8, :cond_a

    .line 230
    .line 231
    if-ne v9, v4, :cond_b

    .line 232
    .line 233
    :cond_a
    new-instance v9, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;

    .line 234
    .line 235
    invoke-direct {v9, v1, v2, v3, v5}, Lnet/blip/android/ui/util/LaunchersKt$rememberCameraLauncher$launch$1$1;-><init>(Landroid/content/Context;Lnet/blip/android/ui/util/SuspendingLauncher;Lnet/blip/android/ui/util/SuspendingPermissionState;Lkotlin/coroutines/Continuation;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :cond_b
    move-object v8, v9

    .line 242
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 243
    .line 244
    sget-object v1, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 245
    .line 246
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    move-object v9, v1

    .line 251
    check-cast v9, Landroidx/navigation/NavHostController;

    .line 252
    .line 253
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    move-object v10, v0

    .line 258
    check-cast v10, Landroid/content/Context;

    .line 259
    .line 260
    invoke-virtual {p0, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    if-nez v0, :cond_c

    .line 269
    .line 270
    if-ne v1, v4, :cond_17

    .line 271
    .line 272
    :cond_c
    new-instance v1, Lnet/blip/shared/ScratchFileWriter;

    .line 273
    .line 274
    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    new-instance v2, Ljava/io/File;

    .line 282
    .line 283
    const-string v3, "scratch"

    .line 284
    .line 285
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    sget-char v5, Ljava/io/File;->separatorChar:C

    .line 296
    .line 297
    const/4 v11, 0x4

    .line 298
    invoke-static {v3, v5, v6, v11}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    const/4 v13, 0x1

    .line 303
    if-nez v12, :cond_f

    .line 304
    .line 305
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 306
    .line 307
    .line 308
    move-result v12

    .line 309
    if-le v12, v13, :cond_e

    .line 310
    .line 311
    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    .line 312
    .line 313
    .line 314
    move-result v12

    .line 315
    if-ne v12, v5, :cond_e

    .line 316
    .line 317
    const/4 v12, 0x2

    .line 318
    invoke-static {v3, v5, v12, v11}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 319
    .line 320
    .line 321
    move-result v12

    .line 322
    if-ltz v12, :cond_e

    .line 323
    .line 324
    add-int/2addr v12, v13

    .line 325
    invoke-static {v3, v5, v12, v11}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 326
    .line 327
    .line 328
    move-result v11

    .line 329
    if-ltz v11, :cond_d

    .line 330
    .line 331
    add-int/2addr v11, v13

    .line 332
    goto :goto_0

    .line 333
    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 334
    .line 335
    .line 336
    move-result v11

    .line 337
    goto :goto_0

    .line 338
    :cond_e
    move v11, v13

    .line 339
    goto :goto_0

    .line 340
    :cond_f
    const/16 v11, 0x3a

    .line 341
    .line 342
    if-lez v12, :cond_10

    .line 343
    .line 344
    add-int/lit8 v14, v12, -0x1

    .line 345
    .line 346
    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    .line 347
    .line 348
    .line 349
    move-result v14

    .line 350
    if-ne v14, v11, :cond_10

    .line 351
    .line 352
    add-int/lit8 v11, v12, 0x1

    .line 353
    .line 354
    goto :goto_0

    .line 355
    :cond_10
    const/4 v14, -0x1

    .line 356
    if-ne v12, v14, :cond_11

    .line 357
    .line 358
    invoke-static {v3, v11}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;C)Z

    .line 359
    .line 360
    .line 361
    move-result v11

    .line 362
    if-eqz v11, :cond_11

    .line 363
    .line 364
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 365
    .line 366
    .line 367
    move-result v11

    .line 368
    goto :goto_0

    .line 369
    :cond_11
    move v11, v6

    .line 370
    :goto_0
    if-lez v11, :cond_12

    .line 371
    .line 372
    move v3, v13

    .line 373
    goto :goto_1

    .line 374
    :cond_12
    move v3, v6

    .line 375
    :goto_1
    if-eqz v3, :cond_13

    .line 376
    .line 377
    goto :goto_4

    .line 378
    :cond_13
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-nez v3, :cond_14

    .line 390
    .line 391
    move v6, v13

    .line 392
    :cond_14
    if-nez v6, :cond_16

    .line 393
    .line 394
    invoke-static {v0, v5}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;C)Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-eqz v3, :cond_15

    .line 399
    .line 400
    goto :goto_3

    .line 401
    :cond_15
    new-instance v3, Ljava/io/File;

    .line 402
    .line 403
    new-instance v6, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    :goto_2
    move-object v2, v3

    .line 425
    goto :goto_4

    .line 426
    :cond_16
    :goto_3
    new-instance v3, Ljava/io/File;

    .line 427
    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    goto :goto_2

    .line 447
    :goto_4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    invoke-direct {v1, v0}, Lnet/blip/shared/ScratchFileWriter;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    :cond_17
    move-object v11, v1

    .line 461
    check-cast v11, Lnet/blip/shared/ScratchFileWriter;

    .line 462
    .line 463
    invoke-virtual {p0, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    invoke-virtual {p0, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    or-int/2addr v0, v1

    .line 472
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    if-nez v0, :cond_18

    .line 477
    .line 478
    if-ne v1, v4, :cond_19

    .line 479
    .line 480
    :cond_18
    new-instance v6, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;

    .line 481
    .line 482
    const/4 v12, 0x0

    .line 483
    invoke-direct/range {v6 .. v12}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/navigation/NavHostController;Landroid/content/Context;Lnet/blip/shared/ScratchFileWriter;Lkotlin/coroutines/Continuation;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {p0, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    move-object v1, v6

    .line 490
    :cond_19
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 491
    .line 492
    return-object v1

    .line 493
    :cond_1a
    const-string p0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 494
    .line 495
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    return-object v5
.end method
