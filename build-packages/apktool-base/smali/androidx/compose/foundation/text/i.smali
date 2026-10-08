.class public final synthetic Landroidx/compose/foundation/text/i;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/text/KeyCommand;

.field public final synthetic k:Landroidx/compose/foundation/text/TextFieldKeyInput;

.field public final synthetic l:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/KeyCommand;Landroidx/compose/foundation/text/TextFieldKeyInput;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/i;->j:Landroidx/compose/foundation/text/KeyCommand;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/i;->k:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/i;->l:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/text/i;->j:Landroidx/compose/foundation/text/KeyCommand;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    const/4 v2, -0x1

    .line 11
    iget-object v3, p0, Landroidx/compose/foundation/text/i;->k:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/compose/foundation/text/i;->l:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lk8;->e()V

    .line 24
    .line 25
    .line 26
    return-object v7

    .line 27
    :pswitch_0
    iget-object p0, v3, Landroidx/compose/foundation/text/TextFieldKeyInput;->h:Landroidx/compose/foundation/text/UndoManager;

    .line 28
    .line 29
    if-eqz p0, :cond_1b

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/compose/foundation/text/UndoManager;->b:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object v0, p1, Landroidx/compose/foundation/text/UndoManager$Entry;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 36
    .line 37
    iput-object v0, p0, Landroidx/compose/foundation/text/UndoManager;->b:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 38
    .line 39
    iget-object v0, p1, Landroidx/compose/foundation/text/UndoManager$Entry;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/compose/foundation/text/UndoManager;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 42
    .line 43
    new-instance v2, Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 44
    .line 45
    invoke-direct {v2, v1, v0}, Landroidx/compose/foundation/text/UndoManager$Entry;-><init>(Landroidx/compose/foundation/text/UndoManager$Entry;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Landroidx/compose/foundation/text/UndoManager;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 49
    .line 50
    iget v1, p0, Landroidx/compose/foundation/text/UndoManager;->c:I

    .line 51
    .line 52
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 53
    .line 54
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v0, v1

    .line 61
    iput v0, p0, Landroidx/compose/foundation/text/UndoManager;->c:I

    .line 62
    .line 63
    iget-object v7, p1, Landroidx/compose/foundation/text/UndoManager$Entry;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 64
    .line 65
    :cond_0
    if-eqz v7, :cond_1b

    .line 66
    .line 67
    iget-object p0, v3, Landroidx/compose/foundation/text/TextFieldKeyInput;->k:Lkotlin/jvm/functions/Function1;

    .line 68
    .line 69
    invoke-interface {p0, v7}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    return-object v5

    .line 73
    :pswitch_1
    iget-object p0, v3, Landroidx/compose/foundation/text/TextFieldKeyInput;->h:Landroidx/compose/foundation/text/UndoManager;

    .line 74
    .line 75
    if-eqz p0, :cond_1

    .line 76
    .line 77
    iget-object v0, p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->h:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 78
    .line 79
    iget-object v2, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 80
    .line 81
    iget-wide v8, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 82
    .line 83
    invoke-static {v0, v2, v8, v9, v1}, Landroidx/compose/ui/text/input/TextFieldValue;->a(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/UndoManager;->a(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object p0, v3, Landroidx/compose/foundation/text/TextFieldKeyInput;->h:Landroidx/compose/foundation/text/UndoManager;

    .line 91
    .line 92
    if-eqz p0, :cond_1b

    .line 93
    .line 94
    iget-object p1, p0, Landroidx/compose/foundation/text/UndoManager;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    iget-object v0, p1, Landroidx/compose/foundation/text/UndoManager$Entry;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 99
    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    iput-object v0, p0, Landroidx/compose/foundation/text/UndoManager;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 103
    .line 104
    iget v1, p0, Landroidx/compose/foundation/text/UndoManager;->c:I

    .line 105
    .line 106
    iget-object v2, p1, Landroidx/compose/foundation/text/UndoManager$Entry;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 107
    .line 108
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 109
    .line 110
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    sub-int/2addr v1, v2

    .line 117
    iput v1, p0, Landroidx/compose/foundation/text/UndoManager;->c:I

    .line 118
    .line 119
    iget-object p1, p1, Landroidx/compose/foundation/text/UndoManager$Entry;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 120
    .line 121
    iget-object v1, p0, Landroidx/compose/foundation/text/UndoManager;->b:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 122
    .line 123
    new-instance v2, Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 124
    .line 125
    invoke-direct {v2, v1, p1}, Landroidx/compose/foundation/text/UndoManager$Entry;-><init>(Landroidx/compose/foundation/text/UndoManager$Entry;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 126
    .line 127
    .line 128
    iput-object v2, p0, Landroidx/compose/foundation/text/UndoManager;->b:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 129
    .line 130
    iget-object v7, v0, Landroidx/compose/foundation/text/UndoManager$Entry;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 131
    .line 132
    :cond_2
    if-eqz v7, :cond_1b

    .line 133
    .line 134
    iget-object p0, v3, Landroidx/compose/foundation/text/TextFieldKeyInput;->k:Lkotlin/jvm/functions/Function1;

    .line 135
    .line 136
    invoke-interface {p0, v7}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    return-object v5

    .line 140
    :pswitch_2
    iget-boolean p1, v3, Landroidx/compose/foundation/text/TextFieldKeyInput;->e:Z

    .line 141
    .line 142
    if-nez p1, :cond_3

    .line 143
    .line 144
    new-instance p0, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 145
    .line 146
    const-string p1, "\t"

    .line 147
    .line 148
    invoke-direct {p0, p1, v4}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {v3, p0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->a(Ljava/util/List;)V

    .line 156
    .line 157
    .line 158
    return-object v5

    .line 159
    :cond_3
    iput-boolean v6, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 160
    .line 161
    return-object v5

    .line 162
    :pswitch_3
    iget-boolean p1, v3, Landroidx/compose/foundation/text/TextFieldKeyInput;->e:Z

    .line 163
    .line 164
    if-nez p1, :cond_4

    .line 165
    .line 166
    new-instance p0, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 167
    .line 168
    const-string p1, "\n"

    .line 169
    .line 170
    invoke-direct {p0, p1, v4}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {v3, p0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->a(Ljava/util/List;)V

    .line 178
    .line 179
    .line 180
    return-object v5

    .line 181
    :cond_4
    iget-object p1, v3, Landroidx/compose/foundation/text/TextFieldKeyInput;->a:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 182
    .line 183
    iget-object p1, p1, Landroidx/compose/foundation/text/LegacyTextFieldState;->x:Lt6;

    .line 184
    .line 185
    iget v0, v3, Landroidx/compose/foundation/text/TextFieldKeyInput;->l:I

    .line 186
    .line 187
    new-instance v1, Landroidx/compose/ui/text/input/ImeAction;

    .line 188
    .line 189
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/input/ImeAction;-><init>(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v1}, Lt6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Ljava/lang/Boolean;

    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 203
    .line 204
    return-object v5

    .line 205
    :pswitch_4
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 206
    .line 207
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 208
    .line 209
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 210
    .line 211
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    if-lez p0, :cond_1b

    .line 218
    .line 219
    iget-wide v0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 220
    .line 221
    sget p0, Landroidx/compose/ui/text/TextRange;->c:I

    .line 222
    .line 223
    const-wide v2, 0xffffffffL

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    and-long/2addr v0, v2

    .line 229
    long-to-int p0, v0

    .line 230
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 231
    .line 232
    .line 233
    return-object v5

    .line 234
    :pswitch_5
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 235
    .line 236
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 237
    .line 238
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 239
    .line 240
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    if-lez p0, :cond_6

    .line 247
    .line 248
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e()Z

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    if-eqz p0, :cond_5

    .line 253
    .line 254
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->l()V

    .line 255
    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->m()V

    .line 259
    .line 260
    .line 261
    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 262
    .line 263
    .line 264
    return-object v5

    .line 265
    :pswitch_6
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 266
    .line 267
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 268
    .line 269
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 270
    .line 271
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    if-lez p0, :cond_8

    .line 278
    .line 279
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e()Z

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    if-eqz p0, :cond_7

    .line 284
    .line 285
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->m()V

    .line 286
    .line 287
    .line 288
    goto :goto_1

    .line 289
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->l()V

    .line 290
    .line 291
    .line 292
    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 293
    .line 294
    .line 295
    return-object v5

    .line 296
    :pswitch_7
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->l()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 300
    .line 301
    .line 302
    return-object v5

    .line 303
    :pswitch_8
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->m()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 307
    .line 308
    .line 309
    return-object v5

    .line 310
    :pswitch_9
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->j()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 314
    .line 315
    .line 316
    return-object v5

    .line 317
    :pswitch_a
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->h()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 321
    .line 322
    .line 323
    return-object v5

    .line 324
    :pswitch_b
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 325
    .line 326
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 327
    .line 328
    iget-object v0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 329
    .line 330
    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 331
    .line 332
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-lez v1, :cond_a

    .line 339
    .line 340
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e()Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-eqz v1, :cond_9

    .line 345
    .line 346
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 349
    .line 350
    .line 351
    move-result p0

    .line 352
    if-lez p0, :cond_a

    .line 353
    .line 354
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->c()Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    if-eqz p0, :cond_a

    .line 359
    .line 360
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 361
    .line 362
    .line 363
    move-result p0

    .line 364
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 365
    .line 366
    .line 367
    goto :goto_2

    .line 368
    :cond_9
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 371
    .line 372
    .line 373
    move-result p0

    .line 374
    if-lez p0, :cond_a

    .line 375
    .line 376
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->d()Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object p0

    .line 380
    if-eqz p0, :cond_a

    .line 381
    .line 382
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 383
    .line 384
    .line 385
    move-result p0

    .line 386
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 387
    .line 388
    .line 389
    :cond_a
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 390
    .line 391
    .line 392
    return-object v5

    .line 393
    :pswitch_c
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 394
    .line 395
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 396
    .line 397
    iget-object v0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 398
    .line 399
    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 400
    .line 401
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-lez v1, :cond_c

    .line 408
    .line 409
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e()Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_b

    .line 414
    .line 415
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 418
    .line 419
    .line 420
    move-result p0

    .line 421
    if-lez p0, :cond_c

    .line 422
    .line 423
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->d()Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    if-eqz p0, :cond_c

    .line 428
    .line 429
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 430
    .line 431
    .line 432
    move-result p0

    .line 433
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 434
    .line 435
    .line 436
    goto :goto_3

    .line 437
    :cond_b
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 440
    .line 441
    .line 442
    move-result p0

    .line 443
    if-lez p0, :cond_c

    .line 444
    .line 445
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->c()Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    if-eqz p0, :cond_c

    .line 450
    .line 451
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 452
    .line 453
    .line 454
    move-result p0

    .line 455
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 456
    .line 457
    .line 458
    :cond_c
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 459
    .line 460
    .line 461
    return-object v5

    .line 462
    :pswitch_d
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 463
    .line 464
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 465
    .line 466
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 467
    .line 468
    iget-object v0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 469
    .line 470
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-lez v0, :cond_d

    .line 475
    .line 476
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 479
    .line 480
    .line 481
    move-result p0

    .line 482
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 483
    .line 484
    .line 485
    :cond_d
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 486
    .line 487
    .line 488
    return-object v5

    .line 489
    :pswitch_e
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 490
    .line 491
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 492
    .line 493
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 494
    .line 495
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 496
    .line 497
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 498
    .line 499
    .line 500
    move-result p0

    .line 501
    if-lez p0, :cond_e

    .line 502
    .line 503
    invoke-virtual {p1, v6, v6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 504
    .line 505
    .line 506
    :cond_e
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 507
    .line 508
    .line 509
    return-object v5

    .line 510
    :pswitch_f
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 511
    .line 512
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 513
    .line 514
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 515
    .line 516
    .line 517
    move-result p0

    .line 518
    if-lez p0, :cond_f

    .line 519
    .line 520
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->i:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 521
    .line 522
    if-eqz p0, :cond_f

    .line 523
    .line 524
    invoke-virtual {p1, p0, v4}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->r(Landroidx/compose/foundation/text/TextLayoutResultProxy;I)I

    .line 525
    .line 526
    .line 527
    move-result p0

    .line 528
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 529
    .line 530
    .line 531
    :cond_f
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 532
    .line 533
    .line 534
    return-object v5

    .line 535
    :pswitch_10
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 536
    .line 537
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 538
    .line 539
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 540
    .line 541
    .line 542
    move-result p0

    .line 543
    if-lez p0, :cond_10

    .line 544
    .line 545
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->i:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 546
    .line 547
    if-eqz p0, :cond_10

    .line 548
    .line 549
    invoke-virtual {p1, p0, v2}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->r(Landroidx/compose/foundation/text/TextLayoutResultProxy;I)I

    .line 550
    .line 551
    .line 552
    move-result p0

    .line 553
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 554
    .line 555
    .line 556
    :cond_10
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 557
    .line 558
    .line 559
    return-object v5

    .line 560
    :pswitch_11
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 561
    .line 562
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 563
    .line 564
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 565
    .line 566
    .line 567
    move-result p0

    .line 568
    if-lez p0, :cond_11

    .line 569
    .line 570
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->c:Landroidx/compose/ui/text/TextLayoutResult;

    .line 571
    .line 572
    if-eqz p0, :cond_11

    .line 573
    .line 574
    invoke-virtual {p1, p0, v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f(Landroidx/compose/ui/text/TextLayoutResult;I)I

    .line 575
    .line 576
    .line 577
    move-result p0

    .line 578
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 579
    .line 580
    .line 581
    :cond_11
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 582
    .line 583
    .line 584
    return-object v5

    .line 585
    :pswitch_12
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 586
    .line 587
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 588
    .line 589
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 590
    .line 591
    .line 592
    move-result p0

    .line 593
    if-lez p0, :cond_12

    .line 594
    .line 595
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->c:Landroidx/compose/ui/text/TextLayoutResult;

    .line 596
    .line 597
    if-eqz p0, :cond_12

    .line 598
    .line 599
    invoke-virtual {p1, p0, v2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f(Landroidx/compose/ui/text/TextLayoutResult;I)I

    .line 600
    .line 601
    .line 602
    move-result p0

    .line 603
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 604
    .line 605
    .line 606
    :cond_12
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 607
    .line 608
    .line 609
    return-object v5

    .line 610
    :pswitch_13
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->k()V

    .line 611
    .line 612
    .line 613
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 614
    .line 615
    .line 616
    return-object v5

    .line 617
    :pswitch_14
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g()V

    .line 618
    .line 619
    .line 620
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->n()V

    .line 621
    .line 622
    .line 623
    return-object v5

    .line 624
    :pswitch_15
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 625
    .line 626
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 627
    .line 628
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 629
    .line 630
    iget-object v0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 631
    .line 632
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    if-lez v0, :cond_1b

    .line 637
    .line 638
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 639
    .line 640
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 641
    .line 642
    .line 643
    move-result p0

    .line 644
    invoke-virtual {p1, v6, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 645
    .line 646
    .line 647
    return-object v5

    .line 648
    :pswitch_16
    new-instance p0, Lqg;

    .line 649
    .line 650
    const/4 v0, 0x7

    .line 651
    invoke-direct {p0, v0}, Lqg;-><init>(I)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->q(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 655
    .line 656
    .line 657
    move-result-object p0

    .line 658
    if-eqz p0, :cond_1b

    .line 659
    .line 660
    invoke-virtual {v3, p0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->a(Ljava/util/List;)V

    .line 661
    .line 662
    .line 663
    return-object v5

    .line 664
    :pswitch_17
    new-instance p0, Lqg;

    .line 665
    .line 666
    const/4 v0, 0x6

    .line 667
    invoke-direct {p0, v0}, Lqg;-><init>(I)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->q(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 671
    .line 672
    .line 673
    move-result-object p0

    .line 674
    if-eqz p0, :cond_1b

    .line 675
    .line 676
    invoke-virtual {v3, p0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->a(Ljava/util/List;)V

    .line 677
    .line 678
    .line 679
    return-object v5

    .line 680
    :pswitch_18
    new-instance p0, Lqg;

    .line 681
    .line 682
    const/4 v0, 0x5

    .line 683
    invoke-direct {p0, v0}, Lqg;-><init>(I)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->q(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 687
    .line 688
    .line 689
    move-result-object p0

    .line 690
    if-eqz p0, :cond_1b

    .line 691
    .line 692
    invoke-virtual {v3, p0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->a(Ljava/util/List;)V

    .line 693
    .line 694
    .line 695
    return-object v5

    .line 696
    :pswitch_19
    new-instance p0, Lqg;

    .line 697
    .line 698
    invoke-direct {p0, v1}, Lqg;-><init>(I)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->q(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 702
    .line 703
    .line 704
    move-result-object p0

    .line 705
    if-eqz p0, :cond_1b

    .line 706
    .line 707
    invoke-virtual {v3, p0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->a(Ljava/util/List;)V

    .line 708
    .line 709
    .line 710
    return-object v5

    .line 711
    :pswitch_1a
    new-instance p0, Lqg;

    .line 712
    .line 713
    const/4 v0, 0x3

    .line 714
    invoke-direct {p0, v0}, Lqg;-><init>(I)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->q(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 718
    .line 719
    .line 720
    move-result-object p0

    .line 721
    if-eqz p0, :cond_1b

    .line 722
    .line 723
    invoke-virtual {v3, p0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->a(Ljava/util/List;)V

    .line 724
    .line 725
    .line 726
    return-object v5

    .line 727
    :pswitch_1b
    new-instance p0, Lqg;

    .line 728
    .line 729
    const/4 v0, 0x2

    .line 730
    invoke-direct {p0, v0}, Lqg;-><init>(I)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->q(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 734
    .line 735
    .line 736
    move-result-object p0

    .line 737
    if-eqz p0, :cond_1b

    .line 738
    .line 739
    invoke-virtual {v3, p0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->a(Ljava/util/List;)V

    .line 740
    .line 741
    .line 742
    return-object v5

    .line 743
    :pswitch_1c
    iget-object p0, v3, Landroidx/compose/foundation/text/TextFieldKeyInput;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 744
    .line 745
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->f()V

    .line 746
    .line 747
    .line 748
    return-object v5

    .line 749
    :pswitch_1d
    iget-object p0, v3, Landroidx/compose/foundation/text/TextFieldKeyInput;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 750
    .line 751
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->q()V

    .line 752
    .line 753
    .line 754
    return-object v5

    .line 755
    :pswitch_1e
    iget-object p0, v3, Landroidx/compose/foundation/text/TextFieldKeyInput;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 756
    .line 757
    invoke-virtual {p0, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d(Z)Lkotlinx/coroutines/Job;

    .line 758
    .line 759
    .line 760
    return-object v5

    .line 761
    :pswitch_1f
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 762
    .line 763
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 764
    .line 765
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 766
    .line 767
    iget-object v0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 768
    .line 769
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 770
    .line 771
    .line 772
    move-result v0

    .line 773
    if-lez v0, :cond_1b

    .line 774
    .line 775
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 776
    .line 777
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 778
    .line 779
    .line 780
    move-result p0

    .line 781
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 782
    .line 783
    .line 784
    return-object v5

    .line 785
    :pswitch_20
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 786
    .line 787
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 788
    .line 789
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 790
    .line 791
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 792
    .line 793
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 794
    .line 795
    .line 796
    move-result p0

    .line 797
    if-lez p0, :cond_1b

    .line 798
    .line 799
    invoke-virtual {p1, v6, v6}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 800
    .line 801
    .line 802
    return-object v5

    .line 803
    :pswitch_21
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 804
    .line 805
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 806
    .line 807
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 808
    .line 809
    .line 810
    move-result p0

    .line 811
    if-lez p0, :cond_1b

    .line 812
    .line 813
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->i:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 814
    .line 815
    if-eqz p0, :cond_1b

    .line 816
    .line 817
    invoke-virtual {p1, p0, v4}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->r(Landroidx/compose/foundation/text/TextLayoutResultProxy;I)I

    .line 818
    .line 819
    .line 820
    move-result p0

    .line 821
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 822
    .line 823
    .line 824
    return-object v5

    .line 825
    :pswitch_22
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 826
    .line 827
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 828
    .line 829
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 830
    .line 831
    .line 832
    move-result p0

    .line 833
    if-lez p0, :cond_1b

    .line 834
    .line 835
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->i:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 836
    .line 837
    if-eqz p0, :cond_1b

    .line 838
    .line 839
    invoke-virtual {p1, p0, v2}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->r(Landroidx/compose/foundation/text/TextLayoutResultProxy;I)I

    .line 840
    .line 841
    .line 842
    move-result p0

    .line 843
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 844
    .line 845
    .line 846
    return-object v5

    .line 847
    :pswitch_23
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 848
    .line 849
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 850
    .line 851
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 852
    .line 853
    .line 854
    move-result p0

    .line 855
    if-lez p0, :cond_1b

    .line 856
    .line 857
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->c:Landroidx/compose/ui/text/TextLayoutResult;

    .line 858
    .line 859
    if-eqz p0, :cond_1b

    .line 860
    .line 861
    invoke-virtual {p1, p0, v4}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f(Landroidx/compose/ui/text/TextLayoutResult;I)I

    .line 862
    .line 863
    .line 864
    move-result p0

    .line 865
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 866
    .line 867
    .line 868
    return-object v5

    .line 869
    :pswitch_24
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 870
    .line 871
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 872
    .line 873
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 874
    .line 875
    .line 876
    move-result p0

    .line 877
    if-lez p0, :cond_1b

    .line 878
    .line 879
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->c:Landroidx/compose/ui/text/TextLayoutResult;

    .line 880
    .line 881
    if-eqz p0, :cond_1b

    .line 882
    .line 883
    invoke-virtual {p1, p0, v2}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f(Landroidx/compose/ui/text/TextLayoutResult;I)I

    .line 884
    .line 885
    .line 886
    move-result p0

    .line 887
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 888
    .line 889
    .line 890
    return-object v5

    .line 891
    :pswitch_25
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 892
    .line 893
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 894
    .line 895
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 896
    .line 897
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 898
    .line 899
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 900
    .line 901
    .line 902
    move-result p0

    .line 903
    if-lez p0, :cond_1b

    .line 904
    .line 905
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e()Z

    .line 906
    .line 907
    .line 908
    move-result p0

    .line 909
    if-eqz p0, :cond_13

    .line 910
    .line 911
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->l()V

    .line 912
    .line 913
    .line 914
    return-object v5

    .line 915
    :cond_13
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->m()V

    .line 916
    .line 917
    .line 918
    return-object v5

    .line 919
    :pswitch_26
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 920
    .line 921
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 922
    .line 923
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 924
    .line 925
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 926
    .line 927
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 928
    .line 929
    .line 930
    move-result p0

    .line 931
    if-lez p0, :cond_1b

    .line 932
    .line 933
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e()Z

    .line 934
    .line 935
    .line 936
    move-result p0

    .line 937
    if-eqz p0, :cond_14

    .line 938
    .line 939
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->m()V

    .line 940
    .line 941
    .line 942
    return-object v5

    .line 943
    :cond_14
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->l()V

    .line 944
    .line 945
    .line 946
    return-object v5

    .line 947
    :pswitch_27
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->l()V

    .line 948
    .line 949
    .line 950
    return-object v5

    .line 951
    :pswitch_28
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->m()V

    .line 952
    .line 953
    .line 954
    return-object v5

    .line 955
    :pswitch_29
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->j()V

    .line 956
    .line 957
    .line 958
    return-object v5

    .line 959
    :pswitch_2a
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->h()V

    .line 960
    .line 961
    .line 962
    return-object v5

    .line 963
    :pswitch_2b
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 964
    .line 965
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 966
    .line 967
    iget-object v0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 968
    .line 969
    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 970
    .line 971
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 972
    .line 973
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 974
    .line 975
    .line 976
    move-result v1

    .line 977
    if-lez v1, :cond_1b

    .line 978
    .line 979
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e()Z

    .line 980
    .line 981
    .line 982
    move-result v1

    .line 983
    if-eqz v1, :cond_15

    .line 984
    .line 985
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 986
    .line 987
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 988
    .line 989
    .line 990
    move-result p0

    .line 991
    if-lez p0, :cond_1b

    .line 992
    .line 993
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->d()Ljava/lang/Integer;

    .line 994
    .line 995
    .line 996
    move-result-object p0

    .line 997
    if-eqz p0, :cond_1b

    .line 998
    .line 999
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 1000
    .line 1001
    .line 1002
    move-result p0

    .line 1003
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 1004
    .line 1005
    .line 1006
    return-object v5

    .line 1007
    :cond_15
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 1008
    .line 1009
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1010
    .line 1011
    .line 1012
    move-result p0

    .line 1013
    if-lez p0, :cond_1b

    .line 1014
    .line 1015
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->c()Ljava/lang/Integer;

    .line 1016
    .line 1017
    .line 1018
    move-result-object p0

    .line 1019
    if-eqz p0, :cond_1b

    .line 1020
    .line 1021
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 1022
    .line 1023
    .line 1024
    move-result p0

    .line 1025
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 1026
    .line 1027
    .line 1028
    return-object v5

    .line 1029
    :pswitch_2c
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1030
    .line 1031
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 1032
    .line 1033
    iget-object v0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 1034
    .line 1035
    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 1036
    .line 1037
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 1038
    .line 1039
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1040
    .line 1041
    .line 1042
    move-result v1

    .line 1043
    if-lez v1, :cond_1b

    .line 1044
    .line 1045
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e()Z

    .line 1046
    .line 1047
    .line 1048
    move-result v1

    .line 1049
    if-eqz v1, :cond_16

    .line 1050
    .line 1051
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 1052
    .line 1053
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1054
    .line 1055
    .line 1056
    move-result p0

    .line 1057
    if-lez p0, :cond_1b

    .line 1058
    .line 1059
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->c()Ljava/lang/Integer;

    .line 1060
    .line 1061
    .line 1062
    move-result-object p0

    .line 1063
    if-eqz p0, :cond_1b

    .line 1064
    .line 1065
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 1066
    .line 1067
    .line 1068
    move-result p0

    .line 1069
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 1070
    .line 1071
    .line 1072
    return-object v5

    .line 1073
    :cond_16
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 1074
    .line 1075
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1076
    .line 1077
    .line 1078
    move-result p0

    .line 1079
    if-lez p0, :cond_1b

    .line 1080
    .line 1081
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->d()Ljava/lang/Integer;

    .line 1082
    .line 1083
    .line 1084
    move-result-object p0

    .line 1085
    if-eqz p0, :cond_1b

    .line 1086
    .line 1087
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 1088
    .line 1089
    .line 1090
    move-result p0

    .line 1091
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 1092
    .line 1093
    .line 1094
    return-object v5

    .line 1095
    :pswitch_2d
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1096
    .line 1097
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 1098
    .line 1099
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 1100
    .line 1101
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 1102
    .line 1103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 1104
    .line 1105
    .line 1106
    move-result p0

    .line 1107
    if-lez p0, :cond_1b

    .line 1108
    .line 1109
    iget-wide v0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 1110
    .line 1111
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 1112
    .line 1113
    .line 1114
    move-result p0

    .line 1115
    if-eqz p0, :cond_17

    .line 1116
    .line 1117
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->k()V

    .line 1118
    .line 1119
    .line 1120
    return-object v5

    .line 1121
    :cond_17
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e()Z

    .line 1122
    .line 1123
    .line 1124
    move-result p0

    .line 1125
    iget-wide v0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 1126
    .line 1127
    if-eqz p0, :cond_18

    .line 1128
    .line 1129
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->e(J)I

    .line 1130
    .line 1131
    .line 1132
    move-result p0

    .line 1133
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 1134
    .line 1135
    .line 1136
    return-object v5

    .line 1137
    :cond_18
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 1138
    .line 1139
    .line 1140
    move-result p0

    .line 1141
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 1142
    .line 1143
    .line 1144
    return-object v5

    .line 1145
    :pswitch_2e
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1146
    .line 1147
    iput-object v7, p0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 1148
    .line 1149
    iget-object p0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 1150
    .line 1151
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 1152
    .line 1153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 1154
    .line 1155
    .line 1156
    move-result p0

    .line 1157
    if-lez p0, :cond_1b

    .line 1158
    .line 1159
    iget-wide v0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 1160
    .line 1161
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 1162
    .line 1163
    .line 1164
    move-result p0

    .line 1165
    if-eqz p0, :cond_19

    .line 1166
    .line 1167
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g()V

    .line 1168
    .line 1169
    .line 1170
    return-object v5

    .line 1171
    :cond_19
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->e()Z

    .line 1172
    .line 1173
    .line 1174
    move-result p0

    .line 1175
    iget-wide v0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 1176
    .line 1177
    if-eqz p0, :cond_1a

    .line 1178
    .line 1179
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 1180
    .line 1181
    .line 1182
    move-result p0

    .line 1183
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 1184
    .line 1185
    .line 1186
    return-object v5

    .line 1187
    :cond_1a
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->e(J)I

    .line 1188
    .line 1189
    .line 1190
    move-result p0

    .line 1191
    invoke-virtual {p1, p0, p0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->o(II)V

    .line 1192
    .line 1193
    .line 1194
    :cond_1b
    :pswitch_2f
    return-object v5

    .line 1195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_2f
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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
        :pswitch_2f
    .end packed-switch
.end method
