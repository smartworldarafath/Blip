.class public final Lnet/blip/android/ui/onboarding/OnboardingEmailEntryStep;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lnet/blip/android/ui/onboarding/OnboardingEmailEntryStep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/blip/android/ui/onboarding/OnboardingEmailEntryStep;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/blip/android/ui/onboarding/OnboardingEmailEntryStep;->a:Lnet/blip/android/ui/onboarding/OnboardingEmailEntryStep;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLnet/blip/libblip/frontend/Err;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 15

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-object/from16 v9, p5

    .line 13
    .line 14
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    const v1, 0x59031e12

    .line 17
    .line 18
    .line 19
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x2

    .line 31
    :goto_0
    or-int v1, p6, v1

    .line 32
    .line 33
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/16 v6, 0x20

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    move v4, v6

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v4, 0x10

    .line 44
    .line 45
    :goto_1
    or-int/2addr v1, v4

    .line 46
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    const/16 v4, 0x100

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v4, 0x80

    .line 56
    .line 57
    :goto_2
    or-int/2addr v1, v4

    .line 58
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    const/16 v4, 0x800

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/16 v4, 0x400

    .line 68
    .line 69
    :goto_3
    or-int/2addr v1, v4

    .line 70
    and-int/lit16 v4, v1, 0x493

    .line 71
    .line 72
    const/16 v7, 0x492

    .line 73
    .line 74
    const/4 v12, 0x0

    .line 75
    const/4 v8, 0x1

    .line 76
    if-eq v4, v7, :cond_4

    .line 77
    .line 78
    move v4, v8

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    move v4, v12

    .line 81
    :goto_4
    and-int/lit8 v7, v1, 0x1

    .line 82
    .line 83
    invoke-virtual {v9, v7, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_10

    .line 88
    .line 89
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 94
    .line 95
    if-ne v4, v11, :cond_5

    .line 96
    .line 97
    new-instance v4, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 98
    .line 99
    const-wide/16 v13, 0x0

    .line 100
    .line 101
    const/4 v7, 0x6

    .line 102
    invoke-direct {v4, v7, v13, v14, v2}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 113
    .line 114
    and-int/lit8 v1, v1, 0x70

    .line 115
    .line 116
    if-ne v1, v6, :cond_6

    .line 117
    .line 118
    move v1, v8

    .line 119
    goto :goto_5

    .line 120
    :cond_6
    move v1, v12

    .line 121
    :goto_5
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    or-int/2addr v1, v6

    .line 126
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    if-nez v1, :cond_7

    .line 131
    .line 132
    if-ne v6, v11, :cond_9

    .line 133
    .line 134
    :cond_7
    if-nez v3, :cond_8

    .line 135
    .line 136
    if-eqz v0, :cond_8

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_8
    move v8, v12

    .line 140
    :goto_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_9
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 152
    .line 153
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-ne v1, v11, :cond_a

    .line 158
    .line 159
    new-instance v1, Landroidx/compose/ui/focus/FocusRequester;

    .line 160
    .line 161
    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_a
    move-object v7, v1

    .line 168
    check-cast v7, Landroidx/compose/ui/focus/FocusRequester;

    .line 169
    .line 170
    new-instance v3, Lq9;

    .line 171
    .line 172
    move-object v8, v6

    .line 173
    move-object v6, v5

    .line 174
    move-object v5, v8

    .line 175
    move-object v8, v4

    .line 176
    move/from16 v4, p2

    .line 177
    .line 178
    invoke-direct/range {v3 .. v8}, Lq9;-><init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;)V

    .line 179
    .line 180
    .line 181
    move v1, v4

    .line 182
    move-object v14, v5

    .line 183
    move-object v13, v6

    .line 184
    const v4, -0x5677c21d

    .line 185
    .line 186
    .line 187
    invoke-static {v4, v3, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    new-instance v3, Lkc;

    .line 192
    .line 193
    invoke-direct {v3, v1, v13, v8, v12}, Lkc;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    .line 194
    .line 195
    .line 196
    const v4, 0x3cdc9ca4

    .line 197
    .line 198
    .line 199
    invoke-static {v4, v3, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    move-object v8, v9

    .line 204
    const/16 v9, 0x6c36

    .line 205
    .line 206
    const/4 v10, 0x4

    .line 207
    sget-object v3, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingEmailEntryStepKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 208
    .line 209
    sget-object v4, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingEmailEntryStepKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 210
    .line 211
    const/4 v5, 0x0

    .line 212
    invoke-static/range {v3 .. v10}, Lnet/blip/android/ui/onboarding/ComposablesKt;->c(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 213
    .line 214
    .line 215
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, Ljava/lang/Boolean;

    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_f

    .line 226
    .line 227
    const v3, 0x720580a6

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 231
    .line 232
    .line 233
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    if-nez v3, :cond_b

    .line 246
    .line 247
    if-ne v5, v11, :cond_c

    .line 248
    .line 249
    :cond_b
    new-instance v5, Lo1;

    .line 250
    .line 251
    const/16 v3, 0x17

    .line 252
    .line 253
    invoke-direct {v5, v14, v3}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    :cond_c
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 260
    .line 261
    new-instance v7, Lkotlin/Pair;

    .line 262
    .line 263
    const-string v3, "OK"

    .line 264
    .line 265
    invoke-direct {v7, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    if-nez v3, :cond_d

    .line 277
    .line 278
    if-ne v5, v11, :cond_e

    .line 279
    .line 280
    :cond_d
    new-instance v5, Lo1;

    .line 281
    .line 282
    const/16 v3, 0x18

    .line 283
    .line 284
    invoke-direct {v5, v14, v3}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_e
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 291
    .line 292
    const/4 v10, 0x6

    .line 293
    const/16 v11, 0xc

    .line 294
    .line 295
    const-string v3, "Failed to send sign-in code"

    .line 296
    .line 297
    move-object v9, v8

    .line 298
    move-object v8, v5

    .line 299
    const/4 v5, 0x0

    .line 300
    const/4 v6, 0x0

    .line 301
    invoke-static/range {v3 .. v11}, Lnet/blip/android/ui/components/AlertDialogKt;->a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/Pair;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 302
    .line 303
    .line 304
    move-object v8, v9

    .line 305
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 306
    .line 307
    .line 308
    goto :goto_7

    .line 309
    :cond_f
    const v3, 0x72096730

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 316
    .line 317
    .line 318
    goto :goto_7

    .line 319
    :cond_10
    move v1, v3

    .line 320
    move-object v13, v5

    .line 321
    move-object v8, v9

    .line 322
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 323
    .line 324
    .line 325
    :goto_7
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    if-eqz v7, :cond_11

    .line 330
    .line 331
    new-instance v0, Lq9;

    .line 332
    .line 333
    move-object/from16 v4, p3

    .line 334
    .line 335
    move/from16 v6, p6

    .line 336
    .line 337
    move v3, v1

    .line 338
    move-object v5, v13

    .line 339
    move-object v1, p0

    .line 340
    invoke-direct/range {v0 .. v6}, Lq9;-><init>(Lnet/blip/android/ui/onboarding/OnboardingEmailEntryStep;Ljava/lang/String;ZLnet/blip/libblip/frontend/Err;Lkotlin/jvm/functions/Function1;I)V

    .line 341
    .line 342
    .line 343
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 344
    .line 345
    :cond_11
    return-void
.end method
