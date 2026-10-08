.class public abstract Landroidx/compose/ui/focus/BeyondBoundsLayoutKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "visitAncestors called on an unattached node"

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v1, :cond_b

    .line 24
    .line 25
    iget-object v5, v1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 26
    .line 27
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 28
    .line 29
    iget v5, v5, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 30
    .line 31
    and-int/lit16 v5, v5, 0x400

    .line 32
    .line 33
    if-eqz v5, :cond_9

    .line 34
    .line 35
    :goto_1
    if-eqz v0, :cond_9

    .line 36
    .line 37
    iget v5, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 38
    .line 39
    and-int/lit16 v5, v5, 0x400

    .line 40
    .line 41
    if-eqz v5, :cond_8

    .line 42
    .line 43
    move-object v5, v0

    .line 44
    move-object v6, v4

    .line 45
    :goto_2
    if-eqz v5, :cond_8

    .line 46
    .line 47
    instance-of v7, v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 48
    .line 49
    if-eqz v7, :cond_1

    .line 50
    .line 51
    goto :goto_5

    .line 52
    :cond_1
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 53
    .line 54
    and-int/lit16 v7, v7, 0x400

    .line 55
    .line 56
    if-eqz v7, :cond_7

    .line 57
    .line 58
    instance-of v7, v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 59
    .line 60
    if-eqz v7, :cond_7

    .line 61
    .line 62
    move-object v7, v5

    .line 63
    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 64
    .line 65
    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 66
    .line 67
    move v8, v2

    .line 68
    :goto_3
    if-eqz v7, :cond_6

    .line 69
    .line 70
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 71
    .line 72
    and-int/lit16 v9, v9, 0x400

    .line 73
    .line 74
    if-eqz v9, :cond_5

    .line 75
    .line 76
    add-int/lit8 v8, v8, 0x1

    .line 77
    .line 78
    if-ne v8, v3, :cond_2

    .line 79
    .line 80
    move-object v5, v7

    .line 81
    goto :goto_4

    .line 82
    :cond_2
    if-nez v6, :cond_3

    .line 83
    .line 84
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    .line 85
    .line 86
    const/16 v9, 0x10

    .line 87
    .line 88
    new-array v9, v9, [Landroidx/compose/ui/Modifier$Node;

    .line 89
    .line 90
    invoke-direct {v6, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    if-eqz v5, :cond_4

    .line 94
    .line 95
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    move-object v5, v4

    .line 99
    :cond_4
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_4
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    if-ne v8, v3, :cond_7

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    goto :goto_2

    .line 113
    :cond_8
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_9
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_a

    .line 121
    .line 122
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 123
    .line 124
    if-eqz v0, :cond_a

    .line 125
    .line 126
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_a
    move-object v0, v4

    .line 130
    goto :goto_0

    .line 131
    :cond_b
    move-object v5, v4

    .line 132
    :goto_5
    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 133
    .line 134
    if-eqz v5, :cond_c

    .line 135
    .line 136
    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusTargetNode;->c1()Landroidx/compose/ui/layout/BeyondBoundsLayout;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->c1()Landroidx/compose/ui/layout/BeyondBoundsLayout;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_c

    .line 149
    .line 150
    goto/16 :goto_c

    .line 151
    .line 152
    :cond_c
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->c1()Landroidx/compose/ui/layout/BeyondBoundsLayout;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    if-eqz p0, :cond_19

    .line 157
    .line 158
    const/4 v0, 0x5

    .line 159
    const/4 v1, 0x2

    .line 160
    if-ne p1, v0, :cond_d

    .line 161
    .line 162
    :goto_6
    move v3, v0

    .line 163
    goto :goto_7

    .line 164
    :cond_d
    const/4 v0, 0x6

    .line 165
    if-ne p1, v0, :cond_e

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_e
    const/4 v0, 0x3

    .line 169
    if-ne p1, v0, :cond_f

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_f
    const/4 v0, 0x4

    .line 173
    if-ne p1, v0, :cond_10

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_10
    if-ne p1, v3, :cond_11

    .line 177
    .line 178
    move v3, v1

    .line 179
    goto :goto_7

    .line 180
    :cond_11
    if-ne p1, v1, :cond_18

    .line 181
    .line 182
    :goto_7
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;

    .line 183
    .line 184
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->x:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    .line 185
    .line 186
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->a()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-lez p1, :cond_17

    .line 191
    .line 192
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->x:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    .line 193
    .line 194
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->d()Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_17

    .line 199
    .line 200
    iget-boolean p1, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 201
    .line 202
    if-nez p1, :cond_12

    .line 203
    .line 204
    goto/16 :goto_b

    .line 205
    .line 206
    :cond_12
    invoke-virtual {p0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->Z0(I)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->x:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    .line 211
    .line 212
    if-eqz p1, :cond_13

    .line 213
    .line 214
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->b()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    goto :goto_8

    .line 219
    :cond_13
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->e()I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    :goto_8
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 224
    .line 225
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 226
    .line 227
    .line 228
    iget-object v5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->y:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 229
    .line 230
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    new-instance v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 234
    .line 235
    invoke-direct {v6, p1, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;-><init>(II)V

    .line 236
    .line 237
    .line 238
    iget-object p1, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 239
    .line 240
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    iput-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 244
    .line 245
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->x:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    .line 246
    .line 247
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->c()I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    mul-int/2addr p1, v1

    .line 252
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->x:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    .line 253
    .line 254
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->a()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-le p1, v1, :cond_14

    .line 259
    .line 260
    move p1, v1

    .line 261
    :cond_14
    :goto_9
    if-nez v4, :cond_16

    .line 262
    .line 263
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 266
    .line 267
    invoke-virtual {p0, v1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->Y0(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;I)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_16

    .line 272
    .line 273
    if-ge v2, p1, :cond_16

    .line 274
    .line 275
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 278
    .line 279
    iget v4, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->a:I

    .line 280
    .line 281
    iget v1, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->b:I

    .line 282
    .line 283
    invoke-virtual {p0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->Z0(I)Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-eqz v5, :cond_15

    .line 288
    .line 289
    add-int/lit8 v1, v1, 0x1

    .line 290
    .line 291
    goto :goto_a

    .line 292
    :cond_15
    add-int/lit8 v4, v4, -0x1

    .line 293
    .line 294
    :goto_a
    iget-object v5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->y:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    new-instance v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 300
    .line 301
    invoke-direct {v6, v4, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;-><init>(II)V

    .line 302
    .line 303
    .line 304
    iget-object v1, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 305
    .line 306
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->y:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 310
    .line 311
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 314
    .line 315
    iget-object v1, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 316
    .line 317
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/collection/MutableVector;->j(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    iput-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 321
    .line 322
    add-int/lit8 v2, v2, 0x1

    .line 323
    .line 324
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->k()V

    .line 329
    .line 330
    .line 331
    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode$layout$2;

    .line 332
    .line 333
    invoke-direct {v1, p0, v0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode$layout$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    .line 334
    .line 335
    .line 336
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    goto :goto_9

    .line 341
    :cond_16
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->y:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 342
    .line 343
    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 346
    .line 347
    iget-object p1, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 348
    .line 349
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/MutableVector;->j(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->k()V

    .line 357
    .line 358
    .line 359
    return-object v4

    .line 360
    :cond_17
    :goto_b
    sget-object p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;->A:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1;

    .line 361
    .line 362
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    return-object p0

    .line 367
    :cond_18
    const-string p0, "Unsupported direction for beyond bounds layout"

    .line 368
    .line 369
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :cond_19
    :goto_c
    return-object v4
.end method
