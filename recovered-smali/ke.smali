.class public final synthetic Lke;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lke;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lke;->j:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    move-object/from16 v0, p1

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Float;

    .line 12
    .line 13
    move-object/from16 v1, p2

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 21
    .line 22
    return-object v0

    .line 23
    :pswitch_0
    move-object/from16 v0, p1

    .line 24
    .line 25
    check-cast v0, Ljava/util/List;

    .line 26
    .line 27
    move-object/from16 v1, p2

    .line 28
    .line 29
    check-cast v1, Ljava/util/List;

    .line 30
    .line 31
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    .line 42
    .line 43
    move-object v1, v2

    .line 44
    :cond_0
    return-object v1

    .line 45
    :pswitch_1
    move-object/from16 v0, p1

    .line 46
    .line 47
    check-cast v0, Ljava/util/List;

    .line 48
    .line 49
    move-object/from16 v1, p2

    .line 50
    .line 51
    check-cast v1, Ljava/util/List;

    .line 52
    .line 53
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    sget-object v0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 58
    .line 59
    :cond_1
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    :pswitch_2
    move-object/from16 v0, p1

    .line 65
    .line 66
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 67
    .line 68
    move-object/from16 v0, p2

    .line 69
    .line 70
    check-cast v0, Landroidx/compose/foundation/ScrollState;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/compose/foundation/ScrollState;->f()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0

    .line 81
    :pswitch_3
    move-object/from16 v0, p1

    .line 82
    .line 83
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 84
    .line 85
    move-object/from16 v0, p2

    .line 86
    .line 87
    check-cast v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 88
    .line 89
    iget v0, v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->a:I

    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    :pswitch_4
    move-object/from16 v0, p1

    .line 97
    .line 98
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 99
    .line 100
    move-object/from16 v1, p2

    .line 101
    .line 102
    check-cast v1, Landroidx/compose/ui/text/style/TextMotion;

    .line 103
    .line 104
    iget v2, v1, Landroidx/compose/ui/text/style/TextMotion;->a:I

    .line 105
    .line 106
    new-instance v3, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 107
    .line 108
    invoke-direct {v3, v2}, Landroidx/compose/ui/text/style/TextMotion$Linearity;-><init>(I)V

    .line 109
    .line 110
    .line 111
    sget-object v2, Landroidx/compose/ui/text/Savers_androidKt;->e:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 112
    .line 113
    invoke-static {v3, v2, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-boolean v1, v1, Landroidx/compose/ui/text/style/TextMotion;->b:Z

    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    return-object v0

    .line 132
    :pswitch_5
    move-object/from16 v0, p1

    .line 133
    .line 134
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 135
    .line 136
    move-object/from16 v0, p2

    .line 137
    .line 138
    check-cast v0, Landroidx/compose/ui/text/style/LineBreak;

    .line 139
    .line 140
    iget v0, v0, Landroidx/compose/ui/text/style/LineBreak;->a:I

    .line 141
    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    return-object v0

    .line 147
    :pswitch_6
    move-object/from16 v0, p1

    .line 148
    .line 149
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 150
    .line 151
    move-object/from16 v0, p2

    .line 152
    .line 153
    check-cast v0, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 154
    .line 155
    iget v0, v0, Landroidx/compose/ui/text/EmojiSupportMatch;->a:I

    .line 156
    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    return-object v0

    .line 162
    :pswitch_7
    move-object/from16 v0, p1

    .line 163
    .line 164
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 165
    .line 166
    move-object/from16 v1, p2

    .line 167
    .line 168
    check-cast v1, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 169
    .line 170
    iget-boolean v2, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->a:Z

    .line 171
    .line 172
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 177
    .line 178
    iget v1, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->b:I

    .line 179
    .line 180
    new-instance v3, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 181
    .line 182
    invoke-direct {v3, v1}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    .line 183
    .line 184
    .line 185
    sget-object v1, Landroidx/compose/ui/text/Savers_androidKt;->b:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 186
    .line 187
    invoke-static {v3, v1, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    return-object v0

    .line 200
    :pswitch_8
    move-object/from16 v0, p1

    .line 201
    .line 202
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 203
    .line 204
    move-object/from16 v1, p2

    .line 205
    .line 206
    check-cast v1, Landroidx/compose/ui/text/TextLinkStyles;

    .line 207
    .line 208
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 209
    .line 210
    iget-object v2, v1, Landroidx/compose/ui/text/TextLinkStyles;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 211
    .line 212
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->h:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 213
    .line 214
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    iget-object v4, v1, Landroidx/compose/ui/text/TextLinkStyles;->b:Landroidx/compose/ui/text/SpanStyle;

    .line 219
    .line 220
    invoke-static {v4, v3, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    iget-object v5, v1, Landroidx/compose/ui/text/TextLinkStyles;->c:Landroidx/compose/ui/text/SpanStyle;

    .line 225
    .line 226
    invoke-static {v5, v3, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    iget-object v1, v1, Landroidx/compose/ui/text/TextLinkStyles;->d:Landroidx/compose/ui/text/SpanStyle;

    .line 231
    .line 232
    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    filled-new-array {v2, v4, v5, v0}, [Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    return-object v0

    .line 245
    :pswitch_9
    move-object/from16 v0, p1

    .line 246
    .line 247
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 248
    .line 249
    move-object/from16 v1, p2

    .line 250
    .line 251
    check-cast v1, Landroidx/compose/ui/text/SpanStyle;

    .line 252
    .line 253
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 254
    .line 255
    iget-object v2, v1, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 256
    .line 257
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    .line 258
    .line 259
    .line 260
    move-result-wide v2

    .line 261
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    .line 262
    .line 263
    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 264
    .line 265
    .line 266
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->p:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 267
    .line 268
    invoke-static {v4, v2, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    iget-wide v3, v1, Landroidx/compose/ui/text/SpanStyle;->b:J

    .line 273
    .line 274
    new-instance v6, Landroidx/compose/ui/unit/TextUnit;

    .line 275
    .line 276
    invoke-direct {v6, v3, v4}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 277
    .line 278
    .line 279
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->v:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 280
    .line 281
    invoke-static {v6, v3, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    iget-object v4, v1, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    .line 286
    .line 287
    sget-object v7, Landroidx/compose/ui/text/font/FontWeight;->k:Landroidx/compose/ui/text/font/FontWeight;

    .line 288
    .line 289
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->m:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 290
    .line 291
    invoke-static {v4, v7, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    iget-object v4, v1, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    .line 296
    .line 297
    sget-object v8, Landroidx/compose/ui/text/SaversKt;->t:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 298
    .line 299
    invoke-static {v4, v8, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    iget-object v4, v1, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 304
    .line 305
    sget-object v9, Landroidx/compose/ui/text/SaversKt;->u:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 306
    .line 307
    invoke-static {v4, v9, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    const/4 v4, -0x1

    .line 312
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v10

    .line 316
    iget-object v11, v1, Landroidx/compose/ui/text/SpanStyle;->g:Ljava/lang/String;

    .line 317
    .line 318
    iget-wide v12, v1, Landroidx/compose/ui/text/SpanStyle;->h:J

    .line 319
    .line 320
    new-instance v4, Landroidx/compose/ui/unit/TextUnit;

    .line 321
    .line 322
    invoke-direct {v4, v12, v13}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 323
    .line 324
    .line 325
    invoke-static {v4, v3, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v12

    .line 329
    iget-object v3, v1, Landroidx/compose/ui/text/SpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    .line 330
    .line 331
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->n:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 332
    .line 333
    invoke-static {v3, v4, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v13

    .line 337
    iget-object v3, v1, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 338
    .line 339
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->k:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 340
    .line 341
    invoke-static {v3, v4, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v14

    .line 345
    iget-object v3, v1, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    .line 346
    .line 347
    sget-object v4, Landroidx/compose/ui/text/intl/LocaleList;->l:Landroidx/compose/ui/text/intl/LocaleList;

    .line 348
    .line 349
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->y:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 350
    .line 351
    invoke-static {v3, v4, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v15

    .line 355
    iget-wide v3, v1, Landroidx/compose/ui/text/SpanStyle;->l:J

    .line 356
    .line 357
    move-object/from16 p0, v5

    .line 358
    .line 359
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 360
    .line 361
    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 362
    .line 363
    .line 364
    invoke-static {v5, v2, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v16

    .line 368
    iget-object v2, v1, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    .line 369
    .line 370
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->j:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 371
    .line 372
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v17

    .line 376
    iget-object v1, v1, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    .line 377
    .line 378
    sget-object v2, Landroidx/compose/ui/graphics/Shadow;->d:Landroidx/compose/ui/graphics/Shadow;

    .line 379
    .line 380
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->o:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 381
    .line 382
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v18

    .line 386
    move-object/from16 v5, p0

    .line 387
    .line 388
    filled-new-array/range {v5 .. v18}, [Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    return-object v0

    .line 397
    :pswitch_a
    move-object/from16 v0, p1

    .line 398
    .line 399
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 400
    .line 401
    move-object/from16 v0, p2

    .line 402
    .line 403
    check-cast v0, Landroidx/compose/ui/text/UrlAnnotation;

    .line 404
    .line 405
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 406
    .line 407
    iget-object v0, v0, Landroidx/compose/ui/text/UrlAnnotation;->a:Ljava/lang/String;

    .line 408
    .line 409
    return-object v0

    .line 410
    :pswitch_b
    move-object/from16 v0, p1

    .line 411
    .line 412
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 413
    .line 414
    move-object/from16 v1, p2

    .line 415
    .line 416
    check-cast v1, Landroidx/compose/ui/text/ParagraphStyle;

    .line 417
    .line 418
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 419
    .line 420
    iget v2, v1, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    .line 421
    .line 422
    new-instance v3, Landroidx/compose/ui/text/style/TextAlign;

    .line 423
    .line 424
    invoke-direct {v3, v2}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 425
    .line 426
    .line 427
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->q:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 428
    .line 429
    invoke-static {v3, v2, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    iget v2, v1, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    .line 434
    .line 435
    new-instance v3, Landroidx/compose/ui/text/style/TextDirection;

    .line 436
    .line 437
    invoke-direct {v3, v2}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    .line 438
    .line 439
    .line 440
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->r:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 441
    .line 442
    invoke-static {v3, v2, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    iget-wide v2, v1, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    .line 447
    .line 448
    new-instance v6, Landroidx/compose/ui/unit/TextUnit;

    .line 449
    .line 450
    invoke-direct {v6, v2, v3}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 451
    .line 452
    .line 453
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->v:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 454
    .line 455
    invoke-static {v6, v2, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v6

    .line 459
    iget-object v2, v1, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    .line 460
    .line 461
    sget-object v3, Landroidx/compose/ui/text/style/TextIndent;->c:Landroidx/compose/ui/text/style/TextIndent;

    .line 462
    .line 463
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->l:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 464
    .line 465
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v7

    .line 469
    iget-object v2, v1, Landroidx/compose/ui/text/ParagraphStyle;->e:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 470
    .line 471
    sget-object v3, Landroidx/compose/ui/text/Savers_androidKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 472
    .line 473
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v8

    .line 477
    iget-object v2, v1, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 478
    .line 479
    sget-object v3, Landroidx/compose/ui/text/style/LineHeightStyle;->d:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 480
    .line 481
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->A:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 482
    .line 483
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v9

    .line 487
    iget v2, v1, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    .line 488
    .line 489
    new-instance v3, Landroidx/compose/ui/text/style/LineBreak;

    .line 490
    .line 491
    invoke-direct {v3, v2}, Landroidx/compose/ui/text/style/LineBreak;-><init>(I)V

    .line 492
    .line 493
    .line 494
    sget-object v2, Landroidx/compose/ui/text/Savers_androidKt;->c:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 495
    .line 496
    invoke-static {v3, v2, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v10

    .line 500
    iget v2, v1, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    .line 501
    .line 502
    new-instance v3, Landroidx/compose/ui/text/style/Hyphens;

    .line 503
    .line 504
    invoke-direct {v3, v2}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    .line 505
    .line 506
    .line 507
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->s:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 508
    .line 509
    invoke-static {v3, v2, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v11

    .line 513
    iget-object v1, v1, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    .line 514
    .line 515
    sget-object v2, Landroidx/compose/ui/text/Savers_androidKt;->d:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 516
    .line 517
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v12

    .line 521
    filled-new-array/range {v4 .. v12}, [Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    return-object v0

    .line 530
    :pswitch_c
    move-object/from16 v0, p1

    .line 531
    .line 532
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 533
    .line 534
    move-object/from16 v0, p2

    .line 535
    .line 536
    check-cast v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 537
    .line 538
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 539
    .line 540
    iget-object v0, v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;->a:Ljava/lang/String;

    .line 541
    .line 542
    return-object v0

    .line 543
    :pswitch_d
    move-object/from16 v0, p1

    .line 544
    .line 545
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 546
    .line 547
    move-object/from16 v0, p2

    .line 548
    .line 549
    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 550
    .line 551
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 552
    .line 553
    iget v0, v0, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->a:I

    .line 554
    .line 555
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    return-object v0

    .line 560
    :pswitch_e
    move-object/from16 v0, p1

    .line 561
    .line 562
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 563
    .line 564
    move-object/from16 v0, p2

    .line 565
    .line 566
    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 567
    .line 568
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 569
    .line 570
    iget v0, v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->a:I

    .line 571
    .line 572
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    return-object v0

    .line 577
    :pswitch_f
    move-object/from16 v0, p1

    .line 578
    .line 579
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 580
    .line 581
    move-object/from16 v0, p2

    .line 582
    .line 583
    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 584
    .line 585
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 586
    .line 587
    iget v0, v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->a:F

    .line 588
    .line 589
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    return-object v0

    .line 594
    :pswitch_10
    move-object/from16 v0, p1

    .line 595
    .line 596
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 597
    .line 598
    move-object/from16 v1, p2

    .line 599
    .line 600
    check-cast v1, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 601
    .line 602
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 603
    .line 604
    iget v2, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->a:F

    .line 605
    .line 606
    new-instance v3, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 607
    .line 608
    invoke-direct {v3, v2}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;-><init>(F)V

    .line 609
    .line 610
    .line 611
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->B:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 612
    .line 613
    invoke-static {v3, v2, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    iget v3, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->b:I

    .line 618
    .line 619
    new-instance v4, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 620
    .line 621
    invoke-direct {v4, v3}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;-><init>(I)V

    .line 622
    .line 623
    .line 624
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->C:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 625
    .line 626
    invoke-static {v4, v3, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    iget v1, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->c:I

    .line 631
    .line 632
    new-instance v4, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 633
    .line 634
    invoke-direct {v4, v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;-><init>(I)V

    .line 635
    .line 636
    .line 637
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->D:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 638
    .line 639
    invoke-static {v4, v1, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    return-object v0

    .line 652
    :pswitch_11
    move-object/from16 v0, p1

    .line 653
    .line 654
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 655
    .line 656
    move-object/from16 v0, p2

    .line 657
    .line 658
    check-cast v0, Landroidx/compose/ui/text/intl/Locale;

    .line 659
    .line 660
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 661
    .line 662
    iget-object v0, v0, Landroidx/compose/ui/text/intl/Locale;->a:Ljava/util/Locale;

    .line 663
    .line 664
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    return-object v0

    .line 669
    :pswitch_12
    move-object/from16 v0, p1

    .line 670
    .line 671
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 672
    .line 673
    move-object/from16 v2, p2

    .line 674
    .line 675
    check-cast v2, Landroidx/compose/ui/text/intl/LocaleList;

    .line 676
    .line 677
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 678
    .line 679
    iget-object v2, v2, Landroidx/compose/ui/text/intl/LocaleList;->j:Ljava/util/List;

    .line 680
    .line 681
    new-instance v3, Ljava/util/ArrayList;

    .line 682
    .line 683
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 684
    .line 685
    .line 686
    move-result v4

    .line 687
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 688
    .line 689
    .line 690
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 691
    .line 692
    .line 693
    move-result v4

    .line 694
    :goto_0
    if-ge v1, v4, :cond_2

    .line 695
    .line 696
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v5

    .line 700
    check-cast v5, Landroidx/compose/ui/text/intl/Locale;

    .line 701
    .line 702
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->z:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 703
    .line 704
    invoke-static {v5, v6, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v5

    .line 708
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    add-int/lit8 v1, v1, 0x1

    .line 712
    .line 713
    goto :goto_0

    .line 714
    :cond_2
    return-object v3

    .line 715
    :pswitch_13
    move-object/from16 v0, p1

    .line 716
    .line 717
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 718
    .line 719
    move-object/from16 v0, p2

    .line 720
    .line 721
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 722
    .line 723
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 724
    .line 725
    if-nez v0, :cond_3

    .line 726
    .line 727
    goto :goto_1

    .line 728
    :cond_3
    iget-wide v1, v0, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 729
    .line 730
    const-wide v3, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    :goto_1
    if-eqz v1, :cond_4

    .line 740
    .line 741
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 742
    .line 743
    goto :goto_2

    .line 744
    :cond_4
    iget-wide v1, v0, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 745
    .line 746
    const/16 v3, 0x20

    .line 747
    .line 748
    shr-long/2addr v1, v3

    .line 749
    long-to-int v1, v1

    .line 750
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    iget-wide v2, v0, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 759
    .line 760
    const-wide v4, 0xffffffffL

    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    and-long/2addr v2, v4

    .line 766
    long-to-int v0, v2

    .line 767
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 768
    .line 769
    .line 770
    move-result v0

    .line 771
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    filled-new-array {v1, v0}, [Ljava/lang/Float;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    :goto_2
    return-object v0

    .line 784
    :pswitch_14
    move-object/from16 v0, p1

    .line 785
    .line 786
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 787
    .line 788
    move-object/from16 v0, p2

    .line 789
    .line 790
    check-cast v0, Landroidx/compose/ui/unit/TextUnitType;

    .line 791
    .line 792
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 793
    .line 794
    iget-wide v2, v0, Landroidx/compose/ui/unit/TextUnitType;->a:J

    .line 795
    .line 796
    const-wide v4, 0x200000000L

    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    .line 802
    .line 803
    .line 804
    move-result v0

    .line 805
    if-eqz v0, :cond_5

    .line 806
    .line 807
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    goto :goto_3

    .line 812
    :cond_5
    const-wide v0, 0x100000000L

    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    .line 818
    .line 819
    .line 820
    move-result v0

    .line 821
    if-eqz v0, :cond_6

    .line 822
    .line 823
    const/4 v0, 0x1

    .line 824
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    goto :goto_3

    .line 829
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 830
    .line 831
    :goto_3
    return-object v0

    .line 832
    :pswitch_15
    move-object/from16 v0, p1

    .line 833
    .line 834
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 835
    .line 836
    move-object/from16 v1, p2

    .line 837
    .line 838
    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 839
    .line 840
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 841
    .line 842
    iget-object v2, v1, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->a:Ljava/lang/String;

    .line 843
    .line 844
    iget-object v1, v1, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->b:Landroidx/compose/ui/text/TextLinkStyles;

    .line 845
    .line 846
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->i:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 847
    .line 848
    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    return-object v0

    .line 861
    :pswitch_16
    move-object/from16 v0, p1

    .line 862
    .line 863
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 864
    .line 865
    move-object/from16 v2, p2

    .line 866
    .line 867
    check-cast v2, Landroidx/compose/ui/unit/TextUnit;

    .line 868
    .line 869
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 870
    .line 871
    sget-wide v3, Landroidx/compose/ui/unit/TextUnit;->c:J

    .line 872
    .line 873
    if-nez v2, :cond_7

    .line 874
    .line 875
    goto :goto_4

    .line 876
    :cond_7
    iget-wide v5, v2, Landroidx/compose/ui/unit/TextUnit;->a:J

    .line 877
    .line 878
    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    .line 879
    .line 880
    .line 881
    move-result v1

    .line 882
    :goto_4
    if-eqz v1, :cond_8

    .line 883
    .line 884
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 885
    .line 886
    goto :goto_5

    .line 887
    :cond_8
    iget-wide v3, v2, Landroidx/compose/ui/unit/TextUnit;->a:J

    .line 888
    .line 889
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 890
    .line 891
    .line 892
    move-result v1

    .line 893
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    iget-wide v2, v2, Landroidx/compose/ui/unit/TextUnit;->a:J

    .line 898
    .line 899
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    .line 900
    .line 901
    .line 902
    move-result-wide v2

    .line 903
    new-instance v4, Landroidx/compose/ui/unit/TextUnitType;

    .line 904
    .line 905
    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 906
    .line 907
    .line 908
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->w:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 909
    .line 910
    invoke-static {v4, v2, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    :goto_5
    return-object v0

    .line 923
    :pswitch_17
    move-object/from16 v0, p1

    .line 924
    .line 925
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 926
    .line 927
    move-object/from16 v0, p2

    .line 928
    .line 929
    check-cast v0, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 930
    .line 931
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 932
    .line 933
    iget v0, v0, Landroidx/compose/ui/text/font/FontSynthesis;->a:I

    .line 934
    .line 935
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    return-object v0

    .line 940
    :pswitch_18
    move-object/from16 v0, p1

    .line 941
    .line 942
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 943
    .line 944
    move-object/from16 v0, p2

    .line 945
    .line 946
    check-cast v0, Landroidx/compose/ui/text/font/FontStyle;

    .line 947
    .line 948
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 949
    .line 950
    iget v0, v0, Landroidx/compose/ui/text/font/FontStyle;->a:I

    .line 951
    .line 952
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    return-object v0

    .line 957
    :pswitch_19
    move-object/from16 v0, p1

    .line 958
    .line 959
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 960
    .line 961
    move-object/from16 v0, p2

    .line 962
    .line 963
    check-cast v0, Landroidx/compose/ui/text/style/Hyphens;

    .line 964
    .line 965
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 966
    .line 967
    iget v0, v0, Landroidx/compose/ui/text/style/Hyphens;->a:I

    .line 968
    .line 969
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    return-object v0

    .line 974
    :pswitch_1a
    move-object/from16 v0, p1

    .line 975
    .line 976
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 977
    .line 978
    move-object/from16 v0, p2

    .line 979
    .line 980
    check-cast v0, Landroidx/compose/ui/text/style/TextDirection;

    .line 981
    .line 982
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 983
    .line 984
    iget v0, v0, Landroidx/compose/ui/text/style/TextDirection;->a:I

    .line 985
    .line 986
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    return-object v0

    .line 991
    :pswitch_1b
    move-object/from16 v0, p1

    .line 992
    .line 993
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 994
    .line 995
    move-object/from16 v0, p2

    .line 996
    .line 997
    check-cast v0, Landroidx/compose/ui/text/style/TextAlign;

    .line 998
    .line 999
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 1000
    .line 1001
    iget v0, v0, Landroidx/compose/ui/text/style/TextAlign;->a:I

    .line 1002
    .line 1003
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    return-object v0

    .line 1008
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1009
    .line 1010
    check-cast v0, Landroidx/compose/runtime/saveable/SaverScope;

    .line 1011
    .line 1012
    move-object/from16 v1, p2

    .line 1013
    .line 1014
    check-cast v1, Landroidx/compose/ui/graphics/Shadow;

    .line 1015
    .line 1016
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 1017
    .line 1018
    iget-wide v2, v1, Landroidx/compose/ui/graphics/Shadow;->a:J

    .line 1019
    .line 1020
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    .line 1021
    .line 1022
    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 1023
    .line 1024
    .line 1025
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->p:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1026
    .line 1027
    invoke-static {v4, v2, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v2

    .line 1031
    iget-wide v3, v1, Landroidx/compose/ui/graphics/Shadow;->b:J

    .line 1032
    .line 1033
    new-instance v5, Landroidx/compose/ui/geometry/Offset;

    .line 1034
    .line 1035
    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1036
    .line 1037
    .line 1038
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->x:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1039
    .line 1040
    invoke-static {v5, v3, v0}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    iget v1, v1, Landroidx/compose/ui/graphics/Shadow;->c:F

    .line 1045
    .line 1046
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v1

    .line 1050
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    return-object v0

    .line 1059
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
