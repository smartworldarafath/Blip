.class final Landroidx/window/layout/util/BoundsHelperApi28Impl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/window/layout/util/BoundsHelper;


# static fields
.field public static final a:Landroidx/window/layout/util/BoundsHelperApi28Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/window/layout/util/BoundsHelperApi28Impl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/window/layout/util/BoundsHelperApi28Impl;->a:Landroidx/window/layout/util/BoundsHelperApi28Impl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 10

    .line 1
    const-string p0, "BoundsHelper"

    .line 2
    .line 3
    new-instance v0, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    :try_start_0
    const-class v4, Landroid/content/res/Configuration;

    .line 19
    .line 20
    const-string v5, "windowConfiguration"

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v5, "getBounds"

    .line 44
    .line 45
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    check-cast v1, Landroid/graphics/Rect;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception v1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const-string v5, "getAppBounds"

    .line 69
    .line 70
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    check-cast v1, Landroid/graphics/Rect;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :goto_0
    instance-of v4, v1, Ljava/lang/NoSuchFieldException;

    .line 88
    .line 89
    if-nez v4, :cond_2

    .line 90
    .line 91
    instance-of v4, v1, Ljava/lang/NoSuchMethodException;

    .line 92
    .line 93
    if-nez v4, :cond_2

    .line 94
    .line 95
    instance-of v4, v1, Ljava/lang/IllegalAccessException;

    .line 96
    .line 97
    if-nez v4, :cond_2

    .line 98
    .line 99
    instance-of v4, v1, Ljava/lang/reflect/InvocationTargetException;

    .line 100
    .line 101
    if-eqz v4, :cond_1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    throw v1

    .line 105
    :cond_2
    :goto_1
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 117
    .line 118
    .line 119
    :goto_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    new-instance v4, Landroid/graphics/Point;

    .line 128
    .line 129
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    const/4 v6, 0x0

    .line 140
    if-nez v5, :cond_6

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    const-string v7, "dimen"

    .line 147
    .line 148
    const-string v8, "android"

    .line 149
    .line 150
    const-string v9, "navigation_bar_height"

    .line 151
    .line 152
    invoke-virtual {v5, v9, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-lez v7, :cond_3

    .line 157
    .line 158
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    goto :goto_3

    .line 163
    :cond_3
    move v5, v6

    .line 164
    :goto_3
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 165
    .line 166
    add-int/2addr v7, v5

    .line 167
    iget v8, v4, Landroid/graphics/Point;->y:I

    .line 168
    .line 169
    if-ne v7, v8, :cond_4

    .line 170
    .line 171
    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_4
    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 175
    .line 176
    add-int/2addr v7, v5

    .line 177
    iget v8, v4, Landroid/graphics/Point;->x:I

    .line 178
    .line 179
    if-ne v7, v8, :cond_5

    .line 180
    .line 181
    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_5
    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 185
    .line 186
    if-ne v7, v5, :cond_6

    .line 187
    .line 188
    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 189
    .line 190
    :cond_6
    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    iget v7, v4, Landroid/graphics/Point;->x:I

    .line 195
    .line 196
    if-lt v5, v7, :cond_7

    .line 197
    .line 198
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    iget v7, v4, Landroid/graphics/Point;->y:I

    .line 203
    .line 204
    if-ge v5, v7, :cond_e

    .line 205
    .line 206
    :cond_7
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-nez p1, :cond_e

    .line 211
    .line 212
    :try_start_1
    const-string p1, "android.view.DisplayInfo"

    .line 213
    .line 214
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    const-string v7, "getDisplayInfo"

    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    filled-new-array {v8}, [Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-virtual {v5, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 248
    .line 249
    .line 250
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    const-string v5, "displayCutout"

    .line 262
    .line 263
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    instance-of v1, p1, Landroid/view/DisplayCutout;

    .line 275
    .line 276
    if-eqz v1, :cond_a

    .line 277
    .line 278
    check-cast p1, Landroid/view/DisplayCutout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    .line 280
    move-object v3, p1

    .line 281
    goto :goto_6

    .line 282
    :catch_1
    move-exception p1

    .line 283
    instance-of v1, p1, Ljava/lang/ClassNotFoundException;

    .line 284
    .line 285
    if-nez v1, :cond_9

    .line 286
    .line 287
    instance-of v1, p1, Ljava/lang/NoSuchMethodException;

    .line 288
    .line 289
    if-nez v1, :cond_9

    .line 290
    .line 291
    instance-of v1, p1, Ljava/lang/NoSuchFieldException;

    .line 292
    .line 293
    if-nez v1, :cond_9

    .line 294
    .line 295
    instance-of v1, p1, Ljava/lang/IllegalAccessException;

    .line 296
    .line 297
    if-nez v1, :cond_9

    .line 298
    .line 299
    instance-of v1, p1, Ljava/lang/reflect/InvocationTargetException;

    .line 300
    .line 301
    if-nez v1, :cond_9

    .line 302
    .line 303
    instance-of v1, p1, Ljava/lang/InstantiationException;

    .line 304
    .line 305
    if-eqz v1, :cond_8

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_8
    throw p1

    .line 309
    :cond_9
    :goto_5
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .line 311
    .line 312
    :cond_a
    :goto_6
    if-eqz v3, :cond_e

    .line 313
    .line 314
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 315
    .line 316
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-ne p0, p1, :cond_b

    .line 321
    .line 322
    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 323
    .line 324
    :cond_b
    iget p0, v4, Landroid/graphics/Point;->x:I

    .line 325
    .line 326
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 327
    .line 328
    sub-int/2addr p0, p1

    .line 329
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    if-ne p0, p1, :cond_c

    .line 334
    .line 335
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 336
    .line 337
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    add-int/2addr p1, p0

    .line 342
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 343
    .line 344
    :cond_c
    iget p0, v0, Landroid/graphics/Rect;->top:I

    .line 345
    .line 346
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    if-ne p0, p1, :cond_d

    .line 351
    .line 352
    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 353
    .line 354
    :cond_d
    iget p0, v4, Landroid/graphics/Point;->y:I

    .line 355
    .line 356
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 357
    .line 358
    sub-int/2addr p0, p1

    .line 359
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    if-ne p0, p1, :cond_e

    .line 364
    .line 365
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 366
    .line 367
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    add-int/2addr p1, p0

    .line 372
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 373
    .line 374
    :cond_e
    return-object v0
.end method
