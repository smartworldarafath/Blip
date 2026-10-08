.class public final synthetic Lrg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;I)V
    .locals 0

    .line 1
    iput p2, p0, Lrg;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lrg;->k:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

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
    iget v1, v0, Lrg;->j:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v0, v0, Lrg;->k:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    check-cast v1, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v4, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->I:Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-interface {v4, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iput-boolean v1, v2, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->c:Z

    .line 37
    .line 38
    :cond_2
    invoke-static {v0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->a(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :pswitch_0
    move-object/from16 v1, p1

    .line 54
    .line 55
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 56
    .line 57
    iget-object v3, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    .line 58
    .line 59
    sget-object v9, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 60
    .line 61
    if-eqz v3, :cond_5

    .line 62
    .line 63
    iget-object v4, v3, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->b:Landroidx/compose/ui/text/AnnotatedString;

    .line 64
    .line 65
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    iput-object v1, v3, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->b:Landroidx/compose/ui/text/AnnotatedString;

    .line 73
    .line 74
    iget-object v3, v3, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->d:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 75
    .line 76
    if-eqz v3, :cond_6

    .line 77
    .line 78
    iget-object v4, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 79
    .line 80
    iget-object v5, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 81
    .line 82
    iget v6, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->B:I

    .line 83
    .line 84
    iget-boolean v7, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->C:Z

    .line 85
    .line 86
    iget v8, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:I

    .line 87
    .line 88
    iget v10, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->E:I

    .line 89
    .line 90
    iput-object v1, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 91
    .line 92
    iget-object v1, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->k:Landroidx/compose/ui/text/TextStyle;

    .line 93
    .line 94
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/TextStyle;->c(Landroidx/compose/ui/text/TextStyle;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iput-object v4, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->k:Landroidx/compose/ui/text/TextStyle;

    .line 99
    .line 100
    const/4 v4, -0x1

    .line 101
    const/4 v11, 0x2

    .line 102
    if-nez v1, :cond_4

    .line 103
    .line 104
    iget-wide v12, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->q:J

    .line 105
    .line 106
    shl-long/2addr v12, v11

    .line 107
    iput-wide v12, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->q:J

    .line 108
    .line 109
    iput-object v2, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 110
    .line 111
    iput-object v2, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 112
    .line 113
    iput v4, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->p:I

    .line 114
    .line 115
    iput v4, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->o:I

    .line 116
    .line 117
    :cond_4
    iput-object v5, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->b:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 118
    .line 119
    iput v6, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->c:I

    .line 120
    .line 121
    iput-boolean v7, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->d:Z

    .line 122
    .line 123
    iput v8, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->e:I

    .line 124
    .line 125
    iput v10, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->f:I

    .line 126
    .line 127
    iput-object v9, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->g:Ljava/util/List;

    .line 128
    .line 129
    iget-wide v5, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->q:J

    .line 130
    .line 131
    shl-long/2addr v5, v11

    .line 132
    const-wide/16 v7, 0x2

    .line 133
    .line 134
    or-long/2addr v5, v7

    .line 135
    iput-wide v5, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->q:J

    .line 136
    .line 137
    iput-object v2, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 138
    .line 139
    iput-object v2, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 140
    .line 141
    iput v4, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->p:I

    .line 142
    .line 143
    iput v4, v3, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->o:I

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    new-instance v10, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    .line 147
    .line 148
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->x:Landroidx/compose/ui/text/AnnotatedString;

    .line 149
    .line 150
    invoke-direct {v10, v2, v1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/AnnotatedString;)V

    .line 151
    .line 152
    .line 153
    move-object v2, v1

    .line 154
    new-instance v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 155
    .line 156
    iget-object v3, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 157
    .line 158
    iget-object v4, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 159
    .line 160
    iget v5, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->B:I

    .line 161
    .line 162
    iget-boolean v6, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->C:Z

    .line 163
    .line 164
    iget v7, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:I

    .line 165
    .line 166
    iget v8, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->E:I

    .line 167
    .line 168
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILjava/util/List;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->Y0()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    iget-object v2, v2, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->j:Landroidx/compose/ui/unit/Density;

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->d(Landroidx/compose/ui/unit/Density;)V

    .line 178
    .line 179
    .line 180
    iput-object v1, v10, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->d:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 181
    .line 182
    iput-object v10, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    .line 183
    .line 184
    :cond_6
    :goto_1
    invoke-static {v0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->a(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 191
    .line 192
    .line 193
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 194
    .line 195
    return-object v0

    .line 196
    :pswitch_1
    move-object/from16 v1, p1

    .line 197
    .line 198
    check-cast v1, Ljava/util/List;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->Y0()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    iget-object v5, v5, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 205
    .line 206
    if-eqz v5, :cond_8

    .line 207
    .line 208
    iget-object v2, v5, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 209
    .line 210
    new-instance v6, Landroidx/compose/ui/text/TextLayoutInput;

    .line 211
    .line 212
    iget-object v7, v2, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 213
    .line 214
    iget-object v8, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 215
    .line 216
    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->H:Landroidx/compose/ui/graphics/ColorProducer;

    .line 217
    .line 218
    if-eqz v0, :cond_7

    .line 219
    .line 220
    invoke-interface {v0}, Landroidx/compose/ui/graphics/ColorProducer;->a()J

    .line 221
    .line 222
    .line 223
    move-result-wide v9

    .line 224
    goto :goto_2

    .line 225
    :cond_7
    sget-wide v9, Landroidx/compose/ui/graphics/Color;->h:J

    .line 226
    .line 227
    :goto_2
    const-wide/16 v16, 0x0

    .line 228
    .line 229
    const v18, 0xfffffe

    .line 230
    .line 231
    .line 232
    const-wide/16 v11, 0x0

    .line 233
    .line 234
    const-wide/16 v13, 0x0

    .line 235
    .line 236
    const/4 v15, 0x0

    .line 237
    invoke-static/range {v8 .. v18}, Landroidx/compose/ui/text/TextStyle;->e(Landroidx/compose/ui/text/TextStyle;JJJIJI)Landroidx/compose/ui/text/TextStyle;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    iget-object v9, v2, Landroidx/compose/ui/text/TextLayoutInput;->c:Ljava/util/List;

    .line 242
    .line 243
    iget v10, v2, Landroidx/compose/ui/text/TextLayoutInput;->d:I

    .line 244
    .line 245
    iget-boolean v11, v2, Landroidx/compose/ui/text/TextLayoutInput;->e:Z

    .line 246
    .line 247
    iget v12, v2, Landroidx/compose/ui/text/TextLayoutInput;->f:I

    .line 248
    .line 249
    iget-object v13, v2, Landroidx/compose/ui/text/TextLayoutInput;->g:Landroidx/compose/ui/unit/Density;

    .line 250
    .line 251
    iget-object v14, v2, Landroidx/compose/ui/text/TextLayoutInput;->h:Landroidx/compose/ui/unit/LayoutDirection;

    .line 252
    .line 253
    iget-object v15, v2, Landroidx/compose/ui/text/TextLayoutInput;->i:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 254
    .line 255
    iget-wide v3, v2, Landroidx/compose/ui/text/TextLayoutInput;->j:J

    .line 256
    .line 257
    move-wide/from16 v16, v3

    .line 258
    .line 259
    invoke-direct/range {v6 .. v17}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)V

    .line 260
    .line 261
    .line 262
    iget-wide v2, v5, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    .line 263
    .line 264
    new-instance v4, Landroidx/compose/ui/text/TextLayoutResult;

    .line 265
    .line 266
    iget-object v5, v5, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 267
    .line 268
    invoke-direct {v4, v6, v5, v2, v3}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;J)V

    .line 269
    .line 270
    .line 271
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-object v2, v4

    .line 275
    :cond_8
    if-eqz v2, :cond_9

    .line 276
    .line 277
    const/4 v3, 0x1

    .line 278
    goto :goto_3

    .line 279
    :cond_9
    const/4 v3, 0x0

    .line 280
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    return-object v0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
