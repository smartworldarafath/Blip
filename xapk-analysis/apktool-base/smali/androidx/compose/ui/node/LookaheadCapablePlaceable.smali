.class public abstract Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.super Landroidx/compose/ui/layout/Placeable;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureScope;
.implements Landroidx/compose/ui/node/MotionReferencePlacementDelegate;
.implements Landroidx/compose/ui/node/OwnerScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;
    }
.end annotation


# static fields
.field public static final B:Landroidx/compose/ui/node/a;

.field public static final C:Landroidx/compose/ui/node/a;


# instance fields
.field public A:Landroidx/collection/MutableScatterMap;

.field public o:Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

.field public p:Lkotlin/jvm/functions/Function1;

.field public q:Lkotlin/jvm/functions/Function2;

.field public r:Lkotlin/jvm/functions/Function1;

.field public s:Landroidx/compose/ui/node/PlaceableResult;

.field public t:Landroidx/collection/MutableScatterMap;

.field public u:Z

.field public v:Landroidx/collection/MutableScatterMap;

.field public w:Z

.field public x:Z

.field public final y:Landroidx/compose/ui/layout/Placeable$PlacementScope;

.field public z:Landroidx/compose/ui/node/RulerTrackingMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/node/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->B:Landroidx/compose/ui/node/a;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/node/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->C:Landroidx/compose/ui/node/a;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/compose/ui/layout/PlaceableKt;->a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->y:Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 9
    .line 10
    return-void
.end method

.method public static O0(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->H:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/node/AlignmentLines;->g()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->h()Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    check-cast p0, Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 38
    .line 39
    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->H:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/compose/ui/node/AlignmentLines;->g()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method


# virtual methods
.method public final A0(Landroidx/compose/ui/layout/MeasureResult;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    iget-boolean v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_f

    .line 10
    .line 11
    :cond_0
    invoke-interface {v6}, Landroidx/compose/ui/layout/MeasureResult;->g()Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v6}, Landroidx/compose/ui/layout/MeasureResult;->f()Lkotlin/jvm/functions/Function2;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v6}, Landroidx/compose/ui/layout/MeasureResult;->e()Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    if-eqz v2, :cond_14

    .line 26
    .line 27
    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->q:Lkotlin/jvm/functions/Function2;

    .line 28
    .line 29
    if-ne v2, v1, :cond_13

    .line 30
    .line 31
    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->r:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    if-eq v3, v1, :cond_1

    .line 34
    .line 35
    goto/16 :goto_c

    .line 36
    .line 37
    :cond_1
    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->v:Landroidx/collection/MutableScatterMap;

    .line 38
    .line 39
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const/16 v14, 0x8

    .line 45
    .line 46
    if-eqz v1, :cond_8

    .line 47
    .line 48
    iget-object v15, v1, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v1, v1, Landroidx/collection/ScatterMap;->a:[J

    .line 51
    .line 52
    const-wide/16 v16, 0x80

    .line 53
    .line 54
    array-length v2, v1

    .line 55
    add-int/lit8 v2, v2, -0x2

    .line 56
    .line 57
    if-ltz v2, :cond_6

    .line 58
    .line 59
    const/16 p1, 0x7

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    const/16 v18, 0x0

    .line 63
    .line 64
    :goto_0
    aget-wide v6, v1, v3

    .line 65
    .line 66
    const-wide/16 v19, 0xff

    .line 67
    .line 68
    not-long v10, v6

    .line 69
    shl-long v10, v10, p1

    .line 70
    .line 71
    and-long/2addr v10, v6

    .line 72
    and-long/2addr v10, v12

    .line 73
    cmp-long v10, v10, v12

    .line 74
    .line 75
    if-eqz v10, :cond_5

    .line 76
    .line 77
    sub-int v10, v3, v2

    .line 78
    .line 79
    not-int v10, v10

    .line 80
    ushr-int/lit8 v10, v10, 0x1f

    .line 81
    .line 82
    rsub-int/lit8 v10, v10, 0x8

    .line 83
    .line 84
    const/4 v11, 0x0

    .line 85
    :goto_1
    if-ge v11, v10, :cond_4

    .line 86
    .line 87
    and-long v21, v6, v19

    .line 88
    .line 89
    cmp-long v21, v21, v16

    .line 90
    .line 91
    if-gez v21, :cond_2

    .line 92
    .line 93
    shl-int/lit8 v21, v3, 0x3

    .line 94
    .line 95
    add-int v21, v21, v11

    .line 96
    .line 97
    aget-object v21, v15, v21

    .line 98
    .line 99
    move-wide/from16 v22, v12

    .line 100
    .line 101
    move-object/from16 v12, v21

    .line 102
    .line 103
    check-cast v12, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 104
    .line 105
    iget-boolean v13, v12, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->j:Z

    .line 106
    .line 107
    if-eqz v13, :cond_3

    .line 108
    .line 109
    move-object/from16 v18, v12

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    move-wide/from16 v22, v12

    .line 113
    .line 114
    :cond_3
    :goto_2
    shr-long/2addr v6, v14

    .line 115
    add-int/lit8 v11, v11, 0x1

    .line 116
    .line 117
    move-wide/from16 v12, v22

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    move-wide/from16 v22, v12

    .line 121
    .line 122
    if-ne v10, v14, :cond_7

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    move-wide/from16 v22, v12

    .line 126
    .line 127
    :goto_3
    if-eq v3, v2, :cond_7

    .line 128
    .line 129
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    move-wide/from16 v12, v22

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_6
    move-wide/from16 v22, v12

    .line 135
    .line 136
    const/16 p1, 0x7

    .line 137
    .line 138
    const-wide/16 v19, 0xff

    .line 139
    .line 140
    const/16 v18, 0x0

    .line 141
    .line 142
    :cond_7
    move-object/from16 v1, v18

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_8
    move-wide/from16 v22, v12

    .line 146
    .line 147
    const/16 p1, 0x7

    .line 148
    .line 149
    const-wide/16 v16, 0x80

    .line 150
    .line 151
    const-wide/16 v19, 0xff

    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    :goto_4
    if-eqz v1, :cond_1c

    .line 155
    .line 156
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->F0()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-interface {v2, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->u(J)J

    .line 161
    .line 162
    .line 163
    move-result-wide v3

    .line 164
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->b(J)J

    .line 165
    .line 166
    .line 167
    move-result-wide v3

    .line 168
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->f()J

    .line 169
    .line 170
    .line 171
    move-result-wide v5

    .line 172
    iget-wide v10, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->k:J

    .line 173
    .line 174
    invoke-static {v3, v4, v10, v11}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_9

    .line 179
    .line 180
    iget-wide v1, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->l:J

    .line 181
    .line 182
    invoke-static {v5, v6, v1, v2}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_1c

    .line 187
    .line 188
    :cond_9
    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->v:Landroidx/collection/MutableScatterMap;

    .line 189
    .line 190
    if-eqz v1, :cond_1c

    .line 191
    .line 192
    iget-object v2, v1, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 193
    .line 194
    iget-object v7, v1, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 195
    .line 196
    iget-object v1, v1, Landroidx/collection/ScatterMap;->a:[J

    .line 197
    .line 198
    array-length v10, v1

    .line 199
    add-int/lit8 v10, v10, -0x2

    .line 200
    .line 201
    if-ltz v10, :cond_1c

    .line 202
    .line 203
    const/4 v11, 0x0

    .line 204
    :goto_5
    aget-wide v12, v1, v11

    .line 205
    .line 206
    move/from16 v18, v10

    .line 207
    .line 208
    not-long v9, v12

    .line 209
    shl-long v9, v9, p1

    .line 210
    .line 211
    and-long/2addr v9, v12

    .line 212
    and-long v9, v9, v22

    .line 213
    .line 214
    cmp-long v9, v9, v22

    .line 215
    .line 216
    if-eqz v9, :cond_12

    .line 217
    .line 218
    sub-int v9, v11, v18

    .line 219
    .line 220
    not-int v9, v9

    .line 221
    ushr-int/lit8 v9, v9, 0x1f

    .line 222
    .line 223
    rsub-int/lit8 v9, v9, 0x8

    .line 224
    .line 225
    const/4 v10, 0x0

    .line 226
    :goto_6
    if-ge v10, v9, :cond_11

    .line 227
    .line 228
    and-long v24, v12, v19

    .line 229
    .line 230
    cmp-long v21, v24, v16

    .line 231
    .line 232
    if-gez v21, :cond_f

    .line 233
    .line 234
    shl-int/lit8 v21, v11, 0x3

    .line 235
    .line 236
    add-int v21, v21, v10

    .line 237
    .line 238
    aget-object v24, v2, v21

    .line 239
    .line 240
    aget-object v21, v7, v21

    .line 241
    .line 242
    move-object/from16 v15, v21

    .line 243
    .line 244
    check-cast v15, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 245
    .line 246
    move/from16 v21, v14

    .line 247
    .line 248
    move-object/from16 v14, v24

    .line 249
    .line 250
    check-cast v14, Landroidx/compose/ui/layout/Ruler;

    .line 251
    .line 252
    iget-boolean v8, v15, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->j:Z

    .line 253
    .line 254
    move-object/from16 v26, v1

    .line 255
    .line 256
    if-eqz v8, :cond_b

    .line 257
    .line 258
    move-object v8, v2

    .line 259
    iget-wide v1, v15, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->l:J

    .line 260
    .line 261
    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_a

    .line 266
    .line 267
    iget-wide v1, v15, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->k:J

    .line 268
    .line 269
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-nez v1, :cond_c

    .line 274
    .line 275
    :cond_a
    const/4 v1, 0x1

    .line 276
    goto :goto_7

    .line 277
    :cond_b
    move-object v8, v2

    .line 278
    :cond_c
    const/4 v1, 0x0

    .line 279
    :goto_7
    iput-wide v5, v15, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->l:J

    .line 280
    .line 281
    iput-wide v3, v15, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->k:J

    .line 282
    .line 283
    const/4 v2, 0x0

    .line 284
    iput-boolean v2, v15, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->j:Z

    .line 285
    .line 286
    if-eqz v1, :cond_10

    .line 287
    .line 288
    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->z:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 289
    .line 290
    if-eqz v1, :cond_d

    .line 291
    .line 292
    invoke-virtual {v1, v14}, Landroidx/compose/ui/node/RulerTrackingMap;->a(Landroidx/compose/ui/layout/Ruler;)V

    .line 293
    .line 294
    .line 295
    :cond_d
    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->A:Landroidx/collection/MutableScatterMap;

    .line 296
    .line 297
    if-eqz v1, :cond_e

    .line 298
    .line 299
    invoke-virtual {v1, v14}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    move-object v15, v1

    .line 304
    check-cast v15, Landroidx/collection/MutableScatterSet;

    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_e
    const/4 v15, 0x0

    .line 308
    :goto_8
    if-eqz v15, :cond_10

    .line 309
    .line 310
    invoke-virtual {v0, v15}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->P0(Landroidx/collection/MutableScatterSet;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->f()V

    .line 314
    .line 315
    .line 316
    goto :goto_9

    .line 317
    :cond_f
    move-object/from16 v26, v1

    .line 318
    .line 319
    move-object v8, v2

    .line 320
    move/from16 v21, v14

    .line 321
    .line 322
    :cond_10
    :goto_9
    shr-long v12, v12, v21

    .line 323
    .line 324
    add-int/lit8 v10, v10, 0x1

    .line 325
    .line 326
    move-object v2, v8

    .line 327
    move/from16 v14, v21

    .line 328
    .line 329
    move-object/from16 v1, v26

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_11
    move-object/from16 v26, v1

    .line 333
    .line 334
    move-object v8, v2

    .line 335
    move v1, v14

    .line 336
    if-ne v9, v1, :cond_1c

    .line 337
    .line 338
    :goto_a
    move/from16 v10, v18

    .line 339
    .line 340
    goto :goto_b

    .line 341
    :cond_12
    move-object/from16 v26, v1

    .line 342
    .line 343
    move-object v8, v2

    .line 344
    move v1, v14

    .line 345
    goto :goto_a

    .line 346
    :goto_b
    if-eq v11, v10, :cond_1c

    .line 347
    .line 348
    add-int/lit8 v11, v11, 0x1

    .line 349
    .line 350
    move v14, v1

    .line 351
    move-object v2, v8

    .line 352
    move-object/from16 v1, v26

    .line 353
    .line 354
    goto/16 :goto_5

    .line 355
    .line 356
    :cond_13
    :goto_c
    iput-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->q:Lkotlin/jvm/functions/Function2;

    .line 357
    .line 358
    iput-object v3, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->r:Lkotlin/jvm/functions/Function1;

    .line 359
    .line 360
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->R0()V

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    :cond_14
    const-wide v2, 0x7fffffff7fffffffL

    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    if-nez v1, :cond_16

    .line 370
    .line 371
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->R0()V

    .line 372
    .line 373
    .line 374
    const/4 v15, 0x0

    .line 375
    iput-object v15, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->p:Lkotlin/jvm/functions/Function1;

    .line 376
    .line 377
    iput-object v15, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->q:Lkotlin/jvm/functions/Function2;

    .line 378
    .line 379
    iput-object v15, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->r:Lkotlin/jvm/functions/Function1;

    .line 380
    .line 381
    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->o:Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 382
    .line 383
    if-eqz v0, :cond_15

    .line 384
    .line 385
    const/4 v7, 0x0

    .line 386
    iput-boolean v7, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->j:Z

    .line 387
    .line 388
    :cond_15
    if-eqz v0, :cond_1c

    .line 389
    .line 390
    iput-wide v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->k:J

    .line 391
    .line 392
    return-void

    .line 393
    :cond_16
    const/4 v7, 0x0

    .line 394
    const/4 v15, 0x0

    .line 395
    iput-object v15, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->q:Lkotlin/jvm/functions/Function2;

    .line 396
    .line 397
    iput-object v15, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->r:Lkotlin/jvm/functions/Function1;

    .line 398
    .line 399
    iget-object v8, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->p:Lkotlin/jvm/functions/Function1;

    .line 400
    .line 401
    if-eq v8, v1, :cond_17

    .line 402
    .line 403
    const/4 v1, 0x1

    .line 404
    goto :goto_d

    .line 405
    :cond_17
    move v1, v7

    .line 406
    :goto_d
    if-nez v1, :cond_1a

    .line 407
    .line 408
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->N0()Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    iget-boolean v8, v8, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->j:Z

    .line 413
    .line 414
    if-eqz v8, :cond_1a

    .line 415
    .line 416
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->F0()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->u(J)J

    .line 421
    .line 422
    .line 423
    move-result-wide v2

    .line 424
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->b(J)J

    .line 425
    .line 426
    .line 427
    move-result-wide v2

    .line 428
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->f()J

    .line 429
    .line 430
    .line 431
    move-result-wide v4

    .line 432
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->N0()Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    iget-wide v8, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->k:J

    .line 437
    .line 438
    invoke-static {v2, v3, v8, v9}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    if-eqz v1, :cond_18

    .line 443
    .line 444
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->N0()Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    iget-wide v8, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;->l:J

    .line 449
    .line 450
    invoke-static {v4, v5, v8, v9}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-nez v1, :cond_19

    .line 455
    .line 456
    :cond_18
    const/4 v7, 0x1

    .line 457
    :cond_19
    move v1, v7

    .line 458
    :cond_1a
    if-eqz v1, :cond_1c

    .line 459
    .line 460
    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->s:Landroidx/compose/ui/node/PlaceableResult;

    .line 461
    .line 462
    if-eqz v1, :cond_1b

    .line 463
    .line 464
    iput-object v6, v1, Landroidx/compose/ui/node/PlaceableResult;->j:Landroidx/compose/ui/layout/MeasureResult;

    .line 465
    .line 466
    goto :goto_e

    .line 467
    :cond_1b
    new-instance v1, Landroidx/compose/ui/node/PlaceableResult;

    .line 468
    .line 469
    const/4 v15, 0x0

    .line 470
    invoke-direct {v1, v6, v0, v15}, Landroidx/compose/ui/node/PlaceableResult;-><init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Ruler;)V

    .line 471
    .line 472
    .line 473
    iput-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->s:Landroidx/compose/ui/node/PlaceableResult;

    .line 474
    .line 475
    :goto_e
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->w0(Landroidx/compose/ui/node/PlaceableResult;JJ)V

    .line 476
    .line 477
    .line 478
    invoke-interface {v6}, Landroidx/compose/ui/layout/MeasureResult;->g()Lkotlin/jvm/functions/Function1;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    iput-object v1, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->p:Lkotlin/jvm/functions/Function1;

    .line 483
    .line 484
    :cond_1c
    :goto_f
    return-void
.end method

.method public final C0(Landroidx/compose/ui/layout/Ruler;)F
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 2
    .line 3
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 14
    .line 15
    :goto_0
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 18
    .line 19
    iget-object v2, v2, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->z:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v3, v2, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 24
    .line 25
    invoke-static {v3, p1}, Lkotlin/collections/ArraysKt;->t([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-gez v3, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object v2, v2, Landroidx/compose/ui/node/RulerTrackingMap;->c:[F

    .line 33
    .line 34
    aget v2, v2, v3

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_1
    move v2, v1

    .line 38
    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 43
    .line 44
    if-nez v3, :cond_3

    .line 45
    .line 46
    check-cast v4, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->J0()Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v4, v1, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->n0(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/Ruler;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->F0()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->F0()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p1, v2, v0, p0}, Landroidx/compose/ui/layout/Ruler;->a(FLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;)F

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    return p0

    .line 72
    :cond_3
    check-cast v4, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 73
    .line 74
    iget-object v2, v4, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->q:Lkotlin/jvm/functions/Function2;

    .line 75
    .line 76
    if-eqz v2, :cond_9

    .line 77
    .line 78
    iget-object v3, v4, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->r:Lkotlin/jvm/functions/Function1;

    .line 79
    .line 80
    if-eqz v3, :cond_9

    .line 81
    .line 82
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    const/4 v4, 0x1

    .line 93
    if-ne v3, v4, :cond_9

    .line 94
    .line 95
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 98
    .line 99
    iget-object v4, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->t:Landroidx/collection/MutableScatterMap;

    .line 100
    .line 101
    if-nez v4, :cond_4

    .line 102
    .line 103
    sget-object v4, Landroidx/collection/ScatterMapKt;->a:[J

    .line 104
    .line 105
    new-instance v4, Landroidx/collection/MutableScatterMap;

    .line 106
    .line 107
    invoke-direct {v4}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object v4, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->t:Landroidx/collection/MutableScatterMap;

    .line 111
    .line 112
    :cond_4
    invoke-virtual {v4, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    if-nez v5, :cond_5

    .line 117
    .line 118
    new-instance v5, Landroidx/compose/ui/node/PlaceableResult;

    .line 119
    .line 120
    invoke-virtual {v3}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->K0()Landroidx/compose/ui/layout/MeasureResult;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-direct {v5, v6, v3, p1}, Landroidx/compose/ui/node/PlaceableResult;-><init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Ruler;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, p1, v5}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    check-cast v5, Landroidx/compose/ui/node/PlaceableResult;

    .line 131
    .line 132
    invoke-virtual {v3}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->K0()Landroidx/compose/ui/layout/MeasureResult;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iput-object v3, v5, Landroidx/compose/ui/node/PlaceableResult;->j:Landroidx/compose/ui/layout/MeasureResult;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->J0()Landroidx/compose/ui/node/LayoutNode;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 143
    .line 144
    if-eqz v3, :cond_6

    .line 145
    .line 146
    invoke-interface {v3}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    if-eqz v3, :cond_6

    .line 151
    .line 152
    new-instance v4, Ln1;

    .line 153
    .line 154
    const/4 v6, 0x6

    .line 155
    invoke-direct {v4, v2, v0, p1, v6}, Ln1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 156
    .line 157
    .line 158
    iget-object v2, v3, Landroidx/compose/ui/node/OwnerSnapshotObserver;->a:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 159
    .line 160
    sget-object v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->C:Landroidx/compose/ui/node/a;

    .line 161
    .line 162
    invoke-virtual {v2, v5, v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v2, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 168
    .line 169
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->J0()Landroidx/compose/ui/node/LayoutNode;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v2, v3, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->n0(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/Ruler;)V

    .line 174
    .line 175
    .line 176
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v2, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 179
    .line 180
    iget-object v2, v2, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->z:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 181
    .line 182
    if-eqz v2, :cond_8

    .line 183
    .line 184
    iget-object v3, v2, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 185
    .line 186
    invoke-static {v3, p1}, Lkotlin/collections/ArraysKt;->t([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-gez v3, :cond_7

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_7
    iget-object v2, v2, Landroidx/compose/ui/node/RulerTrackingMap;->c:[F

    .line 194
    .line 195
    aget v2, v2, v3

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_8
    :goto_3
    move v2, v1

    .line 199
    :goto_4
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-nez v3, :cond_9

    .line 204
    .line 205
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 208
    .line 209
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->F0()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->F0()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {p1, v2, v0, p0}, Landroidx/compose/ui/layout/Ruler;->a(FLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;)F

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    return p0

    .line 222
    :cond_9
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v2, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 225
    .line 226
    invoke-virtual {v2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->L0()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    if-nez v2, :cond_a

    .line 231
    .line 232
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 235
    .line 236
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->J0()Landroidx/compose/ui/node/LayoutNode;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->n0(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/Ruler;)V

    .line 241
    .line 242
    .line 243
    return v1

    .line 244
    :cond_a
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 245
    .line 246
    goto/16 :goto_0
.end method

.method public abstract E0()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.end method

.method public abstract F0()Landroidx/compose/ui/layout/LayoutCoordinates;
.end method

.method public abstract G0()Z
.end method

.method public abstract J0()Landroidx/compose/ui/node/LayoutNode;
.end method

.method public final K(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->G0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x80000000

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->s0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ne p1, v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return v1

    .line 17
    :cond_1
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->n:J

    .line 18
    .line 19
    const-wide v2, 0xffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v0, v2

    .line 25
    long-to-int p0, v0

    .line 26
    add-int/2addr p1, p0

    .line 27
    return p1
.end method

.method public abstract K0()Landroidx/compose/ui/layout/MeasureResult;
.end method

.method public abstract L0()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.end method

.method public final M(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->L0()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->J0()Landroidx/compose/ui/node/LayoutNode;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->J0()Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iput-boolean p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->u:Z

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 30
    .line 31
    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-object v2, v1

    .line 35
    :goto_1
    sget-object v3, Landroidx/compose/ui/node/LayoutNode$LayoutState;->l:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 36
    .line 37
    if-eq v2, v3, :cond_5

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 42
    .line 43
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 44
    .line 45
    :cond_3
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$LayoutState;->m:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 46
    .line 47
    if-ne v1, v0, :cond_4

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    return-void

    .line 51
    :cond_5
    :goto_2
    iput-boolean p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->u:Z

    .line 52
    .line 53
    return-void
.end method

.method public abstract M0()J
.end method

.method public final N0()Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->o:Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;-><init>(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->o:Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method

.method public final P0(Landroidx/collection/MutableScatterSet;)V
    .locals 13

    .line 1
    iget-object v0, p1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/collection/ScatterSet;->a:[J

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    add-int/lit8 v1, v1, -0x2

    .line 7
    .line 8
    if-ltz v1, :cond_4

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    aget-wide v4, p1, v3

    .line 13
    .line 14
    not-long v6, v4

    .line 15
    const/4 v8, 0x7

    .line 16
    shl-long/2addr v6, v8

    .line 17
    and-long/2addr v6, v4

    .line 18
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    and-long/2addr v6, v8

    .line 24
    cmp-long v6, v6, v8

    .line 25
    .line 26
    if-eqz v6, :cond_3

    .line 27
    .line 28
    sub-int v6, v3, v1

    .line 29
    .line 30
    not-int v6, v6

    .line 31
    ushr-int/lit8 v6, v6, 0x1f

    .line 32
    .line 33
    const/16 v7, 0x8

    .line 34
    .line 35
    rsub-int/lit8 v6, v6, 0x8

    .line 36
    .line 37
    move v8, v2

    .line 38
    :goto_1
    if-ge v8, v6, :cond_2

    .line 39
    .line 40
    const-wide/16 v9, 0xff

    .line 41
    .line 42
    and-long/2addr v9, v4

    .line 43
    const-wide/16 v11, 0x80

    .line 44
    .line 45
    cmp-long v9, v9, v11

    .line 46
    .line 47
    if-gez v9, :cond_1

    .line 48
    .line 49
    shl-int/lit8 v9, v3, 0x3

    .line 50
    .line 51
    add-int/2addr v9, v8

    .line 52
    aget-object v9, v0, v9

    .line 53
    .line 54
    check-cast v9, Landroidx/compose/ui/node/WeakReference;

    .line 55
    .line 56
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    check-cast v9, Landroidx/compose/ui/node/LayoutNode;

    .line 61
    .line 62
    if-eqz v9, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->f0()Z

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-eqz v10, :cond_0

    .line 69
    .line 70
    invoke-virtual {v9, v2}, Landroidx/compose/ui/node/LayoutNode;->W(Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_0
    invoke-virtual {v9, v2}, Landroidx/compose/ui/node/LayoutNode;->Y(Z)V

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_2
    shr-long/2addr v4, v7

    .line 78
    add-int/lit8 v8, v8, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    if-ne v6, v7, :cond_4

    .line 82
    .line 83
    :cond_3
    if-eq v3, v1, :cond_4

    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    return-void
.end method

.method public abstract Q0()V
.end method

.method public final R0()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->z:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v2, v0, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 7
    .line 8
    move v3, v1

    .line 9
    :goto_0
    if-ge v3, v2, :cond_0

    .line 10
    .line 11
    iget-object v4, v0, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    aput-object v5, v4, v3

    .line 15
    .line 16
    iget-object v4, v0, Landroidx/compose/ui/node/RulerTrackingMap;->c:[F

    .line 17
    .line 18
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 19
    .line 20
    aput v5, v4, v3

    .line 21
    .line 22
    iget-object v4, v0, Landroidx/compose/ui/node/RulerTrackingMap;->d:[B

    .line 23
    .line 24
    aput-byte v1, v4, v3

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iput v1, v0, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->A:Landroidx/collection/MutableScatterMap;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-object v2, v0, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v3, v0, Landroidx/collection/ScatterMap;->a:[J

    .line 39
    .line 40
    array-length v4, v3

    .line 41
    add-int/lit8 v4, v4, -0x2

    .line 42
    .line 43
    if-ltz v4, :cond_6

    .line 44
    .line 45
    move v5, v1

    .line 46
    :goto_1
    aget-wide v6, v3, v5

    .line 47
    .line 48
    not-long v8, v6

    .line 49
    const/4 v10, 0x7

    .line 50
    shl-long/2addr v8, v10

    .line 51
    and-long/2addr v8, v6

    .line 52
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    and-long/2addr v8, v10

    .line 58
    cmp-long v8, v8, v10

    .line 59
    .line 60
    if-eqz v8, :cond_5

    .line 61
    .line 62
    sub-int v8, v5, v4

    .line 63
    .line 64
    not-int v8, v8

    .line 65
    ushr-int/lit8 v8, v8, 0x1f

    .line 66
    .line 67
    const/16 v9, 0x8

    .line 68
    .line 69
    rsub-int/lit8 v8, v8, 0x8

    .line 70
    .line 71
    move v10, v1

    .line 72
    :goto_2
    if-ge v10, v8, :cond_4

    .line 73
    .line 74
    const-wide/16 v11, 0xff

    .line 75
    .line 76
    and-long/2addr v11, v6

    .line 77
    const-wide/16 v13, 0x80

    .line 78
    .line 79
    cmp-long v11, v11, v13

    .line 80
    .line 81
    if-gez v11, :cond_3

    .line 82
    .line 83
    shl-int/lit8 v11, v5, 0x3

    .line 84
    .line 85
    add-int/2addr v11, v10

    .line 86
    aget-object v11, v2, v11

    .line 87
    .line 88
    check-cast v11, Landroidx/collection/MutableScatterSet;

    .line 89
    .line 90
    invoke-virtual {p0, v11}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->P0(Landroidx/collection/MutableScatterSet;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    shr-long/2addr v6, v9

    .line 94
    add-int/lit8 v10, v10, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    if-ne v8, v9, :cond_6

    .line 98
    .line 99
    :cond_5
    if-eq v5, v4, :cond_6

    .line 100
    .line 101
    add-int/lit8 v5, v5, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->h()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public f0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final n0(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/Ruler;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->A:Landroidx/collection/MutableScatterMap;

    .line 6
    .line 7
    const/4 v7, 0x7

    .line 8
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/16 v10, 0x8

    .line 14
    .line 15
    if-eqz v2, :cond_a

    .line 16
    .line 17
    iget-object v12, v2, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v2, v2, Landroidx/collection/ScatterMap;->a:[J

    .line 20
    .line 21
    array-length v13, v2

    .line 22
    add-int/lit8 v13, v13, -0x2

    .line 23
    .line 24
    if-ltz v13, :cond_a

    .line 25
    .line 26
    const/4 v14, 0x0

    .line 27
    const-wide/16 v15, 0x80

    .line 28
    .line 29
    :goto_0
    aget-wide v3, v2, v14

    .line 30
    .line 31
    const-wide/16 v17, 0xff

    .line 32
    .line 33
    not-long v5, v3

    .line 34
    shl-long/2addr v5, v7

    .line 35
    and-long/2addr v5, v3

    .line 36
    and-long/2addr v5, v8

    .line 37
    cmp-long v5, v5, v8

    .line 38
    .line 39
    if-eqz v5, :cond_9

    .line 40
    .line 41
    sub-int v5, v14, v13

    .line 42
    .line 43
    not-int v5, v5

    .line 44
    ushr-int/lit8 v5, v5, 0x1f

    .line 45
    .line 46
    rsub-int/lit8 v5, v5, 0x8

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    :goto_1
    if-ge v6, v5, :cond_8

    .line 50
    .line 51
    and-long v19, v3, v17

    .line 52
    .line 53
    cmp-long v19, v19, v15

    .line 54
    .line 55
    if-gez v19, :cond_7

    .line 56
    .line 57
    shl-int/lit8 v19, v14, 0x3

    .line 58
    .line 59
    add-int v19, v19, v6

    .line 60
    .line 61
    aget-object v19, v12, v19

    .line 62
    .line 63
    move/from16 v20, v7

    .line 64
    .line 65
    move-object/from16 v7, v19

    .line 66
    .line 67
    check-cast v7, Landroidx/collection/MutableScatterSet;

    .line 68
    .line 69
    move-wide/from16 v21, v8

    .line 70
    .line 71
    iget-object v8, v7, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 72
    .line 73
    iget-object v9, v7, Landroidx/collection/ScatterSet;->a:[J

    .line 74
    .line 75
    array-length v11, v9

    .line 76
    add-int/lit8 v11, v11, -0x2

    .line 77
    .line 78
    if-ltz v11, :cond_5

    .line 79
    .line 80
    move-wide/from16 v23, v15

    .line 81
    .line 82
    const/4 v15, 0x0

    .line 83
    move/from16 v16, v10

    .line 84
    .line 85
    :goto_2
    move/from16 v25, v11

    .line 86
    .line 87
    aget-wide v10, v9, v15

    .line 88
    .line 89
    move-object/from16 v26, v2

    .line 90
    .line 91
    move-wide/from16 v27, v3

    .line 92
    .line 93
    not-long v2, v10

    .line 94
    shl-long v2, v2, v20

    .line 95
    .line 96
    and-long/2addr v2, v10

    .line 97
    and-long v2, v2, v21

    .line 98
    .line 99
    cmp-long v2, v2, v21

    .line 100
    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    sub-int v2, v15, v25

    .line 104
    .line 105
    not-int v2, v2

    .line 106
    ushr-int/lit8 v2, v2, 0x1f

    .line 107
    .line 108
    rsub-int/lit8 v2, v2, 0x8

    .line 109
    .line 110
    const/4 v3, 0x0

    .line 111
    :goto_3
    if-ge v3, v2, :cond_3

    .line 112
    .line 113
    and-long v29, v10, v17

    .line 114
    .line 115
    cmp-long v4, v29, v23

    .line 116
    .line 117
    if-gez v4, :cond_2

    .line 118
    .line 119
    shl-int/lit8 v4, v15, 0x3

    .line 120
    .line 121
    add-int/2addr v4, v3

    .line 122
    aget-object v29, v8, v4

    .line 123
    .line 124
    check-cast v29, Landroidx/compose/ui/node/WeakReference;

    .line 125
    .line 126
    invoke-virtual/range {v29 .. v29}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v29

    .line 130
    check-cast v29, Landroidx/compose/ui/node/LayoutNode;

    .line 131
    .line 132
    move/from16 v30, v3

    .line 133
    .line 134
    if-eqz v29, :cond_0

    .line 135
    .line 136
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    move/from16 v29, v6

    .line 141
    .line 142
    const/4 v6, 0x1

    .line 143
    if-ne v3, v6, :cond_1

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_0
    move/from16 v29, v6

    .line 147
    .line 148
    :cond_1
    invoke-virtual {v7, v4}, Landroidx/collection/MutableScatterSet;->n(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_2
    move/from16 v30, v3

    .line 153
    .line 154
    move/from16 v29, v6

    .line 155
    .line 156
    :goto_4
    shr-long v10, v10, v16

    .line 157
    .line 158
    add-int/lit8 v3, v30, 0x1

    .line 159
    .line 160
    move/from16 v6, v29

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_3
    move/from16 v29, v6

    .line 164
    .line 165
    move/from16 v3, v16

    .line 166
    .line 167
    if-ne v2, v3, :cond_6

    .line 168
    .line 169
    :goto_5
    move/from16 v11, v25

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_4
    move/from16 v29, v6

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :goto_6
    if-eq v15, v11, :cond_6

    .line 176
    .line 177
    add-int/lit8 v15, v15, 0x1

    .line 178
    .line 179
    move-object/from16 v2, v26

    .line 180
    .line 181
    move-wide/from16 v3, v27

    .line 182
    .line 183
    move/from16 v6, v29

    .line 184
    .line 185
    const/16 v16, 0x8

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_5
    move-object/from16 v26, v2

    .line 189
    .line 190
    move-wide/from16 v27, v3

    .line 191
    .line 192
    move/from16 v29, v6

    .line 193
    .line 194
    move-wide/from16 v23, v15

    .line 195
    .line 196
    :cond_6
    const/16 v3, 0x8

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_7
    move-object/from16 v26, v2

    .line 200
    .line 201
    move-wide/from16 v27, v3

    .line 202
    .line 203
    move/from16 v29, v6

    .line 204
    .line 205
    move/from16 v20, v7

    .line 206
    .line 207
    move-wide/from16 v21, v8

    .line 208
    .line 209
    move-wide/from16 v23, v15

    .line 210
    .line 211
    move v3, v10

    .line 212
    :goto_7
    shr-long v6, v27, v3

    .line 213
    .line 214
    add-int/lit8 v2, v29, 0x1

    .line 215
    .line 216
    move v10, v3

    .line 217
    move-wide v3, v6

    .line 218
    move/from16 v7, v20

    .line 219
    .line 220
    move-wide/from16 v8, v21

    .line 221
    .line 222
    move-wide/from16 v15, v23

    .line 223
    .line 224
    move v6, v2

    .line 225
    move-object/from16 v2, v26

    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_8
    move-object/from16 v26, v2

    .line 230
    .line 231
    move/from16 v20, v7

    .line 232
    .line 233
    move-wide/from16 v21, v8

    .line 234
    .line 235
    move v3, v10

    .line 236
    move-wide/from16 v23, v15

    .line 237
    .line 238
    if-ne v5, v3, :cond_b

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_9
    move-object/from16 v26, v2

    .line 242
    .line 243
    move/from16 v20, v7

    .line 244
    .line 245
    move-wide/from16 v21, v8

    .line 246
    .line 247
    move-wide/from16 v23, v15

    .line 248
    .line 249
    :goto_8
    if-eq v14, v13, :cond_b

    .line 250
    .line 251
    add-int/lit8 v14, v14, 0x1

    .line 252
    .line 253
    move/from16 v7, v20

    .line 254
    .line 255
    move-wide/from16 v8, v21

    .line 256
    .line 257
    move-wide/from16 v15, v23

    .line 258
    .line 259
    move-object/from16 v2, v26

    .line 260
    .line 261
    const/16 v10, 0x8

    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_a
    move/from16 v20, v7

    .line 266
    .line 267
    move-wide/from16 v21, v8

    .line 268
    .line 269
    const-wide/16 v17, 0xff

    .line 270
    .line 271
    const-wide/16 v23, 0x80

    .line 272
    .line 273
    :cond_b
    iget-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->A:Landroidx/collection/MutableScatterMap;

    .line 274
    .line 275
    if-eqz v2, :cond_f

    .line 276
    .line 277
    iget-object v3, v2, Landroidx/collection/ScatterMap;->a:[J

    .line 278
    .line 279
    array-length v4, v3

    .line 280
    add-int/lit8 v4, v4, -0x2

    .line 281
    .line 282
    if-ltz v4, :cond_f

    .line 283
    .line 284
    const/4 v5, 0x0

    .line 285
    :goto_9
    aget-wide v6, v3, v5

    .line 286
    .line 287
    not-long v8, v6

    .line 288
    shl-long v8, v8, v20

    .line 289
    .line 290
    and-long/2addr v8, v6

    .line 291
    and-long v8, v8, v21

    .line 292
    .line 293
    cmp-long v8, v8, v21

    .line 294
    .line 295
    if-eqz v8, :cond_e

    .line 296
    .line 297
    sub-int v8, v5, v4

    .line 298
    .line 299
    not-int v8, v8

    .line 300
    ushr-int/lit8 v8, v8, 0x1f

    .line 301
    .line 302
    const/16 v16, 0x8

    .line 303
    .line 304
    rsub-int/lit8 v10, v8, 0x8

    .line 305
    .line 306
    const/4 v8, 0x0

    .line 307
    :goto_a
    if-ge v8, v10, :cond_d

    .line 308
    .line 309
    and-long v11, v6, v17

    .line 310
    .line 311
    cmp-long v9, v11, v23

    .line 312
    .line 313
    if-gez v9, :cond_c

    .line 314
    .line 315
    shl-int/lit8 v9, v5, 0x3

    .line 316
    .line 317
    add-int/2addr v9, v8

    .line 318
    iget-object v11, v2, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 319
    .line 320
    aget-object v11, v11, v9

    .line 321
    .line 322
    iget-object v12, v2, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 323
    .line 324
    aget-object v12, v12, v9

    .line 325
    .line 326
    check-cast v12, Landroidx/collection/MutableScatterSet;

    .line 327
    .line 328
    check-cast v11, Landroidx/compose/ui/layout/Ruler;

    .line 329
    .line 330
    invoke-virtual {v12}, Landroidx/collection/ScatterSet;->b()Z

    .line 331
    .line 332
    .line 333
    move-result v11

    .line 334
    if-eqz v11, :cond_c

    .line 335
    .line 336
    invoke-virtual {v2, v9}, Landroidx/collection/MutableScatterMap;->n(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    :cond_c
    const/16 v9, 0x8

    .line 340
    .line 341
    shr-long/2addr v6, v9

    .line 342
    add-int/lit8 v8, v8, 0x1

    .line 343
    .line 344
    goto :goto_a

    .line 345
    :cond_d
    const/16 v9, 0x8

    .line 346
    .line 347
    if-ne v10, v9, :cond_f

    .line 348
    .line 349
    goto :goto_b

    .line 350
    :cond_e
    const/16 v9, 0x8

    .line 351
    .line 352
    :goto_b
    if-eq v5, v4, :cond_f

    .line 353
    .line 354
    add-int/lit8 v5, v5, 0x1

    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_f
    iget-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->A:Landroidx/collection/MutableScatterMap;

    .line 358
    .line 359
    if-nez v2, :cond_10

    .line 360
    .line 361
    new-instance v2, Landroidx/collection/MutableScatterMap;

    .line 362
    .line 363
    invoke-direct {v2}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 364
    .line 365
    .line 366
    iput-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->A:Landroidx/collection/MutableScatterMap;

    .line 367
    .line 368
    :cond_10
    invoke-virtual {v2, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    if-nez v0, :cond_11

    .line 373
    .line 374
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 375
    .line 376
    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v1, v0}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    :cond_11
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 383
    .line 384
    new-instance v1, Landroidx/compose/ui/node/WeakReference;

    .line 385
    .line 386
    move-object/from16 v2, p1

    .line 387
    .line 388
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterSet;->l(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    return-void
.end method

.method public abstract s0(Landroidx/compose/ui/layout/AlignmentLine;)I
.end method

.method public final v0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8

    .line 1
    const/high16 v0, -0x1000000

    .line 2
    .line 3
    and-int v1, p1, v0

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    and-int/2addr v0, p2

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Size("

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " x "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ") is out of range. Each dimension must be between 0 and 16777215."

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    new-instance v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;

    .line 42
    .line 43
    move-object v7, p0

    .line 44
    move v2, p1

    .line 45
    move v3, p2

    .line 46
    move-object v4, p3

    .line 47
    move-object v5, p4

    .line 48
    move-object v6, p5

    .line 49
    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;-><init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method public final w0(Landroidx/compose/ui/node/PlaceableResult;JJ)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v7, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->A:Landroidx/collection/MutableScatterMap;

    .line 4
    .line 5
    iget-object v0, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->z:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/compose/ui/node/RulerTrackingMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->z:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 15
    .line 16
    :cond_0
    move-object v8, v0

    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->J0()Landroidx/compose/ui/node/LayoutNode;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    if-eqz v9, :cond_1

    .line 30
    .line 31
    new-instance v0, Landroidx/compose/ui/node/b;

    .line 32
    .line 33
    move-object/from16 v6, p1

    .line 34
    .line 35
    move-wide/from16 v2, p2

    .line 36
    .line 37
    move-wide/from16 v4, p4

    .line 38
    .line 39
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/node/b;-><init>(Landroidx/compose/ui/node/LookaheadCapablePlaceable;JJLandroidx/compose/ui/node/PlaceableResult;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v9, Landroidx/compose/ui/node/OwnerSnapshotObserver;->a:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 43
    .line 44
    sget-object v2, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->B:Landroidx/compose/ui/node/a;

    .line 45
    .line 46
    invoke-virtual {v1, v6, v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->f0()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object v1, v8, Landroidx/compose/ui/node/RulerTrackingMap;->e:Landroidx/collection/MutableScatterSet;

    .line 54
    .line 55
    iget-object v2, v8, Landroidx/compose/ui/node/RulerTrackingMap;->f:Landroidx/collection/MutableScatterSet;

    .line 56
    .line 57
    iget v3, v8, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    :goto_0
    if-ge v5, v3, :cond_4

    .line 61
    .line 62
    iget-object v6, v8, Landroidx/compose/ui/node/RulerTrackingMap;->d:[B

    .line 63
    .line 64
    aget-byte v6, v6, v5

    .line 65
    .line 66
    const/4 v9, 0x3

    .line 67
    if-ne v6, v9, :cond_2

    .line 68
    .line 69
    iget-object v6, v8, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 70
    .line 71
    aget-object v6, v6, v5

    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v6}, Landroidx/collection/MutableScatterSet;->l(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    if-eqz v6, :cond_3

    .line 81
    .line 82
    if-eqz v7, :cond_3

    .line 83
    .line 84
    iget-object v6, v8, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 85
    .line 86
    aget-object v6, v6, v5

    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v6}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Landroidx/collection/MutableScatterSet;

    .line 96
    .line 97
    if-eqz v6, :cond_3

    .line 98
    .line 99
    invoke-virtual {v1, v6}, Landroidx/collection/MutableScatterSet;->k(Landroidx/collection/ScatterSet;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    iget v3, v8, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 106
    .line 107
    const/4 v5, 0x0

    .line 108
    const/4 v6, 0x0

    .line 109
    :goto_2
    const/4 v7, 0x2

    .line 110
    if-ge v5, v3, :cond_7

    .line 111
    .line 112
    iget-object v9, v8, Landroidx/compose/ui/node/RulerTrackingMap;->d:[B

    .line 113
    .line 114
    aget-byte v10, v9, v5

    .line 115
    .line 116
    if-ne v10, v7, :cond_5

    .line 117
    .line 118
    add-int/lit8 v6, v6, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    if-lez v6, :cond_6

    .line 122
    .line 123
    sub-int v10, v5, v6

    .line 124
    .line 125
    iget-object v11, v8, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 126
    .line 127
    aget-object v12, v11, v5

    .line 128
    .line 129
    aput-object v12, v11, v10

    .line 130
    .line 131
    :cond_6
    :goto_3
    aput-byte v7, v9, v5

    .line 132
    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_7
    iget v3, v8, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 137
    .line 138
    sub-int v5, v3, v6

    .line 139
    .line 140
    :goto_4
    const/4 v9, 0x0

    .line 141
    if-ge v5, v3, :cond_8

    .line 142
    .line 143
    iget-object v10, v8, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 144
    .line 145
    aput-object v9, v10, v5

    .line 146
    .line 147
    add-int/lit8 v5, v5, 0x1

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_8
    iget v3, v8, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 151
    .line 152
    sub-int/2addr v3, v6

    .line 153
    iput v3, v8, Landroidx/compose/ui/node/RulerTrackingMap;->a:I

    .line 154
    .line 155
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->L0()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    iget-object v5, v2, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 160
    .line 161
    iget-object v6, v2, Landroidx/collection/ScatterSet;->a:[J

    .line 162
    .line 163
    array-length v8, v6

    .line 164
    sub-int/2addr v8, v7

    .line 165
    const/4 v14, 0x7

    .line 166
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    move/from16 p1, v7

    .line 172
    .line 173
    const/16 v7, 0x8

    .line 174
    .line 175
    if-ltz v8, :cond_12

    .line 176
    .line 177
    const-wide/16 p3, 0x80

    .line 178
    .line 179
    const/4 v9, 0x0

    .line 180
    :goto_5
    aget-wide v10, v6, v9

    .line 181
    .line 182
    const-wide/16 v17, 0xff

    .line 183
    .line 184
    not-long v12, v10

    .line 185
    shl-long/2addr v12, v14

    .line 186
    and-long/2addr v12, v10

    .line 187
    and-long/2addr v12, v15

    .line 188
    cmp-long v12, v12, v15

    .line 189
    .line 190
    if-eqz v12, :cond_11

    .line 191
    .line 192
    sub-int v12, v9, v8

    .line 193
    .line 194
    not-int v12, v12

    .line 195
    ushr-int/lit8 v12, v12, 0x1f

    .line 196
    .line 197
    rsub-int/lit8 v12, v12, 0x8

    .line 198
    .line 199
    const/4 v13, 0x0

    .line 200
    :goto_6
    if-ge v13, v12, :cond_10

    .line 201
    .line 202
    and-long v19, v10, v17

    .line 203
    .line 204
    cmp-long v19, v19, p3

    .line 205
    .line 206
    if-gez v19, :cond_e

    .line 207
    .line 208
    shl-int/lit8 v19, v9, 0x3

    .line 209
    .line 210
    add-int v19, v19, v13

    .line 211
    .line 212
    aget-object v19, v5, v19

    .line 213
    .line 214
    move/from16 p5, v14

    .line 215
    .line 216
    move-object/from16 v14, v19

    .line 217
    .line 218
    check-cast v14, Landroidx/compose/ui/layout/Ruler;

    .line 219
    .line 220
    move-wide/from16 v19, v15

    .line 221
    .line 222
    if-nez v3, :cond_9

    .line 223
    .line 224
    move-object/from16 v15, p0

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_9
    move-object v15, v3

    .line 228
    :goto_7
    move/from16 v21, v7

    .line 229
    .line 230
    move-object v4, v15

    .line 231
    :goto_8
    iget-object v7, v4, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->z:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 232
    .line 233
    if-eqz v7, :cond_a

    .line 234
    .line 235
    iget-object v7, v7, Landroidx/compose/ui/node/RulerTrackingMap;->b:[Landroidx/compose/ui/layout/Ruler;

    .line 236
    .line 237
    invoke-static {v7, v14}, Lkotlin/collections/ArraysKt;->c([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    move/from16 v22, v0

    .line 242
    .line 243
    const/4 v0, 0x1

    .line 244
    if-ne v7, v0, :cond_b

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :cond_a
    move/from16 v22, v0

    .line 248
    .line 249
    :cond_b
    invoke-virtual {v4}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->L0()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    if-nez v0, :cond_d

    .line 254
    .line 255
    :goto_9
    iget-object v0, v4, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->A:Landroidx/collection/MutableScatterMap;

    .line 256
    .line 257
    if-eqz v0, :cond_c

    .line 258
    .line 259
    invoke-virtual {v0, v14}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 264
    .line 265
    goto :goto_a

    .line 266
    :cond_c
    const/4 v0, 0x0

    .line 267
    :goto_a
    if-eqz v0, :cond_f

    .line 268
    .line 269
    invoke-virtual {v15, v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->P0(Landroidx/collection/MutableScatterSet;)V

    .line 270
    .line 271
    .line 272
    goto :goto_b

    .line 273
    :cond_d
    move-object v4, v0

    .line 274
    move/from16 v0, v22

    .line 275
    .line 276
    goto :goto_8

    .line 277
    :cond_e
    move/from16 v22, v0

    .line 278
    .line 279
    move/from16 v21, v7

    .line 280
    .line 281
    move/from16 p5, v14

    .line 282
    .line 283
    move-wide/from16 v19, v15

    .line 284
    .line 285
    :cond_f
    :goto_b
    shr-long v10, v10, v21

    .line 286
    .line 287
    add-int/lit8 v13, v13, 0x1

    .line 288
    .line 289
    move/from16 v14, p5

    .line 290
    .line 291
    move-wide/from16 v15, v19

    .line 292
    .line 293
    move/from16 v7, v21

    .line 294
    .line 295
    move/from16 v0, v22

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_10
    move/from16 v22, v0

    .line 299
    .line 300
    move v0, v7

    .line 301
    move/from16 p5, v14

    .line 302
    .line 303
    move-wide/from16 v19, v15

    .line 304
    .line 305
    if-ne v12, v0, :cond_13

    .line 306
    .line 307
    goto :goto_c

    .line 308
    :cond_11
    move/from16 v22, v0

    .line 309
    .line 310
    move/from16 p5, v14

    .line 311
    .line 312
    move-wide/from16 v19, v15

    .line 313
    .line 314
    :goto_c
    if-eq v9, v8, :cond_13

    .line 315
    .line 316
    add-int/lit8 v9, v9, 0x1

    .line 317
    .line 318
    move/from16 v14, p5

    .line 319
    .line 320
    move-wide/from16 v15, v19

    .line 321
    .line 322
    move/from16 v0, v22

    .line 323
    .line 324
    const/16 v7, 0x8

    .line 325
    .line 326
    goto/16 :goto_5

    .line 327
    .line 328
    :cond_12
    move/from16 v22, v0

    .line 329
    .line 330
    move/from16 p5, v14

    .line 331
    .line 332
    move-wide/from16 v19, v15

    .line 333
    .line 334
    const-wide/16 p3, 0x80

    .line 335
    .line 336
    const-wide/16 v17, 0xff

    .line 337
    .line 338
    :cond_13
    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->f()V

    .line 339
    .line 340
    .line 341
    iget-object v0, v1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 342
    .line 343
    iget-object v2, v1, Landroidx/collection/ScatterSet;->a:[J

    .line 344
    .line 345
    array-length v3, v2

    .line 346
    add-int/lit8 v3, v3, -0x2

    .line 347
    .line 348
    if-ltz v3, :cond_18

    .line 349
    .line 350
    const/4 v4, 0x0

    .line 351
    :goto_d
    aget-wide v5, v2, v4

    .line 352
    .line 353
    not-long v7, v5

    .line 354
    shl-long v7, v7, p5

    .line 355
    .line 356
    and-long/2addr v7, v5

    .line 357
    and-long v7, v7, v19

    .line 358
    .line 359
    cmp-long v7, v7, v19

    .line 360
    .line 361
    if-eqz v7, :cond_17

    .line 362
    .line 363
    sub-int v7, v4, v3

    .line 364
    .line 365
    not-int v7, v7

    .line 366
    ushr-int/lit8 v7, v7, 0x1f

    .line 367
    .line 368
    const/16 v21, 0x8

    .line 369
    .line 370
    rsub-int/lit8 v7, v7, 0x8

    .line 371
    .line 372
    const/4 v8, 0x0

    .line 373
    :goto_e
    if-ge v8, v7, :cond_16

    .line 374
    .line 375
    and-long v9, v5, v17

    .line 376
    .line 377
    cmp-long v9, v9, p3

    .line 378
    .line 379
    if-gez v9, :cond_15

    .line 380
    .line 381
    shl-int/lit8 v9, v4, 0x3

    .line 382
    .line 383
    add-int/2addr v9, v8

    .line 384
    aget-object v9, v0, v9

    .line 385
    .line 386
    check-cast v9, Landroidx/compose/ui/node/WeakReference;

    .line 387
    .line 388
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v9

    .line 392
    check-cast v9, Landroidx/compose/ui/node/LayoutNode;

    .line 393
    .line 394
    if-eqz v9, :cond_15

    .line 395
    .line 396
    if-eqz v22, :cond_14

    .line 397
    .line 398
    const/4 v10, 0x0

    .line 399
    invoke-virtual {v9, v10}, Landroidx/compose/ui/node/LayoutNode;->W(Z)V

    .line 400
    .line 401
    .line 402
    goto :goto_f

    .line 403
    :cond_14
    const/4 v10, 0x0

    .line 404
    invoke-virtual {v9, v10}, Landroidx/compose/ui/node/LayoutNode;->Y(Z)V

    .line 405
    .line 406
    .line 407
    :goto_f
    const/16 v9, 0x8

    .line 408
    .line 409
    goto :goto_10

    .line 410
    :cond_15
    const/4 v10, 0x0

    .line 411
    goto :goto_f

    .line 412
    :goto_10
    shr-long/2addr v5, v9

    .line 413
    add-int/lit8 v8, v8, 0x1

    .line 414
    .line 415
    goto :goto_e

    .line 416
    :cond_16
    const/16 v9, 0x8

    .line 417
    .line 418
    const/4 v10, 0x0

    .line 419
    if-ne v7, v9, :cond_18

    .line 420
    .line 421
    goto :goto_11

    .line 422
    :cond_17
    const/16 v9, 0x8

    .line 423
    .line 424
    const/4 v10, 0x0

    .line 425
    :goto_11
    if-eq v4, v3, :cond_18

    .line 426
    .line 427
    add-int/lit8 v4, v4, 0x1

    .line 428
    .line 429
    goto :goto_d

    .line 430
    :cond_18
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->f()V

    .line 431
    .line 432
    .line 433
    return-void
.end method

.method public z()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->J0()Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
