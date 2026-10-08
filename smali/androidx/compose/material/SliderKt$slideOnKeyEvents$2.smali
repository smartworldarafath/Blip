.class final Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Z

.field public final synthetic k:Lkotlin/ranges/ClosedFloatingPointRange;

.field public final synthetic l:Landroidx/compose/runtime/MutableState;

.field public final synthetic m:F

.field public final synthetic n:Z

.field public final synthetic o:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(ZLkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/MutableState;FZLandroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;->j:Z

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;->k:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;->l:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;->m:F

    .line 11
    .line 12
    iput-boolean p5, p0, Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;->n:Z

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;->o:Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyEvent;->a:Landroid/view/KeyEvent;

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;->j:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->b(Landroid/view/KeyEvent;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne v0, v1, :cond_b

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;->k:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 22
    .line 23
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    sub-float/2addr v1, v4

    .line 40
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/high16 v4, 0x42c80000    # 100.0f

    .line 45
    .line 46
    div-float/2addr v1, v4

    .line 47
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    sget-wide v6, Landroidx/compose/ui/input/key/Key;->d:J

    .line 56
    .line 57
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iget v6, p0, Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;->m:F

    .line 62
    .line 63
    iget-object v7, p0, Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;->l:Landroidx/compose/runtime/MutableState;

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 72
    .line 73
    add-float/2addr v6, v1

    .line 74
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->f(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    move v2, v3

    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_2
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->e:J

    .line 89
    .line 90
    invoke-static {v4, v5, v8, v9}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 101
    .line 102
    sub-float/2addr v6, v1

    .line 103
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->f(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->g:J

    .line 116
    .line 117
    invoke-static {v4, v5, v8, v9}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    const/4 v8, -0x1

    .line 122
    iget-boolean p0, p0, Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;->n:Z

    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    if-eqz p0, :cond_4

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    move v8, v3

    .line 130
    :goto_1
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 135
    .line 136
    int-to-float p1, v8

    .line 137
    mul-float/2addr p1, v1

    .line 138
    add-float/2addr p1, v6

    .line 139
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->f(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_5
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->f:J

    .line 152
    .line 153
    invoke-static {v4, v5, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_7

    .line 158
    .line 159
    if-eqz p0, :cond_6

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_6
    move v8, v3

    .line 163
    :goto_2
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 168
    .line 169
    int-to-float p1, v8

    .line 170
    mul-float/2addr p1, v1

    .line 171
    sub-float/2addr v6, p1

    .line 172
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->f(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_7
    sget-wide p0, Landroidx/compose/ui/input/key/Key;->v:J

    .line 185
    .line 186
    invoke-static {v4, v5, p0, p1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    if-eqz p0, :cond_8

    .line 191
    .line 192
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 197
    .line 198
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_8
    sget-wide p0, Landroidx/compose/ui/input/key/Key;->w:J

    .line 207
    .line 208
    invoke-static {v4, v5, p0, p1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    if-eqz p0, :cond_9

    .line 213
    .line 214
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 219
    .line 220
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_9
    sget-wide p0, Landroidx/compose/ui/input/key/Key;->C:J

    .line 230
    .line 231
    invoke-static {v4, v5, p0, p1}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    const/16 p1, 0xa

    .line 236
    .line 237
    if-eqz p0, :cond_a

    .line 238
    .line 239
    invoke-static {p1, v3, p1}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 248
    .line 249
    int-to-float p0, p0

    .line 250
    mul-float/2addr p0, v1

    .line 251
    sub-float/2addr v6, p0

    .line 252
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt;->f(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_a
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->D:J

    .line 266
    .line 267
    invoke-static {v4, v5, v8, v9}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    if-eqz p0, :cond_d

    .line 272
    .line 273
    invoke-static {p1, v3, p1}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 282
    .line 283
    int-to-float p0, p0

    .line 284
    mul-float/2addr p0, v1

    .line 285
    add-float/2addr p0, v6

    .line 286
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt;->f(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_b
    if-ne v0, v3, :cond_d

    .line 300
    .line 301
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 306
    .line 307
    .line 308
    move-result-wide v0

    .line 309
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->d:J

    .line 310
    .line 311
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    if-nez p1, :cond_c

    .line 316
    .line 317
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->e:J

    .line 318
    .line 319
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-nez p1, :cond_c

    .line 324
    .line 325
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->g:J

    .line 326
    .line 327
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    if-nez p1, :cond_c

    .line 332
    .line 333
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->f:J

    .line 334
    .line 335
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    if-nez p1, :cond_c

    .line 340
    .line 341
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->v:J

    .line 342
    .line 343
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-nez p1, :cond_c

    .line 348
    .line 349
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->w:J

    .line 350
    .line 351
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    if-nez p1, :cond_c

    .line 356
    .line 357
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->C:J

    .line 358
    .line 359
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    if-nez p1, :cond_c

    .line 364
    .line 365
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->D:J

    .line 366
    .line 367
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    if-eqz p1, :cond_d

    .line 372
    .line 373
    :cond_c
    iget-object p0, p0, Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;->o:Landroidx/compose/runtime/MutableState;

    .line 374
    .line 375
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 380
    .line 381
    if-eqz p0, :cond_1

    .line 382
    .line 383
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :cond_d
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    return-object p0
.end method
