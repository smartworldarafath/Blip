.class public final synthetic Landroidx/compose/foundation/text/selection/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic k:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic l:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/e;->j:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/selection/e;->k:Lkotlinx/coroutines/CoroutineScope;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/selection/e;->l:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->a:Landroidx/collection/MutableObjectList;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->a:Landroidx/collection/MutableObjectList;

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;->b:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Landroidx/compose/foundation/text/TextContextMenuItems;->k:[Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/e;->j:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-wide v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 21
    .line 22
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->k()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->g:Landroidx/compose/ui/platform/Clipboard;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    move v2, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v2, v4

    .line 43
    :goto_0
    new-instance v5, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1;

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-direct {v5, v0, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;)V

    .line 47
    .line 48
    .line 49
    new-instance v7, Landroidx/compose/foundation/text/selection/d;

    .line 50
    .line 51
    iget-object v8, p0, Landroidx/compose/foundation/text/selection/e;->k:Lkotlinx/coroutines/CoroutineScope;

    .line 52
    .line 53
    invoke-direct {v7, v8, v5}, Landroidx/compose/foundation/text/selection/d;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/e;->l:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    new-instance v9, Lec;

    .line 63
    .line 64
    const/16 v10, 0xf

    .line 65
    .line 66
    invoke-direct {v9, v10, v7, v6}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    const v2, 0x1040003

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    new-instance v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 79
    .line 80
    sget-object v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuKeys;->a:Ljava/lang/Object;

    .line 81
    .line 82
    const v11, 0x1010311

    .line 83
    .line 84
    .line 85
    invoke-direct {v5, v7, v2, v11, v9}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v5}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    sget-object v2, Landroidx/compose/foundation/text/TextContextMenuItems;->k:[Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-wide v11, v2, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 98
    .line 99
    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_2

    .line 104
    .line 105
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->g:Landroidx/compose/ui/platform/Clipboard;

    .line 106
    .line 107
    if-eqz v2, :cond_2

    .line 108
    .line 109
    move v2, v3

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    move v2, v4

    .line 112
    :goto_1
    new-instance v5, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$2;

    .line 113
    .line 114
    invoke-direct {v5, v0, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$2;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;)V

    .line 115
    .line 116
    .line 117
    new-instance v7, Landroidx/compose/foundation/text/selection/d;

    .line 118
    .line 119
    invoke-direct {v7, v8, v5}, Landroidx/compose/foundation/text/selection/d;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    new-instance v9, Lec;

    .line 127
    .line 128
    invoke-direct {v9, v10, v7, v6}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    if-eqz v2, :cond_3

    .line 132
    .line 133
    const v2, 0x1040001

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    new-instance v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 141
    .line 142
    sget-object v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuKeys;->b:Ljava/lang/Object;

    .line 143
    .line 144
    const v11, 0x1010312

    .line 145
    .line 146
    .line 147
    invoke-direct {v5, v7, v2, v11, v9}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v5}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_3
    sget-object v2, Landroidx/compose/foundation/text/TextContextMenuItems;->k:[Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->k()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_4

    .line 160
    .line 161
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->w:Landroidx/compose/runtime/MutableState;

    .line 162
    .line 163
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 164
    .line 165
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    check-cast v2, Ljava/lang/Boolean;

    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_4

    .line 176
    .line 177
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->g:Landroidx/compose/ui/platform/Clipboard;

    .line 178
    .line 179
    if-eqz v2, :cond_4

    .line 180
    .line 181
    move v2, v3

    .line 182
    goto :goto_2

    .line 183
    :cond_4
    move v2, v4

    .line 184
    :goto_2
    new-instance v5, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$3;

    .line 185
    .line 186
    invoke-direct {v5, v0, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;)V

    .line 187
    .line 188
    .line 189
    new-instance v7, Landroidx/compose/foundation/text/selection/d;

    .line 190
    .line 191
    invoke-direct {v7, v8, v5}, Landroidx/compose/foundation/text/selection/d;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    new-instance v8, Lec;

    .line 199
    .line 200
    invoke-direct {v8, v10, v7, v6}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    if-eqz v2, :cond_5

    .line 204
    .line 205
    const v2, 0x104000b

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    new-instance v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 213
    .line 214
    sget-object v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuKeys;->c:Ljava/lang/Object;

    .line 215
    .line 216
    const v9, 0x1010313

    .line 217
    .line 218
    .line 219
    invoke-direct {v5, v7, v2, v9, v8}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v5}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :cond_5
    sget-object v2, Landroidx/compose/foundation/text/TextContextMenuItems;->k:[Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 226
    .line 227
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    iget-wide v7, v2, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 232
    .line 233
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->d(J)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    iget-object v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 242
    .line 243
    iget-object v5, v5, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-eq v2, v5, :cond_6

    .line 250
    .line 251
    move v2, v3

    .line 252
    goto :goto_3

    .line 253
    :cond_6
    move v2, v4

    .line 254
    :goto_3
    new-instance v5, Lgh;

    .line 255
    .line 256
    invoke-direct {v5, v0, v4}, Lgh;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 257
    .line 258
    .line 259
    new-instance v7, Lgh;

    .line 260
    .line 261
    invoke-direct {v7, v0, v3}, Lgh;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    new-instance v9, Lec;

    .line 269
    .line 270
    invoke-direct {v9, v10, v7, v5}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    if-eqz v2, :cond_7

    .line 274
    .line 275
    const v2, 0x104000d

    .line 276
    .line 277
    .line 278
    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    new-instance v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 283
    .line 284
    sget-object v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuKeys;->d:Ljava/lang/Object;

    .line 285
    .line 286
    const v8, 0x101037e

    .line 287
    .line 288
    .line 289
    invoke-direct {v5, v7, v2, v8, v9}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v5}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    :cond_7
    sget-object v2, Landroidx/compose/foundation/text/TextContextMenuItems;->k:[Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 296
    .line 297
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->k()Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-eqz v2, :cond_8

    .line 302
    .line 303
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    iget-wide v7, v2, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 308
    .line 309
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-eqz v2, :cond_8

    .line 314
    .line 315
    goto :goto_4

    .line 316
    :cond_8
    move v3, v4

    .line 317
    :goto_4
    new-instance v2, Lgh;

    .line 318
    .line 319
    const/4 v5, 0x2

    .line 320
    invoke-direct {v2, v0, v5}, Lgh;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    new-instance v0, Lec;

    .line 328
    .line 329
    invoke-direct {v0, v10, v2, v6}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    if-eqz v3, :cond_9

    .line 333
    .line 334
    const v2, 0x104001a

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    new-instance v2, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 342
    .line 343
    sget-object v3, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuKeys;->e:Ljava/lang/Object;

    .line 344
    .line 345
    invoke-direct {v2, v3, p0, v4, v0}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, v2}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    :cond_9
    invoke-virtual {p1, v1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 355
    .line 356
    return-object p0
.end method
