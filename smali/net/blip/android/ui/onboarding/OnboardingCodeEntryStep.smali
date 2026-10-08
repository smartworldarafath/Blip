.class public final Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep;->a:Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLnet/blip/libblip/frontend/Err;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v9, p3

    .line 4
    .line 5
    move-object/from16 v6, p5

    .line 6
    .line 7
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object/from16 v10, p6

    .line 14
    .line 15
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v0, -0x18f8d5b6

    .line 18
    .line 19
    .line 20
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    move-object/from16 v2, p1

    .line 24
    .line 25
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int v0, p7, v0

    .line 35
    .line 36
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/16 v4, 0x20

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    move v3, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v3, 0x10

    .line 47
    .line 48
    :goto_1
    or-int/2addr v0, v3

    .line 49
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    const/16 v3, 0x100

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v3, 0x80

    .line 59
    .line 60
    :goto_2
    or-int/2addr v0, v3

    .line 61
    move-object/from16 v3, p4

    .line 62
    .line 63
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_3

    .line 68
    .line 69
    const/16 v5, 0x800

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    const/16 v5, 0x400

    .line 73
    .line 74
    :goto_3
    or-int/2addr v0, v5

    .line 75
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    const/16 v7, 0x4000

    .line 80
    .line 81
    if-eqz v5, :cond_4

    .line 82
    .line 83
    move v5, v7

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    const/16 v5, 0x2000

    .line 86
    .line 87
    :goto_4
    or-int/2addr v0, v5

    .line 88
    and-int/lit16 v5, v0, 0x2493

    .line 89
    .line 90
    const/16 v8, 0x2492

    .line 91
    .line 92
    if-eq v5, v8, :cond_5

    .line 93
    .line 94
    const/4 v5, 0x1

    .line 95
    goto :goto_5

    .line 96
    :cond_5
    const/4 v5, 0x0

    .line 97
    :goto_5
    and-int/lit8 v8, v0, 0x1

    .line 98
    .line 99
    invoke-virtual {v10, v8, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_14

    .line 104
    .line 105
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 106
    .line 107
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    check-cast v5, Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 118
    .line 119
    if-ne v8, v13, :cond_6

    .line 120
    .line 121
    new-instance v8, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 122
    .line 123
    const-wide/16 v14, 0x0

    .line 124
    .line 125
    const/4 v11, 0x6

    .line 126
    const-string v12, ""

    .line 127
    .line 128
    invoke-direct {v8, v11, v14, v15, v12}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v8}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 139
    .line 140
    and-int/lit8 v11, v0, 0x70

    .line 141
    .line 142
    if-ne v11, v4, :cond_7

    .line 143
    .line 144
    const/4 v4, 0x1

    .line 145
    goto :goto_6

    .line 146
    :cond_7
    const/4 v4, 0x0

    .line 147
    :goto_6
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    or-int/2addr v4, v11

    .line 152
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    if-nez v4, :cond_8

    .line 157
    .line 158
    if-ne v11, v13, :cond_a

    .line 159
    .line 160
    :cond_8
    if-nez v1, :cond_9

    .line 161
    .line 162
    if-eqz v9, :cond_9

    .line 163
    .line 164
    const/4 v4, 0x1

    .line 165
    goto :goto_7

    .line 166
    :cond_9
    const/4 v4, 0x0

    .line 167
    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_a
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 179
    .line 180
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    if-ne v4, v13, :cond_b

    .line 185
    .line 186
    new-instance v4, Landroidx/compose/ui/focus/FocusRequester;

    .line 187
    .line 188
    invoke-direct {v4}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :cond_b
    check-cast v4, Landroidx/compose/ui/focus/FocusRequester;

    .line 195
    .line 196
    const v12, 0xe000

    .line 197
    .line 198
    .line 199
    and-int/2addr v0, v12

    .line 200
    if-ne v0, v7, :cond_c

    .line 201
    .line 202
    const/4 v0, 0x1

    .line 203
    goto :goto_8

    .line 204
    :cond_c
    const/4 v0, 0x0

    .line 205
    :goto_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    if-nez v0, :cond_d

    .line 210
    .line 211
    if-ne v7, v13, :cond_e

    .line 212
    .line 213
    :cond_d
    new-instance v7, Ls;

    .line 214
    .line 215
    const/4 v0, 0x5

    .line 216
    invoke-direct {v7, v0, v6}, Ls;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    :cond_e
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 223
    .line 224
    const/4 v0, 0x1

    .line 225
    const/4 v12, 0x0

    .line 226
    invoke-static {v12, v7, v10, v12, v0}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 227
    .line 228
    .line 229
    new-instance v0, Lic;

    .line 230
    .line 231
    move-object v7, v6

    .line 232
    move-object v6, v2

    .line 233
    move-object v2, v11

    .line 234
    invoke-direct/range {v0 .. v8}, Lic;-><init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    .line 235
    .line 236
    .line 237
    const v1, 0x37dbe91b

    .line 238
    .line 239
    .line 240
    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    const/16 v6, 0x6c36

    .line 245
    .line 246
    const/4 v7, 0x4

    .line 247
    sget-object v0, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingCodeEntryStepKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 248
    .line 249
    sget-object v1, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingCodeEntryStepKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 250
    .line 251
    const/4 v2, 0x0

    .line 252
    sget-object v4, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingCodeEntryStepKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 253
    .line 254
    move-object v5, v10

    .line 255
    invoke-static/range {v0 .. v7}, Lnet/blip/android/ui/onboarding/ComposablesKt;->c(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 256
    .line 257
    .line 258
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Ljava/lang/Boolean;

    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_13

    .line 269
    .line 270
    const v0, -0x4d6c774

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 274
    .line 275
    .line 276
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    if-nez v0, :cond_f

    .line 289
    .line 290
    if-ne v2, v13, :cond_10

    .line 291
    .line 292
    :cond_f
    new-instance v2, Lo1;

    .line 293
    .line 294
    const/16 v0, 0x15

    .line 295
    .line 296
    invoke-direct {v2, v11, v0}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    :cond_10
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 303
    .line 304
    new-instance v4, Lkotlin/Pair;

    .line 305
    .line 306
    const-string v0, "OK"

    .line 307
    .line 308
    invoke-direct {v4, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    if-nez v0, :cond_11

    .line 320
    .line 321
    if-ne v2, v13, :cond_12

    .line 322
    .line 323
    :cond_11
    new-instance v2, Lo1;

    .line 324
    .line 325
    const/16 v0, 0x16

    .line 326
    .line 327
    invoke-direct {v2, v11, v0}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    :cond_12
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 334
    .line 335
    const/4 v7, 0x6

    .line 336
    const/16 v8, 0xc

    .line 337
    .line 338
    const-string v0, "Failed to verify sign-in code"

    .line 339
    .line 340
    move-object v6, v5

    .line 341
    move-object v5, v2

    .line 342
    const/4 v2, 0x0

    .line 343
    const/4 v3, 0x0

    .line 344
    invoke-static/range {v0 .. v8}, Lnet/blip/android/ui/components/AlertDialogKt;->a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/Pair;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 345
    .line 346
    .line 347
    move-object v5, v6

    .line 348
    const/4 v12, 0x0

    .line 349
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 350
    .line 351
    .line 352
    goto :goto_9

    .line 353
    :cond_13
    const/4 v12, 0x0

    .line 354
    const v0, -0x4d2d968

    .line 355
    .line 356
    .line 357
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 361
    .line 362
    .line 363
    goto :goto_9

    .line 364
    :cond_14
    move-object v5, v10

    .line 365
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 366
    .line 367
    .line 368
    :goto_9
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    if-eqz v8, :cond_15

    .line 373
    .line 374
    new-instance v0, Ljc;

    .line 375
    .line 376
    move-object/from16 v1, p0

    .line 377
    .line 378
    move-object/from16 v2, p1

    .line 379
    .line 380
    move/from16 v3, p2

    .line 381
    .line 382
    move-object/from16 v5, p4

    .line 383
    .line 384
    move-object/from16 v6, p5

    .line 385
    .line 386
    move/from16 v7, p7

    .line 387
    .line 388
    move-object v4, v9

    .line 389
    invoke-direct/range {v0 .. v7}, Ljc;-><init>(Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep;Ljava/lang/String;ZLnet/blip/libblip/frontend/Err;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    .line 390
    .line 391
    .line 392
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 393
    .line 394
    :cond_15
    return-void
.end method
