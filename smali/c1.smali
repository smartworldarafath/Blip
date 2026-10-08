.class public final synthetic Lc1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    iput p1, p0, Lc1;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lc1;->k:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc1;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v0, v0, Lc1;->k:Ljava/util/ArrayList;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    move v5, v3

    .line 22
    :goto_0
    if-ge v5, v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 29
    .line 30
    invoke-static {v1, v6, v3, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->g(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object v2

    .line 37
    :pswitch_0
    move-object/from16 v1, p1

    .line 38
    .line 39
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    move v5, v3

    .line 46
    :goto_1
    if-ge v5, v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 53
    .line 54
    invoke-static {v1, v6, v3, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    return-object v2

    .line 61
    :pswitch_1
    move-object/from16 v1, p1

    .line 62
    .line 63
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    move v5, v3

    .line 70
    :goto_2
    if-ge v5, v4, :cond_7

    .line 71
    .line 72
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 77
    .line 78
    iget-object v7, v6, Landroidx/compose/foundation/pager/MeasuredPage;->b:Ljava/util/List;

    .line 79
    .line 80
    iget-boolean v8, v6, Landroidx/compose/foundation/pager/MeasuredPage;->g:Z

    .line 81
    .line 82
    iget v9, v6, Landroidx/compose/foundation/pager/MeasuredPage;->k:I

    .line 83
    .line 84
    const/high16 v10, -0x80000000

    .line 85
    .line 86
    if-eq v9, v10, :cond_2

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_2
    const-string v9, "position() should be called first"

    .line 90
    .line 91
    invoke-static {v9}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    move v10, v3

    .line 99
    :goto_4
    if-ge v10, v9, :cond_6

    .line 100
    .line 101
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    check-cast v11, Landroidx/compose/ui/layout/Placeable;

    .line 106
    .line 107
    iget-object v12, v6, Landroidx/compose/foundation/pager/MeasuredPage;->i:[I

    .line 108
    .line 109
    mul-int/lit8 v13, v10, 0x2

    .line 110
    .line 111
    aget v14, v12, v13

    .line 112
    .line 113
    add-int/lit8 v13, v13, 0x1

    .line 114
    .line 115
    aget v12, v12, v13

    .line 116
    .line 117
    int-to-long v13, v14

    .line 118
    const/16 v15, 0x20

    .line 119
    .line 120
    shl-long/2addr v13, v15

    .line 121
    move/from16 p0, v4

    .line 122
    .line 123
    int-to-long v3, v12

    .line 124
    const-wide v16, 0xffffffffL

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    and-long v3, v3, v16

    .line 130
    .line 131
    or-long/2addr v3, v13

    .line 132
    iget-wide v12, v6, Landroidx/compose/foundation/pager/MeasuredPage;->c:J

    .line 133
    .line 134
    invoke-static {v3, v4, v12, v13}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 135
    .line 136
    .line 137
    move-result-wide v3

    .line 138
    if-eqz v8, :cond_3

    .line 139
    .line 140
    invoke-static {v1, v11, v3, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->o(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 141
    .line 142
    .line 143
    move-object/from16 p1, v1

    .line 144
    .line 145
    move v14, v5

    .line 146
    move-object/from16 v18, v6

    .line 147
    .line 148
    move-object v6, v2

    .line 149
    goto :goto_6

    .line 150
    :cond_3
    sget-object v12, Landroidx/compose/ui/layout/PlaceableKt;->a:Lwc;

    .line 151
    .line 152
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->c()Landroidx/compose/ui/unit/LayoutDirection;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    sget-object v14, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 157
    .line 158
    move/from16 p1, v15

    .line 159
    .line 160
    const/4 v15, 0x0

    .line 161
    if-eq v13, v14, :cond_4

    .line 162
    .line 163
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->d()I

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    if-nez v13, :cond_5

    .line 168
    .line 169
    :cond_4
    move v14, v5

    .line 170
    move-object/from16 v18, v6

    .line 171
    .line 172
    move-object v6, v2

    .line 173
    goto :goto_5

    .line 174
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->d()I

    .line 175
    .line 176
    .line 177
    move-result v13

    .line 178
    iget v14, v11, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 179
    .line 180
    sub-int/2addr v13, v14

    .line 181
    move v14, v5

    .line 182
    move-object/from16 v18, v6

    .line 183
    .line 184
    shr-long v5, v3, p1

    .line 185
    .line 186
    long-to-int v5, v5

    .line 187
    sub-int/2addr v13, v5

    .line 188
    and-long v3, v3, v16

    .line 189
    .line 190
    long-to-int v3, v3

    .line 191
    int-to-long v4, v13

    .line 192
    shl-long v4, v4, p1

    .line 193
    .line 194
    move-object v6, v2

    .line 195
    int-to-long v2, v3

    .line 196
    and-long v2, v2, v16

    .line 197
    .line 198
    or-long/2addr v2, v4

    .line 199
    invoke-static {v1, v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    .line 200
    .line 201
    .line 202
    iget-wide v4, v11, Landroidx/compose/ui/layout/Placeable;->n:J

    .line 203
    .line 204
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 205
    .line 206
    .line 207
    move-result-wide v2

    .line 208
    invoke-virtual {v11, v2, v3, v15, v12}, Landroidx/compose/ui/layout/Placeable;->c0(JFLkotlin/jvm/functions/Function1;)V

    .line 209
    .line 210
    .line 211
    move-object/from16 p1, v1

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :goto_5
    invoke-static {v1, v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    .line 215
    .line 216
    .line 217
    move-object/from16 p1, v1

    .line 218
    .line 219
    iget-wide v1, v11, Landroidx/compose/ui/layout/Placeable;->n:J

    .line 220
    .line 221
    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 222
    .line 223
    .line 224
    move-result-wide v1

    .line 225
    invoke-virtual {v11, v1, v2, v15, v12}, Landroidx/compose/ui/layout/Placeable;->c0(JFLkotlin/jvm/functions/Function1;)V

    .line 226
    .line 227
    .line 228
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 229
    .line 230
    move/from16 v4, p0

    .line 231
    .line 232
    move-object/from16 v1, p1

    .line 233
    .line 234
    move-object v2, v6

    .line 235
    move v5, v14

    .line 236
    move-object/from16 v6, v18

    .line 237
    .line 238
    const/4 v3, 0x0

    .line 239
    goto/16 :goto_4

    .line 240
    .line 241
    :cond_6
    move-object/from16 p1, v1

    .line 242
    .line 243
    move-object v6, v2

    .line 244
    move/from16 p0, v4

    .line 245
    .line 246
    move v14, v5

    .line 247
    add-int/lit8 v5, v14, 0x1

    .line 248
    .line 249
    const/4 v3, 0x0

    .line 250
    goto/16 :goto_2

    .line 251
    .line 252
    :cond_7
    move-object v6, v2

    .line 253
    return-object v6

    .line 254
    :pswitch_2
    move-object v6, v2

    .line 255
    move-object/from16 v1, p1

    .line 256
    .line 257
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    const/4 v3, 0x0

    .line 264
    :goto_7
    if-ge v3, v2, :cond_8

    .line 265
    .line 266
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .line 271
    .line 272
    const/4 v5, 0x0

    .line 273
    invoke-static {v1, v4, v5, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 274
    .line 275
    .line 276
    add-int/lit8 v3, v3, 0x1

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_8
    return-object v6

    .line 280
    :pswitch_3
    move-object v6, v2

    .line 281
    move v5, v3

    .line 282
    move-object/from16 v1, p1

    .line 283
    .line 284
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    :goto_8
    if-ge v3, v2, :cond_9

    .line 291
    .line 292
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .line 297
    .line 298
    invoke-static {v1, v4, v5, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 299
    .line 300
    .line 301
    add-int/lit8 v3, v3, 0x1

    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_9
    return-object v6

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
