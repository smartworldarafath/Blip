.class public final synthetic Lnet/blip/android/ui/onboarding/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/MutableState;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic m:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/onboarding/b;->j:Landroidx/compose/runtime/MutableState;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/onboarding/b;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/onboarding/b;->l:Landroidx/compose/ui/focus/FocusRequester;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/android/ui/onboarding/b;->m:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    move-object/from16 v2, p2

    .line 12
    .line 13
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 14
    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    check-cast v3, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    and-int/lit8 v4, v3, 0x6

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    move-object v4, v2

    .line 29
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    const/4 v4, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v4, v5

    .line 40
    :goto_0
    or-int/2addr v3, v4

    .line 41
    :cond_1
    and-int/lit8 v4, v3, 0x13

    .line 42
    .line 43
    const/16 v6, 0x12

    .line 44
    .line 45
    const/4 v7, 0x1

    .line 46
    const/4 v8, 0x0

    .line 47
    if-eq v4, v6, :cond_2

    .line 48
    .line 49
    move v4, v7

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v4, v8

    .line 52
    :goto_1
    and-int/2addr v3, v7

    .line 53
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 54
    .line 55
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_b

    .line 60
    .line 61
    const/high16 v3, 0x3f800000    # 1.0f

    .line 62
    .line 63
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 64
    .line 65
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 66
    .line 67
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 68
    .line 69
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 70
    .line 71
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 72
    .line 73
    const/16 v12, 0x36

    .line 74
    .line 75
    sget-object v13, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    const v0, -0x1a44c59f

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 83
    .line 84
    .line 85
    const/high16 v0, 0x3f400000    # 0.75f

    .line 86
    .line 87
    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SizeKt;->b(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 92
    .line 93
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 94
    .line 95
    invoke-static {v1, v5, v2, v8}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget-wide v14, v2, Landroidx/compose/runtime/GapComposer;->T:J

    .line 100
    .line 101
    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 114
    .line 115
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 119
    .line 120
    .line 121
    iget-boolean v15, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 122
    .line 123
    if-eqz v15, :cond_3

    .line 124
    .line 125
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-static {v2, v1, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v2, v14, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v2, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v2, v0, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 149
    .line 150
    .line 151
    invoke-static {}, Landroidx/compose/foundation/layout/ColumnScope;->a()Landroidx/compose/ui/Modifier;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const-string v1, "Sending sign-in code\u2026"

    .line 163
    .line 164
    invoke-static {v0, v1, v2, v12}, Lnet/blip/android/ui/onboarding/ComposablesKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Landroidx/compose/foundation/layout/ColumnScope;->a()Landroidx/compose/ui/Modifier;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :cond_4
    const v1, -0x1a3c7c8b

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 186
    .line 187
    .line 188
    const/high16 v1, 0x41c00000    # 24.0f

    .line 189
    .line 190
    const/4 v14, 0x0

    .line 191
    invoke-static {v11, v1, v14, v5}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const/high16 v5, 0x42000000    # 32.0f

    .line 196
    .line 197
    invoke-static {v5}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 202
    .line 203
    invoke-static {v5, v14, v2, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    iget-wide v14, v2, Landroidx/compose/runtime/GapComposer;->T:J

    .line 208
    .line 209
    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 214
    .line 215
    .line 216
    move-result-object v14

    .line 217
    invoke-static {v2, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 222
    .line 223
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 227
    .line 228
    .line 229
    iget-boolean v15, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 230
    .line 231
    if-eqz v15, :cond_5

    .line 232
    .line 233
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 238
    .line 239
    .line 240
    :goto_3
    invoke-static {v2, v5, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v2, v14, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-static {v2, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v2, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v2, v1}, Lnet/blip/android/ui/util/KeyboardKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    iget-object v1, v0, Lnet/blip/android/ui/onboarding/b;->m:Landroidx/compose/runtime/MutableState;

    .line 268
    .line 269
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    move-object v10, v3

    .line 274
    check-cast v10, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 275
    .line 276
    new-instance v16, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 277
    .line 278
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 279
    .line 280
    const/4 v15, 0x4

    .line 281
    move-object/from16 v11, v16

    .line 282
    .line 283
    const/16 v16, 0x70

    .line 284
    .line 285
    const/4 v12, 0x0

    .line 286
    const/4 v14, 0x6

    .line 287
    invoke-direct/range {v11 .. v16}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;III)V

    .line 288
    .line 289
    .line 290
    iget-object v3, v0, Lnet/blip/android/ui/onboarding/b;->k:Lkotlin/jvm/functions/Function1;

    .line 291
    .line 292
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 301
    .line 302
    if-nez v4, :cond_6

    .line 303
    .line 304
    if-ne v5, v6, :cond_7

    .line 305
    .line 306
    :cond_6
    new-instance v5, Llc;

    .line 307
    .line 308
    invoke-direct {v5, v8, v1, v3}, Llc;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    :cond_7
    move-object v13, v5

    .line 315
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 316
    .line 317
    new-instance v12, Landroidx/compose/foundation/text/KeyboardActions;

    .line 318
    .line 319
    move-object v14, v13

    .line 320
    move-object v15, v13

    .line 321
    move-object/from16 v16, v13

    .line 322
    .line 323
    move-object/from16 v17, v13

    .line 324
    .line 325
    move-object/from16 v18, v13

    .line 326
    .line 327
    invoke-direct/range {v12 .. v18}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    if-ne v3, v6, :cond_8

    .line 335
    .line 336
    new-instance v3, Li2;

    .line 337
    .line 338
    const/16 v4, 0x9

    .line 339
    .line 340
    invoke-direct {v3, v1, v4}, Li2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    :cond_8
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 347
    .line 348
    const v22, 0xc30d80

    .line 349
    .line 350
    .line 351
    const/16 v23, 0xe50

    .line 352
    .line 353
    move-object/from16 v17, v12

    .line 354
    .line 355
    const-string v12, "your.email@example.com"

    .line 356
    .line 357
    const/4 v13, 0x0

    .line 358
    iget-object v14, v0, Lnet/blip/android/ui/onboarding/b;->l:Landroidx/compose/ui/focus/FocusRequester;

    .line 359
    .line 360
    const/4 v15, 0x0

    .line 361
    const/16 v18, 0x0

    .line 362
    .line 363
    const/16 v19, 0x0

    .line 364
    .line 365
    const/16 v20, 0x0

    .line 366
    .line 367
    move-object/from16 v21, v2

    .line 368
    .line 369
    move-object/from16 v16, v11

    .line 370
    .line 371
    move-object v11, v3

    .line 372
    invoke-static/range {v9 .. v23}, Lnet/blip/android/ui/components/StyledTextFieldKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/runtime/Composer;II)V

    .line 373
    .line 374
    .line 375
    move-object v1, v14

    .line 376
    sget-object v3, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 377
    .line 378
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 383
    .line 384
    iget-object v9, v3, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 385
    .line 386
    sget-object v3, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 387
    .line 388
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 393
    .line 394
    iget-wide v10, v3, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 395
    .line 396
    const/16 v3, 0xe

    .line 397
    .line 398
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 399
    .line 400
    .line 401
    move-result-wide v12

    .line 402
    const v21, 0xff7ffc

    .line 403
    .line 404
    .line 405
    const/4 v14, 0x0

    .line 406
    const-wide/16 v15, 0x0

    .line 407
    .line 408
    const-wide/16 v17, 0x0

    .line 409
    .line 410
    const/16 v19, 0x0

    .line 411
    .line 412
    invoke-static/range {v9 .. v21}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 413
    .line 414
    .line 415
    move-result-object v11

    .line 416
    const/16 v18, 0x6

    .line 417
    .line 418
    const/16 v19, 0x1fa

    .line 419
    .line 420
    const-string v9, "You\u2019ll receive a code to sign in"

    .line 421
    .line 422
    const/4 v10, 0x0

    .line 423
    const/4 v12, 0x0

    .line 424
    const/4 v13, 0x0

    .line 425
    const/4 v14, 0x0

    .line 426
    const/4 v15, 0x0

    .line 427
    const/16 v16, 0x0

    .line 428
    .line 429
    move-object/from16 v17, v2

    .line 430
    .line 431
    invoke-static/range {v9 .. v19}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 435
    .line 436
    .line 437
    iget-object v0, v0, Lnet/blip/android/ui/onboarding/b;->j:Landroidx/compose/runtime/MutableState;

    .line 438
    .line 439
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    check-cast v3, Ljava/lang/Boolean;

    .line 444
    .line 445
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    if-nez v4, :cond_9

    .line 457
    .line 458
    if-ne v5, v6, :cond_a

    .line 459
    .line 460
    :cond_9
    new-instance v5, Lnet/blip/android/ui/onboarding/OnboardingEmailEntryStep$Composable$1$1$3$1;

    .line 461
    .line 462
    const/4 v4, 0x0

    .line 463
    invoke-direct {v5, v1, v0, v4}, Lnet/blip/android/ui/onboarding/OnboardingEmailEntryStep$Composable$1$1$3$1;-><init>(Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    :cond_a
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 470
    .line 471
    invoke-static {v2, v3, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 475
    .line 476
    .line 477
    goto :goto_4

    .line 478
    :cond_b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 479
    .line 480
    .line 481
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 482
    .line 483
    return-object v0
.end method
