.class final Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function6<",
        "Ljava/lang/Float;",
        "Landroidx/compose/ui/graphics/Color;",
        "Landroidx/compose/ui/graphics/Color;",
        "Ljava/lang/Float;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lkotlin/jvm/functions/Function2;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Landroidx/compose/material/TextFieldColors;

.field public final synthetic m:Z

.field public final synthetic n:Lkotlin/jvm/functions/Function2;

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic q:Lkotlin/jvm/functions/Function2;

.field public final synthetic r:Z

.field public final synthetic s:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroidx/compose/material/TextFieldColors;ZLandroidx/compose/foundation/interaction/InteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/foundation/layout/PaddingValues;Z)V
    .locals 0

    .line 1
    sget-object p5, Landroidx/compose/material/TextFieldType;->j:[Landroidx/compose/material/TextFieldType;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->j:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->k:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->l:Landroidx/compose/material/TextFieldColors;

    .line 11
    .line 12
    iput-boolean p4, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->m:Z

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->n:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->o:Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->p:Landroidx/compose/ui/graphics/Shape;

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->q:Lkotlin/jvm/functions/Function2;

    .line 21
    .line 22
    iput-boolean p10, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->r:Z

    .line 23
    .line 24
    iput-object p11, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->s:Landroidx/compose/foundation/layout/PaddingValues;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result v9

    .line 11
    move-object/from16 v1, p2

    .line 12
    .line 13
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 14
    .line 15
    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->a:J

    .line 16
    .line 17
    move-object/from16 v3, p3

    .line 18
    .line 19
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 20
    .line 21
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->a:J

    .line 22
    .line 23
    move-object/from16 v5, p4

    .line 24
    .line 25
    check-cast v5, Ljava/lang/Number;

    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    move-object/from16 v6, p5

    .line 32
    .line 33
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 34
    .line 35
    move-object/from16 v7, p6

    .line 36
    .line 37
    check-cast v7, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    and-int/lit8 v8, v7, 0x6

    .line 44
    .line 45
    if-nez v8, :cond_1

    .line 46
    .line 47
    move-object v8, v6

    .line 48
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 49
    .line 50
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    const/4 v8, 0x4

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v8, 0x2

    .line 59
    :goto_0
    or-int/2addr v8, v7

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move v8, v7

    .line 62
    :goto_1
    and-int/lit8 v10, v7, 0x30

    .line 63
    .line 64
    if-nez v10, :cond_3

    .line 65
    .line 66
    move-object v10, v6

    .line 67
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 68
    .line 69
    invoke-virtual {v10, v1, v2}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    const/16 v1, 0x20

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const/16 v1, 0x10

    .line 79
    .line 80
    :goto_2
    or-int/2addr v8, v1

    .line 81
    :cond_3
    and-int/lit16 v1, v7, 0x180

    .line 82
    .line 83
    if-nez v1, :cond_5

    .line 84
    .line 85
    move-object v1, v6

    .line 86
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 87
    .line 88
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    const/16 v1, 0x100

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    const/16 v1, 0x80

    .line 98
    .line 99
    :goto_3
    or-int/2addr v8, v1

    .line 100
    :cond_5
    and-int/lit16 v1, v7, 0xc00

    .line 101
    .line 102
    if-nez v1, :cond_7

    .line 103
    .line 104
    move-object v1, v6

    .line 105
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 106
    .line 107
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    const/16 v1, 0x800

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_6
    const/16 v1, 0x400

    .line 117
    .line 118
    :goto_4
    or-int/2addr v8, v1

    .line 119
    :cond_7
    and-int/lit16 v1, v8, 0x2493

    .line 120
    .line 121
    const/16 v2, 0x2492

    .line 122
    .line 123
    const/4 v3, 0x1

    .line 124
    const/4 v13, 0x0

    .line 125
    if-eq v1, v2, :cond_8

    .line 126
    .line 127
    move v1, v3

    .line 128
    goto :goto_5

    .line 129
    :cond_8
    move v1, v13

    .line 130
    :goto_5
    and-int/lit8 v2, v8, 0x1

    .line 131
    .line 132
    move-object v11, v6

    .line 133
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 134
    .line 135
    invoke-virtual {v11, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_e

    .line 140
    .line 141
    const v1, 0x3acf916d

    .line 142
    .line 143
    .line 144
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->j:Lkotlin/jvm/functions/Function2;

    .line 151
    .line 152
    iget-boolean v2, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->m:Z

    .line 153
    .line 154
    iget-object v4, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->l:Landroidx/compose/material/TextFieldColors;

    .line 155
    .line 156
    const/4 v6, 0x0

    .line 157
    if-eqz v1, :cond_9

    .line 158
    .line 159
    iget-object v7, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->k:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-nez v7, :cond_9

    .line 166
    .line 167
    const/4 v7, 0x0

    .line 168
    cmpl-float v7, v5, v7

    .line 169
    .line 170
    if-lez v7, :cond_9

    .line 171
    .line 172
    const v7, 0x3ade9875

    .line 173
    .line 174
    .line 175
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 176
    .line 177
    .line 178
    new-instance v7, Landroidx/compose/material/m;

    .line 179
    .line 180
    invoke-direct {v7, v5, v4, v2, v1}, Landroidx/compose/material/m;-><init>(FLandroidx/compose/material/TextFieldColors;ZLkotlin/jvm/functions/Function2;)V

    .line 181
    .line 182
    .line 183
    const v1, -0x196f0557

    .line 184
    .line 185
    .line 186
    invoke-static {v1, v7, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 191
    .line 192
    .line 193
    move-object v5, v1

    .line 194
    goto :goto_6

    .line 195
    :cond_9
    const v1, 0x3ae51c66

    .line 196
    .line 197
    .line 198
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 202
    .line 203
    .line 204
    move-object v5, v6

    .line 205
    :goto_6
    check-cast v4, Landroidx/compose/material/DefaultTextFieldColors;

    .line 206
    .line 207
    const v1, -0x5a93c7e5

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 211
    .line 212
    .line 213
    if-nez v2, :cond_a

    .line 214
    .line 215
    iget-wide v14, v4, Landroidx/compose/material/DefaultTextFieldColors;->j:J

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_a
    iget-wide v14, v4, Landroidx/compose/material/DefaultTextFieldColors;->i:J

    .line 219
    .line 220
    :goto_7
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 221
    .line 222
    invoke-direct {v1, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 223
    .line 224
    .line 225
    invoke-static {v1, v11}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 230
    .line 231
    .line 232
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 237
    .line 238
    iget-wide v14, v1, Landroidx/compose/ui/graphics/Color;->a:J

    .line 239
    .line 240
    iget-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->n:Lkotlin/jvm/functions/Function2;

    .line 241
    .line 242
    if-nez v1, :cond_b

    .line 243
    .line 244
    const v1, 0x3ae7fdbd

    .line 245
    .line 246
    .line 247
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 251
    .line 252
    .line 253
    move-object v1, v6

    .line 254
    goto :goto_8

    .line 255
    :cond_b
    const v7, 0x3ae7fdbe

    .line 256
    .line 257
    .line 258
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 259
    .line 260
    .line 261
    new-instance v7, Lyg;

    .line 262
    .line 263
    invoke-direct {v7, v14, v15, v1, v13}, Lyg;-><init>(JLkotlin/jvm/functions/Function2;I)V

    .line 264
    .line 265
    .line 266
    const v1, -0x12e66a8b

    .line 267
    .line 268
    .line 269
    invoke-static {v1, v7, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 274
    .line 275
    .line 276
    :goto_8
    const v7, 0x5273c28d

    .line 277
    .line 278
    .line 279
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 280
    .line 281
    .line 282
    if-nez v2, :cond_c

    .line 283
    .line 284
    iget-wide v14, v4, Landroidx/compose/material/DefaultTextFieldColors;->m:J

    .line 285
    .line 286
    goto :goto_9

    .line 287
    :cond_c
    iget-wide v14, v4, Landroidx/compose/material/DefaultTextFieldColors;->l:J

    .line 288
    .line 289
    :goto_9
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 290
    .line 291
    invoke-direct {v2, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 292
    .line 293
    .line 294
    invoke-static {v2, v11}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 306
    .line 307
    iget-wide v14, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 308
    .line 309
    iget-object v2, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->o:Lkotlin/jvm/functions/Function2;

    .line 310
    .line 311
    if-nez v2, :cond_d

    .line 312
    .line 313
    const v2, 0x3aec78dc    # 0.001804139f

    .line 314
    .line 315
    .line 316
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 320
    .line 321
    .line 322
    move-object v7, v6

    .line 323
    goto :goto_a

    .line 324
    :cond_d
    const v7, 0x3aec78dd

    .line 325
    .line 326
    .line 327
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 328
    .line 329
    .line 330
    new-instance v7, Lyg;

    .line 331
    .line 332
    invoke-direct {v7, v14, v15, v2, v3}, Lyg;-><init>(JLkotlin/jvm/functions/Function2;I)V

    .line 333
    .line 334
    .line 335
    const v2, 0xfab60dd

    .line 336
    .line 337
    .line 338
    invoke-static {v2, v7, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 343
    .line 344
    .line 345
    move-object v7, v2

    .line 346
    :goto_a
    const v2, -0x54df94fd

    .line 347
    .line 348
    .line 349
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 350
    .line 351
    .line 352
    iget-wide v2, v4, Landroidx/compose/material/DefaultTextFieldColors;->o:J

    .line 353
    .line 354
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    .line 355
    .line 356
    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 357
    .line 358
    .line 359
    invoke-static {v4, v11}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 364
    .line 365
    .line 366
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 371
    .line 372
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 373
    .line 374
    iget-object v4, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->p:Landroidx/compose/ui/graphics/Shape;

    .line 375
    .line 376
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 377
    .line 378
    invoke-static {v10, v2, v3, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    sget-object v3, Landroidx/compose/material/TextFieldType;->j:[Landroidx/compose/material/TextFieldType;

    .line 383
    .line 384
    const v3, 0x3af0c028

    .line 385
    .line 386
    .line 387
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 388
    .line 389
    .line 390
    shl-int/lit8 v3, v8, 0x15

    .line 391
    .line 392
    const/high16 v4, 0x1c00000

    .line 393
    .line 394
    and-int v12, v3, v4

    .line 395
    .line 396
    iget-object v3, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->q:Lkotlin/jvm/functions/Function2;

    .line 397
    .line 398
    iget-boolean v8, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->r:Z

    .line 399
    .line 400
    iget-object v10, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->s:Landroidx/compose/foundation/layout/PaddingValues;

    .line 401
    .line 402
    move-object v4, v6

    .line 403
    move-object v6, v1

    .line 404
    invoke-static/range {v2 .. v12}, Landroidx/compose/material/TextFieldKt;->c(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 408
    .line 409
    .line 410
    goto :goto_b

    .line 411
    :cond_e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 412
    .line 413
    .line 414
    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 415
    .line 416
    return-object v0
.end method
