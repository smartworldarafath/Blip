.class public final synthetic Lio/sentry/kotlin/multiplatform/extensions/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/SentryOptions$BeforeSendCallback;
.implements Lio/sentry/util/LazyEvaluator$Evaluator;
.implements Lio/sentry/Scope$IWithPropagationContext;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/kotlin/multiplatform/extensions/a;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/kotlin/multiplatform/extensions/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/util/LoadClass;Ljava/lang/Object;I)V
    .locals 0

    .line 9
    iput p3, p0, Lio/sentry/kotlin/multiplatform/extensions/a;->j:I

    iput-object p2, p0, Lio/sentry/kotlin/multiplatform/extensions/a;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/sentry/PropagationContext;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/kotlin/multiplatform/extensions/a;->k:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lio/sentry/IScope;

    .line 4
    .line 5
    new-instance p1, Lio/sentry/PropagationContext;

    .line 6
    .line 7
    invoke-direct {p1}, Lio/sentry/PropagationContext;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, p1}, Lio/sentry/IScope;->L(Lio/sentry/PropagationContext;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public b(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 9

    .line 1
    iget-object p0, p0, Lio/sentry/kotlin/multiplatform/extensions/a;->k:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lio/sentry/kotlin/multiplatform/SentryOptions;

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/kotlin/multiplatform/SentryOptions;->e:Lma;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance p2, Lio/sentry/kotlin/multiplatform/SentryEvent;

    .line 11
    .line 12
    sget-object v0, Lio/sentry/kotlin/multiplatform/protocol/SentryId;->c:Lio/sentry/kotlin/multiplatform/protocol/SentryId;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryBaseEvent;->a:Lio/sentry/kotlin/multiplatform/protocol/SentryId;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryBaseEvent;->b:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryBaseEvent;->c:Ljava/util/AbstractMap;

    .line 35
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryEvent;->g:Ljava/util/List;

    .line 42
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lio/sentry/kotlin/multiplatform/protocol/SentryId;

    .line 49
    .line 50
    iget-object v1, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Lio/sentry/kotlin/multiplatform/protocol/SentryId;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryBaseEvent;->a:Lio/sentry/kotlin/multiplatform/protocol/SentryId;

    .line 60
    .line 61
    iget-object v0, p1, Lio/sentry/SentryEvent;->D:Lio/sentry/SentryLevel;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-static {v0}, Lio/sentry/kotlin/multiplatform/extensions/SentryLevelExtensions_jvmKt;->b(Lio/sentry/SentryLevel;)Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move-object v0, v1

    .line 72
    :goto_0
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryEvent;->d:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 73
    .line 74
    iget-object v0, p1, Lio/sentry/SentryEvent;->z:Lio/sentry/protocol/Message;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    new-instance v2, Lio/sentry/kotlin/multiplatform/protocol/Message;

    .line 79
    .line 80
    iget-object v3, v0, Lio/sentry/protocol/Message;->k:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v4, v0, Lio/sentry/protocol/Message;->l:Ljava/util/List;

    .line 83
    .line 84
    iget-object v0, v0, Lio/sentry/protocol/Message;->j:Ljava/lang/String;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v3, v2, Lio/sentry/kotlin/multiplatform/protocol/Message;->a:Ljava/lang/String;

    .line 90
    .line 91
    iput-object v4, v2, Lio/sentry/kotlin/multiplatform/protocol/Message;->b:Ljava/util/List;

    .line 92
    .line 93
    iput-object v0, v2, Lio/sentry/kotlin/multiplatform/protocol/Message;->c:Ljava/lang/String;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move-object v2, v1

    .line 97
    :goto_1
    iput-object v2, p2, Lio/sentry/kotlin/multiplatform/SentryEvent;->e:Lio/sentry/kotlin/multiplatform/protocol/Message;

    .line 98
    .line 99
    iget-object v0, p1, Lio/sentry/SentryEvent;->A:Ljava/lang/String;

    .line 100
    .line 101
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryEvent;->f:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->o:Ljava/lang/String;

    .line 104
    .line 105
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryEvent;->h:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->p:Ljava/lang/String;

    .line 108
    .line 109
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryEvent;->i:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 112
    .line 113
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryEvent;->j:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    new-instance v2, Lio/sentry/kotlin/multiplatform/protocol/User;

    .line 120
    .line 121
    invoke-direct {v2, v1}, Lio/sentry/kotlin/multiplatform/protocol/User;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v3, v0, Lio/sentry/protocol/User;->k:Ljava/lang/String;

    .line 125
    .line 126
    iput-object v3, v2, Lio/sentry/kotlin/multiplatform/protocol/User;->b:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v3, v0, Lio/sentry/protocol/User;->l:Ljava/lang/String;

    .line 129
    .line 130
    iput-object v3, v2, Lio/sentry/kotlin/multiplatform/protocol/User;->c:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v3, v0, Lio/sentry/protocol/User;->j:Ljava/lang/String;

    .line 133
    .line 134
    iput-object v3, v2, Lio/sentry/kotlin/multiplatform/protocol/User;->a:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, v0, Lio/sentry/protocol/User;->m:Ljava/lang/String;

    .line 137
    .line 138
    iput-object v3, v2, Lio/sentry/kotlin/multiplatform/protocol/User;->d:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v3, v0, Lio/sentry/protocol/User;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 141
    .line 142
    if-eqz v3, :cond_3

    .line 143
    .line 144
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 145
    .line 146
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    move-object v4, v1

    .line 151
    :goto_2
    iput-object v4, v2, Lio/sentry/kotlin/multiplatform/protocol/User;->e:Ljava/util/LinkedHashMap;

    .line 152
    .line 153
    iget-object v0, v0, Lio/sentry/protocol/User;->q:Ljava/util/AbstractMap;

    .line 154
    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 158
    .line 159
    invoke-direct {v3, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    move-object v3, v1

    .line 164
    :goto_3
    iput-object v3, v2, Lio/sentry/kotlin/multiplatform/protocol/User;->f:Ljava/util/LinkedHashMap;

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_5
    move-object v2, v1

    .line 168
    :goto_4
    iput-object v2, p2, Lio/sentry/kotlin/multiplatform/SentryEvent;->k:Lio/sentry/kotlin/multiplatform/protocol/User;

    .line 169
    .line 170
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->t:Ljava/lang/String;

    .line 171
    .line 172
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryEvent;->l:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->u:Ljava/lang/String;

    .line 175
    .line 176
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryEvent;->m:Ljava/lang/String;

    .line 177
    .line 178
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 184
    .line 185
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 186
    .line 187
    .line 188
    iget-object v3, v0, Lio/sentry/protocol/Contexts;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_7

    .line 202
    .line 203
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v0, v4}, Lio/sentry/protocol/Contexts;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    if-eqz v5, :cond_6

    .line 214
    .line 215
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_7
    iget-object v0, p1, Lio/sentry/SentryEvent;->F:Ljava/util/List;

    .line 220
    .line 221
    if-eqz v0, :cond_8

    .line 222
    .line 223
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryEvent;->g:Ljava/util/List;

    .line 224
    .line 225
    :cond_8
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->d()Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    const/16 v2, 0xa

    .line 230
    .line 231
    if-eqz v0, :cond_a

    .line 232
    .line 233
    new-instance v3, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-eqz v4, :cond_9

    .line 251
    .line 252
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    check-cast v4, Lio/sentry/protocol/SentryException;

    .line 257
    .line 258
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    new-instance v5, Lio/sentry/kotlin/multiplatform/protocol/SentryException;

    .line 262
    .line 263
    iget-object v6, v4, Lio/sentry/protocol/SentryException;->j:Ljava/lang/String;

    .line 264
    .line 265
    iget-object v7, v4, Lio/sentry/protocol/SentryException;->k:Ljava/lang/String;

    .line 266
    .line 267
    iget-object v8, v4, Lio/sentry/protocol/SentryException;->l:Ljava/lang/String;

    .line 268
    .line 269
    iget-object v4, v4, Lio/sentry/protocol/SentryException;->m:Ljava/lang/Long;

    .line 270
    .line 271
    invoke-direct {v5, v6, v7, v8, v4}, Lio/sentry/kotlin/multiplatform/protocol/SentryException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    .line 282
    .line 283
    :cond_a
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->v:Ljava/util/List;

    .line 284
    .line 285
    if-eqz v0, :cond_d

    .line 286
    .line 287
    new-instance v3, Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    .line 295
    .line 296
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-eqz v4, :cond_c

    .line 305
    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    check-cast v4, Lio/sentry/Breadcrumb;

    .line 311
    .line 312
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    new-instance v5, Lio/sentry/kotlin/multiplatform/protocol/Breadcrumb;

    .line 316
    .line 317
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 318
    .line 319
    .line 320
    iput-object v1, v5, Lio/sentry/kotlin/multiplatform/protocol/Breadcrumb;->a:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 321
    .line 322
    iput-object v1, v5, Lio/sentry/kotlin/multiplatform/protocol/Breadcrumb;->e:Ljava/util/LinkedHashMap;

    .line 323
    .line 324
    iget-object v6, v4, Lio/sentry/Breadcrumb;->m:Ljava/lang/String;

    .line 325
    .line 326
    iput-object v6, v5, Lio/sentry/kotlin/multiplatform/protocol/Breadcrumb;->c:Ljava/lang/String;

    .line 327
    .line 328
    iget-object v6, v4, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 329
    .line 330
    iput-object v6, v5, Lio/sentry/kotlin/multiplatform/protocol/Breadcrumb;->b:Ljava/lang/String;

    .line 331
    .line 332
    iget-object v6, v4, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 333
    .line 334
    iput-object v6, v5, Lio/sentry/kotlin/multiplatform/protocol/Breadcrumb;->d:Ljava/lang/String;

    .line 335
    .line 336
    iget-object v6, v4, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 337
    .line 338
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 342
    .line 343
    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 344
    .line 345
    .line 346
    iput-object v7, v5, Lio/sentry/kotlin/multiplatform/protocol/Breadcrumb;->e:Ljava/util/LinkedHashMap;

    .line 347
    .line 348
    iget-object v4, v4, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 349
    .line 350
    if-eqz v4, :cond_b

    .line 351
    .line 352
    invoke-static {v4}, Lio/sentry/kotlin/multiplatform/extensions/SentryLevelExtensions_jvmKt;->b(Lio/sentry/SentryLevel;)Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    goto :goto_8

    .line 357
    :cond_b
    move-object v4, v1

    .line 358
    :goto_8
    iput-object v4, v5, Lio/sentry/kotlin/multiplatform/protocol/Breadcrumb;->a:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 359
    .line 360
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 367
    .line 368
    .line 369
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryBaseEvent;->b:Ljava/util/ArrayList;

    .line 370
    .line 371
    :cond_d
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 372
    .line 373
    if-eqz v0, :cond_e

    .line 374
    .line 375
    iput-object v0, p2, Lio/sentry/kotlin/multiplatform/SentryBaseEvent;->c:Ljava/util/AbstractMap;

    .line 376
    .line 377
    :cond_e
    invoke-virtual {p0, p2}, Lma;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    check-cast p0, Lio/sentry/kotlin/multiplatform/SentryEvent;

    .line 382
    .line 383
    iget-object p2, p1, Lio/sentry/SentryBaseEvent;->o:Ljava/lang/String;

    .line 384
    .line 385
    iget-object v0, p0, Lio/sentry/kotlin/multiplatform/SentryEvent;->h:Ljava/lang/String;

    .line 386
    .line 387
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result p2

    .line 391
    if-nez p2, :cond_f

    .line 392
    .line 393
    iget-object p2, p0, Lio/sentry/kotlin/multiplatform/SentryEvent;->h:Ljava/lang/String;

    .line 394
    .line 395
    iput-object p2, p1, Lio/sentry/SentryBaseEvent;->o:Ljava/lang/String;

    .line 396
    .line 397
    :cond_f
    iget-object p2, p1, Lio/sentry/SentryBaseEvent;->u:Ljava/lang/String;

    .line 398
    .line 399
    iget-object v0, p0, Lio/sentry/kotlin/multiplatform/SentryEvent;->m:Ljava/lang/String;

    .line 400
    .line 401
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result p2

    .line 405
    if-nez p2, :cond_10

    .line 406
    .line 407
    iget-object p2, p0, Lio/sentry/kotlin/multiplatform/SentryEvent;->m:Ljava/lang/String;

    .line 408
    .line 409
    iput-object p2, p1, Lio/sentry/SentryBaseEvent;->u:Ljava/lang/String;

    .line 410
    .line 411
    :cond_10
    iget-object p2, p0, Lio/sentry/kotlin/multiplatform/SentryEvent;->d:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 412
    .line 413
    if-eqz p2, :cond_11

    .line 414
    .line 415
    invoke-static {p2}, Lio/sentry/kotlin/multiplatform/extensions/SentryLevelExtensions_jvmKt;->a(Lio/sentry/kotlin/multiplatform/SentryLevel;)Lio/sentry/SentryLevel;

    .line 416
    .line 417
    .line 418
    move-result-object p2

    .line 419
    goto :goto_9

    .line 420
    :cond_11
    move-object p2, v1

    .line 421
    :goto_9
    iput-object p2, p1, Lio/sentry/SentryEvent;->D:Lio/sentry/SentryLevel;

    .line 422
    .line 423
    iget-object p2, p0, Lio/sentry/kotlin/multiplatform/SentryEvent;->e:Lio/sentry/kotlin/multiplatform/protocol/Message;

    .line 424
    .line 425
    if-eqz p2, :cond_13

    .line 426
    .line 427
    new-instance v0, Lio/sentry/protocol/Message;

    .line 428
    .line 429
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 430
    .line 431
    .line 432
    iget-object v3, p2, Lio/sentry/kotlin/multiplatform/protocol/Message;->a:Ljava/lang/String;

    .line 433
    .line 434
    iput-object v3, v0, Lio/sentry/protocol/Message;->k:Ljava/lang/String;

    .line 435
    .line 436
    iget-object v3, p2, Lio/sentry/kotlin/multiplatform/protocol/Message;->b:Ljava/util/List;

    .line 437
    .line 438
    if-eqz v3, :cond_12

    .line 439
    .line 440
    new-instance v4, Ljava/util/ArrayList;

    .line 441
    .line 442
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 443
    .line 444
    .line 445
    goto :goto_a

    .line 446
    :cond_12
    move-object v4, v1

    .line 447
    :goto_a
    iput-object v4, v0, Lio/sentry/protocol/Message;->l:Ljava/util/List;

    .line 448
    .line 449
    iget-object p2, p2, Lio/sentry/kotlin/multiplatform/protocol/Message;->c:Ljava/lang/String;

    .line 450
    .line 451
    iput-object p2, v0, Lio/sentry/protocol/Message;->j:Ljava/lang/String;

    .line 452
    .line 453
    goto :goto_b

    .line 454
    :cond_13
    move-object v0, v1

    .line 455
    :goto_b
    iput-object v0, p1, Lio/sentry/SentryEvent;->z:Lio/sentry/protocol/Message;

    .line 456
    .line 457
    iget-object p2, p0, Lio/sentry/kotlin/multiplatform/SentryEvent;->f:Ljava/lang/String;

    .line 458
    .line 459
    iput-object p2, p1, Lio/sentry/SentryEvent;->A:Ljava/lang/String;

    .line 460
    .line 461
    iget-object p2, p0, Lio/sentry/kotlin/multiplatform/SentryEvent;->g:Ljava/util/List;

    .line 462
    .line 463
    invoke-virtual {p1, p2}, Lio/sentry/SentryEvent;->i(Ljava/util/List;)V

    .line 464
    .line 465
    .line 466
    iget-object p2, p0, Lio/sentry/kotlin/multiplatform/SentryEvent;->i:Ljava/lang/String;

    .line 467
    .line 468
    iput-object p2, p1, Lio/sentry/SentryBaseEvent;->p:Ljava/lang/String;

    .line 469
    .line 470
    iget-object p2, p0, Lio/sentry/kotlin/multiplatform/SentryEvent;->j:Ljava/lang/String;

    .line 471
    .line 472
    iput-object p2, p1, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 473
    .line 474
    iget-object p2, p0, Lio/sentry/kotlin/multiplatform/SentryEvent;->k:Lio/sentry/kotlin/multiplatform/protocol/User;

    .line 475
    .line 476
    if-eqz p2, :cond_16

    .line 477
    .line 478
    new-instance v0, Lio/sentry/protocol/User;

    .line 479
    .line 480
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 481
    .line 482
    .line 483
    iget-object v3, p2, Lio/sentry/kotlin/multiplatform/protocol/User;->b:Ljava/lang/String;

    .line 484
    .line 485
    iput-object v3, v0, Lio/sentry/protocol/User;->k:Ljava/lang/String;

    .line 486
    .line 487
    iget-object v3, p2, Lio/sentry/kotlin/multiplatform/protocol/User;->c:Ljava/lang/String;

    .line 488
    .line 489
    iput-object v3, v0, Lio/sentry/protocol/User;->l:Ljava/lang/String;

    .line 490
    .line 491
    iget-object v3, p2, Lio/sentry/kotlin/multiplatform/protocol/User;->a:Ljava/lang/String;

    .line 492
    .line 493
    iput-object v3, v0, Lio/sentry/protocol/User;->j:Ljava/lang/String;

    .line 494
    .line 495
    iget-object v3, p2, Lio/sentry/kotlin/multiplatform/protocol/User;->d:Ljava/lang/String;

    .line 496
    .line 497
    iput-object v3, v0, Lio/sentry/protocol/User;->m:Ljava/lang/String;

    .line 498
    .line 499
    iget-object v3, p2, Lio/sentry/kotlin/multiplatform/protocol/User;->e:Ljava/util/LinkedHashMap;

    .line 500
    .line 501
    if-eqz v3, :cond_14

    .line 502
    .line 503
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 504
    .line 505
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 506
    .line 507
    .line 508
    goto :goto_c

    .line 509
    :cond_14
    move-object v4, v1

    .line 510
    :goto_c
    invoke-static {v4}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    iput-object v3, v0, Lio/sentry/protocol/User;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 515
    .line 516
    iget-object p2, p2, Lio/sentry/kotlin/multiplatform/protocol/User;->f:Ljava/util/LinkedHashMap;

    .line 517
    .line 518
    if-eqz p2, :cond_15

    .line 519
    .line 520
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 521
    .line 522
    invoke-direct {v3, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 523
    .line 524
    .line 525
    goto :goto_d

    .line 526
    :cond_15
    move-object v3, v1

    .line 527
    :goto_d
    iput-object v3, v0, Lio/sentry/protocol/User;->q:Ljava/util/AbstractMap;

    .line 528
    .line 529
    goto :goto_e

    .line 530
    :cond_16
    move-object v0, v1

    .line 531
    :goto_e
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 532
    .line 533
    iget-object p2, p0, Lio/sentry/kotlin/multiplatform/SentryEvent;->l:Ljava/lang/String;

    .line 534
    .line 535
    iput-object p2, p1, Lio/sentry/SentryBaseEvent;->t:Ljava/lang/String;

    .line 536
    .line 537
    iget-object p2, p0, Lio/sentry/kotlin/multiplatform/SentryBaseEvent;->b:Ljava/util/ArrayList;

    .line 538
    .line 539
    if-eqz p2, :cond_19

    .line 540
    .line 541
    new-instance v0, Ljava/util/ArrayList;

    .line 542
    .line 543
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 544
    .line 545
    .line 546
    move-result v2

    .line 547
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 551
    .line 552
    .line 553
    move-result-object p2

    .line 554
    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    if-eqz v2, :cond_1a

    .line 559
    .line 560
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    check-cast v2, Lio/sentry/kotlin/multiplatform/protocol/Breadcrumb;

    .line 565
    .line 566
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    new-instance v3, Lio/sentry/Breadcrumb;

    .line 570
    .line 571
    invoke-direct {v3}, Lio/sentry/Breadcrumb;-><init>()V

    .line 572
    .line 573
    .line 574
    iget-object v4, v2, Lio/sentry/kotlin/multiplatform/protocol/Breadcrumb;->c:Ljava/lang/String;

    .line 575
    .line 576
    iput-object v4, v3, Lio/sentry/Breadcrumb;->m:Ljava/lang/String;

    .line 577
    .line 578
    iget-object v4, v2, Lio/sentry/kotlin/multiplatform/protocol/Breadcrumb;->b:Ljava/lang/String;

    .line 579
    .line 580
    iput-object v4, v3, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 581
    .line 582
    iget-object v4, v2, Lio/sentry/kotlin/multiplatform/protocol/Breadcrumb;->d:Ljava/lang/String;

    .line 583
    .line 584
    iput-object v4, v3, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 585
    .line 586
    iget-object v4, v2, Lio/sentry/kotlin/multiplatform/protocol/Breadcrumb;->e:Ljava/util/LinkedHashMap;

    .line 587
    .line 588
    if-eqz v4, :cond_17

    .line 589
    .line 590
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 595
    .line 596
    .line 597
    move-result-object v4

    .line 598
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    if-eqz v5, :cond_17

    .line 603
    .line 604
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    check-cast v5, Ljava/util/Map$Entry;

    .line 609
    .line 610
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v6

    .line 614
    check-cast v6, Ljava/lang/String;

    .line 615
    .line 616
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v5

    .line 620
    invoke-virtual {v3, v5, v6}, Lio/sentry/Breadcrumb;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    goto :goto_10

    .line 624
    :cond_17
    iget-object v2, v2, Lio/sentry/kotlin/multiplatform/protocol/Breadcrumb;->a:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 625
    .line 626
    if-eqz v2, :cond_18

    .line 627
    .line 628
    invoke-static {v2}, Lio/sentry/kotlin/multiplatform/extensions/SentryLevelExtensions_jvmKt;->a(Lio/sentry/kotlin/multiplatform/SentryLevel;)Lio/sentry/SentryLevel;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    goto :goto_11

    .line 633
    :cond_18
    move-object v2, v1

    .line 634
    :goto_11
    iput-object v2, v3, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 635
    .line 636
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    goto :goto_f

    .line 640
    :cond_19
    move-object v0, v1

    .line 641
    :cond_1a
    if-eqz v0, :cond_1b

    .line 642
    .line 643
    new-instance v1, Ljava/util/ArrayList;

    .line 644
    .line 645
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 646
    .line 647
    .line 648
    :cond_1b
    iput-object v1, p1, Lio/sentry/SentryBaseEvent;->v:Ljava/util/List;

    .line 649
    .line 650
    new-instance p2, Lio/sentry/protocol/SentryId;

    .line 651
    .line 652
    iget-object v0, p0, Lio/sentry/kotlin/multiplatform/SentryBaseEvent;->a:Lio/sentry/kotlin/multiplatform/protocol/SentryId;

    .line 653
    .line 654
    iget-object v0, v0, Lio/sentry/kotlin/multiplatform/protocol/SentryId;->b:Lio/sentry/protocol/SentryId;

    .line 655
    .line 656
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    invoke-direct {p2, v0}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    iput-object p2, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 664
    .line 665
    iget-object p0, p0, Lio/sentry/kotlin/multiplatform/SentryBaseEvent;->c:Ljava/util/AbstractMap;

    .line 666
    .line 667
    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->c(Ljava/util/Map;)V

    .line 668
    .line 669
    .line 670
    return-object p1
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/kotlin/multiplatform/extensions/a;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/kotlin/multiplatform/extensions/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string v0, "androidx.core.app.FrameMetricsAggregator"

    .line 9
    .line 10
    check-cast p0, Lio/sentry/ILogger;

    .line 11
    .line 12
    invoke-static {v0, p0}, Lio/sentry/util/LoadClass;->b(Ljava/lang/String;Lio/sentry/ILogger;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    const-string v0, "androidx.core.view.ScrollingView"

    .line 22
    .line 23
    check-cast p0, Lio/sentry/SentryOptions;

    .line 24
    .line 25
    invoke-static {p0, v0}, Lio/sentry/util/LoadClass;->a(Lio/sentry/SentryOptions;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
