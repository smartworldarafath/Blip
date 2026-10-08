.class public Landroidx/appcompat/view/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/SupportMenuInflater$MenuState;,
        Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field public static final e:[Ljava/lang/Class;

.field public static final f:[Ljava/lang/Class;


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:[Ljava/lang/Object;

.field public final c:Landroid/content/Context;

.field public d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/appcompat/view/SupportMenuInflater;->e:[Ljava/lang/Class;

    .line 8
    .line 9
    sput-object v0, Landroidx/appcompat/view/SupportMenuInflater;->f:[Ljava/lang/Class;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    .line 5
    .line 6
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater;->a:[Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater;->b:[Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Landroid/content/ContextWrapper;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroidx/appcompat/view/SupportMenuInflater;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-direct {v2, v0, v3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;-><init>(Landroidx/appcompat/view/SupportMenuInflater;Landroid/view/Menu;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    :goto_0
    const-string v4, "menu"

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    const/4 v6, 0x1

    .line 20
    if-ne v3, v5, :cond_1

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-eqz v7, :cond_0

    .line 31
    .line 32
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const-string v0, "Expecting menu, got "

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lu2;->n(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ne v3, v6, :cond_17

    .line 52
    .line 53
    :goto_1
    const/4 v7, 0x0

    .line 54
    move v9, v7

    .line 55
    move v10, v9

    .line 56
    const/4 v11, 0x0

    .line 57
    :goto_2
    if-nez v9, :cond_16

    .line 58
    .line 59
    if-eq v3, v6, :cond_15

    .line 60
    .line 61
    const-string v12, "item"

    .line 62
    .line 63
    const-string v13, "group"

    .line 64
    .line 65
    const/4 v14, 0x3

    .line 66
    iget-object v15, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->a:Landroid/view/Menu;

    .line 67
    .line 68
    if-eq v3, v5, :cond_7

    .line 69
    .line 70
    if-eq v3, v14, :cond_3

    .line 71
    .line 72
    :cond_2
    :goto_3
    move-object/from16 v8, p1

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v10, :cond_4

    .line 80
    .line 81
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v14

    .line 85
    if-eqz v14, :cond_4

    .line 86
    .line 87
    move-object/from16 v8, p1

    .line 88
    .line 89
    move v10, v7

    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v11, 0x0

    .line 92
    goto/16 :goto_c

    .line 93
    .line 94
    :cond_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    if-eqz v13, :cond_5

    .line 99
    .line 100
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b:I

    .line 101
    .line 102
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->c:I

    .line 103
    .line 104
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->d:I

    .line 105
    .line 106
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->e:I

    .line 107
    .line 108
    iput-boolean v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->f:Z

    .line 109
    .line 110
    iput-boolean v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->g:Z

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    if-eqz v12, :cond_6

    .line 118
    .line 119
    iget-boolean v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->h:Z

    .line 120
    .line 121
    if-nez v3, :cond_2

    .line 122
    .line 123
    iput-boolean v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->h:Z

    .line 124
    .line 125
    iget v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b:I

    .line 126
    .line 127
    iget v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->i:I

    .line 128
    .line 129
    iget v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->j:I

    .line 130
    .line 131
    iget-object v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->k:Ljava/lang/CharSequence;

    .line 132
    .line 133
    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v2, v3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b(Landroid/view/MenuItem;)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_2

    .line 146
    .line 147
    move-object/from16 v8, p1

    .line 148
    .line 149
    move v9, v6

    .line 150
    :goto_4
    const/4 v5, 0x0

    .line 151
    goto/16 :goto_c

    .line 152
    .line 153
    :cond_7
    if-eqz v10, :cond_8

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    iget-object v8, v0, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    .line 165
    .line 166
    const/4 v5, 0x4

    .line 167
    if-eqz v13, :cond_9

    .line 168
    .line 169
    sget-object v3, Landroidx/appcompat/R$styleable;->m:[I

    .line 170
    .line 171
    invoke-virtual {v8, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    iput v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b:I

    .line 180
    .line 181
    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    iput v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->c:I

    .line 186
    .line 187
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    iput v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->d:I

    .line 192
    .line 193
    const/4 v5, 0x5

    .line 194
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    iput v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->e:I

    .line 199
    .line 200
    const/4 v5, 0x2

    .line 201
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    iput-boolean v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->f:Z

    .line 206
    .line 207
    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    iput-boolean v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->g:Z

    .line 212
    .line 213
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_3

    .line 217
    .line 218
    :cond_9
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    if-eqz v12, :cond_13

    .line 223
    .line 224
    new-instance v3, Landroidx/appcompat/widget/TintTypedArray;

    .line 225
    .line 226
    sget-object v12, Landroidx/appcompat/R$styleable;->n:[I

    .line 227
    .line 228
    invoke-virtual {v8, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    invoke-direct {v3, v8, v12}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 233
    .line 234
    .line 235
    const/4 v8, 0x2

    .line 236
    invoke-virtual {v12, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 237
    .line 238
    .line 239
    move-result v13

    .line 240
    iput v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->i:I

    .line 241
    .line 242
    iget v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->c:I

    .line 243
    .line 244
    const/4 v15, 0x5

    .line 245
    invoke-virtual {v12, v15, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 246
    .line 247
    .line 248
    move-result v13

    .line 249
    const/4 v15, 0x6

    .line 250
    iget v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->d:I

    .line 251
    .line 252
    invoke-virtual {v12, v15, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    const/high16 v15, -0x10000

    .line 257
    .line 258
    and-int/2addr v13, v15

    .line 259
    const v15, 0xffff

    .line 260
    .line 261
    .line 262
    and-int/2addr v8, v15

    .line 263
    or-int/2addr v8, v13

    .line 264
    iput v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->j:I

    .line 265
    .line 266
    const/4 v8, 0x7

    .line 267
    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    iput-object v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->k:Ljava/lang/CharSequence;

    .line 272
    .line 273
    const/16 v8, 0x8

    .line 274
    .line 275
    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    iput-object v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->l:Ljava/lang/CharSequence;

    .line 280
    .line 281
    invoke-virtual {v12, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    iput v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->m:I

    .line 286
    .line 287
    const/16 v8, 0x9

    .line 288
    .line 289
    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    if-nez v8, :cond_a

    .line 294
    .line 295
    move v8, v7

    .line 296
    goto :goto_5

    .line 297
    :cond_a
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    .line 298
    .line 299
    .line 300
    move-result v8

    .line 301
    :goto_5
    iput-char v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->n:C

    .line 302
    .line 303
    const/16 v8, 0x10

    .line 304
    .line 305
    const/16 v13, 0x1000

    .line 306
    .line 307
    invoke-virtual {v12, v8, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    iput v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->o:I

    .line 312
    .line 313
    const/16 v8, 0xa

    .line 314
    .line 315
    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    if-nez v8, :cond_b

    .line 320
    .line 321
    move v8, v7

    .line 322
    goto :goto_6

    .line 323
    :cond_b
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    :goto_6
    iput-char v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->p:C

    .line 328
    .line 329
    const/16 v8, 0x14

    .line 330
    .line 331
    invoke-virtual {v12, v8, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 332
    .line 333
    .line 334
    move-result v8

    .line 335
    iput v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->q:I

    .line 336
    .line 337
    const/16 v8, 0xb

    .line 338
    .line 339
    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 340
    .line 341
    .line 342
    move-result v13

    .line 343
    if-eqz v13, :cond_c

    .line 344
    .line 345
    invoke-virtual {v12, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    iput v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->r:I

    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_c
    iget v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->e:I

    .line 353
    .line 354
    iput v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->r:I

    .line 355
    .line 356
    :goto_7
    invoke-virtual {v12, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 357
    .line 358
    .line 359
    move-result v8

    .line 360
    iput-boolean v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->s:Z

    .line 361
    .line 362
    iget-boolean v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->f:Z

    .line 363
    .line 364
    invoke-virtual {v12, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    iput-boolean v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->t:Z

    .line 369
    .line 370
    iget-boolean v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->g:Z

    .line 371
    .line 372
    invoke-virtual {v12, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    iput-boolean v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->u:Z

    .line 377
    .line 378
    const/16 v5, 0x15

    .line 379
    .line 380
    const/4 v8, -0x1

    .line 381
    invoke-virtual {v12, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    iput v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->v:I

    .line 386
    .line 387
    const/16 v5, 0xc

    .line 388
    .line 389
    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    iput-object v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->y:Ljava/lang/String;

    .line 394
    .line 395
    const/16 v5, 0xd

    .line 396
    .line 397
    invoke-virtual {v12, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    iput v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->w:I

    .line 402
    .line 403
    const/16 v5, 0xf

    .line 404
    .line 405
    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    iput-object v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->x:Ljava/lang/String;

    .line 410
    .line 411
    const/16 v5, 0xe

    .line 412
    .line 413
    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    if-eqz v5, :cond_d

    .line 418
    .line 419
    move v13, v6

    .line 420
    goto :goto_8

    .line 421
    :cond_d
    move v13, v7

    .line 422
    :goto_8
    if-eqz v13, :cond_f

    .line 423
    .line 424
    iget v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->w:I

    .line 425
    .line 426
    if-nez v14, :cond_f

    .line 427
    .line 428
    iget-object v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->x:Ljava/lang/String;

    .line 429
    .line 430
    if-nez v14, :cond_f

    .line 431
    .line 432
    sget-object v13, Landroidx/appcompat/view/SupportMenuInflater;->f:[Ljava/lang/Class;

    .line 433
    .line 434
    iget-object v14, v0, Landroidx/appcompat/view/SupportMenuInflater;->b:[Ljava/lang/Object;

    .line 435
    .line 436
    invoke-virtual {v2, v5, v13, v14}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    if-nez v5, :cond_e

    .line 441
    .line 442
    goto :goto_9

    .line 443
    :cond_e
    invoke-static {}, Lio/sentry/d;->i()V

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :cond_f
    if-eqz v13, :cond_10

    .line 448
    .line 449
    const-string v5, "SupportMenuInflater"

    .line 450
    .line 451
    const-string v13, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 452
    .line 453
    invoke-static {v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    :cond_10
    :goto_9
    const/16 v5, 0x11

    .line 457
    .line 458
    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    iput-object v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->z:Ljava/lang/CharSequence;

    .line 463
    .line 464
    const/16 v5, 0x16

    .line 465
    .line 466
    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    iput-object v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->A:Ljava/lang/CharSequence;

    .line 471
    .line 472
    const/16 v5, 0x13

    .line 473
    .line 474
    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 475
    .line 476
    .line 477
    move-result v13

    .line 478
    if-eqz v13, :cond_11

    .line 479
    .line 480
    invoke-virtual {v12, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    iget-object v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->C:Landroid/graphics/PorterDuff$Mode;

    .line 485
    .line 486
    invoke-static {v5, v8}, Landroidx/appcompat/widget/DrawableUtils;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    iput-object v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->C:Landroid/graphics/PorterDuff$Mode;

    .line 491
    .line 492
    const/4 v5, 0x0

    .line 493
    goto :goto_a

    .line 494
    :cond_11
    const/4 v5, 0x0

    .line 495
    iput-object v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->C:Landroid/graphics/PorterDuff$Mode;

    .line 496
    .line 497
    :goto_a
    const/16 v8, 0x12

    .line 498
    .line 499
    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 500
    .line 501
    .line 502
    move-result v12

    .line 503
    if-eqz v12, :cond_12

    .line 504
    .line 505
    invoke-virtual {v3, v8}, Landroidx/appcompat/widget/TintTypedArray;->a(I)Landroid/content/res/ColorStateList;

    .line 506
    .line 507
    .line 508
    move-result-object v8

    .line 509
    iput-object v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->B:Landroid/content/res/ColorStateList;

    .line 510
    .line 511
    goto :goto_b

    .line 512
    :cond_12
    iput-object v5, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->B:Landroid/content/res/ColorStateList;

    .line 513
    .line 514
    :goto_b
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->e()V

    .line 515
    .line 516
    .line 517
    iput-boolean v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->h:Z

    .line 518
    .line 519
    move-object/from16 v8, p1

    .line 520
    .line 521
    goto :goto_c

    .line 522
    :cond_13
    const/4 v5, 0x0

    .line 523
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v8

    .line 527
    if-eqz v8, :cond_14

    .line 528
    .line 529
    iput-boolean v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->h:Z

    .line 530
    .line 531
    iget v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b:I

    .line 532
    .line 533
    iget v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->i:I

    .line 534
    .line 535
    iget v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->j:I

    .line 536
    .line 537
    iget-object v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->k:Ljava/lang/CharSequence;

    .line 538
    .line 539
    invoke-interface {v15, v3, v8, v12, v13}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 544
    .line 545
    .line 546
    move-result-object v8

    .line 547
    invoke-virtual {v2, v8}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b(Landroid/view/MenuItem;)V

    .line 548
    .line 549
    .line 550
    move-object/from16 v8, p1

    .line 551
    .line 552
    invoke-virtual {v0, v8, v1, v3}, Landroidx/appcompat/view/SupportMenuInflater;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 553
    .line 554
    .line 555
    goto :goto_c

    .line 556
    :cond_14
    move-object/from16 v8, p1

    .line 557
    .line 558
    move-object v11, v3

    .line 559
    move v10, v6

    .line 560
    :goto_c
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    const/4 v5, 0x2

    .line 565
    goto/16 :goto_2

    .line 566
    .line 567
    :cond_15
    const-string v0, "Unexpected end of document"

    .line 568
    .line 569
    invoke-static {v0}, Lu2;->n(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    :cond_16
    return-void

    .line 573
    :cond_17
    move-object/from16 v8, p1

    .line 574
    .line 575
    goto/16 :goto_0
.end method

.method public final inflate(ILandroid/view/Menu;)V
    .locals 5

    .line 1
    const-string v0, "Error inflating menu XML"

    .line 2
    .line 3
    instance-of v1, p2, Landroidx/core/internal/view/SupportMenu;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    instance-of v3, p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    move-object v3, p2

    .line 32
    check-cast v3, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 33
    .line 34
    iget-boolean v4, v3, Landroidx/appcompat/view/menu/MenuBuilder;->n:Z

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->s()V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_3

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :catch_1
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Landroidx/appcompat/view/SupportMenuInflater;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    check-cast p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 55
    .line 56
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->r()V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    :try_start_1
    new-instance p1, Landroid/view/InflateException;

    .line 64
    .line 65
    invoke-direct {p1, v0, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :goto_2
    new-instance p1, Landroid/view/InflateException;

    .line 70
    .line 71
    invoke-direct {p1, v0, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_3
    if-eqz v2, :cond_3

    .line 76
    .line 77
    check-cast p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 78
    .line 79
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->r()V

    .line 80
    .line 81
    .line 82
    :cond_3
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 85
    .line 86
    .line 87
    :cond_4
    throw p0
.end method
