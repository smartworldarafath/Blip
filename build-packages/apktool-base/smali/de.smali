.class public final synthetic Lde;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p2, p0, Lde;->j:I

    iput-object p3, p0, Lde;->l:Ljava/lang/Object;

    iput p1, p0, Lde;->k:I

    iput-object p4, p0, Lde;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lde;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lde;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lde;->m:Ljava/lang/Object;

    .line 10
    .line 11
    iput p3, p0, Lde;->k:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lde;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    iget v5, v0, Lde;->k:I

    .line 10
    .line 11
    iget-object v6, v0, Lde;->m:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v0, v0, Lde;->l:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    check-cast v6, Ljava/util/ArrayList;

    .line 21
    .line 22
    move-object/from16 v1, p1

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->N(Ljava/lang/Iterable;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_1

    .line 42
    .line 43
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    add-int/lit8 v9, v3, 0x1

    .line 48
    .line 49
    if-ltz v3, :cond_0

    .line 50
    .line 51
    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    sub-int/2addr v10, v3

    .line 58
    sub-int/2addr v10, v4

    .line 59
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroidx/compose/ui/unit/IntOffset;

    .line 64
    .line 65
    iget-wide v10, v3, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 66
    .line 67
    const/16 v3, 0x20

    .line 68
    .line 69
    shr-long v12, v10, v3

    .line 70
    .line 71
    long-to-int v3, v12

    .line 72
    const-wide v12, 0xffffffffL

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    and-long/2addr v10, v12

    .line 78
    long-to-int v10, v10

    .line 79
    sub-int/2addr v10, v5

    .line 80
    invoke-static {v1, v8, v3, v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 81
    .line 82
    .line 83
    move v3, v9

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->T()V

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    throw v0

    .line 90
    :cond_1
    return-object v2

    .line 91
    :pswitch_0
    check-cast v0, Landroidx/compose/foundation/ScrollNode;

    .line 92
    .line 93
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 94
    .line 95
    move-object/from16 v1, p1

    .line 96
    .line 97
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 98
    .line 99
    iget-object v7, v0, Landroidx/compose/foundation/ScrollNode;->x:Landroidx/compose/foundation/ScrollState;

    .line 100
    .line 101
    invoke-virtual {v7}, Landroidx/compose/foundation/ScrollState;->f()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-gez v7, :cond_2

    .line 106
    .line 107
    move v7, v3

    .line 108
    :cond_2
    if-le v7, v5, :cond_3

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    move v5, v7

    .line 112
    :goto_1
    neg-int v5, v5

    .line 113
    iget-boolean v0, v0, Landroidx/compose/foundation/ScrollNode;->y:Z

    .line 114
    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    move v7, v3

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    move v7, v5

    .line 120
    :goto_2
    if-eqz v0, :cond_5

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    move v5, v3

    .line 124
    :goto_3
    iput-boolean v4, v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j:Z

    .line 125
    .line 126
    invoke-static {v1, v6, v7, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 127
    .line 128
    .line 129
    iput-boolean v3, v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j:Z

    .line 130
    .line 131
    return-object v2

    .line 132
    :pswitch_1
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 133
    .line 134
    check-cast v6, Landroidx/collection/MutableObjectIntMap;

    .line 135
    .line 136
    move-object/from16 v1, p1

    .line 137
    .line 138
    check-cast v1, Landroidx/compose/runtime/Composition;

    .line 139
    .line 140
    iget v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->e:I

    .line 141
    .line 142
    if-ne v7, v5, :cond_e

    .line 143
    .line 144
    iget-object v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->f:Landroidx/collection/MutableObjectIntMap;

    .line 145
    .line 146
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_e

    .line 151
    .line 152
    instance-of v7, v1, Landroidx/compose/runtime/CompositionImpl;

    .line 153
    .line 154
    if-eqz v7, :cond_e

    .line 155
    .line 156
    iget-object v7, v6, Landroidx/collection/ObjectIntMap;->a:[J

    .line 157
    .line 158
    array-length v8, v7

    .line 159
    add-int/lit8 v8, v8, -0x2

    .line 160
    .line 161
    if-ltz v8, :cond_e

    .line 162
    .line 163
    move v9, v3

    .line 164
    :goto_4
    aget-wide v10, v7, v9

    .line 165
    .line 166
    not-long v12, v10

    .line 167
    const/4 v14, 0x7

    .line 168
    shl-long/2addr v12, v14

    .line 169
    and-long/2addr v12, v10

    .line 170
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    and-long/2addr v12, v14

    .line 176
    cmp-long v12, v12, v14

    .line 177
    .line 178
    if-eqz v12, :cond_d

    .line 179
    .line 180
    sub-int v12, v9, v8

    .line 181
    .line 182
    not-int v12, v12

    .line 183
    ushr-int/lit8 v12, v12, 0x1f

    .line 184
    .line 185
    const/16 v13, 0x8

    .line 186
    .line 187
    rsub-int/lit8 v12, v12, 0x8

    .line 188
    .line 189
    move v14, v3

    .line 190
    :goto_5
    if-ge v14, v12, :cond_c

    .line 191
    .line 192
    const-wide/16 v15, 0xff

    .line 193
    .line 194
    and-long/2addr v15, v10

    .line 195
    const-wide/16 v17, 0x80

    .line 196
    .line 197
    cmp-long v15, v15, v17

    .line 198
    .line 199
    if-gez v15, :cond_a

    .line 200
    .line 201
    shl-int/lit8 v15, v9, 0x3

    .line 202
    .line 203
    add-int/2addr v15, v14

    .line 204
    iget-object v3, v6, Landroidx/collection/ObjectIntMap;->b:[Ljava/lang/Object;

    .line 205
    .line 206
    aget-object v3, v3, v15

    .line 207
    .line 208
    iget-object v4, v6, Landroidx/collection/ObjectIntMap;->c:[I

    .line 209
    .line 210
    aget v4, v4, v15

    .line 211
    .line 212
    if-eq v4, v5, :cond_6

    .line 213
    .line 214
    const/4 v4, 0x1

    .line 215
    goto :goto_6

    .line 216
    :cond_6
    const/4 v4, 0x0

    .line 217
    :goto_6
    if-eqz v4, :cond_8

    .line 218
    .line 219
    move/from16 p0, v13

    .line 220
    .line 221
    move-object v13, v1

    .line 222
    check-cast v13, Landroidx/compose/runtime/CompositionImpl;

    .line 223
    .line 224
    move-object/from16 p1, v1

    .line 225
    .line 226
    iget-object v1, v13, Landroidx/compose/runtime/CompositionImpl;->p:Landroidx/collection/MutableScatterMap;

    .line 227
    .line 228
    invoke-static {v1, v3, v0}, Landroidx/compose/runtime/collection/ScopeMap;->c(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-object/from16 v18, v2

    .line 232
    .line 233
    instance-of v2, v3, Landroidx/compose/runtime/DerivedState;

    .line 234
    .line 235
    if-eqz v2, :cond_9

    .line 236
    .line 237
    move-object v2, v3

    .line 238
    check-cast v2, Landroidx/compose/runtime/DerivedState;

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-nez v1, :cond_7

    .line 245
    .line 246
    iget-object v1, v13, Landroidx/compose/runtime/CompositionImpl;->s:Landroidx/collection/MutableScatterMap;

    .line 247
    .line 248
    invoke-static {v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->d(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :cond_7
    iget-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->g:Landroidx/collection/MutableScatterMap;

    .line 252
    .line 253
    if-eqz v1, :cond_9

    .line 254
    .line 255
    invoke-virtual {v1, v3}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_8
    move-object/from16 p1, v1

    .line 260
    .line 261
    move-object/from16 v18, v2

    .line 262
    .line 263
    move/from16 p0, v13

    .line 264
    .line 265
    :cond_9
    :goto_7
    if-eqz v4, :cond_b

    .line 266
    .line 267
    invoke-virtual {v6, v15}, Landroidx/collection/MutableObjectIntMap;->f(I)V

    .line 268
    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_a
    move-object/from16 p1, v1

    .line 272
    .line 273
    move-object/from16 v18, v2

    .line 274
    .line 275
    move/from16 p0, v13

    .line 276
    .line 277
    :cond_b
    :goto_8
    shr-long v10, v10, p0

    .line 278
    .line 279
    add-int/lit8 v14, v14, 0x1

    .line 280
    .line 281
    move/from16 v13, p0

    .line 282
    .line 283
    move-object/from16 v1, p1

    .line 284
    .line 285
    move-object/from16 v2, v18

    .line 286
    .line 287
    const/4 v3, 0x0

    .line 288
    const/4 v4, 0x1

    .line 289
    goto :goto_5

    .line 290
    :cond_c
    move-object/from16 p1, v1

    .line 291
    .line 292
    move-object/from16 v18, v2

    .line 293
    .line 294
    move v1, v13

    .line 295
    if-ne v12, v1, :cond_f

    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_d
    move-object/from16 p1, v1

    .line 299
    .line 300
    move-object/from16 v18, v2

    .line 301
    .line 302
    :goto_9
    if-eq v9, v8, :cond_f

    .line 303
    .line 304
    add-int/lit8 v9, v9, 0x1

    .line 305
    .line 306
    move-object/from16 v1, p1

    .line 307
    .line 308
    move-object/from16 v2, v18

    .line 309
    .line 310
    const/4 v3, 0x0

    .line 311
    const/4 v4, 0x1

    .line 312
    goto/16 :goto_4

    .line 313
    .line 314
    :cond_e
    move-object/from16 v18, v2

    .line 315
    .line 316
    :cond_f
    return-object v18

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
