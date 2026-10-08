.class public final Landroidx/compose/foundation/text/TextLinkScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/runtime/MutableState;

.field public b:Landroidx/compose/ui/text/AnnotatedString;

.field public final c:Landroidx/compose/runtime/snapshots/SnapshotStateList;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/text/TextLinkScope;->a:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    new-instance v0, Lqg;

    .line 12
    .line 13
    const/16 v1, 0x9

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lqg;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/AnnotatedString;->a(Lqg;)Landroidx/compose/ui/text/AnnotatedString;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Landroidx/compose/foundation/text/TextLinkScope;->b:Landroidx/compose/ui/text/AnnotatedString;

    .line 23
    .line 24
    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 25
    .line 26
    invoke-direct {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/foundation/text/TextLinkScope;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 30
    .line 31
    return-void
.end method

.method public static c(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/AnnotatedString$Range;
    .locals 2

    .line 1
    iget-object p1, p1, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 2
    .line 3
    iget v0, p1, Landroidx/compose/ui/text/MultiParagraph;->f:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/MultiParagraph;->c(IZ)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget v0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-ge v0, p1, :cond_0

    .line 16
    .line 17
    iget v0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 18
    .line 19
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/16 v0, 0xb

    .line 24
    .line 25
    invoke-static {p0, v1, p1, v0}, Landroidx/compose/ui/text/AnnotatedString$Range;->a(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/ParagraphStyle;II)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(ILandroidx/compose/runtime/Composer;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v3, 0x44d294da

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v5, 0x2

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v5

    .line 25
    :goto_0
    or-int/2addr v3, v1

    .line 26
    and-int/lit8 v6, v3, 0x3

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    if-eq v6, v5, :cond_1

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v6, v8

    .line 34
    :goto_1
    and-int/lit8 v9, v3, 0x1

    .line 35
    .line 36
    invoke-virtual {v2, v9, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_14

    .line 41
    .line 42
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->s:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 43
    .line 44
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Landroidx/compose/ui/platform/UriHandler;

    .line 49
    .line 50
    iget-object v9, v0, Landroidx/compose/foundation/text/TextLinkScope;->b:Landroidx/compose/ui/text/AnnotatedString;

    .line 51
    .line 52
    iget-object v10, v9, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    invoke-virtual {v9, v10}, Landroidx/compose/ui/text/AnnotatedString;->b(I)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    move v11, v8

    .line 67
    :goto_2
    if-ge v11, v10, :cond_15

    .line 68
    .line 69
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    check-cast v12, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 74
    .line 75
    iget v13, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 76
    .line 77
    iget-object v14, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 78
    .line 79
    iget v15, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 80
    .line 81
    if-eq v13, v15, :cond_13

    .line 82
    .line 83
    const v13, 0x2b3dee17

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 94
    .line 95
    if-ne v13, v15, :cond_2

    .line 96
    .line 97
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    check-cast v13, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 105
    .line 106
    const/16 p2, 0x4

    .line 107
    .line 108
    new-instance v4, Lec;

    .line 109
    .line 110
    move/from16 v23, v5

    .line 111
    .line 112
    const/16 v5, 0x10

    .line 113
    .line 114
    invoke-direct {v4, v5, v0, v12}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 118
    .line 119
    invoke-static {v5, v4}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    if-ne v5, v15, :cond_3

    .line 128
    .line 129
    new-instance v5, Lqg;

    .line 130
    .line 131
    const/16 v24, 0x1

    .line 132
    .line 133
    const/16 v7, 0xa

    .line 134
    .line 135
    invoke-direct {v5, v7}, Lqg;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_3
    const/16 v24, 0x1

    .line 143
    .line 144
    :goto_3
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 145
    .line 146
    invoke-static {v4, v8, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    new-instance v5, Landroidx/compose/foundation/text/TextRangeLayoutModifier;

    .line 151
    .line 152
    new-instance v7, Ln5;

    .line 153
    .line 154
    const/4 v8, 0x7

    .line 155
    invoke-direct {v7, v8, v0, v12}, Ln5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-direct {v5, v7}, Landroidx/compose/foundation/text/TextRangeLayoutModifier;-><init>(Ln5;)V

    .line 159
    .line 160
    .line 161
    invoke-interface {v4, v5}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-static {v4, v13}, Landroidx/compose/foundation/HoverableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerIcon;->a:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    .line 170
    .line 171
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->c:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    .line 175
    .line 176
    invoke-static {v4, v5}, Landroidx/compose/ui/input/pointer/PointerIconKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/AndroidPointerIconType;)Landroidx/compose/ui/Modifier;

    .line 177
    .line 178
    .line 179
    move-result-object v16

    .line 180
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    or-int/2addr v4, v5

    .line 189
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    or-int/2addr v4, v5

    .line 194
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    if-nez v4, :cond_4

    .line 199
    .line 200
    if-ne v5, v15, :cond_5

    .line 201
    .line 202
    :cond_4
    new-instance v5, Ltg;

    .line 203
    .line 204
    invoke-direct {v5, v0, v12, v6}, Ltg;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/platform/UriHandler;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_5
    move-object/from16 v21, v5

    .line 211
    .line 212
    check-cast v21, Lkotlin/jvm/functions/Function0;

    .line 213
    .line 214
    const/16 v22, 0x1fc

    .line 215
    .line 216
    const/16 v18, 0x0

    .line 217
    .line 218
    const/16 v19, 0x0

    .line 219
    .line 220
    const/16 v20, 0x0

    .line 221
    .line 222
    move-object/from16 v17, v13

    .line 223
    .line 224
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/ClickableKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    const/4 v5, 0x0

    .line 229
    invoke-static {v4, v2, v5}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 230
    .line 231
    .line 232
    check-cast v14, Landroidx/compose/ui/text/LinkAnnotation;

    .line 233
    .line 234
    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->a()Landroidx/compose/ui/text/TextLinkStyles;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    if-eqz v4, :cond_6

    .line 239
    .line 240
    iget-object v5, v4, Landroidx/compose/ui/text/TextLinkStyles;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 241
    .line 242
    if-nez v5, :cond_7

    .line 243
    .line 244
    iget-object v5, v4, Landroidx/compose/ui/text/TextLinkStyles;->b:Landroidx/compose/ui/text/SpanStyle;

    .line 245
    .line 246
    if-nez v5, :cond_7

    .line 247
    .line 248
    iget-object v5, v4, Landroidx/compose/ui/text/TextLinkStyles;->c:Landroidx/compose/ui/text/SpanStyle;

    .line 249
    .line 250
    if-nez v5, :cond_7

    .line 251
    .line 252
    iget-object v4, v4, Landroidx/compose/ui/text/TextLinkStyles;->d:Landroidx/compose/ui/text/SpanStyle;

    .line 253
    .line 254
    if-nez v4, :cond_7

    .line 255
    .line 256
    :cond_6
    const/4 v5, 0x0

    .line 257
    goto/16 :goto_a

    .line 258
    .line 259
    :cond_7
    const v4, 0x2b4a813f

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    if-ne v4, v15, :cond_8

    .line 270
    .line 271
    new-instance v4, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    .line 272
    .line 273
    invoke-direct {v4, v13}, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_8
    check-cast v4, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    .line 280
    .line 281
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    const/4 v7, 0x0

    .line 286
    if-ne v5, v15, :cond_9

    .line 287
    .line 288
    new-instance v5, Landroidx/compose/foundation/text/TextLinkScope$LinksComposables$1$3$1;

    .line 289
    .line 290
    invoke-direct {v5, v4, v7}, Landroidx/compose/foundation/text/TextLinkScope$LinksComposables$1$3$1;-><init>(Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;Lkotlin/coroutines/Continuation;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_9
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 297
    .line 298
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 299
    .line 300
    invoke-static {v2, v8, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 301
    .line 302
    .line 303
    iget-object v5, v4, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->b:Landroidx/compose/runtime/MutableIntState;

    .line 304
    .line 305
    iget-object v8, v4, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->b:Landroidx/compose/runtime/MutableIntState;

    .line 306
    .line 307
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 308
    .line 309
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    and-int/lit8 v5, v5, 0x2

    .line 314
    .line 315
    if-eqz v5, :cond_a

    .line 316
    .line 317
    move/from16 v5, v24

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_a
    const/4 v5, 0x0

    .line 321
    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 322
    .line 323
    .line 324
    move-result-object v16

    .line 325
    move-object v5, v8

    .line 326
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 327
    .line 328
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    and-int/lit8 v5, v5, 0x1

    .line 333
    .line 334
    if-eqz v5, :cond_b

    .line 335
    .line 336
    move/from16 v5, v24

    .line 337
    .line 338
    goto :goto_5

    .line 339
    :cond_b
    const/4 v5, 0x0

    .line 340
    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 341
    .line 342
    .line 343
    move-result-object v17

    .line 344
    check-cast v8, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 345
    .line 346
    invoke-virtual {v8}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 347
    .line 348
    .line 349
    move-result v5

    .line 350
    and-int/lit8 v5, v5, 0x4

    .line 351
    .line 352
    if-eqz v5, :cond_c

    .line 353
    .line 354
    move/from16 v5, v24

    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_c
    const/4 v5, 0x0

    .line 358
    :goto_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 359
    .line 360
    .line 361
    move-result-object v18

    .line 362
    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->a()Landroidx/compose/ui/text/TextLinkStyles;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    if-eqz v5, :cond_d

    .line 367
    .line 368
    iget-object v5, v5, Landroidx/compose/ui/text/TextLinkStyles;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 369
    .line 370
    move-object/from16 v19, v5

    .line 371
    .line 372
    goto :goto_7

    .line 373
    :cond_d
    move-object/from16 v19, v7

    .line 374
    .line 375
    :goto_7
    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->a()Landroidx/compose/ui/text/TextLinkStyles;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    if-eqz v5, :cond_e

    .line 380
    .line 381
    iget-object v5, v5, Landroidx/compose/ui/text/TextLinkStyles;->b:Landroidx/compose/ui/text/SpanStyle;

    .line 382
    .line 383
    move-object/from16 v20, v5

    .line 384
    .line 385
    goto :goto_8

    .line 386
    :cond_e
    move-object/from16 v20, v7

    .line 387
    .line 388
    :goto_8
    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->a()Landroidx/compose/ui/text/TextLinkStyles;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    if-eqz v5, :cond_f

    .line 393
    .line 394
    iget-object v5, v5, Landroidx/compose/ui/text/TextLinkStyles;->c:Landroidx/compose/ui/text/SpanStyle;

    .line 395
    .line 396
    move-object/from16 v21, v5

    .line 397
    .line 398
    goto :goto_9

    .line 399
    :cond_f
    move-object/from16 v21, v7

    .line 400
    .line 401
    :goto_9
    invoke-virtual {v14}, Landroidx/compose/ui/text/LinkAnnotation;->a()Landroidx/compose/ui/text/TextLinkStyles;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    if-eqz v5, :cond_10

    .line 406
    .line 407
    iget-object v7, v5, Landroidx/compose/ui/text/TextLinkStyles;->d:Landroidx/compose/ui/text/SpanStyle;

    .line 408
    .line 409
    :cond_10
    move-object/from16 v22, v7

    .line 410
    .line 411
    filled-new-array/range {v16 .. v22}, [Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v7

    .line 419
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v8

    .line 423
    or-int/2addr v7, v8

    .line 424
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v8

    .line 428
    if-nez v7, :cond_11

    .line 429
    .line 430
    if-ne v8, v15, :cond_12

    .line 431
    .line 432
    :cond_11
    new-instance v8, Landroidx/compose/foundation/text/g;

    .line 433
    .line 434
    invoke-direct {v8, v0, v12, v4}, Landroidx/compose/foundation/text/g;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    :cond_12
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 441
    .line 442
    shl-int/lit8 v4, v3, 0x6

    .line 443
    .line 444
    and-int/lit16 v4, v4, 0x380

    .line 445
    .line 446
    invoke-virtual {v0, v5, v8, v2, v4}, Landroidx/compose/foundation/text/TextLinkScope;->b([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 447
    .line 448
    .line 449
    const/4 v5, 0x0

    .line 450
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 451
    .line 452
    .line 453
    goto :goto_b

    .line 454
    :goto_a
    const v4, 0x2b6975be

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 461
    .line 462
    .line 463
    :goto_b
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 464
    .line 465
    .line 466
    goto :goto_c

    .line 467
    :cond_13
    move/from16 v23, v5

    .line 468
    .line 469
    move v5, v8

    .line 470
    const/16 p2, 0x4

    .line 471
    .line 472
    const/16 v24, 0x1

    .line 473
    .line 474
    const v4, 0x2b69abfe

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 481
    .line 482
    .line 483
    :goto_c
    add-int/lit8 v11, v11, 0x1

    .line 484
    .line 485
    move v8, v5

    .line 486
    move/from16 v5, v23

    .line 487
    .line 488
    goto/16 :goto_2

    .line 489
    .line 490
    :cond_14
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 491
    .line 492
    .line 493
    :cond_15
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    if-eqz v2, :cond_16

    .line 498
    .line 499
    new-instance v3, Ld;

    .line 500
    .line 501
    const/16 v4, 0x19

    .line 502
    .line 503
    invoke-direct {v3, v1, v4, v0}, Ld;-><init>(IILjava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 507
    .line 508
    :cond_16
    return-void
.end method

.method public final b([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x7c28da43

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p4, 0x30

    .line 10
    .line 11
    const/16 v1, 0x20

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v0, 0x10

    .line 24
    .line 25
    :goto_0
    or-int/2addr v0, p4

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v0, p4

    .line 28
    :goto_1
    and-int/lit16 v2, p4, 0x180

    .line 29
    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    const/16 v2, 0x100

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v2, 0x80

    .line 42
    .line 43
    :goto_2
    or-int/2addr v0, v2

    .line 44
    :cond_3
    array-length v2, p1

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const v3, -0x155b52f2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v3, v2}, Landroidx/compose/runtime/GapComposer;->U(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    array-length v2, p1

    .line 56
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v3, 0x4

    .line 61
    const/4 v4, 0x0

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    move v2, v3

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    move v2, v4

    .line 67
    :goto_3
    or-int/2addr v0, v2

    .line 68
    array-length v2, p1

    .line 69
    move v5, v4

    .line 70
    :goto_4
    if-ge v5, v2, :cond_6

    .line 71
    .line 72
    aget-object v6, p1, v5

    .line 73
    .line 74
    invoke-virtual {p3, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_5

    .line 79
    .line 80
    move v6, v3

    .line 81
    goto :goto_5

    .line 82
    :cond_5
    move v6, v4

    .line 83
    :goto_5
    or-int/2addr v0, v6

    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_6
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 88
    .line 89
    .line 90
    and-int/lit8 v2, v0, 0xe

    .line 91
    .line 92
    if-nez v2, :cond_7

    .line 93
    .line 94
    or-int/lit8 v0, v0, 0x2

    .line 95
    .line 96
    :cond_7
    and-int/lit16 v2, v0, 0x93

    .line 97
    .line 98
    const/16 v3, 0x92

    .line 99
    .line 100
    const/4 v5, 0x1

    .line 101
    if-eq v2, v3, :cond_8

    .line 102
    .line 103
    move v2, v5

    .line 104
    goto :goto_6

    .line 105
    :cond_8
    move v2, v4

    .line 106
    :goto_6
    and-int/lit8 v3, v0, 0x1

    .line 107
    .line 108
    invoke-virtual {p3, v3, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_12

    .line 113
    .line 114
    new-instance v2, Lkotlin/jvm/internal/SpreadBuilder;

    .line 115
    .line 116
    const/4 v3, 0x2

    .line 117
    invoke-direct {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 118
    .line 119
    .line 120
    iget-object v2, v2, Lkotlin/jvm/internal/SpreadBuilder;->a:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    if-nez p1, :cond_9

    .line 126
    .line 127
    goto :goto_9

    .line 128
    :cond_9
    instance-of v3, p1, [Ljava/lang/Object;

    .line 129
    .line 130
    if-eqz v3, :cond_a

    .line 131
    .line 132
    move-object v3, p1

    .line 133
    check-cast v3, [Ljava/lang/Object;

    .line 134
    .line 135
    array-length v6, v3

    .line 136
    if-lez v6, :cond_d

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    array-length v7, v3

    .line 143
    add-int/2addr v6, v7

    .line 144
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 145
    .line 146
    .line 147
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_9

    .line 151
    :cond_a
    instance-of v3, p1, Ljava/util/Collection;

    .line 152
    .line 153
    if-eqz v3, :cond_b

    .line 154
    .line 155
    move-object v3, p1

    .line 156
    check-cast v3, Ljava/util/Collection;

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_9

    .line 162
    :cond_b
    instance-of v3, p1, Ljava/lang/Iterable;

    .line 163
    .line 164
    if-eqz v3, :cond_c

    .line 165
    .line 166
    move-object v3, p1

    .line 167
    check-cast v3, Ljava/lang/Iterable;

    .line 168
    .line 169
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_d

    .line 178
    .line 179
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_7

    .line 187
    :cond_c
    instance-of v3, p1, Ljava/util/Iterator;

    .line 188
    .line 189
    if-eqz v3, :cond_11

    .line 190
    .line 191
    move-object v3, p1

    .line 192
    check-cast v3, Ljava/util/Iterator;

    .line 193
    .line 194
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-eqz v6, :cond_d

    .line 199
    .line 200
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_8

    .line 208
    :cond_d
    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    new-array v3, v3, [Ljava/lang/Object;

    .line 213
    .line 214
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    and-int/lit8 v0, v0, 0x70

    .line 223
    .line 224
    if-ne v0, v1, :cond_e

    .line 225
    .line 226
    move v4, v5

    .line 227
    :cond_e
    or-int v0, v3, v4

    .line 228
    .line 229
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    if-nez v0, :cond_f

    .line 234
    .line 235
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 236
    .line 237
    if-ne v1, v0, :cond_10

    .line 238
    .line 239
    :cond_f
    new-instance v1, Lec;

    .line 240
    .line 241
    const/16 v0, 0x11

    .line 242
    .line 243
    invoke-direct {v1, v0, p0, p2}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :cond_10
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 250
    .line 251
    invoke-static {v2, v1, p3}, Landroidx/compose/runtime/EffectsKt;->d([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 252
    .line 253
    .line 254
    goto :goto_a

    .line 255
    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 256
    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    new-instance p2, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string p3, "Don\'t know how to spread "

    .line 264
    .line 265
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p0

    .line 279
    :cond_12
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 280
    .line 281
    .line 282
    :goto_a
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 283
    .line 284
    .line 285
    move-result-object p3

    .line 286
    if-eqz p3, :cond_13

    .line 287
    .line 288
    new-instance v0, Lb1;

    .line 289
    .line 290
    const/16 v5, 0xf

    .line 291
    .line 292
    move-object v1, p0

    .line 293
    move-object v2, p1

    .line 294
    move-object v3, p2

    .line 295
    move v4, p4

    .line 296
    invoke-direct/range {v0 .. v5}, Lb1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 297
    .line 298
    .line 299
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 300
    .line 301
    :cond_13
    return-void
.end method
