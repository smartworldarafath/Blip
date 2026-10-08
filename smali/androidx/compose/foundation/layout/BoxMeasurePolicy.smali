.class final Landroidx/compose/foundation/layout/BoxMeasurePolicy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final a:Landroidx/compose/ui/Alignment;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->a:Landroidx/compose/ui/Alignment;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16

    .line 1
    move-object/from16 v3, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    new-instance v2, La7;

    .line 20
    .line 21
    const/16 v4, 0xf

    .line 22
    .line 23
    invoke-direct {v2, v4}, La7;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v0, v1, v2}, Landroidx/compose/ui/layout/MeasureScope;->h0(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_0
    move-object/from16 v6, p0

    .line 32
    .line 33
    iget-boolean v0, v6, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->b:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    move-wide/from16 v0, p3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-wide v0, -0x1fffffffdL

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    and-long v0, p3, v0

    .line 46
    .line 47
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v7, 0x1

    .line 53
    const/4 v8, 0x0

    .line 54
    if-ne v4, v7, :cond_5

    .line 55
    .line 56
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 61
    .line 62
    sget-object v4, Landroidx/compose/foundation/layout/BoxKt;->a:Landroidx/collection/MutableScatterMap;

    .line 63
    .line 64
    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    instance-of v7, v4, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 69
    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    move-object v5, v4

    .line 73
    check-cast v5, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 74
    .line 75
    :cond_2
    if-eqz v5, :cond_3

    .line 76
    .line 77
    iget-boolean v8, v5, Landroidx/compose/foundation/layout/BoxChildDataNode;->y:Z

    .line 78
    .line 79
    :cond_3
    if-nez v8, :cond_4

    .line 80
    .line 81
    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iget v4, v0, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 90
    .line 91
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    iget v5, v0, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 100
    .line 101
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    :goto_1
    move v5, v4

    .line 106
    move v4, v1

    .line 107
    move-object v1, v0

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    invoke-static {v0, v5}, Landroidx/compose/ui/unit/Constraints$Companion;->c(II)J

    .line 126
    .line 127
    .line 128
    move-result-wide v7

    .line 129
    invoke-interface {v2, v7, v8}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    goto :goto_1

    .line 134
    :goto_2
    new-instance v0, Landroidx/compose/foundation/layout/a;

    .line 135
    .line 136
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/a;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/foundation/layout/BoxMeasurePolicy;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v3, v4, v5, v0}, Landroidx/compose/ui/layout/MeasureScope;->h0(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    return-object v0

    .line 144
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    new-array v4, v4, [Landroidx/compose/ui/layout/Placeable;

    .line 149
    .line 150
    move-object v6, v4

    .line 151
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 152
    .line 153
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    iput v9, v4, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 161
    .line 162
    move-object v9, v5

    .line 163
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 164
    .line 165
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    iput v10, v5, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 173
    .line 174
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    move v11, v8

    .line 179
    move v12, v11

    .line 180
    :goto_3
    if-ge v11, v10, :cond_9

    .line 181
    .line 182
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 187
    .line 188
    sget-object v14, Landroidx/compose/foundation/layout/BoxKt;->a:Landroidx/collection/MutableScatterMap;

    .line 189
    .line 190
    invoke-interface {v13}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v14

    .line 194
    instance-of v15, v14, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 195
    .line 196
    if-eqz v15, :cond_6

    .line 197
    .line 198
    check-cast v14, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_6
    move-object v14, v9

    .line 202
    :goto_4
    if-eqz v14, :cond_7

    .line 203
    .line 204
    iget-boolean v14, v14, Landroidx/compose/foundation/layout/BoxChildDataNode;->y:Z

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_7
    move v14, v8

    .line 208
    :goto_5
    if-nez v14, :cond_8

    .line 209
    .line 210
    invoke-interface {v13, v0, v1}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    aput-object v13, v6, v11

    .line 215
    .line 216
    iget v14, v4, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 217
    .line 218
    iget v15, v13, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 219
    .line 220
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 221
    .line 222
    .line 223
    move-result v14

    .line 224
    iput v14, v4, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 225
    .line 226
    iget v14, v5, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 227
    .line 228
    iget v13, v13, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 229
    .line 230
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    .line 231
    .line 232
    .line 233
    move-result v13

    .line 234
    iput v13, v5, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_8
    move v12, v7

    .line 238
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_9
    if-eqz v12, :cond_f

    .line 242
    .line 243
    iget v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 244
    .line 245
    const v1, 0x7fffffff

    .line 246
    .line 247
    .line 248
    if-eq v0, v1, :cond_a

    .line 249
    .line 250
    move v7, v0

    .line 251
    goto :goto_7

    .line 252
    :cond_a
    move v7, v8

    .line 253
    :goto_7
    iget v10, v5, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 254
    .line 255
    if-eq v10, v1, :cond_b

    .line 256
    .line 257
    move v1, v10

    .line 258
    goto :goto_8

    .line 259
    :cond_b
    move v1, v8

    .line 260
    :goto_8
    invoke-static {v7, v0, v1, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    .line 261
    .line 262
    .line 263
    move-result-wide v0

    .line 264
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    move v10, v8

    .line 269
    :goto_9
    if-ge v10, v7, :cond_f

    .line 270
    .line 271
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 276
    .line 277
    sget-object v12, Landroidx/compose/foundation/layout/BoxKt;->a:Landroidx/collection/MutableScatterMap;

    .line 278
    .line 279
    invoke-interface {v11}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v12

    .line 283
    instance-of v13, v12, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 284
    .line 285
    if-eqz v13, :cond_c

    .line 286
    .line 287
    check-cast v12, Landroidx/compose/foundation/layout/BoxChildDataNode;

    .line 288
    .line 289
    goto :goto_a

    .line 290
    :cond_c
    move-object v12, v9

    .line 291
    :goto_a
    if-eqz v12, :cond_d

    .line 292
    .line 293
    iget-boolean v12, v12, Landroidx/compose/foundation/layout/BoxChildDataNode;->y:Z

    .line 294
    .line 295
    goto :goto_b

    .line 296
    :cond_d
    move v12, v8

    .line 297
    :goto_b
    if-eqz v12, :cond_e

    .line 298
    .line 299
    invoke-interface {v11, v0, v1}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 300
    .line 301
    .line 302
    move-result-object v11

    .line 303
    aput-object v11, v6, v10

    .line 304
    .line 305
    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_f
    iget v7, v4, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 309
    .line 310
    iget v8, v5, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 311
    .line 312
    new-instance v0, Landroidx/compose/foundation/layout/b;

    .line 313
    .line 314
    move-object v1, v6

    .line 315
    move-object/from16 v6, p0

    .line 316
    .line 317
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/b;-><init>([Landroidx/compose/ui/layout/Placeable;Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/foundation/layout/BoxMeasurePolicy;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v3, v7, v8, v0}, Landroidx/compose/ui/layout/MeasureScope;->h0(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->a:Landroidx/compose/ui/Alignment;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->a:Landroidx/compose/ui/Alignment;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->b:Z

    .line 23
    .line 24
    iget-boolean p1, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->b:Z

    .line 25
    .line 26
    if-eq p0, p1, :cond_3

    .line 27
    .line 28
    :goto_0
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->a:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->b:Z

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BoxMeasurePolicy(alignment="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->a:Landroidx/compose/ui/Alignment;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", propagateMinConstraints="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->b:Z

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
