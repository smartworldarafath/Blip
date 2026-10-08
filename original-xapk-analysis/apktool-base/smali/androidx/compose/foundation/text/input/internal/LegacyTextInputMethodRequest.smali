.class public final Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

.field public c:Lkotlin/jvm/functions/Function1;

.field public d:Lkotlin/jvm/functions/Function1;

.field public e:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public f:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public g:Landroidx/compose/ui/platform/ViewConfiguration;

.field public h:Landroidx/compose/ui/text/input/TextFieldValue;

.field public i:Landroidx/compose/ui/text/input/ImeOptions;

.field public final j:Ljava/util/ArrayList;

.field public final k:Lkotlin/Lazy;

.field public l:Landroid/graphics/Rect;

.field public final m:Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->b:Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    .line 7
    .line 8
    new-instance p1, Lla;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p1, v0}, Lla;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->c:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    new-instance p1, Lla;

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    invoke-direct {p1, v0}, Lla;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->d:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 25
    .line 26
    sget-wide v0, Landroidx/compose/ui/text/TextRange;->b:J

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    const-string v3, ""

    .line 30
    .line 31
    invoke-direct {p1, v2, v0, v1, v3}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->h:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 35
    .line 36
    sget-object p1, Landroidx/compose/ui/text/input/ImeOptions;->g:Landroidx/compose/ui/text/input/ImeOptions;

    .line 37
    .line 38
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->i:Landroidx/compose/ui/text/input/ImeOptions;

    .line 39
    .line 40
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->j:Ljava/util/ArrayList;

    .line 46
    .line 47
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->k:Lkotlin/LazyThreadSafetyMode;

    .line 48
    .line 49
    new-instance v0, Lr1;

    .line 50
    .line 51
    const/16 v1, 0x1c

    .line 52
    .line 53
    invoke-direct {v0, v1, p0}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->k:Lkotlin/Lazy;

    .line 61
    .line 62
    new-instance p1, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    .line 63
    .line 64
    invoke-direct {p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->m:Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/inputmethod/EditorInfo;)Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->h:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 8
    .line 9
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v4, v2, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->i:Landroidx/compose/ui/text/input/ImeOptions;

    .line 14
    .line 15
    iget v6, v2, Landroidx/compose/ui/text/input/ImeOptions;->e:I

    .line 16
    .line 17
    iget v7, v2, Landroidx/compose/ui/text/input/ImeOptions;->d:I

    .line 18
    .line 19
    iget-boolean v8, v2, Landroidx/compose/ui/text/input/ImeOptions;->a:Z

    .line 20
    .line 21
    const/4 v10, 0x5

    .line 22
    const/4 v12, 0x4

    .line 23
    const/4 v13, 0x7

    .line 24
    const/4 v14, 0x6

    .line 25
    const/4 v15, 0x3

    .line 26
    const/4 v11, 0x2

    .line 27
    const/4 v9, 0x1

    .line 28
    if-ne v6, v9, :cond_1

    .line 29
    .line 30
    if-eqz v8, :cond_0

    .line 31
    .line 32
    :goto_0
    move v6, v14

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 v6, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    if-nez v6, :cond_2

    .line 37
    .line 38
    move v6, v9

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    if-ne v6, v11, :cond_3

    .line 41
    .line 42
    move v6, v11

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    if-ne v6, v14, :cond_4

    .line 45
    .line 46
    move v6, v10

    .line 47
    goto :goto_1

    .line 48
    :cond_4
    if-ne v6, v10, :cond_5

    .line 49
    .line 50
    move v6, v13

    .line 51
    goto :goto_1

    .line 52
    :cond_5
    if-ne v6, v15, :cond_6

    .line 53
    .line 54
    move v6, v15

    .line 55
    goto :goto_1

    .line 56
    :cond_6
    if-ne v6, v12, :cond_7

    .line 57
    .line 58
    move v6, v12

    .line 59
    goto :goto_1

    .line 60
    :cond_7
    if-ne v6, v13, :cond_31

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :goto_1
    iput v6, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 64
    .line 65
    iget-object v6, v2, Landroidx/compose/ui/text/input/ImeOptions;->f:Landroidx/compose/ui/text/intl/LocaleList;

    .line 66
    .line 67
    sget-object v13, Landroidx/compose/ui/text/intl/LocaleList;->l:Landroidx/compose/ui/text/intl/LocaleList;

    .line 68
    .line 69
    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    const/16 v14, 0xa

    .line 74
    .line 75
    if-eqz v13, :cond_8

    .line 76
    .line 77
    const/4 v13, 0x0

    .line 78
    iput-object v13, v1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_8
    new-instance v13, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-static {v6, v14}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    invoke-direct {v13, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .line 89
    .line 90
    iget-object v6, v6, Landroidx/compose/ui/text/intl/LocaleList;->j:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-eqz v10, :cond_9

    .line 101
    .line 102
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    check-cast v10, Landroidx/compose/ui/text/intl/Locale;

    .line 107
    .line 108
    iget-object v10, v10, Landroidx/compose/ui/text/intl/Locale;->a:Ljava/util/Locale;

    .line 109
    .line 110
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_9
    const/4 v10, 0x0

    .line 115
    new-array v6, v10, [Ljava/util/Locale;

    .line 116
    .line 117
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, [Ljava/util/Locale;

    .line 122
    .line 123
    array-length v10, v6

    .line 124
    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    check-cast v6, [Ljava/util/Locale;

    .line 129
    .line 130
    new-instance v10, Landroid/os/LocaleList;

    .line 131
    .line 132
    invoke-direct {v10, v6}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 133
    .line 134
    .line 135
    iput-object v10, v1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 136
    .line 137
    :goto_3
    const/16 v6, 0x8

    .line 138
    .line 139
    const/16 v13, 0x18

    .line 140
    .line 141
    const/16 v10, 0x17

    .line 142
    .line 143
    if-ne v7, v9, :cond_a

    .line 144
    .line 145
    :goto_4
    move v12, v9

    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :cond_a
    if-ne v7, v11, :cond_b

    .line 149
    .line 150
    iget v12, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 151
    .line 152
    const/high16 v16, -0x80000000

    .line 153
    .line 154
    or-int v12, v12, v16

    .line 155
    .line 156
    iput v12, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_b
    if-ne v7, v15, :cond_c

    .line 160
    .line 161
    move v12, v11

    .line 162
    goto/16 :goto_6

    .line 163
    .line 164
    :cond_c
    if-ne v7, v12, :cond_d

    .line 165
    .line 166
    :goto_5
    move v12, v15

    .line 167
    goto/16 :goto_6

    .line 168
    .line 169
    :cond_d
    const/16 v12, 0x11

    .line 170
    .line 171
    const/4 v15, 0x5

    .line 172
    if-ne v7, v15, :cond_e

    .line 173
    .line 174
    goto/16 :goto_6

    .line 175
    .line 176
    :cond_e
    const/4 v15, 0x6

    .line 177
    if-ne v7, v15, :cond_f

    .line 178
    .line 179
    const/16 v12, 0x21

    .line 180
    .line 181
    goto/16 :goto_6

    .line 182
    .line 183
    :cond_f
    const/4 v15, 0x7

    .line 184
    if-ne v7, v15, :cond_10

    .line 185
    .line 186
    const/16 v12, 0x81

    .line 187
    .line 188
    goto/16 :goto_6

    .line 189
    .line 190
    :cond_10
    const/16 v15, 0x12

    .line 191
    .line 192
    if-ne v7, v6, :cond_11

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_11
    const/16 v6, 0x9

    .line 196
    .line 197
    if-ne v7, v6, :cond_12

    .line 198
    .line 199
    const/16 v12, 0x2002

    .line 200
    .line 201
    goto/16 :goto_6

    .line 202
    .line 203
    :cond_12
    if-ne v7, v14, :cond_13

    .line 204
    .line 205
    const/16 v12, 0x91

    .line 206
    .line 207
    goto/16 :goto_6

    .line 208
    .line 209
    :cond_13
    const/16 v6, 0xb

    .line 210
    .line 211
    if-ne v7, v6, :cond_14

    .line 212
    .line 213
    const/16 v12, 0x71

    .line 214
    .line 215
    goto/16 :goto_6

    .line 216
    .line 217
    :cond_14
    const/16 v6, 0xc

    .line 218
    .line 219
    if-ne v7, v6, :cond_15

    .line 220
    .line 221
    const/16 v12, 0x61

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_15
    const/16 v6, 0xd

    .line 225
    .line 226
    if-ne v7, v6, :cond_16

    .line 227
    .line 228
    const/16 v12, 0x31

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_16
    const/16 v6, 0xe

    .line 232
    .line 233
    if-ne v7, v6, :cond_17

    .line 234
    .line 235
    const/16 v12, 0x41

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_17
    const/16 v6, 0xf

    .line 239
    .line 240
    if-ne v7, v6, :cond_18

    .line 241
    .line 242
    const/16 v12, 0x51

    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_18
    const/16 v6, 0x10

    .line 246
    .line 247
    if-ne v7, v6, :cond_19

    .line 248
    .line 249
    const/16 v12, 0xb1

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_19
    if-ne v7, v12, :cond_1a

    .line 253
    .line 254
    const/16 v12, 0xc1

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_1a
    if-ne v7, v15, :cond_1b

    .line 258
    .line 259
    const/4 v12, 0x4

    .line 260
    goto :goto_6

    .line 261
    :cond_1b
    const/16 v6, 0x13

    .line 262
    .line 263
    const/16 v12, 0x14

    .line 264
    .line 265
    if-ne v7, v6, :cond_1c

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_1c
    if-ne v7, v12, :cond_1d

    .line 269
    .line 270
    const/16 v12, 0x24

    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_1d
    const/16 v6, 0x15

    .line 274
    .line 275
    if-ne v7, v6, :cond_1e

    .line 276
    .line 277
    const/16 v12, 0x1002

    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_1e
    const/16 v6, 0x16

    .line 281
    .line 282
    if-ne v7, v6, :cond_1f

    .line 283
    .line 284
    const/16 v12, 0x3002

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_1f
    if-ne v7, v10, :cond_20

    .line 288
    .line 289
    const/16 v12, 0x2012

    .line 290
    .line 291
    goto :goto_6

    .line 292
    :cond_20
    if-ne v7, v13, :cond_21

    .line 293
    .line 294
    const/16 v12, 0x1012

    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_21
    const/16 v6, 0x19

    .line 298
    .line 299
    if-ne v7, v6, :cond_30

    .line 300
    .line 301
    const/16 v12, 0x3012

    .line 302
    .line 303
    :goto_6
    iput v12, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 304
    .line 305
    if-nez v8, :cond_22

    .line 306
    .line 307
    and-int/lit8 v6, v12, 0xf

    .line 308
    .line 309
    if-ne v6, v9, :cond_22

    .line 310
    .line 311
    const/high16 v6, 0x20000

    .line 312
    .line 313
    or-int/2addr v6, v12

    .line 314
    iput v6, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 315
    .line 316
    iget v6, v2, Landroidx/compose/ui/text/input/ImeOptions;->e:I

    .line 317
    .line 318
    if-ne v6, v9, :cond_22

    .line 319
    .line 320
    iget v6, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 321
    .line 322
    const/high16 v8, 0x40000000    # 2.0f

    .line 323
    .line 324
    or-int/2addr v6, v8

    .line 325
    iput v6, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 326
    .line 327
    :cond_22
    iget v6, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 328
    .line 329
    and-int/lit8 v8, v6, 0xf

    .line 330
    .line 331
    if-ne v8, v9, :cond_27

    .line 332
    .line 333
    iget v8, v2, Landroidx/compose/ui/text/input/ImeOptions;->b:I

    .line 334
    .line 335
    if-ne v8, v9, :cond_23

    .line 336
    .line 337
    or-int/lit16 v6, v6, 0x1000

    .line 338
    .line 339
    iput v6, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 340
    .line 341
    goto :goto_7

    .line 342
    :cond_23
    if-ne v8, v11, :cond_24

    .line 343
    .line 344
    or-int/lit16 v6, v6, 0x2000

    .line 345
    .line 346
    iput v6, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_24
    const/4 v11, 0x3

    .line 350
    if-ne v8, v11, :cond_25

    .line 351
    .line 352
    or-int/lit16 v6, v6, 0x4000

    .line 353
    .line 354
    iput v6, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 355
    .line 356
    :cond_25
    :goto_7
    iget-boolean v2, v2, Landroidx/compose/ui/text/input/ImeOptions;->c:Z

    .line 357
    .line 358
    if-eqz v2, :cond_26

    .line 359
    .line 360
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 361
    .line 362
    const v6, 0x8000

    .line 363
    .line 364
    .line 365
    or-int/2addr v2, v6

    .line 366
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 367
    .line 368
    :cond_26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 369
    .line 370
    const/16 v6, 0x25

    .line 371
    .line 372
    if-lt v2, v6, :cond_27

    .line 373
    .line 374
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 375
    .line 376
    const/high16 v6, 0x200000

    .line 377
    .line 378
    or-int/2addr v2, v6

    .line 379
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 380
    .line 381
    :cond_27
    sget v2, Landroidx/compose/ui/text/TextRange;->c:I

    .line 382
    .line 383
    const/16 v2, 0x20

    .line 384
    .line 385
    shr-long v11, v4, v2

    .line 386
    .line 387
    long-to-int v2, v11

    .line 388
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 389
    .line 390
    const-wide v11, 0xffffffffL

    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    and-long/2addr v4, v11

    .line 396
    long-to-int v2, v4

    .line 397
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 398
    .line 399
    invoke-static {v1, v3}, Landroidx/core/view/inputmethod/EditorInfoCompat;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 400
    .line 401
    .line 402
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 403
    .line 404
    const/high16 v3, 0x2000000

    .line 405
    .line 406
    or-int/2addr v2, v3

    .line 407
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 408
    .line 409
    sget-boolean v2, Landroidx/compose/foundation/text/handwriting/StylusHandwriting_androidKt;->a:Z

    .line 410
    .line 411
    if-eqz v2, :cond_28

    .line 412
    .line 413
    const/4 v15, 0x7

    .line 414
    if-ne v7, v15, :cond_29

    .line 415
    .line 416
    :cond_28
    :goto_8
    const/4 v10, 0x0

    .line 417
    goto :goto_9

    .line 418
    :cond_29
    if-ne v7, v14, :cond_2a

    .line 419
    .line 420
    goto :goto_8

    .line 421
    :cond_2a
    const/16 v2, 0x8

    .line 422
    .line 423
    if-ne v7, v2, :cond_2b

    .line 424
    .line 425
    goto :goto_8

    .line 426
    :cond_2b
    if-ne v7, v10, :cond_2c

    .line 427
    .line 428
    goto :goto_8

    .line 429
    :cond_2c
    if-ne v7, v13, :cond_2d

    .line 430
    .line 431
    goto :goto_8

    .line 432
    :cond_2d
    const/16 v6, 0x19

    .line 433
    .line 434
    if-ne v7, v6, :cond_2e

    .line 435
    .line 436
    goto :goto_8

    .line 437
    :cond_2e
    invoke-static {v1, v9}, Landroidx/core/view/inputmethod/EditorInfoCompat;->b(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 438
    .line 439
    .line 440
    invoke-static {}, Ld1;->l()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    move-result-object v16

    .line 444
    invoke-static {}, Ld1;->A()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    move-result-object v17

    .line 448
    invoke-static {}, Ld1;->y()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    move-result-object v18

    .line 452
    invoke-static {}, Ld1;->z()Ljava/lang/Class;

    .line 453
    .line 454
    .line 455
    move-result-object v19

    .line 456
    invoke-static {}, Ld1;->B()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    move-result-object v20

    .line 460
    invoke-static {}, Ld1;->C()Ljava/lang/Class;

    .line 461
    .line 462
    .line 463
    move-result-object v21

    .line 464
    invoke-static {}, Ld1;->D()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    move-result-object v22

    .line 468
    filled-new-array/range {v16 .. v22}, [Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-static {v1, v2}, Ld1;->r(Landroid/view/inputmethod/EditorInfo;Ljava/util/List;)V

    .line 477
    .line 478
    .line 479
    invoke-static {}, Ld1;->l()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-static {}, Ld1;->A()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-static {}, Ld1;->y()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    invoke-static {}, Ld1;->z()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->x([Ljava/lang/Object;)Ljava/util/Set;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-static {v1, v2}, Ld1;->s(Landroid/view/inputmethod/EditorInfo;Ljava/util/Set;)V

    .line 504
    .line 505
    .line 506
    goto :goto_a

    .line 507
    :goto_9
    invoke-static {v1, v10}, Landroidx/core/view/inputmethod/EditorInfoCompat;->b(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 508
    .line 509
    .line 510
    :goto_a
    sget-object v2, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt;->a:Lkotlin/jvm/functions/Function1;

    .line 511
    .line 512
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->g()Z

    .line 513
    .line 514
    .line 515
    move-result v2

    .line 516
    if-nez v2, :cond_2f

    .line 517
    .line 518
    goto :goto_b

    .line 519
    :cond_2f
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->a()Landroidx/emoji2/text/EmojiCompat;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-virtual {v2, v1}, Landroidx/emoji2/text/EmojiCompat;->l(Landroid/view/inputmethod/EditorInfo;)V

    .line 524
    .line 525
    .line 526
    :goto_b
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->h:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 527
    .line 528
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->i:Landroidx/compose/ui/text/input/ImeOptions;

    .line 529
    .line 530
    iget-boolean v6, v1, Landroidx/compose/ui/text/input/ImeOptions;->c:Z

    .line 531
    .line 532
    new-instance v5, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;

    .line 533
    .line 534
    invoke-direct {v5, v0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;-><init>(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)V

    .line 535
    .line 536
    .line 537
    iget-object v7, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->e:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 538
    .line 539
    iget-object v8, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->f:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 540
    .line 541
    iget-object v9, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->g:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 542
    .line 543
    new-instance v3, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    .line 544
    .line 545
    invoke-direct/range {v3 .. v9}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;ZLandroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/platform/ViewConfiguration;)V

    .line 546
    .line 547
    .line 548
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 549
    .line 550
    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    iget-object v0, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->j:Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    return-object v3

    .line 559
    :cond_30
    const-string v0, "Invalid Keyboard Type"

    .line 560
    .line 561
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    const/16 v16, 0x0

    .line 565
    .line 566
    return-object v16

    .line 567
    :cond_31
    const/16 v16, 0x0

    .line 568
    .line 569
    const-string v0, "invalid ImeAction"

    .line 570
    .line 571
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    return-object v16
.end method
