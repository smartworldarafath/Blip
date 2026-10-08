.class public final synthetic Lta;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/node/LookaheadPassDelegate;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/node/LookaheadPassDelegate;I)V
    .locals 0

    .line 1
    iput p2, p0, Lta;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lta;->k:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lta;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object p0, p0, Lta;->k:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->o:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 12
    .line 13
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 14
    .line 15
    invoke-static {v3}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegateKt;->a(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    iget-boolean v3, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->c:Z

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a()Landroidx/compose/ui/node/NodeCoordinator;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v3, v3, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->b1()Landroidx/compose/ui/node/LookaheadDelegate;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    iget-object v1, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->y:Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a()Landroidx/compose/ui/node/NodeCoordinator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v3, v3, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    iget-object v1, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->y:Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 51
    .line 52
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 53
    .line 54
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 55
    .line 56
    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getPlacementScope()Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a()Landroidx/compose/ui/node/NodeCoordinator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->b1()Landroidx/compose/ui/node/LookaheadDelegate;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-wide v3, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->x:J

    .line 76
    .line 77
    invoke-static {v1, v0, v3, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->h(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 78
    .line 79
    .line 80
    return-object v2

    .line 81
    :pswitch_0
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->o:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a()Landroidx/compose/ui/node/NodeCoordinator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->b1()Landroidx/compose/ui/node/LookaheadDelegate;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-wide v3, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->I:J

    .line 95
    .line 96
    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 97
    .line 98
    .line 99
    return-object v2

    .line 100
    :pswitch_1
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->o:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    iput v3, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->h:I

    .line 104
    .line 105
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iget-object v5, v4, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 112
    .line 113
    iget v4, v4, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 114
    .line 115
    move v6, v3

    .line 116
    :goto_1
    const v7, 0x7fffffff

    .line 117
    .line 118
    .line 119
    if-ge v6, v4, :cond_4

    .line 120
    .line 121
    aget-object v8, v5, v6

    .line 122
    .line 123
    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    .line 124
    .line 125
    iget-object v8, v8, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 126
    .line 127
    iget-object v8, v8, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 128
    .line 129
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget v9, v8, Landroidx/compose/ui/node/LookaheadPassDelegate;->r:I

    .line 133
    .line 134
    iput v9, v8, Landroidx/compose/ui/node/LookaheadPassDelegate;->q:I

    .line 135
    .line 136
    iput v7, v8, Landroidx/compose/ui/node/LookaheadPassDelegate;->r:I

    .line 137
    .line 138
    iget-object v7, v8, Landroidx/compose/ui/node/LookaheadPassDelegate;->s:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 139
    .line 140
    sget-object v9, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->k:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 141
    .line 142
    if-ne v7, v9, :cond_3

    .line 143
    .line 144
    sget-object v7, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 145
    .line 146
    iput-object v7, v8, Landroidx/compose/ui/node/LookaheadPassDelegate;->s:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 147
    .line 148
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    iget-object v5, v4, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 156
    .line 157
    iget v4, v4, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 158
    .line 159
    move v6, v3

    .line 160
    :goto_2
    if-ge v6, v4, :cond_5

    .line 161
    .line 162
    aget-object v8, v5, v6

    .line 163
    .line 164
    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    .line 165
    .line 166
    iget-object v8, v8, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 167
    .line 168
    iget-object v8, v8, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 169
    .line 170
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-object v8, v8, Landroidx/compose/ui/node/LookaheadPassDelegate;->B:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    .line 174
    .line 175
    iput-boolean v3, v8, Landroidx/compose/ui/node/AlignmentLines;->d:Z

    .line 176
    .line 177
    add-int/lit8 v6, v6, 0x1

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->e()Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    iget-object p0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->m0:Landroidx/compose/ui/node/LookaheadDelegate;

    .line 185
    .line 186
    if-eqz p0, :cond_10

    .line 187
    .line 188
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 189
    .line 190
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    move v6, v3

    .line 202
    :goto_3
    if-ge v6, v5, :cond_9

    .line 203
    .line 204
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    .line 209
    .line 210
    iget-object v9, v8, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 211
    .line 212
    iget-object v9, v9, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 213
    .line 214
    invoke-virtual {v9}, Landroidx/compose/ui/node/NodeCoordinator;->b1()Landroidx/compose/ui/node/LookaheadDelegate;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    if-nez v9, :cond_6

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_6
    iget-boolean v10, v9, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 222
    .line 223
    if-eqz v10, :cond_8

    .line 224
    .line 225
    iget-object v10, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v10, Landroidx/collection/MutableObjectList;

    .line 228
    .line 229
    if-nez v10, :cond_7

    .line 230
    .line 231
    new-instance v10, Landroidx/collection/MutableObjectList;

    .line 232
    .line 233
    invoke-direct {v10}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 234
    .line 235
    .line 236
    iput-object v10, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 237
    .line 238
    :cond_7
    iput-object v10, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 239
    .line 240
    invoke-virtual {v10, v8}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_8
    iget-boolean v8, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 244
    .line 245
    iput-boolean v8, v9, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 246
    .line 247
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadDelegate;->K0()Landroidx/compose/ui/layout/MeasureResult;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->d()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    move v5, v3

    .line 266
    :goto_5
    const/4 v6, 0x1

    .line 267
    if-ge v5, v4, :cond_c

    .line 268
    .line 269
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    .line 274
    .line 275
    iget-object v9, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v9, Landroidx/collection/MutableObjectList;

    .line 278
    .line 279
    if-eqz v9, :cond_a

    .line 280
    .line 281
    invoke-virtual {v9, v8}, Landroidx/collection/ObjectList;->c(Ljava/lang/Object;)I

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    if-ltz v9, :cond_a

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_a
    move v6, v3

    .line 289
    :goto_6
    iget-object v8, v8, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 290
    .line 291
    iget-object v8, v8, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 292
    .line 293
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeCoordinator;->b1()Landroidx/compose/ui/node/LookaheadDelegate;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    if-eqz v8, :cond_b

    .line 298
    .line 299
    iput-boolean v6, v8, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 300
    .line 301
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    iget-object v1, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 309
    .line 310
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 311
    .line 312
    move v4, v3

    .line 313
    :goto_7
    if-ge v4, p0, :cond_e

    .line 314
    .line 315
    aget-object v5, v1, v4

    .line 316
    .line 317
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 318
    .line 319
    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 320
    .line 321
    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 322
    .line 323
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    iget v8, v5, Landroidx/compose/ui/node/LookaheadPassDelegate;->q:I

    .line 327
    .line 328
    iget v9, v5, Landroidx/compose/ui/node/LookaheadPassDelegate;->r:I

    .line 329
    .line 330
    if-eq v8, v9, :cond_d

    .line 331
    .line 332
    if-ne v9, v7, :cond_d

    .line 333
    .line 334
    invoke-virtual {v5, v6}, Landroidx/compose/ui/node/LookaheadPassDelegate;->s0(Z)V

    .line 335
    .line 336
    .line 337
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 338
    .line 339
    goto :goto_7

    .line 340
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 345
    .line 346
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 347
    .line 348
    :goto_8
    if-ge v3, p0, :cond_f

    .line 349
    .line 350
    aget-object v1, v0, v3

    .line 351
    .line 352
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 353
    .line 354
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 355
    .line 356
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 357
    .line 358
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    iget-object v1, v1, Landroidx/compose/ui/node/LookaheadPassDelegate;->B:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    .line 362
    .line 363
    iget-boolean v4, v1, Landroidx/compose/ui/node/AlignmentLines;->d:Z

    .line 364
    .line 365
    iput-boolean v4, v1, Landroidx/compose/ui/node/AlignmentLines;->e:Z

    .line 366
    .line 367
    add-int/lit8 v3, v3, 0x1

    .line 368
    .line 369
    goto :goto_8

    .line 370
    :cond_f
    move-object v1, v2

    .line 371
    goto :goto_9

    .line 372
    :cond_10
    const-string p0, "Expected lookahead delegate"

    .line 373
    .line 374
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    :goto_9
    return-object v1

    .line 378
    nop

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
