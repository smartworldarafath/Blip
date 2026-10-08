.class public final synthetic Lab;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/node/MeasurePassDelegate;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/node/MeasurePassDelegate;I)V
    .locals 0

    .line 1
    iput p2, p0, Lab;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lab;->k:Landroidx/compose/ui/node/MeasurePassDelegate;

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
    .locals 10

    .line 1
    iget v0, p0, Lab;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lab;->k:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->o:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a()Landroidx/compose/ui/node/NodeCoordinator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v2, v2, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, v2, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->y:Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    :cond_0
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 25
    .line 26
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Landroidx/compose/ui/node/Owner;->getPlacementScope()Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :cond_1
    iget-object v3, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->Q:Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->R:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a()Landroidx/compose/ui/node/NodeCoordinator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-wide v5, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->S:J

    .line 45
    .line 46
    iget p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->T:F

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    .line 52
    .line 53
    .line 54
    iget-wide v2, v0, Landroidx/compose/ui/layout/Placeable;->n:J

    .line 55
    .line 56
    invoke-static {v5, v6, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-virtual {v0, v2, v3, p0, v4}, Landroidx/compose/ui/node/NodeCoordinator;->b0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    if-nez v3, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a()Landroidx/compose/ui/node/NodeCoordinator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-wide v3, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->S:J

    .line 71
    .line 72
    iget p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->T:F

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    .line 78
    .line 79
    .line 80
    iget-wide v5, v0, Landroidx/compose/ui/layout/Placeable;->n:J

    .line 81
    .line 82
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    const/4 v4, 0x0

    .line 87
    invoke-virtual {v0, v2, v3, p0, v4}, Landroidx/compose/ui/layout/Placeable;->c0(JFLkotlin/jvm/functions/Function1;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a()Landroidx/compose/ui/node/NodeCoordinator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-wide v4, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->S:J

    .line 96
    .line 97
    iget p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->T:F

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    .line 103
    .line 104
    .line 105
    iget-wide v6, v0, Landroidx/compose/ui/layout/Placeable;->n:J

    .line 106
    .line 107
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    invoke-virtual {v0, v4, v5, p0, v3}, Landroidx/compose/ui/layout/Placeable;->c0(JFLkotlin/jvm/functions/Function1;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    return-object v1

    .line 115
    :pswitch_0
    iget-object v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->o:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    iput v2, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->i:I

    .line 119
    .line 120
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    iget-object v4, v3, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 127
    .line 128
    iget v3, v3, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 129
    .line 130
    move v5, v2

    .line 131
    :goto_1
    const v6, 0x7fffffff

    .line 132
    .line 133
    .line 134
    if-ge v5, v3, :cond_5

    .line 135
    .line 136
    aget-object v7, v4, v5

    .line 137
    .line 138
    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 139
    .line 140
    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 141
    .line 142
    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 143
    .line 144
    iget v8, v7, Landroidx/compose/ui/node/MeasurePassDelegate;->r:I

    .line 145
    .line 146
    iput v8, v7, Landroidx/compose/ui/node/MeasurePassDelegate;->q:I

    .line 147
    .line 148
    iput v6, v7, Landroidx/compose/ui/node/MeasurePassDelegate;->r:I

    .line 149
    .line 150
    iput-boolean v2, v7, Landroidx/compose/ui/node/MeasurePassDelegate;->D:Z

    .line 151
    .line 152
    iget-object v6, v7, Landroidx/compose/ui/node/MeasurePassDelegate;->u:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 153
    .line 154
    sget-object v8, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->k:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 155
    .line 156
    if-ne v6, v8, :cond_4

    .line 157
    .line 158
    sget-object v6, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 159
    .line 160
    iput-object v6, v7, Landroidx/compose/ui/node/MeasurePassDelegate;->u:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 161
    .line 162
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    iget-object v4, v3, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 170
    .line 171
    iget v3, v3, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 172
    .line 173
    move v5, v2

    .line 174
    :goto_2
    if-ge v5, v3, :cond_6

    .line 175
    .line 176
    aget-object v7, v4, v5

    .line 177
    .line 178
    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 179
    .line 180
    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 181
    .line 182
    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 183
    .line 184
    iget-object v7, v7, Landroidx/compose/ui/node/MeasurePassDelegate;->H:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 185
    .line 186
    iput-boolean v2, v7, Landroidx/compose/ui/node/AlignmentLines;->d:Z

    .line 187
    .line 188
    add-int/lit8 v5, v5, 0x1

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->e()Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    iget-boolean v3, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 196
    .line 197
    if-eqz v3, :cond_7

    .line 198
    .line 199
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    move v5, v2

    .line 208
    :goto_3
    if-ge v5, v4, :cond_7

    .line 209
    .line 210
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 215
    .line 216
    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 217
    .line 218
    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 219
    .line 220
    const/4 v8, 0x1

    .line 221
    iput-boolean v8, v7, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 222
    .line 223
    add-int/lit8 v5, v5, 0x1

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_7
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->e()Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->K0()Landroidx/compose/ui/layout/MeasureResult;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-interface {v3}, Landroidx/compose/ui/layout/MeasureResult;->d()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->e()Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    iget-boolean p0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 242
    .line 243
    if-eqz p0, :cond_8

    .line 244
    .line 245
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    move v4, v2

    .line 254
    :goto_4
    if-ge v4, v3, :cond_8

    .line 255
    .line 256
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 261
    .line 262
    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 263
    .line 264
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 265
    .line 266
    iput-boolean v2, v5, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 267
    .line 268
    add-int/lit8 v4, v4, 0x1

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    iget-object v3, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 276
    .line 277
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 278
    .line 279
    move v4, v2

    .line 280
    :goto_5
    if-ge v4, p0, :cond_c

    .line 281
    .line 282
    aget-object v5, v3, v4

    .line 283
    .line 284
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 285
    .line 286
    iget-object v7, v5, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 287
    .line 288
    iget-object v8, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 289
    .line 290
    iget v8, v8, Landroidx/compose/ui/node/MeasurePassDelegate;->q:I

    .line 291
    .line 292
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->x()I

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    if-eq v8, v9, :cond_b

    .line 297
    .line 298
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->S()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->G()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->x()I

    .line 305
    .line 306
    .line 307
    move-result v8

    .line 308
    if-ne v8, v6, :cond_b

    .line 309
    .line 310
    iget-boolean v8, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->c:Z

    .line 311
    .line 312
    if-nez v8, :cond_9

    .line 313
    .line 314
    invoke-static {v5}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegateKt;->a(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-eqz v5, :cond_a

    .line 319
    .line 320
    :cond_9
    iget-object v5, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 321
    .line 322
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5, v2}, Landroidx/compose/ui/node/LookaheadPassDelegate;->s0(Z)V

    .line 326
    .line 327
    .line 328
    :cond_a
    iget-object v5, v7, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 329
    .line 330
    invoke-virtual {v5}, Landroidx/compose/ui/node/MeasurePassDelegate;->w0()V

    .line 331
    .line 332
    .line 333
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 341
    .line 342
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 343
    .line 344
    :goto_6
    if-ge v2, p0, :cond_d

    .line 345
    .line 346
    aget-object v3, v0, v2

    .line 347
    .line 348
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 349
    .line 350
    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 351
    .line 352
    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 353
    .line 354
    iget-object v3, v3, Landroidx/compose/ui/node/MeasurePassDelegate;->H:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 355
    .line 356
    iget-boolean v4, v3, Landroidx/compose/ui/node/AlignmentLines;->d:Z

    .line 357
    .line 358
    iput-boolean v4, v3, Landroidx/compose/ui/node/AlignmentLines;->e:Z

    .line 359
    .line 360
    add-int/lit8 v2, v2, 0x1

    .line 361
    .line 362
    goto :goto_6

    .line 363
    :cond_d
    return-object v1

    .line 364
    :pswitch_1
    iget-object v0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->o:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 365
    .line 366
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a()Landroidx/compose/ui/node/NodeCoordinator;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    iget-wide v2, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->L:J

    .line 371
    .line 372
    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 373
    .line 374
    .line 375
    return-object v1

    .line 376
    nop

    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
