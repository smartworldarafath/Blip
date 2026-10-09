.class public final synthetic Landroidx/navigation/compose/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/compose/b;->j:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Landroid/os/Bundle;

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/navigation/compose/b;->j:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Landroidx/navigation/compose/NavHostControllerKt__NavHostController_androidKt;->a(Landroid/content/Context;)Landroidx/navigation/NavHostController;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v2, v1, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 25
    .line 26
    iget-object v3, v2, Landroidx/navigation/internal/NavControllerImpl;->n:Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    move-object/from16 p0, v4

    .line 33
    .line 34
    goto/16 :goto_7

    .line 35
    .line 36
    :cond_1
    const-string v6, "android-support-nav:controller:navigatorState"

    .line 37
    .line 38
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v6}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v4

    .line 55
    :cond_3
    move-object v7, v4

    .line 56
    :goto_0
    iput-object v7, v2, Landroidx/navigation/internal/NavControllerImpl;->d:Landroid/os/Bundle;

    .line 57
    .line 58
    const-string v6, "android-support-nav:controller:backStack"

    .line 59
    .line 60
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    const-class v8, Landroid/os/Bundle;

    .line 65
    .line 66
    if-eqz v7, :cond_5

    .line 67
    .line 68
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-static {v7}, Lkotlin/jvm/JvmClassMappingKt;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-static {v0, v6, v7}, Landroidx/core/os/BundleCompat;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    if-eqz v7, :cond_4

    .line 81
    .line 82
    new-array v6, v5, [Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-interface {v7, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, [Landroid/os/Bundle;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    invoke-static {v6}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v4

    .line 95
    :cond_5
    move-object v6, v4

    .line 96
    :goto_1
    iput-object v6, v2, Landroidx/navigation/internal/NavControllerImpl;->e:[Landroid/os/Bundle;

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 99
    .line 100
    .line 101
    const-string v6, "android-support-nav:controller:backStackDestIds"

    .line 102
    .line 103
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_7

    .line 108
    .line 109
    const-string v7, "android-support-nav:controller:backStackIds"

    .line 110
    .line 111
    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_7

    .line 116
    .line 117
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    if-eqz v9, :cond_9

    .line 122
    .line 123
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    if-eqz v6, :cond_8

    .line 128
    .line 129
    array-length v7, v9

    .line 130
    move v10, v5

    .line 131
    move v11, v10

    .line 132
    :goto_2
    if-ge v10, v7, :cond_7

    .line 133
    .line 134
    aget v12, v9, v10

    .line 135
    .line 136
    add-int/lit8 v13, v11, 0x1

    .line 137
    .line 138
    iget-object v14, v2, Landroidx/navigation/internal/NavControllerImpl;->m:Ljava/util/LinkedHashMap;

    .line 139
    .line 140
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v15

    .line 148
    move-object/from16 p0, v4

    .line 149
    .line 150
    const-string v4, ""

    .line 151
    .line 152
    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-nez v4, :cond_6

    .line 157
    .line 158
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Ljava/lang/String;

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    move-object/from16 v4, p0

    .line 166
    .line 167
    :goto_3
    invoke-interface {v14, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    add-int/lit8 v10, v10, 0x1

    .line 171
    .line 172
    move-object/from16 v4, p0

    .line 173
    .line 174
    move v11, v13

    .line 175
    goto :goto_2

    .line 176
    :cond_7
    move-object/from16 p0, v4

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_8
    move-object/from16 p0, v4

    .line 180
    .line 181
    invoke-static {v7}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p0

    .line 185
    :cond_9
    move-object/from16 p0, v4

    .line 186
    .line 187
    invoke-static {v6}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p0

    .line 191
    :goto_4
    const-string v2, "android-support-nav:controller:backStackStates"

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_e

    .line 198
    .line 199
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    if-eqz v4, :cond_d

    .line 204
    .line 205
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_e

    .line 214
    .line 215
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    check-cast v4, Ljava/lang/String;

    .line 220
    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v7, "android-support-nav:controller:backStackStates:"

    .line 224
    .line 225
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    if-eqz v6, :cond_a

    .line 240
    .line 241
    invoke-static {v7, v4}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    invoke-static {v7}, Lkotlin/jvm/JvmClassMappingKt;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-static {v0, v6, v7}, Landroidx/core/os/BundleCompat;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    if-eqz v7, :cond_c

    .line 258
    .line 259
    new-instance v6, Lkotlin/collections/ArrayDeque;

    .line 260
    .line 261
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    invoke-direct {v6, v9}, Lkotlin/collections/ArrayDeque;-><init>(I)V

    .line 266
    .line 267
    .line 268
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    if-eqz v9, :cond_b

    .line 277
    .line 278
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v9

    .line 282
    check-cast v9, Landroid/os/Bundle;

    .line 283
    .line 284
    new-instance v10, Landroidx/navigation/NavBackStackEntryState;

    .line 285
    .line 286
    invoke-direct {v10, v9}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroid/os/Bundle;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6, v10}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_b
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_c
    invoke-static {v6}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw p0

    .line 301
    :cond_d
    invoke-static {v2}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw p0

    .line 305
    :cond_e
    :goto_7
    if-eqz v0, :cond_11

    .line 306
    .line 307
    const-string v2, "android-support-nav:controller:deepLinkHandled"

    .line 308
    .line 309
    invoke-virtual {v0, v2, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    if-nez v3, :cond_f

    .line 314
    .line 315
    const/4 v4, 0x1

    .line 316
    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-ne v0, v4, :cond_f

    .line 321
    .line 322
    move-object/from16 v4, p0

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    :goto_8
    if-eqz v4, :cond_10

    .line 330
    .line 331
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    :cond_10
    iput-boolean v5, v1, Landroidx/navigation/NavController;->e:Z

    .line 336
    .line 337
    :cond_11
    return-object v1
.end method
