.class public abstract Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    xor-int/lit8 p0, p0, 0x1

    .line 14
    .line 15
    return p0
.end method

.method public static final b(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->L:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move-object v0, v1

    .line 15
    :cond_0
    check-cast v0, Landroidx/compose/ui/state/ToggleableState;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 20
    .line 21
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    move-object v2, v1

    .line 30
    :cond_1
    check-cast v2, Landroidx/compose/ui/semantics/Role;

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    move v0, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    :goto_0
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->K:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 39
    .line 40
    invoke-virtual {p0, v4}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-nez p0, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    move-object v1, p0

    .line 48
    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    .line 49
    .line 50
    if-eqz v1, :cond_6

    .line 51
    .line 52
    if-nez v2, :cond_4

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    iget p0, v2, Landroidx/compose/ui/semantics/Role;->a:I

    .line 56
    .line 57
    const/4 v1, 0x4

    .line 58
    if-ne p0, v1, :cond_5

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_5
    :goto_2
    return v3

    .line 62
    :cond_6
    :goto_3
    return v0
.end method

.method public static final c(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    move-object v0, v2

    .line 17
    :cond_0
    iget-object v3, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 18
    .line 19
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->L:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    move-object v4, v2

    .line 28
    :cond_1
    check-cast v4, Landroidx/compose/ui/state/ToggleableState;

    .line 29
    .line 30
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 31
    .line 32
    invoke-virtual {v3, v5}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-nez v5, :cond_2

    .line 37
    .line 38
    move-object v5, v2

    .line 39
    :cond_2
    check-cast v5, Landroidx/compose/ui/semantics/Role;

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    if-eqz v4, :cond_8

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v7, 0x2

    .line 49
    if-eqz v4, :cond_6

    .line 50
    .line 51
    if-eq v4, v6, :cond_4

    .line 52
    .line 53
    if-ne v4, v7, :cond_3

    .line 54
    .line 55
    if-nez v0, :cond_8

    .line 56
    .line 57
    const v0, 0x7f110087

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-static {}, Lk8;->e()V

    .line 66
    .line 67
    .line 68
    return-object v2

    .line 69
    :cond_4
    if-nez v5, :cond_5

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    iget v4, v5, Landroidx/compose/ui/semantics/Role;->a:I

    .line 73
    .line 74
    if-ne v4, v7, :cond_8

    .line 75
    .line 76
    if-nez v0, :cond_8

    .line 77
    .line 78
    const v0, 0x7f1100db

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    goto :goto_0

    .line 86
    :cond_6
    if-nez v5, :cond_7

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_7
    iget v4, v5, Landroidx/compose/ui/semantics/Role;->a:I

    .line 90
    .line 91
    if-ne v4, v7, :cond_8

    .line 92
    .line 93
    if-nez v0, :cond_8

    .line 94
    .line 95
    const v0, 0x7f1100dc

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :cond_8
    :goto_0
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->K:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-nez v4, :cond_9

    .line 109
    .line 110
    move-object v4, v2

    .line 111
    :cond_9
    check-cast v4, Ljava/lang/Boolean;

    .line 112
    .line 113
    if-eqz v4, :cond_d

    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-nez v5, :cond_a

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_a
    iget v5, v5, Landroidx/compose/ui/semantics/Role;->a:I

    .line 123
    .line 124
    const/4 v7, 0x4

    .line 125
    if-ne v5, v7, :cond_b

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_b
    :goto_1
    if-nez v0, :cond_d

    .line 129
    .line 130
    if-eqz v4, :cond_c

    .line 131
    .line 132
    const v0, 0x7f1100d5

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    goto :goto_2

    .line 140
    :cond_c
    const v0, 0x7f1100c2

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :cond_d
    :goto_2
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 148
    .line 149
    invoke-virtual {v3, v4}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    if-nez v4, :cond_e

    .line 154
    .line 155
    move-object v4, v2

    .line 156
    :cond_e
    check-cast v4, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 157
    .line 158
    if-eqz v4, :cond_15

    .line 159
    .line 160
    sget-object v5, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->c:Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 161
    .line 162
    if-eq v4, v5, :cond_14

    .line 163
    .line 164
    if-nez v0, :cond_15

    .line 165
    .line 166
    iget-object v0, v4, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->b:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 167
    .line 168
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    sub-float/2addr v5, v7

    .line 185
    const/4 v7, 0x0

    .line 186
    cmpg-float v5, v5, v7

    .line 187
    .line 188
    if-nez v5, :cond_f

    .line 189
    .line 190
    move v4, v7

    .line 191
    goto :goto_3

    .line 192
    :cond_f
    iget v4, v4, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->a:F

    .line 193
    .line 194
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    sub-float/2addr v4, v5

    .line 203
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    sub-float/2addr v5, v0

    .line 220
    div-float/2addr v4, v5

    .line 221
    :goto_3
    cmpg-float v0, v4, v7

    .line 222
    .line 223
    if-gez v0, :cond_10

    .line 224
    .line 225
    move v4, v7

    .line 226
    :cond_10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 227
    .line 228
    cmpl-float v5, v4, v0

    .line 229
    .line 230
    if-lez v5, :cond_11

    .line 231
    .line 232
    move v4, v0

    .line 233
    :cond_11
    cmpg-float v5, v4, v7

    .line 234
    .line 235
    if-nez v5, :cond_12

    .line 236
    .line 237
    const/4 v0, 0x0

    .line 238
    goto :goto_4

    .line 239
    :cond_12
    cmpg-float v0, v4, v0

    .line 240
    .line 241
    if-nez v0, :cond_13

    .line 242
    .line 243
    const/16 v0, 0x64

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_13
    const/high16 v0, 0x42c80000    # 100.0f

    .line 247
    .line 248
    mul-float/2addr v4, v0

    .line 249
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    const/16 v4, 0x63

    .line 254
    .line 255
    invoke-static {v0, v6, v4}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    const v4, 0x7f1100e0

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    goto :goto_5

    .line 275
    :cond_14
    if-nez v0, :cond_15

    .line 276
    .line 277
    const v0, 0x7f110086

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    :cond_15
    :goto_5
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->G:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 285
    .line 286
    invoke-virtual {v3, v4}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    if-eqz v3, :cond_1d

    .line 291
    .line 292
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 293
    .line 294
    iget-object v3, p0, Landroidx/compose/ui/semantics/SemanticsNode;->a:Landroidx/compose/ui/Modifier$Node;

    .line 295
    .line 296
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->c:Landroidx/compose/ui/node/LayoutNode;

    .line 297
    .line 298
    invoke-direct {v0, v3, v6, p0, v1}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 306
    .line 307
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 308
    .line 309
    invoke-virtual {p0, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    if-nez v0, :cond_16

    .line 314
    .line 315
    move-object v0, v2

    .line 316
    :cond_16
    check-cast v0, Ljava/util/Collection;

    .line 317
    .line 318
    if-eqz v0, :cond_17

    .line 319
    .line 320
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_1c

    .line 325
    .line 326
    :cond_17
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 327
    .line 328
    invoke-virtual {p0, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    if-nez v0, :cond_18

    .line 333
    .line 334
    move-object v0, v2

    .line 335
    :cond_18
    check-cast v0, Ljava/util/Collection;

    .line 336
    .line 337
    if-eqz v0, :cond_19

    .line 338
    .line 339
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_1c

    .line 344
    .line 345
    :cond_19
    invoke-virtual {p0, v4}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object p0

    .line 349
    if-nez p0, :cond_1a

    .line 350
    .line 351
    move-object p0, v2

    .line 352
    :cond_1a
    check-cast p0, Ljava/lang/CharSequence;

    .line 353
    .line 354
    if-eqz p0, :cond_1b

    .line 355
    .line 356
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 357
    .line 358
    .line 359
    move-result p0

    .line 360
    if-nez p0, :cond_1c

    .line 361
    .line 362
    :cond_1b
    const p0, 0x7f1100da

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    :cond_1c
    move-object v0, v2

    .line 370
    :cond_1d
    check-cast v0, Ljava/lang/String;

    .line 371
    .line 372
    return-object v0
.end method

.method public static final d(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->G:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move-object v0, v1

    .line 15
    :cond_0
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 18
    .line 19
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    move-object p0, v1

    .line 30
    :cond_1
    check-cast p0, Ljava/util/List;

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    move-object v1, p0

    .line 39
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 40
    .line 41
    :cond_2
    if-nez v0, :cond_3

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_3
    return-object v0
.end method

.method public static final e(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 9
    .line 10
    iget-boolean v1, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    move-object v0, v1

    .line 27
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v1, v0

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    :cond_3
    if-nez v1, :cond_4

    .line 39
    .line 40
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->d(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/text/AnnotatedString;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->c(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_4

    .line 51
    .line 52
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    :cond_4
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->f(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_5

    .line 63
    .line 64
    :goto_0
    const/4 p0, 0x1

    .line 65
    return p0

    .line 66
    :cond_5
    :goto_1
    const/4 p0, 0x0

    .line 67
    return p0
.end method

.method public static final f(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v0, 0x4

    .line 10
    invoke-static {v0, p0}, Landroidx/compose/ui/semantics/SemanticsNode;->j(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    move v3, v1

    .line 19
    :goto_0
    if-ge v3, v2, :cond_2

    .line 20
    .line 21
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 26
    .line 27
    invoke-static {v4}, Landroidx/compose/ui/semantics/SemanticsNode_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_1

    .line 32
    .line 33
    :goto_1
    return v1

    .line 34
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->c:Landroidx/compose/ui/node/LayoutNode;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :goto_2
    const/4 v0, 0x1

    .line 44
    if-eqz p0, :cond_4

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->y()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    iget-boolean v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 53
    .line 54
    if-ne v2, v0, :cond_3

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    const/4 p0, 0x0

    .line 63
    :goto_3
    if-eqz p0, :cond_5

    .line 64
    .line 65
    move v1, v0

    .line 66
    :cond_5
    xor-int/lit8 p0, v1, 0x1

    .line 67
    .line 68
    return p0
.end method
