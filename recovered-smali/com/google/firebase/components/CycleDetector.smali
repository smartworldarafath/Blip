.class abstract Lcom/google/firebase/components/CycleDetector;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/CycleDetector$ComponentNode;,
        Lcom/google/firebase/components/CycleDetector$Dep;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/ArrayList;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v2, :cond_5

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/google/firebase/components/Component;

    .line 27
    .line 28
    new-instance v5, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 29
    .line 30
    invoke-direct {v5, v2}, Lcom/google/firebase/components/CycleDetector$ComponentNode;-><init>(Lcom/google/firebase/components/Component;)V

    .line 31
    .line 32
    .line 33
    iget-object v6, v2, Lcom/google/firebase/components/Component;->b:Ljava/util/Set;

    .line 34
    .line 35
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    check-cast v7, Lcom/google/firebase/components/Qualified;

    .line 50
    .line 51
    new-instance v8, Lcom/google/firebase/components/CycleDetector$Dep;

    .line 52
    .line 53
    iget v9, v2, Lcom/google/firebase/components/Component;->e:I

    .line 54
    .line 55
    if-nez v9, :cond_1

    .line 56
    .line 57
    move v9, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move v9, v3

    .line 60
    :goto_1
    xor-int/lit8 v10, v9, 0x1

    .line 61
    .line 62
    invoke-direct {v8, v7, v10}, Lcom/google/firebase/components/CycleDetector$Dep;-><init>(Lcom/google/firebase/components/Qualified;Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-nez v10, :cond_2

    .line 70
    .line 71
    new-instance v10, Ljava/util/HashSet;

    .line 72
    .line 73
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Ljava/util/Set;

    .line 84
    .line 85
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-nez v10, :cond_4

    .line 90
    .line 91
    if-nez v9, :cond_3

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    const-string p0, "Multiple components provide "

    .line 95
    .line 96
    const-string v0, "."

    .line 97
    .line 98
    invoke-static {p0, v7, v0}, Lio/sentry/d;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    :goto_2
    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_b

    .line 119
    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/util/Set;

    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_6

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 141
    .line 142
    iget-object v6, v5, Lcom/google/firebase/components/CycleDetector$ComponentNode;->a:Lcom/google/firebase/components/Component;

    .line 143
    .line 144
    iget-object v6, v6, Lcom/google/firebase/components/Component;->c:Ljava/util/Set;

    .line 145
    .line 146
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-eqz v7, :cond_7

    .line 155
    .line 156
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    check-cast v7, Lcom/google/firebase/components/Dependency;

    .line 161
    .line 162
    iget v8, v7, Lcom/google/firebase/components/Dependency;->c:I

    .line 163
    .line 164
    if-nez v8, :cond_8

    .line 165
    .line 166
    new-instance v8, Lcom/google/firebase/components/CycleDetector$Dep;

    .line 167
    .line 168
    iget-object v9, v7, Lcom/google/firebase/components/Dependency;->a:Lcom/google/firebase/components/Qualified;

    .line 169
    .line 170
    iget v7, v7, Lcom/google/firebase/components/Dependency;->b:I

    .line 171
    .line 172
    const/4 v10, 0x2

    .line 173
    if-ne v7, v10, :cond_9

    .line 174
    .line 175
    move v7, v4

    .line 176
    goto :goto_4

    .line 177
    :cond_9
    move v7, v3

    .line 178
    :goto_4
    invoke-direct {v8, v9, v7}, Lcom/google/firebase/components/CycleDetector$Dep;-><init>(Lcom/google/firebase/components/Qualified;Z)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    check-cast v7, Ljava/util/Set;

    .line 186
    .line 187
    if-nez v7, :cond_a

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_a
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-eqz v8, :cond_8

    .line 199
    .line 200
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    check-cast v8, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 205
    .line 206
    iget-object v9, v5, Lcom/google/firebase/components/CycleDetector$ComponentNode;->b:Ljava/util/HashSet;

    .line 207
    .line 208
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    iget-object v8, v8, Lcom/google/firebase/components/CycleDetector$ComponentNode;->c:Ljava/util/HashSet;

    .line 212
    .line 213
    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_b
    new-instance v1, Ljava/util/HashSet;

    .line 218
    .line 219
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eqz v2, :cond_c

    .line 235
    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    check-cast v2, Ljava/util/Set;

    .line 241
    .line 242
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    .line 247
    .line 248
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    :cond_d
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-eqz v4, :cond_e

    .line 260
    .line 261
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    check-cast v4, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 266
    .line 267
    iget-object v5, v4, Lcom/google/firebase/components/CycleDetector$ComponentNode;->c:Ljava/util/HashSet;

    .line 268
    .line 269
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_d

    .line 274
    .line 275
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_e
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-nez v2, :cond_10

    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    check-cast v2, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 294
    .line 295
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    add-int/lit8 v3, v3, 0x1

    .line 299
    .line 300
    iget-object v4, v2, Lcom/google/firebase/components/CycleDetector$ComponentNode;->b:Ljava/util/HashSet;

    .line 301
    .line 302
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    :cond_f
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    if-eqz v5, :cond_e

    .line 311
    .line 312
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    check-cast v5, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 317
    .line 318
    iget-object v6, v5, Lcom/google/firebase/components/CycleDetector$ComponentNode;->c:Ljava/util/HashSet;

    .line 319
    .line 320
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    iget-object v6, v5, Lcom/google/firebase/components/CycleDetector$ComponentNode;->c:Ljava/util/HashSet;

    .line 324
    .line 325
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    if-eqz v6, :cond_f

    .line 330
    .line 331
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 336
    .line 337
    .line 338
    move-result p0

    .line 339
    if-ne v3, p0, :cond_11

    .line 340
    .line 341
    return-void

    .line 342
    :cond_11
    new-instance p0, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    :cond_12
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-eqz v1, :cond_13

    .line 356
    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    check-cast v1, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 362
    .line 363
    iget-object v2, v1, Lcom/google/firebase/components/CycleDetector$ComponentNode;->c:Ljava/util/HashSet;

    .line 364
    .line 365
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    if-nez v2, :cond_12

    .line 370
    .line 371
    iget-object v2, v1, Lcom/google/firebase/components/CycleDetector$ComponentNode;->b:Ljava/util/HashSet;

    .line 372
    .line 373
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    if-nez v2, :cond_12

    .line 378
    .line 379
    iget-object v1, v1, Lcom/google/firebase/components/CycleDetector$ComponentNode;->a:Lcom/google/firebase/components/Component;

    .line 380
    .line 381
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_13
    new-instance v0, Lcom/google/firebase/components/DependencyCycleException;

    .line 386
    .line 387
    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object p0

    .line 391
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    const-string v2, "Dependency cycle detected: "

    .line 398
    .line 399
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p0

    .line 409
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw v0
.end method
