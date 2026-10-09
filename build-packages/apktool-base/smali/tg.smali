.class public final synthetic Ltg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Ltg;->j:I

    iput-object p2, p0, Ltg;->k:Ljava/lang/Object;

    iput-object p3, p0, Ltg;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/platform/UriHandler;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    iput p1, p0, Ltg;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Ltg;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Ltg;->l:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Ltg;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x3

    .line 6
    const-string v4, ""

    .line 7
    .line 8
    const/4 v5, -0x1

    .line 9
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    iget-object v7, p0, Ltg;->l:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object p0, p0, Ltg;->k:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast p0, Ljava/util/ArrayList;

    .line 19
    .line 20
    check-cast v7, Lio/ktor/http/Url;

    .line 21
    .line 22
    iget-object v0, v7, Lio/ktor/http/Url;->n:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, v7, Lio/ktor/http/Url;->p:Lio/ktor/http/URLProtocol;

    .line 32
    .line 33
    iget-object p0, p0, Lio/ktor/http/URLProtocol;->j:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    add-int/2addr p0, v3

    .line 40
    const/4 v1, 0x4

    .line 41
    const/16 v3, 0x2f

    .line 42
    .line 43
    invoke-static {v0, v3, p0, v1}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-ne p0, v5, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-array v1, v2, [C

    .line 51
    .line 52
    fill-array-data v1, :array_0

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1, p0}, Lkotlin/text/StringsKt;->s(Ljava/lang/CharSequence;[CI)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ne v1, v5, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    :goto_0
    return-object v4

    .line 71
    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 72
    .line 73
    check-cast v7, Ljava/lang/String;

    .line 74
    .line 75
    new-instance v0, Lnet/blip/libblip/event/TransferAcceptanceRequested;

    .line 76
    .line 77
    sget-object v1, Lokio/ByteString;->m:Lokio/ByteString;

    .line 78
    .line 79
    invoke-direct {v0, v7, v4, v1}, Lnet/blip/libblip/event/TransferAcceptanceRequested;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    return-object v6

    .line 86
    :pswitch_1
    check-cast p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 87
    .line 88
    check-cast v7, Landroidx/compose/ui/platform/UriHandler;

    .line 89
    .line 90
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p0, Landroidx/compose/ui/text/LinkAnnotation;

    .line 93
    .line 94
    instance-of v0, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    :try_start_0
    check-cast p0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 99
    .line 100
    iget-object p0, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->a:Ljava/lang/String;

    .line 101
    .line 102
    check-cast v7, Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 103
    .line 104
    invoke-virtual {v7, p0}, Landroidx/compose/ui/platform/AndroidUriHandler;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    :catch_0
    :cond_3
    return-object v6

    .line 108
    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 109
    .line 110
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 111
    .line 112
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 117
    .line 118
    iget-wide v6, v0, Landroidx/compose/ui/unit/IntSize;->a:J

    .line 119
    .line 120
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j()Landroidx/compose/ui/geometry/Offset;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-wide v8, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    if-eqz v0, :cond_b

    .line 130
    .line 131
    iget-wide v10, v0, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->n()Landroidx/compose/ui/text/AnnotatedString;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_b

    .line 138
    .line 139
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_4

    .line 146
    .line 147
    goto/16 :goto_4

    .line 148
    .line 149
    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->q:Landroidx/compose/runtime/MutableState;

    .line 150
    .line 151
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Landroidx/compose/foundation/text/Handle;

    .line 158
    .line 159
    if-nez v0, :cond_5

    .line 160
    .line 161
    move v0, v5

    .line 162
    goto :goto_1

    .line 163
    :cond_5
    sget-object v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$WhenMappings;->a:[I

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    aget v0, v4, v0

    .line 170
    .line 171
    :goto_1
    if-eq v0, v5, :cond_b

    .line 172
    .line 173
    const/4 v4, 0x1

    .line 174
    const-wide v12, 0xffffffffL

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    const/16 v5, 0x20

    .line 180
    .line 181
    if-eq v0, v4, :cond_7

    .line 182
    .line 183
    if-eq v0, v2, :cond_7

    .line 184
    .line 185
    if-ne v0, v3, :cond_6

    .line 186
    .line 187
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget-wide v3, v0, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 192
    .line 193
    sget v0, Landroidx/compose/ui/text/TextRange;->c:I

    .line 194
    .line 195
    and-long/2addr v3, v12

    .line 196
    :goto_2
    long-to-int v0, v3

    .line 197
    goto :goto_3

    .line 198
    :cond_6
    invoke-static {}, Lk8;->e()V

    .line 199
    .line 200
    .line 201
    const/4 p0, 0x0

    .line 202
    goto/16 :goto_5

    .line 203
    .line 204
    :cond_7
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iget-wide v3, v0, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 209
    .line 210
    sget v0, Landroidx/compose/ui/text/TextRange;->c:I

    .line 211
    .line 212
    shr-long/2addr v3, v5

    .line 213
    goto :goto_2

    .line 214
    :goto_3
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 215
    .line 216
    if-eqz v3, :cond_b

    .line 217
    .line 218
    invoke-virtual {v3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    if-nez v3, :cond_8

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_8
    iget-object v4, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 226
    .line 227
    if-eqz v4, :cond_b

    .line 228
    .line 229
    iget-object v4, v4, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    .line 230
    .line 231
    iget-object v4, v4, Landroidx/compose/foundation/text/TextDelegate;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 232
    .line 233
    if-nez v4, :cond_9

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_9
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 237
    .line 238
    invoke-interface {p0, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    iget-object v0, v4, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    invoke-static {p0, v1, v0}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    invoke-virtual {v3, v10, v11}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->d(J)J

    .line 253
    .line 254
    .line 255
    move-result-wide v0

    .line 256
    shr-long/2addr v0, v5

    .line 257
    long-to-int v0, v0

    .line 258
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    iget-object v1, v3, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 263
    .line 264
    iget-object v3, v1, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 265
    .line 266
    invoke-virtual {v3, p0}, Landroidx/compose/ui/text/MultiParagraph;->d(I)I

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    invoke-virtual {v1, p0}, Landroidx/compose/ui/text/TextLayoutResult;->d(I)F

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    invoke-virtual {v1, p0}, Landroidx/compose/ui/text/TextLayoutResult;->e(I)F

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    invoke-static {v0, v10, v1}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    const-wide/16 v10, 0x0

    .line 291
    .line 292
    invoke-static {v6, v7, v10, v11}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    if-nez v4, :cond_a

    .line 297
    .line 298
    sub-float/2addr v0, v1

    .line 299
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    shr-long/2addr v6, v5

    .line 304
    long-to-int v4, v6

    .line 305
    div-int/2addr v4, v2

    .line 306
    int-to-float v2, v4

    .line 307
    cmpl-float v0, v0, v2

    .line 308
    .line 309
    if-lez v0, :cond_a

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_a
    invoke-virtual {v3, p0}, Landroidx/compose/ui/text/MultiParagraph;->f(I)F

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    invoke-virtual {v3, p0}, Landroidx/compose/ui/text/MultiParagraph;->b(I)F

    .line 317
    .line 318
    .line 319
    move-result p0

    .line 320
    sub-float/2addr p0, v0

    .line 321
    const/high16 v2, 0x40000000    # 2.0f

    .line 322
    .line 323
    div-float/2addr p0, v2

    .line 324
    add-float/2addr p0, v0

    .line 325
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    int-to-long v0, v0

    .line 330
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 331
    .line 332
    .line 333
    move-result p0

    .line 334
    int-to-long v2, p0

    .line 335
    shl-long/2addr v0, v5

    .line 336
    and-long/2addr v2, v12

    .line 337
    or-long v8, v0, v2

    .line 338
    .line 339
    :cond_b
    :goto_4
    new-instance p0, Landroidx/compose/ui/geometry/Offset;

    .line 340
    .line 341
    invoke-direct {p0, v8, v9}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 342
    .line 343
    .line 344
    :goto_5
    return-object p0

    .line 345
    :pswitch_3
    check-cast p0, Landroid/content/Context;

    .line 346
    .line 347
    check-cast v7, Landroid/view/textclassifier/TextClassification;

    .line 348
    .line 349
    invoke-virtual {v7}, Landroid/view/textclassifier/TextClassification;->getText()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    if-eqz v0, :cond_c

    .line 354
    .line 355
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    :cond_c
    invoke-virtual {v7}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    const/high16 v2, 0xc000000

    .line 364
    .line 365
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    invoke-static {p0}, Landroidx/compose/foundation/text/contextmenu/internal/TextClassificationHelperApi28;->a(Landroid/app/PendingIntent;)V

    .line 370
    .line 371
    .line 372
    return-object v6

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_0
    .array-data 2
        0x3fs
        0x23s
    .end array-data
.end method
