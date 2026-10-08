.class public final synthetic Lnet/blip/android/ui/onboarding/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/MutableState;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic m:Landroid/content/Context;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Lkotlin/jvm/functions/Function0;

.field public final synthetic p:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/onboarding/a;->j:Landroidx/compose/runtime/MutableState;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/onboarding/a;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/onboarding/a;->l:Landroidx/compose/ui/focus/FocusRequester;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/android/ui/onboarding/a;->m:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/blip/android/ui/onboarding/a;->n:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/blip/android/ui/onboarding/a;->o:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput-object p7, p0, Lnet/blip/android/ui/onboarding/a;->p:Landroidx/compose/runtime/MutableState;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

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
    if-nez v4, :cond_1

    .line 26
    .line 27
    move-object v4, v2

    .line 28
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    const/4 v4, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v4, 0x2

    .line 39
    :goto_0
    or-int/2addr v3, v4

    .line 40
    :cond_1
    and-int/lit8 v4, v3, 0x13

    .line 41
    .line 42
    const/16 v5, 0x12

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    if-eq v4, v5, :cond_2

    .line 47
    .line 48
    move v4, v6

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v4, v7

    .line 51
    :goto_1
    and-int/2addr v3, v6

    .line 52
    move-object v13, v2

    .line 53
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 54
    .line 55
    invoke-virtual {v13, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_d

    .line 60
    .line 61
    const/high16 v2, 0x3f800000    # 1.0f

    .line 62
    .line 63
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 64
    .line 65
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 66
    .line 67
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 68
    .line 69
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 70
    .line 71
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 72
    .line 73
    sget-object v10, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 74
    .line 75
    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    const v0, 0x4aa6ee

    .line 80
    .line 81
    .line 82
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 83
    .line 84
    .line 85
    const/high16 v0, 0x3f400000    # 0.75f

    .line 86
    .line 87
    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/SizeKt;->b(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 92
    .line 93
    invoke-static {v11, v1, v13, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-wide v11, v13, Landroidx/compose/runtime/GapComposer;->T:J

    .line 98
    .line 99
    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    invoke-static {v13, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 112
    .line 113
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 117
    .line 118
    .line 119
    iget-boolean v14, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 120
    .line 121
    if-eqz v14, :cond_3

    .line 122
    .line 123
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 128
    .line 129
    .line 130
    :goto_2
    invoke-static {v13, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v13, v12, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v13, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v13, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Landroidx/compose/foundation/layout/ColumnScope;->a()Landroidx/compose/ui/Modifier;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v13, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v9, v2}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v1, "Checking code\u2026"

    .line 161
    .line 162
    const/16 v2, 0x36

    .line 163
    .line 164
    invoke-static {v0, v1, v13, v2}, Lnet/blip/android/ui/onboarding/ComposablesKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Landroidx/compose/foundation/layout/ColumnScope;->a()Landroidx/compose/ui/Modifier;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v13, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :cond_4
    const v1, 0x5264fe

    .line 183
    .line 184
    .line 185
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 186
    .line 187
    .line 188
    invoke-static {v9, v2}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 193
    .line 194
    const/16 v12, 0x30

    .line 195
    .line 196
    invoke-static {v11, v2, v13, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    iget-wide v11, v13, Landroidx/compose/runtime/GapComposer;->T:J

    .line 201
    .line 202
    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    invoke-static {v13, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 215
    .line 216
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 220
    .line 221
    .line 222
    iget-boolean v14, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 223
    .line 224
    if-eqz v14, :cond_5

    .line 225
    .line 226
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_5
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 231
    .line 232
    .line 233
    :goto_3
    invoke-static {v13, v2, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 234
    .line 235
    .line 236
    invoke-static {v13, v12, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-static {v13, v2, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v13, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 250
    .line 251
    .line 252
    const v1, -0x2e8a2e0b

    .line 253
    .line 254
    .line 255
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 256
    .line 257
    .line 258
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 259
    .line 260
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 265
    .line 266
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 267
    .line 268
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 273
    .line 274
    iget-object v14, v3, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 275
    .line 276
    const/high16 v3, 0x42100000    # 36.0f

    .line 277
    .line 278
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/FontScaling;->x(F)J

    .line 279
    .line 280
    .line 281
    move-result-wide v17

    .line 282
    sget-object v19, Landroidx/compose/ui/text/font/FontWeight;->q:Landroidx/compose/ui/text/font/FontWeight;

    .line 283
    .line 284
    const/high16 v3, 0x40e00000    # 7.0f

    .line 285
    .line 286
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/FontScaling;->x(F)J

    .line 287
    .line 288
    .line 289
    move-result-wide v20

    .line 290
    const/16 v25, 0x0

    .line 291
    .line 292
    const v26, 0xffff39

    .line 293
    .line 294
    .line 295
    const-wide/16 v15, 0x0

    .line 296
    .line 297
    const-wide/16 v22, 0x0

    .line 298
    .line 299
    const/16 v24, 0x0

    .line 300
    .line 301
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 302
    .line 303
    .line 304
    move-result-object v12

    .line 305
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 306
    .line 307
    .line 308
    const/high16 v1, 0x43600000    # 224.0f

    .line 309
    .line 310
    invoke-static {v1}, Landroidx/compose/foundation/layout/SizeKt;->n(F)Landroidx/compose/ui/Modifier;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    iget-object v3, v0, Lnet/blip/android/ui/onboarding/a;->l:Landroidx/compose/ui/focus/FocusRequester;

    .line 315
    .line 316
    invoke-static {v1, v3}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-static {v13, v1}, Lnet/blip/android/ui/util/KeyboardKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 321
    .line 322
    .line 323
    move-result-object v8

    .line 324
    iget-object v1, v0, Lnet/blip/android/ui/onboarding/a;->p:Landroidx/compose/runtime/MutableState;

    .line 325
    .line 326
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    check-cast v4, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 331
    .line 332
    new-instance v14, Lnet/blip/shared/OTPCodeVisualTransformation;

    .line 333
    .line 334
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 335
    .line 336
    .line 337
    new-instance v15, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 338
    .line 339
    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 340
    .line 341
    const/16 v19, 0x7

    .line 342
    .line 343
    const/16 v20, 0x70

    .line 344
    .line 345
    const/16 v16, 0x0

    .line 346
    .line 347
    const/16 v18, 0x8

    .line 348
    .line 349
    invoke-direct/range {v15 .. v20}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;III)V

    .line 350
    .line 351
    .line 352
    iget-object v5, v0, Lnet/blip/android/ui/onboarding/a;->m:Landroid/content/Context;

    .line 353
    .line 354
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v10

    .line 358
    iget-object v11, v0, Lnet/blip/android/ui/onboarding/a;->n:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v16

    .line 364
    or-int v10, v10, v16

    .line 365
    .line 366
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 371
    .line 372
    if-nez v10, :cond_6

    .line 373
    .line 374
    if-ne v7, v6, :cond_7

    .line 375
    .line 376
    :cond_6
    new-instance v7, Lec;

    .line 377
    .line 378
    const/4 v10, 0x3

    .line 379
    invoke-direct {v7, v10, v5, v11}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    :cond_7
    move-object/from16 v17, v7

    .line 386
    .line 387
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 388
    .line 389
    new-instance v16, Landroidx/compose/foundation/text/KeyboardActions;

    .line 390
    .line 391
    move-object/from16 v18, v17

    .line 392
    .line 393
    move-object/from16 v19, v17

    .line 394
    .line 395
    move-object/from16 v20, v17

    .line 396
    .line 397
    move-object/from16 v21, v17

    .line 398
    .line 399
    move-object/from16 v22, v17

    .line 400
    .line 401
    invoke-direct/range {v16 .. v22}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    if-ne v5, v6, :cond_8

    .line 409
    .line 410
    new-instance v5, Li2;

    .line 411
    .line 412
    const/16 v7, 0x8

    .line 413
    .line 414
    invoke-direct {v5, v1, v7}, Li2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    :cond_8
    move-object v10, v5

    .line 421
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 422
    .line 423
    const v21, 0xc00d80

    .line 424
    .line 425
    .line 426
    const/16 v22, 0xe20

    .line 427
    .line 428
    move-object v5, v11

    .line 429
    const-string v11, "123456"

    .line 430
    .line 431
    move-object/from16 v20, v13

    .line 432
    .line 433
    const/4 v13, 0x0

    .line 434
    const/16 v17, 0x0

    .line 435
    .line 436
    const/16 v18, 0x0

    .line 437
    .line 438
    const/16 v19, 0x0

    .line 439
    .line 440
    move-object/from16 v27, v9

    .line 441
    .line 442
    move-object v9, v4

    .line 443
    move-object/from16 v4, v27

    .line 444
    .line 445
    invoke-static/range {v8 .. v22}, Lnet/blip/android/ui/components/StyledTextFieldKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/runtime/Composer;II)V

    .line 446
    .line 447
    .line 448
    move-object/from16 v13, v20

    .line 449
    .line 450
    const/high16 v7, 0x42000000    # 32.0f

    .line 451
    .line 452
    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 453
    .line 454
    .line 455
    move-result-object v7

    .line 456
    invoke-static {v13, v7}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 457
    .line 458
    .line 459
    const-string v7, "Code sent to "

    .line 460
    .line 461
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v8

    .line 465
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    check-cast v5, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 470
    .line 471
    iget-object v14, v5, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 472
    .line 473
    sget-object v5, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 474
    .line 475
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v7

    .line 479
    check-cast v7, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 480
    .line 481
    iget-wide v9, v7, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 482
    .line 483
    const/16 v7, 0xe

    .line 484
    .line 485
    invoke-static {v7}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 486
    .line 487
    .line 488
    move-result-wide v17

    .line 489
    const/16 v24, 0x0

    .line 490
    .line 491
    const v26, 0xdf7ffc

    .line 492
    .line 493
    .line 494
    const/16 v19, 0x0

    .line 495
    .line 496
    const-wide/16 v20, 0x0

    .line 497
    .line 498
    const-wide/16 v22, 0x0

    .line 499
    .line 500
    sget v25, Landroidx/compose/ui/text/style/LineBreak;->c:I

    .line 501
    .line 502
    move-wide v15, v9

    .line 503
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 504
    .line 505
    .line 506
    move-result-object v10

    .line 507
    const/16 v17, 0x0

    .line 508
    .line 509
    const/16 v18, 0x1fa

    .line 510
    .line 511
    const/4 v9, 0x0

    .line 512
    const/4 v11, 0x0

    .line 513
    const/4 v12, 0x0

    .line 514
    move-object/from16 v20, v13

    .line 515
    .line 516
    const/4 v13, 0x0

    .line 517
    const/4 v14, 0x0

    .line 518
    const/4 v15, 0x0

    .line 519
    move-object/from16 v16, v20

    .line 520
    .line 521
    invoke-static/range {v8 .. v18}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 522
    .line 523
    .line 524
    move-object/from16 v13, v16

    .line 525
    .line 526
    const/high16 v8, 0x40800000    # 4.0f

    .line 527
    .line 528
    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    invoke-static {v13, v4}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 540
    .line 541
    iget-object v14, v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 542
    .line 543
    invoke-static {v7}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 544
    .line 545
    .line 546
    move-result-wide v17

    .line 547
    const/16 v25, 0x0

    .line 548
    .line 549
    const v26, 0xfffffd

    .line 550
    .line 551
    .line 552
    const-wide/16 v15, 0x0

    .line 553
    .line 554
    const-wide/16 v20, 0x0

    .line 555
    .line 556
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 557
    .line 558
    .line 559
    move-result-object v9

    .line 560
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 565
    .line 566
    iget-wide v4, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 567
    .line 568
    new-instance v10, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 569
    .line 570
    const/high16 v2, 0x41000000    # 8.0f

    .line 571
    .line 572
    const/high16 v7, 0x40400000    # 3.0f

    .line 573
    .line 574
    invoke-direct {v10, v2, v7, v2, v7}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 575
    .line 576
    .line 577
    new-instance v11, Landroidx/compose/ui/graphics/Color;

    .line 578
    .line 579
    invoke-direct {v11, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 580
    .line 581
    .line 582
    const/16 v14, 0xc30

    .line 583
    .line 584
    const/4 v8, 0x0

    .line 585
    iget-object v12, v0, Lnet/blip/android/ui/onboarding/a;->o:Lkotlin/jvm/functions/Function0;

    .line 586
    .line 587
    invoke-static/range {v8 .. v14}, Lnet/blip/android/ui/components/InlineTextButtonKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 588
    .line 589
    .line 590
    const/4 v2, 0x1

    .line 591
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 592
    .line 593
    .line 594
    iget-object v2, v0, Lnet/blip/android/ui/onboarding/a;->j:Landroidx/compose/runtime/MutableState;

    .line 595
    .line 596
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    check-cast v4, Ljava/lang/Boolean;

    .line 601
    .line 602
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 603
    .line 604
    .line 605
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v7

    .line 613
    if-nez v5, :cond_9

    .line 614
    .line 615
    if-ne v7, v6, :cond_a

    .line 616
    .line 617
    :cond_9
    new-instance v7, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;

    .line 618
    .line 619
    invoke-direct {v7, v3, v2, v1, v8}, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$3$1;-><init>(Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    :cond_a
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 626
    .line 627
    invoke-static {v13, v4, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 628
    .line 629
    .line 630
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    check-cast v2, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 635
    .line 636
    iget-object v0, v0, Lnet/blip/android/ui/onboarding/a;->k:Lkotlin/jvm/functions/Function1;

    .line 637
    .line 638
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v4

    .line 642
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v5

    .line 646
    if-nez v4, :cond_b

    .line 647
    .line 648
    if-ne v5, v6, :cond_c

    .line 649
    .line 650
    :cond_b
    new-instance v5, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;

    .line 651
    .line 652
    invoke-direct {v5, v0, v3, v1, v8}, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep$Composable$2$1$4$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 656
    .line 657
    .line 658
    :cond_c
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 659
    .line 660
    invoke-static {v13, v2, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 661
    .line 662
    .line 663
    const/4 v0, 0x0

    .line 664
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 665
    .line 666
    .line 667
    goto :goto_4

    .line 668
    :cond_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 669
    .line 670
    .line 671
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 672
    .line 673
    return-object v0
.end method
