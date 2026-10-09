.class public final synthetic Lj6;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lj6;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 11

    .line 1
    iget p0, p0, Lj6;->j:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object p0, Landroidx/compose/runtime/tooling/InspectionTablesKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 10
    .line 11
    return-object v2

    .line 12
    :pswitch_0
    sget-object p0, Landroidx/compose/ui/platform/InspectionModeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 13
    .line 14
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_1
    sget p0, Lnet/blip/libblip/event/InsertAnalyticsEvent$Companion$ADAPTER$1;->w:I

    .line 18
    .line 19
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 20
    .line 21
    invoke-static {p0, p0}, Lcom/squareup/wire/ProtoAdapter$Companion;->a(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/MapProtoAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_2
    sget-object p0, Lcoil3/disk/UtilsKt;->a:Lkotlin/Lazy;

    .line 27
    .line 28
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcoil3/disk/DiskCache;

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_3
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 36
    .line 37
    sget-object p0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/android/HandlerContext;

    .line 38
    .line 39
    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext;->o:Lkotlinx/coroutines/android/HandlerContext;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_4
    sget-object p0, Landroidx/compose/runtime/HostDefaultProviderKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 43
    .line 44
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "CompositionLocal LocalHostDefaultProvider not present"

    .line 47
    .line 48
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :pswitch_5
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 53
    .line 54
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    move-object v0, v3

    .line 63
    goto :goto_2

    .line 64
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    array-length v6, v4

    .line 74
    move v8, v0

    .line 75
    move v7, v1

    .line 76
    :goto_0
    if-ge v7, v6, :cond_3

    .line 77
    .line 78
    aget-char v9, v4, v7

    .line 79
    .line 80
    if-eqz v8, :cond_1

    .line 81
    .line 82
    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-eqz v10, :cond_1

    .line 87
    .line 88
    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move v8, v1

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    if-eqz v10, :cond_2

    .line 102
    .line 103
    move v8, v0

    .line 104
    :cond_2
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :goto_2
    sget-object v4, Lcom/jaredrummler/android/device/DeviceName;->a:Landroid/content/Context;

    .line 115
    .line 116
    if-eqz v4, :cond_4

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    :try_start_0
    const-string v4, "android.app.ActivityThread"

    .line 120
    .line 121
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    const-string v5, "currentApplication"

    .line 126
    .line 127
    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :catch_0
    :try_start_1
    const-string v4, "android.app.AppGlobals"

    .line 139
    .line 140
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    const-string v5, "getInitialApplication"

    .line 145
    .line 146
    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v4, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    check-cast v4, Landroid/app/Application;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 155
    .line 156
    :goto_3
    const-string v5, "device_names"

    .line 157
    .line 158
    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const-string v5, ":"

    .line 163
    .line 164
    invoke-static {p0, v5, v3}, Ljb;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    if-eqz v6, :cond_5

    .line 173
    .line 174
    :try_start_2
    new-instance v7, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;

    .line 175
    .line 176
    new-instance v8, Lorg/json/JSONObject;

    .line 177
    .line 178
    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-direct {v7, v8}, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 182
    .line 183
    .line 184
    goto/16 :goto_8

    .line 185
    .line 186
    :catch_1
    move-exception v6

    .line 187
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    .line 189
    .line 190
    :cond_5
    :try_start_3
    new-instance v6, Lcom/jaredrummler/android/device/DeviceDatabase;

    .line 191
    .line 192
    invoke-direct {v6, v4}, Lcom/jaredrummler/android/device/DeviceDatabase;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 193
    .line 194
    .line 195
    :try_start_4
    invoke-virtual {v6}, Lcom/jaredrummler/android/device/DeviceDatabase;->h()Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    if-eqz v7, :cond_6

    .line 200
    .line 201
    new-instance v4, Lorg/json/JSONObject;

    .line 202
    .line 203
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v8, "manufacturer"

    .line 207
    .line 208
    iget-object v9, v7, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->a:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    .line 212
    .line 213
    const-string v8, "codename"

    .line 214
    .line 215
    iget-object v9, v7, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->c:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    .line 219
    .line 220
    const-string v8, "model"

    .line 221
    .line 222
    iget-object v9, v7, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->d:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    .line 226
    .line 227
    const-string v8, "market_name"

    .line 228
    .line 229
    iget-object v9, v7, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->b:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    .line 233
    .line 234
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    .line 244
    .line 245
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 246
    .line 247
    .line 248
    :try_start_5
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 249
    .line 250
    .line 251
    goto :goto_8

    .line 252
    :catch_2
    move-exception v1

    .line 253
    goto :goto_6

    .line 254
    :catchall_0
    move-exception v1

    .line 255
    goto :goto_4

    .line 256
    :cond_6
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 257
    .line 258
    .line 259
    goto :goto_7

    .line 260
    :goto_4
    :try_start_6
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :catchall_1
    move-exception v4

    .line 265
    :try_start_7
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    :goto_5
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 269
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    .line 271
    .line 272
    :goto_7
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_7

    .line 279
    .line 280
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_7

    .line 287
    .line 288
    new-instance v7, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;

    .line 289
    .line 290
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 291
    .line 292
    invoke-direct {v7, v1, p0, p0, v3}, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_8

    .line 296
    :cond_7
    new-instance v7, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;

    .line 297
    .line 298
    invoke-direct {v7, v2, v2, p0, v3}, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    :goto_8
    iget-object p0, v7, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->b:Ljava/lang/String;

    .line 302
    .line 303
    if-nez p0, :cond_8

    .line 304
    .line 305
    move-object v2, v0

    .line 306
    goto :goto_9

    .line 307
    :cond_8
    move-object v2, p0

    .line 308
    goto :goto_9

    .line 309
    :catch_3
    const-string p0, "DeviceName must be initialized before usage."

    .line 310
    .line 311
    invoke-static {p0}, Lu2;->n(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    :goto_9
    return-object v2

    .line 315
    :pswitch_6
    :try_start_8
    sget-object p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->k:[Ljava/lang/String;

    .line 316
    .line 317
    sget-object p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->m:Lkotlin/Lazy;

    .line 318
    .line 319
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    check-cast p0, Ljava/lang/reflect/Method;

    .line 324
    .line 325
    if-eqz p0, :cond_9

    .line 326
    .line 327
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    if-eqz p0, :cond_9

    .line 332
    .line 333
    const-string v0, "beginTransaction"

    .line 334
    .line 335
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 336
    .line 337
    const-class v3, Landroid/database/sqlite/SQLiteTransactionListener;

    .line 338
    .line 339
    const-class v4, Landroid/os/CancellationSignal;

    .line 340
    .line 341
    filled-new-array {v1, v3, v1, v4}, [Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 346
    .line 347
    .line 348
    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 349
    :catchall_2
    :cond_9
    return-object v2

    .line 350
    :pswitch_7
    sget-object p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->k:[Ljava/lang/String;

    .line 351
    .line 352
    :try_start_9
    const-class p0, Landroid/database/sqlite/SQLiteDatabase;

    .line 353
    .line 354
    const-string v1, "getThreadSession"

    .line 355
    .line 356
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 361
    .line 362
    .line 363
    move-object v2, p0

    .line 364
    :catchall_3
    return-object v2

    .line 365
    :pswitch_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 366
    .line 367
    return-object p0

    .line 368
    :pswitch_9
    sget-object p0, Lnet/blip/shared/FocusBlockerKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 369
    .line 370
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 371
    .line 372
    return-object p0

    .line 373
    :pswitch_a
    sget-object p0, Landroidx/compose/material/ElevationOverlayKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 374
    .line 375
    new-instance p0, Landroidx/compose/ui/unit/Dp;

    .line 376
    .line 377
    const/4 v0, 0x0

    .line 378
    invoke-direct {p0, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 379
    .line 380
    .line 381
    return-object p0

    .line 382
    :pswitch_b
    sget-object p0, Lcom/google/accompanist/drawablepainter/DrawablePainterKt;->a:Lkotlin/Lazy;

    .line 383
    .line 384
    new-instance p0, Landroid/os/Handler;

    .line 385
    .line 386
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 391
    .line 392
    .line 393
    return-object p0

    .line 394
    :pswitch_c
    sget p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a:F

    .line 395
    .line 396
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 397
    .line 398
    return-object p0

    .line 399
    :pswitch_d
    sget-object p0, Lnet/blip/shared/DisabledContentKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 400
    .line 401
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 402
    .line 403
    return-object p0

    .line 404
    :pswitch_e
    sget-object p0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 405
    .line 406
    new-array v0, v1, [Lkotlin/Pair;

    .line 407
    .line 408
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    const-string p0, "TODO: Implement Core shutdown{}"

    .line 412
    .line 413
    invoke-static {p0, v0}, Lnet/blip/libblip/Logger;->l(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 414
    .line 415
    .line 416
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 417
    .line 418
    return-object p0

    .line 419
    :pswitch_f
    sget-object p0, Landroidx/compose/material/ContentAlphaKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 420
    .line 421
    const/high16 p0, 0x3f800000    # 1.0f

    .line 422
    .line 423
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    return-object p0

    .line 428
    :pswitch_10
    const-string p0, "Unexpected call to default provider"

    .line 429
    .line 430
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 431
    .line 432
    .line 433
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 434
    .line 435
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 436
    .line 437
    .line 438
    throw p0

    .line 439
    :pswitch_11
    const-string p0, "LocalViewConfiguration"

    .line 440
    .line 441
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    throw v2

    .line 445
    :pswitch_12
    const-string p0, "LocalUriHandler"

    .line 446
    .line 447
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw v2

    .line 451
    :pswitch_13
    const-string p0, "LocalTextToolbar"

    .line 452
    .line 453
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    throw v2

    .line 457
    :pswitch_14
    const-string p0, "LocalProvidableLocaleList"

    .line 458
    .line 459
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw v2

    .line 463
    :pswitch_15
    const-string p0, "LocalLayoutDirection"

    .line 464
    .line 465
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    throw v2

    .line 469
    :pswitch_16
    const-string p0, "LocalInputManager"

    .line 470
    .line 471
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    throw v2

    .line 475
    :pswitch_17
    const-string p0, "LocalHapticFeedback"

    .line 476
    .line 477
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw v2

    .line 481
    :pswitch_18
    const-string p0, "LocalFontLoader"

    .line 482
    .line 483
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw v2

    .line 487
    :pswitch_19
    const-string p0, "LocalFocusManager"

    .line 488
    .line 489
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw v2

    .line 493
    :pswitch_1a
    const-string p0, "LocalFontFamilyResolver"

    .line 494
    .line 495
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    throw v2

    .line 499
    :pswitch_1b
    const-string p0, "LocalDensity"

    .line 500
    .line 501
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw v2

    .line 505
    :pswitch_1c
    const-string p0, "LocalGraphicsContext"

    .line 506
    .line 507
    invoke-static {p0}, Landroidx/compose/ui/platform/CompositionLocalsKt;->b(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    throw v2

    .line 511
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
