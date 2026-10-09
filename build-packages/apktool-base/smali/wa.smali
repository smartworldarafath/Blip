.class public final synthetic Lwa;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/android/MainActivity;

.field public final synthetic l:Landroid/content/Intent;

.field public final synthetic m:Lnet/blip/android/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/android/MainActivity;Landroid/content/Intent;Lnet/blip/android/MainActivity;I)V
    .locals 0

    .line 1
    iput p4, p0, Lwa;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lwa;->k:Lnet/blip/android/MainActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lwa;->l:Landroid/content/Intent;

    .line 6
    .line 7
    iput-object p3, p0, Lwa;->m:Lnet/blip/android/MainActivity;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lwa;->j:I

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    iget-object v3, v0, Lwa;->l:Landroid/content/Intent;

    .line 7
    .line 8
    iget-object v4, v0, Lwa;->k:Lnet/blip/android/MainActivity;

    .line 9
    .line 10
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    iget-object v7, v0, Lwa;->m:Lnet/blip/android/MainActivity;

    .line 14
    .line 15
    const/4 v8, 0x2

    .line 16
    const/4 v9, 0x1

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    move-object/from16 v2, p2

    .line 25
    .line 26
    check-cast v2, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sget-object v3, Lnet/blip/android/MainActivity;->G:Ljava/lang/String;

    .line 33
    .line 34
    and-int/lit8 v3, v2, 0x3

    .line 35
    .line 36
    if-eq v3, v8, :cond_0

    .line 37
    .line 38
    move v3, v9

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v3, v6

    .line 41
    :goto_0
    and-int/2addr v2, v9

    .line 42
    move-object v14, v1

    .line 43
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 44
    .line 45
    invoke-virtual {v14, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_8

    .line 50
    .line 51
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 52
    .line 53
    const/high16 v2, 0x3f800000    # 1.0f

    .line 54
    .line 55
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 60
    .line 61
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 66
    .line 67
    iget-wide v2, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->p:J

    .line 68
    .line 69
    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 70
    .line 71
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 76
    .line 77
    invoke-static {v2, v6}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-wide v3, v14, Landroidx/compose/runtime/GapComposer;->T:J

    .line 82
    .line 83
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v14, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 96
    .line 97
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 101
    .line 102
    .line 103
    iget-boolean v10, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 104
    .line 105
    if-eqz v10, :cond_1

    .line 106
    .line 107
    sget-object v10, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 108
    .line 109
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 114
    .line 115
    .line 116
    :goto_1
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 117
    .line 118
    invoke-static {v14, v2, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 119
    .line 120
    .line 121
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 122
    .line 123
    invoke-static {v14, v4, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 131
    .line 132
    invoke-static {v14, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 136
    .line 137
    .line 138
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 139
    .line 140
    invoke-static {v14, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    new-array v1, v6, [Landroidx/navigation/Navigator;

    .line 144
    .line 145
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 146
    .line 147
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Landroid/content/Context;

    .line 152
    .line 153
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    new-instance v3, Lz6;

    .line 158
    .line 159
    const/16 v4, 0xc

    .line 160
    .line 161
    invoke-direct {v3, v4}, Lz6;-><init>(I)V

    .line 162
    .line 163
    .line 164
    new-instance v4, Landroidx/navigation/compose/b;

    .line 165
    .line 166
    invoke-direct {v4, v2}, Landroidx/navigation/compose/b;-><init>(Landroid/content/Context;)V

    .line 167
    .line 168
    .line 169
    new-instance v10, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 170
    .line 171
    invoke-direct {v10, v3, v4}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 183
    .line 184
    if-nez v3, :cond_2

    .line 185
    .line 186
    if-ne v4, v11, :cond_3

    .line 187
    .line 188
    :cond_2
    new-instance v4, Landroidx/navigation/compose/a;

    .line 189
    .line 190
    invoke-direct {v4, v2}, Landroidx/navigation/compose/a;-><init>(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :cond_3
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 197
    .line 198
    invoke-static {v1, v10, v4, v14, v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    move-object v12, v1

    .line 203
    check-cast v12, Landroidx/navigation/NavHostController;

    .line 204
    .line 205
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    if-nez v1, :cond_4

    .line 214
    .line 215
    if-ne v2, v11, :cond_5

    .line 216
    .line 217
    :cond_4
    new-instance v2, Lva;

    .line 218
    .line 219
    invoke-direct {v2, v7, v9}, Lva;-><init>(Lnet/blip/android/MainActivity;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :cond_5
    move-object v13, v2

    .line 226
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 227
    .line 228
    const/4 v15, 0x0

    .line 229
    iget-object v10, v0, Lwa;->k:Lnet/blip/android/MainActivity;

    .line 230
    .line 231
    iget-object v0, v0, Lwa;->l:Landroid/content/Intent;

    .line 232
    .line 233
    move-object/from16 v16, v11

    .line 234
    .line 235
    move-object v11, v0

    .line 236
    move-object/from16 v0, v16

    .line 237
    .line 238
    invoke-static/range {v10 .. v15}, Lnet/blip/android/MainActivityKt;->a(Landroid/app/Activity;Landroid/content/Intent;Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    if-nez v1, :cond_6

    .line 250
    .line 251
    if-ne v2, v0, :cond_7

    .line 252
    .line 253
    :cond_6
    new-instance v2, Lva;

    .line 254
    .line 255
    invoke-direct {v2, v7, v8}, Lva;-><init>(Lnet/blip/android/MainActivity;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    :cond_7
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 262
    .line 263
    invoke-static {v12, v2, v14, v6}, Lnet/blip/android/ui/navigation/NavigationRootKt;->c(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_8
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 271
    .line 272
    .line 273
    :goto_2
    return-object v5

    .line 274
    :pswitch_0
    move-object/from16 v0, p1

    .line 275
    .line 276
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 277
    .line 278
    move-object/from16 v1, p2

    .line 279
    .line 280
    check-cast v1, Ljava/lang/Integer;

    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    sget-object v10, Lnet/blip/android/MainActivity;->G:Ljava/lang/String;

    .line 287
    .line 288
    and-int/lit8 v10, v1, 0x3

    .line 289
    .line 290
    if-eq v10, v8, :cond_9

    .line 291
    .line 292
    move v6, v9

    .line 293
    :cond_9
    and-int/2addr v1, v9

    .line 294
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 295
    .line 296
    invoke-virtual {v0, v1, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_a

    .line 301
    .line 302
    new-instance v1, Lwa;

    .line 303
    .line 304
    invoke-direct {v1, v4, v3, v7, v8}, Lwa;-><init>(Lnet/blip/android/MainActivity;Landroid/content/Intent;Lnet/blip/android/MainActivity;I)V

    .line 305
    .line 306
    .line 307
    const v3, 0x7df51248

    .line 308
    .line 309
    .line 310
    invoke-static {v3, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-static {v1, v0, v2}, Lnet/blip/android/ui/androidtheme/AndroidThemeKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 315
    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 319
    .line 320
    .line 321
    :goto_3
    return-object v5

    .line 322
    :pswitch_1
    move-object/from16 v0, p1

    .line 323
    .line 324
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 325
    .line 326
    move-object/from16 v1, p2

    .line 327
    .line 328
    check-cast v1, Ljava/lang/Integer;

    .line 329
    .line 330
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    sget-object v10, Lnet/blip/android/MainActivity;->G:Ljava/lang/String;

    .line 335
    .line 336
    and-int/lit8 v10, v1, 0x3

    .line 337
    .line 338
    if-eq v10, v8, :cond_b

    .line 339
    .line 340
    move v6, v9

    .line 341
    :cond_b
    and-int/2addr v1, v9

    .line 342
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 343
    .line 344
    invoke-virtual {v0, v1, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-eqz v1, :cond_c

    .line 349
    .line 350
    new-instance v1, Lwa;

    .line 351
    .line 352
    invoke-direct {v1, v4, v3, v7, v9}, Lwa;-><init>(Lnet/blip/android/MainActivity;Landroid/content/Intent;Lnet/blip/android/MainActivity;I)V

    .line 353
    .line 354
    .line 355
    const v3, -0x6c54871

    .line 356
    .line 357
    .line 358
    invoke-static {v3, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-static {v1, v0, v2}, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 363
    .line 364
    .line 365
    goto :goto_4

    .line 366
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 367
    .line 368
    .line 369
    :goto_4
    return-object v5

    .line 370
    nop

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
