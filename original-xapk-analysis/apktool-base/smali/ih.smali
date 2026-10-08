.class public final synthetic Lih;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;I)V
    .locals 0

    .line 1
    iput p2, p0, Lih;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lih;->k:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

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
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lih;->j:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v0, v0, Lih;->k:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->I:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    move v3, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iput-boolean v1, v2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->c:Z

    .line 28
    .line 29
    invoke-static {v0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->a(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :pswitch_0
    move-object/from16 v1, p1

    .line 44
    .line 45
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 46
    .line 47
    iget-object v6, v1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->I:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v3, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->b:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iput-object v6, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->b:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->d:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-object v3, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 69
    .line 70
    iget-object v5, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->z:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 71
    .line 72
    iget v7, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->A:I

    .line 73
    .line 74
    iget-boolean v8, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->B:Z

    .line 75
    .line 76
    iget v9, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->C:I

    .line 77
    .line 78
    iget v10, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->D:I

    .line 79
    .line 80
    iput-object v6, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->a:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v3, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->b:Landroidx/compose/ui/text/TextStyle;

    .line 83
    .line 84
    iput-object v5, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->c:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 85
    .line 86
    iput v7, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->d:I

    .line 87
    .line 88
    iput-boolean v8, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->e:Z

    .line 89
    .line 90
    iput v9, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->f:I

    .line 91
    .line 92
    iput v10, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->g:I

    .line 93
    .line 94
    iget-wide v5, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->s:J

    .line 95
    .line 96
    const/4 v3, 0x2

    .line 97
    shl-long/2addr v5, v3

    .line 98
    const-wide/16 v7, 0x2

    .line 99
    .line 100
    or-long/2addr v5, v7

    .line 101
    iput-wide v5, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->s:J

    .line 102
    .line 103
    iput-object v2, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->j:Landroidx/compose/ui/text/AndroidParagraph;

    .line 104
    .line 105
    iput-object v2, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->n:Landroidx/compose/ui/text/ParagraphIntrinsics;

    .line 106
    .line 107
    iput-object v2, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->o:Landroidx/compose/ui/unit/LayoutDirection;

    .line 108
    .line 109
    const/4 v2, -0x1

    .line 110
    iput v2, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->q:I

    .line 111
    .line 112
    iput v2, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->r:I

    .line 113
    .line 114
    invoke-static {v4, v4}, Landroidx/compose/ui/unit/Constraints$Companion;->c(II)J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    iput-wide v2, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->p:J

    .line 119
    .line 120
    const-wide/16 v2, 0x0

    .line 121
    .line 122
    iput-wide v2, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->l:J

    .line 123
    .line 124
    iput-boolean v4, v1, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->k:Z

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 128
    .line 129
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->x:Ljava/lang/String;

    .line 130
    .line 131
    invoke-direct {v1, v2, v6}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v5, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 135
    .line 136
    iget-object v7, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 137
    .line 138
    iget-object v8, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->z:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 139
    .line 140
    iget v9, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->A:I

    .line 141
    .line 142
    iget-boolean v10, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->B:Z

    .line 143
    .line 144
    iget v11, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->C:I

    .line 145
    .line 146
    iget v12, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->D:I

    .line 147
    .line 148
    invoke-direct/range {v5 .. v12}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZII)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->Y0()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iget-object v2, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->i:Landroidx/compose/ui/unit/Density;

    .line 156
    .line 157
    invoke-virtual {v5, v2}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->c(Landroidx/compose/ui/unit/Density;)V

    .line 158
    .line 159
    .line 160
    iput-object v5, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->d:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 161
    .line 162
    iput-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->I:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 163
    .line 164
    :cond_3
    :goto_1
    invoke-static {v0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->a(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 171
    .line 172
    .line 173
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 174
    .line 175
    return-object v0

    .line 176
    :pswitch_1
    move-object/from16 v1, p1

    .line 177
    .line 178
    check-cast v1, Ljava/util/List;

    .line 179
    .line 180
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->Y0()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    iget-object v6, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 185
    .line 186
    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->E:Landroidx/compose/ui/graphics/ColorProducer;

    .line 187
    .line 188
    if-eqz v0, :cond_4

    .line 189
    .line 190
    invoke-interface {v0}, Landroidx/compose/ui/graphics/ColorProducer;->a()J

    .line 191
    .line 192
    .line 193
    move-result-wide v7

    .line 194
    goto :goto_2

    .line 195
    :cond_4
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->h:J

    .line 196
    .line 197
    :goto_2
    const-wide/16 v14, 0x0

    .line 198
    .line 199
    const v16, 0xfffffe

    .line 200
    .line 201
    .line 202
    const-wide/16 v9, 0x0

    .line 203
    .line 204
    const-wide/16 v11, 0x0

    .line 205
    .line 206
    const/4 v13, 0x0

    .line 207
    invoke-static/range {v6 .. v16}, Landroidx/compose/ui/text/TextStyle;->e(Landroidx/compose/ui/text/TextStyle;JJJIJI)Landroidx/compose/ui/text/TextStyle;

    .line 208
    .line 209
    .line 210
    move-result-object v19

    .line 211
    iget-object v0, v5, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->o:Landroidx/compose/ui/unit/LayoutDirection;

    .line 212
    .line 213
    if-nez v0, :cond_5

    .line 214
    .line 215
    :goto_3
    move-object v8, v2

    .line 216
    goto :goto_4

    .line 217
    :cond_5
    iget-object v6, v5, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->i:Landroidx/compose/ui/unit/Density;

    .line 218
    .line 219
    if-nez v6, :cond_6

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_6
    new-instance v7, Landroidx/compose/ui/text/AnnotatedString;

    .line 223
    .line 224
    iget-object v8, v5, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->a:Ljava/lang/String;

    .line 225
    .line 226
    invoke-direct {v7, v8}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v8, v5, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->j:Landroidx/compose/ui/text/AndroidParagraph;

    .line 230
    .line 231
    if-nez v8, :cond_7

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_7
    iget-object v8, v5, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->n:Landroidx/compose/ui/text/ParagraphIntrinsics;

    .line 235
    .line 236
    if-nez v8, :cond_8

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_8
    iget-wide v8, v5, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->p:J

    .line 240
    .line 241
    const-wide v10, -0x1fffffffdL

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    and-long v14, v8, v10

    .line 247
    .line 248
    new-instance v8, Landroidx/compose/ui/text/TextLayoutResult;

    .line 249
    .line 250
    new-instance v17, Landroidx/compose/ui/text/TextLayoutInput;

    .line 251
    .line 252
    iget v9, v5, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->f:I

    .line 253
    .line 254
    iget-boolean v10, v5, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->e:Z

    .line 255
    .line 256
    iget v11, v5, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->d:I

    .line 257
    .line 258
    iget-object v12, v5, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->c:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 259
    .line 260
    sget-object v20, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 261
    .line 262
    move-object/from16 v25, v0

    .line 263
    .line 264
    move-object/from16 v24, v6

    .line 265
    .line 266
    move-object/from16 v18, v7

    .line 267
    .line 268
    move/from16 v21, v9

    .line 269
    .line 270
    move/from16 v22, v10

    .line 271
    .line 272
    move/from16 v23, v11

    .line 273
    .line 274
    move-object/from16 v26, v12

    .line 275
    .line 276
    move-wide/from16 v27, v14

    .line 277
    .line 278
    invoke-direct/range {v17 .. v28}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)V

    .line 279
    .line 280
    .line 281
    move-object/from16 v0, v17

    .line 282
    .line 283
    move-object/from16 v21, v24

    .line 284
    .line 285
    new-instance v12, Landroidx/compose/ui/text/MultiParagraph;

    .line 286
    .line 287
    new-instance v17, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 288
    .line 289
    move/from16 v23, v22

    .line 290
    .line 291
    move-object/from16 v22, v26

    .line 292
    .line 293
    invoke-direct/range {v17 .. v23}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Z)V

    .line 294
    .line 295
    .line 296
    iget v6, v5, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->f:I

    .line 297
    .line 298
    iget v7, v5, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->d:I

    .line 299
    .line 300
    move/from16 v16, v6

    .line 301
    .line 302
    move-object/from16 v13, v17

    .line 303
    .line 304
    move/from16 v17, v7

    .line 305
    .line 306
    invoke-direct/range {v12 .. v17}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JII)V

    .line 307
    .line 308
    .line 309
    iget-wide v5, v5, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->l:J

    .line 310
    .line 311
    invoke-direct {v8, v0, v12, v5, v6}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;J)V

    .line 312
    .line 313
    .line 314
    :goto_4
    if-eqz v8, :cond_9

    .line 315
    .line 316
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-object v2, v8

    .line 320
    :cond_9
    if-eqz v2, :cond_a

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_a
    move v3, v4

    .line 324
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    return-object v0

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
