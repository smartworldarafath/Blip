.class public final Lio/sentry/Scope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/IScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Scope$IWithSession;,
        Lio/sentry/Scope$SessionPair;,
        Lio/sentry/Scope$IWithTransaction;,
        Lio/sentry/Scope$IWithPropagationContext;
    }
.end annotation


# instance fields
.field public a:Lio/sentry/SentryLevel;

.field public b:Lio/sentry/ITransaction;

.field public final c:Ljava/lang/ref/WeakReference;

.field public d:Lio/sentry/protocol/User;

.field public e:Ljava/lang/String;

.field public f:Lio/sentry/protocol/Request;

.field public final g:Ljava/util/ArrayList;

.field public volatile h:Ljava/util/Queue;

.field public final i:Ljava/util/concurrent/ConcurrentHashMap;

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;

.field public final k:Ljava/util/concurrent/ConcurrentHashMap;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public volatile m:Lio/sentry/SentryOptions;

.field public volatile n:Lio/sentry/Session;

.field public final o:Lio/sentry/util/AutoClosableReentrantLock;

.field public final p:Lio/sentry/util/AutoClosableReentrantLock;

.field public final q:Lio/sentry/util/AutoClosableReentrantLock;

.field public final r:Lio/sentry/protocol/Contexts;

.field public final s:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public t:Lio/sentry/PropagationContext;

.field public u:Lio/sentry/protocol/SentryId;

.field public v:Lio/sentry/ISentryClient;

.field public final w:Ljava/util/Map;

.field public final x:Lio/sentry/featureflags/IFeatureFlagBuffer;


# direct methods
.method public constructor <init>(Lio/sentry/Scope;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/sentry/Scope;->c:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/sentry/Scope;->g:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lio/sentry/Scope;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lio/sentry/Scope;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lio/sentry/Scope;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lio/sentry/Scope;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    .line 47
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lio/sentry/Scope;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 53
    .line 54
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lio/sentry/Scope;->p:Lio/sentry/util/AutoClosableReentrantLock;

    .line 60
    .line 61
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lio/sentry/Scope;->q:Lio/sentry/util/AutoClosableReentrantLock;

    .line 67
    .line 68
    new-instance v0, Lio/sentry/protocol/Contexts;

    .line 69
    .line 70
    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lio/sentry/Scope;->r:Lio/sentry/protocol/Contexts;

    .line 74
    .line 75
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lio/sentry/Scope;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    .line 82
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 83
    .line 84
    iput-object v0, p0, Lio/sentry/Scope;->u:Lio/sentry/protocol/SentryId;

    .line 85
    .line 86
    sget-object v0, Lio/sentry/NoOpSentryClient;->a:Lio/sentry/NoOpSentryClient;

    .line 87
    .line 88
    iput-object v0, p0, Lio/sentry/Scope;->v:Lio/sentry/ISentryClient;

    .line 89
    .line 90
    new-instance v0, Ljava/util/WeakHashMap;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lio/sentry/Scope;->w:Ljava/util/Map;

    .line 100
    .line 101
    iget-object v0, p1, Lio/sentry/Scope;->b:Lio/sentry/ITransaction;

    .line 102
    .line 103
    iput-object v0, p0, Lio/sentry/Scope;->b:Lio/sentry/ITransaction;

    .line 104
    .line 105
    iget-object v0, p1, Lio/sentry/Scope;->c:Ljava/lang/ref/WeakReference;

    .line 106
    .line 107
    iput-object v0, p0, Lio/sentry/Scope;->c:Ljava/lang/ref/WeakReference;

    .line 108
    .line 109
    iget-object v0, p1, Lio/sentry/Scope;->n:Lio/sentry/Session;

    .line 110
    .line 111
    iput-object v0, p0, Lio/sentry/Scope;->n:Lio/sentry/Session;

    .line 112
    .line 113
    iget-object v0, p1, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 114
    .line 115
    iput-object v0, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 116
    .line 117
    iget-object v0, p1, Lio/sentry/Scope;->a:Lio/sentry/SentryLevel;

    .line 118
    .line 119
    iput-object v0, p0, Lio/sentry/Scope;->a:Lio/sentry/SentryLevel;

    .line 120
    .line 121
    iget-object v0, p1, Lio/sentry/Scope;->v:Lio/sentry/ISentryClient;

    .line 122
    .line 123
    iput-object v0, p0, Lio/sentry/Scope;->v:Lio/sentry/ISentryClient;

    .line 124
    .line 125
    iget-object v0, p1, Lio/sentry/Scope;->d:Lio/sentry/protocol/User;

    .line 126
    .line 127
    if-eqz v0, :cond_0

    .line 128
    .line 129
    new-instance v2, Lio/sentry/protocol/User;

    .line 130
    .line 131
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object v3, v0, Lio/sentry/protocol/User;->j:Ljava/lang/String;

    .line 135
    .line 136
    iput-object v3, v2, Lio/sentry/protocol/User;->j:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v3, v0, Lio/sentry/protocol/User;->l:Ljava/lang/String;

    .line 139
    .line 140
    iput-object v3, v2, Lio/sentry/protocol/User;->l:Ljava/lang/String;

    .line 141
    .line 142
    iget-object v3, v0, Lio/sentry/protocol/User;->k:Ljava/lang/String;

    .line 143
    .line 144
    iput-object v3, v2, Lio/sentry/protocol/User;->k:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v3, v0, Lio/sentry/protocol/User;->m:Ljava/lang/String;

    .line 147
    .line 148
    iput-object v3, v2, Lio/sentry/protocol/User;->m:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v3, v0, Lio/sentry/protocol/User;->n:Ljava/lang/String;

    .line 151
    .line 152
    iput-object v3, v2, Lio/sentry/protocol/User;->n:Ljava/lang/String;

    .line 153
    .line 154
    iget-object v3, v0, Lio/sentry/protocol/User;->o:Lio/sentry/protocol/Geo;

    .line 155
    .line 156
    iput-object v3, v2, Lio/sentry/protocol/User;->o:Lio/sentry/protocol/Geo;

    .line 157
    .line 158
    iget-object v3, v0, Lio/sentry/protocol/User;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 159
    .line 160
    invoke-static {v3}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    iput-object v3, v2, Lio/sentry/protocol/User;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    .line 166
    iget-object v0, v0, Lio/sentry/protocol/User;->q:Ljava/util/AbstractMap;

    .line 167
    .line 168
    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iput-object v0, v2, Lio/sentry/protocol/User;->q:Ljava/util/AbstractMap;

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_0
    move-object v2, v1

    .line 176
    :goto_0
    iput-object v2, p0, Lio/sentry/Scope;->d:Lio/sentry/protocol/User;

    .line 177
    .line 178
    iget-object v0, p1, Lio/sentry/Scope;->e:Ljava/lang/String;

    .line 179
    .line 180
    iput-object v0, p0, Lio/sentry/Scope;->e:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v0, p1, Lio/sentry/Scope;->u:Lio/sentry/protocol/SentryId;

    .line 183
    .line 184
    iput-object v0, p0, Lio/sentry/Scope;->u:Lio/sentry/protocol/SentryId;

    .line 185
    .line 186
    iget-object v0, p1, Lio/sentry/Scope;->f:Lio/sentry/protocol/Request;

    .line 187
    .line 188
    if-eqz v0, :cond_1

    .line 189
    .line 190
    new-instance v2, Lio/sentry/protocol/Request;

    .line 191
    .line 192
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 193
    .line 194
    .line 195
    iget-object v3, v0, Lio/sentry/protocol/Request;->j:Ljava/lang/String;

    .line 196
    .line 197
    iput-object v3, v2, Lio/sentry/protocol/Request;->j:Ljava/lang/String;

    .line 198
    .line 199
    iget-object v3, v0, Lio/sentry/protocol/Request;->n:Ljava/lang/String;

    .line 200
    .line 201
    iput-object v3, v2, Lio/sentry/protocol/Request;->n:Ljava/lang/String;

    .line 202
    .line 203
    iget-object v3, v0, Lio/sentry/protocol/Request;->k:Ljava/lang/String;

    .line 204
    .line 205
    iput-object v3, v2, Lio/sentry/protocol/Request;->k:Ljava/lang/String;

    .line 206
    .line 207
    iget-object v3, v0, Lio/sentry/protocol/Request;->l:Ljava/lang/String;

    .line 208
    .line 209
    iput-object v3, v2, Lio/sentry/protocol/Request;->l:Ljava/lang/String;

    .line 210
    .line 211
    iget-object v3, v0, Lio/sentry/protocol/Request;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 212
    .line 213
    invoke-static {v3}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    iput-object v3, v2, Lio/sentry/protocol/Request;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 218
    .line 219
    iget-object v3, v0, Lio/sentry/protocol/Request;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 220
    .line 221
    invoke-static {v3}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    iput-object v3, v2, Lio/sentry/protocol/Request;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 226
    .line 227
    iget-object v3, v0, Lio/sentry/protocol/Request;->r:Ljava/util/concurrent/ConcurrentHashMap;

    .line 228
    .line 229
    invoke-static {v3}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    iput-object v3, v2, Lio/sentry/protocol/Request;->r:Ljava/util/concurrent/ConcurrentHashMap;

    .line 234
    .line 235
    iget-object v3, v0, Lio/sentry/protocol/Request;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 236
    .line 237
    invoke-static {v3}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    iput-object v3, v2, Lio/sentry/protocol/Request;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 242
    .line 243
    iget-object v3, v0, Lio/sentry/protocol/Request;->m:Ljava/lang/Object;

    .line 244
    .line 245
    iput-object v3, v2, Lio/sentry/protocol/Request;->m:Ljava/lang/Object;

    .line 246
    .line 247
    iget-object v3, v0, Lio/sentry/protocol/Request;->s:Ljava/lang/String;

    .line 248
    .line 249
    iput-object v3, v2, Lio/sentry/protocol/Request;->s:Ljava/lang/String;

    .line 250
    .line 251
    iget-object v3, v0, Lio/sentry/protocol/Request;->q:Ljava/lang/Long;

    .line 252
    .line 253
    iput-object v3, v2, Lio/sentry/protocol/Request;->q:Ljava/lang/Long;

    .line 254
    .line 255
    iget-object v0, v0, Lio/sentry/protocol/Request;->t:Ljava/lang/String;

    .line 256
    .line 257
    iput-object v0, v2, Lio/sentry/protocol/Request;->t:Ljava/lang/String;

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_1
    move-object v2, v1

    .line 261
    :goto_1
    iput-object v2, p0, Lio/sentry/Scope;->f:Lio/sentry/protocol/Request;

    .line 262
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    .line 264
    .line 265
    iget-object v2, p1, Lio/sentry/Scope;->g:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 268
    .line 269
    .line 270
    iput-object v0, p0, Lio/sentry/Scope;->g:Ljava/util/ArrayList;

    .line 271
    .line 272
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 273
    .line 274
    iget-object v2, p1, Lio/sentry/Scope;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 275
    .line 276
    invoke-direct {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 277
    .line 278
    .line 279
    iput-object v0, p0, Lio/sentry/Scope;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 280
    .line 281
    iget-object v0, p1, Lio/sentry/Scope;->h:Ljava/util/Queue;

    .line 282
    .line 283
    const/4 v2, 0x0

    .line 284
    new-array v3, v2, [Lio/sentry/Breadcrumb;

    .line 285
    .line 286
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, [Lio/sentry/Breadcrumb;

    .line 291
    .line 292
    iget-object v3, p1, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 293
    .line 294
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    invoke-static {v3}, Lio/sentry/Scope;->e(I)Ljava/util/Queue;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    array-length v4, v0

    .line 303
    :goto_2
    if-ge v2, v4, :cond_2

    .line 304
    .line 305
    aget-object v5, v0, v2

    .line 306
    .line 307
    new-instance v6, Lio/sentry/Breadcrumb;

    .line 308
    .line 309
    invoke-direct {v6, v5}, Lio/sentry/Breadcrumb;-><init>(Lio/sentry/Breadcrumb;)V

    .line 310
    .line 311
    .line 312
    invoke-interface {v3, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    add-int/lit8 v2, v2, 0x1

    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_2
    iput-object v3, p0, Lio/sentry/Scope;->h:Ljava/util/Queue;

    .line 319
    .line 320
    iget-object v0, p1, Lio/sentry/Scope;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 321
    .line 322
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 323
    .line 324
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    if-eqz v3, :cond_4

    .line 340
    .line 341
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    check-cast v3, Ljava/util/Map$Entry;

    .line 346
    .line 347
    if-eqz v3, :cond_3

    .line 348
    .line 349
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    check-cast v4, Ljava/lang/String;

    .line 354
    .line 355
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    check-cast v3, Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    goto :goto_3

    .line 365
    :cond_4
    iput-object v2, p0, Lio/sentry/Scope;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 366
    .line 367
    iget-object v0, p1, Lio/sentry/Scope;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 368
    .line 369
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 370
    .line 371
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    if-eqz v3, :cond_7

    .line 387
    .line 388
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    check-cast v3, Ljava/util/Map$Entry;

    .line 393
    .line 394
    if-eqz v3, :cond_5

    .line 395
    .line 396
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    check-cast v4, Ljava/lang/String;

    .line 401
    .line 402
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    if-nez v3, :cond_6

    .line 407
    .line 408
    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_6
    invoke-static {}, Lio/sentry/d;->i()V

    .line 413
    .line 414
    .line 415
    throw v1

    .line 416
    :cond_7
    iput-object v2, p0, Lio/sentry/Scope;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 417
    .line 418
    iget-object v0, p1, Lio/sentry/Scope;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 419
    .line 420
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 421
    .line 422
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    if-eqz v2, :cond_9

    .line 438
    .line 439
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    check-cast v2, Ljava/util/Map$Entry;

    .line 444
    .line 445
    if-eqz v2, :cond_8

    .line 446
    .line 447
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    check-cast v3, Ljava/lang/String;

    .line 452
    .line 453
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    goto :goto_5

    .line 461
    :cond_9
    iput-object v1, p0, Lio/sentry/Scope;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 462
    .line 463
    new-instance v0, Lio/sentry/protocol/Contexts;

    .line 464
    .line 465
    iget-object v1, p1, Lio/sentry/Scope;->r:Lio/sentry/protocol/Contexts;

    .line 466
    .line 467
    invoke-direct {v0, v1}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    .line 468
    .line 469
    .line 470
    iput-object v0, p0, Lio/sentry/Scope;->r:Lio/sentry/protocol/Contexts;

    .line 471
    .line 472
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 473
    .line 474
    iget-object v1, p1, Lio/sentry/Scope;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 475
    .line 476
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 477
    .line 478
    .line 479
    iput-object v0, p0, Lio/sentry/Scope;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 480
    .line 481
    iget-object v0, p1, Lio/sentry/Scope;->x:Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 482
    .line 483
    invoke-interface {v0}, Lio/sentry/featureflags/IFeatureFlagBuffer;->clone()Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    iput-object v0, p0, Lio/sentry/Scope;->x:Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 488
    .line 489
    new-instance v0, Lio/sentry/PropagationContext;

    .line 490
    .line 491
    iget-object p1, p1, Lio/sentry/Scope;->t:Lio/sentry/PropagationContext;

    .line 492
    .line 493
    invoke-direct {v0, p1}, Lio/sentry/PropagationContext;-><init>(Lio/sentry/PropagationContext;)V

    .line 494
    .line 495
    .line 496
    iput-object v0, p0, Lio/sentry/Scope;->t:Lio/sentry/PropagationContext;

    .line 497
    .line 498
    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 2

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/Scope;->c:Ljava/lang/ref/WeakReference;

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->g:Ljava/util/ArrayList;

    .line 502
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 503
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 504
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 505
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 506
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 507
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 508
    iput-object v0, p0, Lio/sentry/Scope;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 509
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 510
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 511
    iput-object v0, p0, Lio/sentry/Scope;->p:Lio/sentry/util/AutoClosableReentrantLock;

    .line 512
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 513
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 514
    iput-object v0, p0, Lio/sentry/Scope;->q:Lio/sentry/util/AutoClosableReentrantLock;

    .line 515
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->r:Lio/sentry/protocol/Contexts;

    .line 516
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 517
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/Scope;->u:Lio/sentry/protocol/SentryId;

    .line 518
    sget-object v0, Lio/sentry/NoOpSentryClient;->a:Lio/sentry/NoOpSentryClient;

    iput-object v0, p0, Lio/sentry/Scope;->v:Lio/sentry/ISentryClient;

    .line 519
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 520
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Scope;->w:Ljava/util/Map;

    .line 521
    const-string v0, "SentryOptions is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 522
    iget-object v0, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result v0

    invoke-static {v0}, Lio/sentry/Scope;->e(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Scope;->h:Ljava/util/Queue;

    .line 523
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxFeatureFlags()I

    move-result p1

    if-lez p1, :cond_0

    .line 524
    new-instance p1, Lio/sentry/featureflags/FeatureFlagBuffer;

    .line 525
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 526
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 527
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 528
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p1, Lio/sentry/featureflags/FeatureFlagBuffer;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0

    .line 529
    :cond_0
    sget-object p1, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;->a:Lio/sentry/featureflags/NoOpFeatureFlagBuffer;

    .line 530
    :goto_0
    iput-object p1, p0, Lio/sentry/Scope;->x:Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 531
    new-instance p1, Lio/sentry/PropagationContext;

    invoke-direct {p1}, Lio/sentry/PropagationContext;-><init>()V

    iput-object p1, p0, Lio/sentry/Scope;->t:Lio/sentry/PropagationContext;

    return-void
.end method

.method public static e(I)Ljava/util/Queue;
    .locals 1

    .line 1
    if-lez p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lio/sentry/CircularFifoQueue;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lio/sentry/CircularFifoQueue;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lio/sentry/SynchronizedQueue;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lio/sentry/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Lio/sentry/DisabledQueue;

    .line 15
    .line 16
    invoke-direct {p0}, Lio/sentry/DisabledQueue;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final A(Lio/sentry/SentryEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->a()Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lio/sentry/Scope;->w:Ljava/util/Map;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->a()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "throwable cannot be null"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eq v0, p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lio/sentry/util/Pair;

    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public final B()Lio/sentry/protocol/Contexts;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->r:Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    return-object p0
.end method

.method public final C(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/Scope;->q:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lio/sentry/Scope;->t:Lio/sentry/PropagationContext;

    .line 8
    .line 9
    invoke-interface {p1, v1}, Lio/sentry/Scope$IWithPropagationContext;->a(Lio/sentry/PropagationContext;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lio/sentry/PropagationContext;

    .line 13
    .line 14
    iget-object p0, p0, Lio/sentry/Scope;->t:Lio/sentry/PropagationContext;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lio/sentry/PropagationContext;-><init>(Lio/sentry/PropagationContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    throw p0
.end method

.method public final D()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final E(Lio/sentry/Scope$IWithTransaction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/Scope;->p:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lio/sentry/Scope;->b:Lio/sentry/ITransaction;

    .line 8
    .line 9
    invoke-interface {p1, p0}, Lio/sentry/Scope$IWithTransaction;->c(Lio/sentry/ITransaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_1
    move-exception p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    throw p0
.end method

.method public final F(Lio/sentry/protocol/SentryId;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final G(Lio/sentry/ITransaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/Scope;->p:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iput-object p1, p0, Lio/sentry/Scope;->b:Lio/sentry/ITransaction;

    .line 8
    .line 9
    iget-object v1, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 10
    .line 11
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lio/sentry/IScopeObserver;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v2, v3}, Lio/sentry/IScopeObserver;->e(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Lio/sentry/ISpan;->r()Lio/sentry/SpanContext;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v2, v3, p0}, Lio/sentry/IScopeObserver;->c(Lio/sentry/SpanContext;Lio/sentry/Scope;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/4 v3, 0x0

    .line 51
    invoke-interface {v2, v3}, Lio/sentry/IScopeObserver;->e(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v3, p0}, Lio/sentry/IScopeObserver;->c(Lio/sentry/SpanContext;Lio/sentry/Scope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catchall_1
    move-exception p1

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :goto_2
    throw p0
.end method

.method public final H()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final I()Lio/sentry/protocol/User;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->d:Lio/sentry/protocol/User;

    .line 2
    .line 3
    return-object p0
.end method

.method public final J()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-static {p0}, Lio/sentry/util/EventProcessorUtils;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final K()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->b:Lio/sentry/ITransaction;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final L(Lio/sentry/PropagationContext;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lio/sentry/Scope;->t:Lio/sentry/PropagationContext;

    .line 2
    .line 3
    new-instance v0, Lio/sentry/SpanContext;

    .line 4
    .line 5
    iget-object v1, p1, Lio/sentry/PropagationContext;->a:Lio/sentry/protocol/SentryId;

    .line 6
    .line 7
    iget-object p1, p1, Lio/sentry/PropagationContext;->b:Lio/sentry/SpanId;

    .line 8
    .line 9
    const-string v2, "default"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v1, p1, v2, v3}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "auto"

    .line 16
    .line 17
    iput-object p1, v0, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p1, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 20
    .line 21
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lio/sentry/IScopeObserver;

    .line 40
    .line 41
    invoke-interface {v1, v0, p0}, Lio/sentry/IScopeObserver;->c(Lio/sentry/SpanContext;Lio/sentry/Scope;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public final a(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/Scope;->h:Ljava/util/Queue;

    .line 4
    .line 5
    instance-of v0, v0, Lio/sentry/DisabledQueue;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    new-instance p2, Lio/sentry/Hint;

    .line 13
    .line 14
    invoke-direct {p2}, Lio/sentry/Hint;-><init>()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeBreadcrumb()Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;->b(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)Lio/sentry/Breadcrumb;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p2

    .line 31
    iget-object v0, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 32
    .line 33
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 38
    .line 39
    const-string v2, "The BeforeBreadcrumbCallback callback threw an exception. Exception details will be added to the breadcrumb."

    .line 40
    .line 41
    invoke-interface {v0, v1, v2, p2}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    const-string v0, "sentry:message"

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p1, p2, v0}, Lio/sentry/Breadcrumb;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p2, p0, Lio/sentry/Scope;->h:Ljava/util/Queue;

    .line 62
    .line 63
    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 67
    .line 68
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lio/sentry/IScopeObserver;

    .line 87
    .line 88
    invoke-interface {v0, p1}, Lio/sentry/IScopeObserver;->f(Lio/sentry/Breadcrumb;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lio/sentry/Scope;->h:Ljava/util/Queue;

    .line 92
    .line 93
    invoke-interface {v0, v1}, Lio/sentry/IScopeObserver;->a(Ljava/util/Collection;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget-object p0, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 98
    .line 99
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 104
    .line 105
    const/4 p2, 0x0

    .line 106
    new-array p2, p2, [Ljava/lang/Object;

    .line 107
    .line 108
    const-string v0, "Breadcrumb was dropped by beforeBreadcrumb"

    .line 109
    .line 110
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_2
    return-void
.end method

.method public final b()Lio/sentry/ISpan;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/Scope;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/sentry/ISpan;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object p0, p0, Lio/sentry/Scope;->b:Lio/sentry/ITransaction;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Lio/sentry/ITransaction;->k()Lio/sentry/ISpan;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    return-object p0
.end method

.method public final c()Lio/sentry/protocol/FeatureFlags;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->x:Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 2
    .line 3
    invoke-interface {p0}, Lio/sentry/featureflags/IFeatureFlagBuffer;->c()Lio/sentry/protocol/FeatureFlags;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final clear()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/Scope;->a:Lio/sentry/SentryLevel;

    .line 3
    .line 4
    iput-object v0, p0, Lio/sentry/Scope;->d:Lio/sentry/protocol/User;

    .line 5
    .line 6
    iput-object v0, p0, Lio/sentry/Scope;->f:Lio/sentry/protocol/Request;

    .line 7
    .line 8
    iput-object v0, p0, Lio/sentry/Scope;->e:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/Scope;->g:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/sentry/Scope;->h:Ljava/util/Queue;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 21
    .line 22
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lio/sentry/IScopeObserver;

    .line 41
    .line 42
    iget-object v2, p0, Lio/sentry/Scope;->h:Ljava/util/Queue;

    .line 43
    .line 44
    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->a(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lio/sentry/Scope;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lio/sentry/Scope;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lio/sentry/Scope;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lio/sentry/Scope;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lio/sentry/Scope;->o()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lio/sentry/Scope;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 77
    .line 78
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lio/sentry/IScopeObserver;

    .line 97
    .line 98
    invoke-interface {v0}, Lio/sentry/IScopeObserver;->b()V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    return-void
.end method

.method public final clone()Lio/sentry/IScope;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/Scope;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/sentry/Scope;-><init>(Lio/sentry/Scope;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 7
    new-instance v0, Lio/sentry/Scope;

    invoke-direct {v0, p0}, Lio/sentry/Scope;-><init>(Lio/sentry/Scope;)V

    return-object v0
.end method

.method public final d()Lio/sentry/protocol/Request;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->f:Lio/sentry/protocol/Request;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->u:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i(Lio/sentry/protocol/SentryId;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/sentry/Scope;->u:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lio/sentry/IScopeObserver;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Lio/sentry/IScopeObserver;->i(Lio/sentry/protocol/SentryId;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final j()Lio/sentry/SentryOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method public final k()Lio/sentry/ITransaction;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->b:Lio/sentry/ITransaction;

    .line 2
    .line 3
    return-object p0
.end method

.method public final l()Lio/sentry/Session;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/Scope;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lio/sentry/Scope;->n:Lio/sentry/Session;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lio/sentry/Scope;->n:Lio/sentry/Session;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lio/sentry/DateUtils;->b()Ljava/util/Date;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1, v3}, Lio/sentry/Session;->b(Ljava/util/Date;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 25
    .line 26
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Lio/sentry/IContinuousProfiler;->e()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lio/sentry/Scope;->n:Lio/sentry/Session;

    .line 34
    .line 35
    invoke-virtual {v1}, Lio/sentry/Session;->a()Lio/sentry/Session;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v2, p0, Lio/sentry/Scope;->n:Lio/sentry/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    move-object v2, v1

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_2
    throw p0
.end method

.method public final m()Lio/sentry/Scope$SessionPair;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lio/sentry/Scope;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, v0, Lio/sentry/Scope;->n:Lio/sentry/Session;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v2, v0, Lio/sentry/Scope;->n:Lio/sentry/Session;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lio/sentry/DateUtils;->b()Ljava/util/Date;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Lio/sentry/Session;->b(Ljava/util/Date;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 26
    .line 27
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Lio/sentry/IContinuousProfiler;->e()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object v2, v0

    .line 37
    goto :goto_3

    .line 38
    :cond_0
    :goto_0
    iget-object v2, v0, Lio/sentry/Scope;->n:Lio/sentry/Session;

    .line 39
    .line 40
    iget-object v3, v0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 41
    .line 42
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v4, 0x0

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    new-instance v5, Lio/sentry/Session;

    .line 50
    .line 51
    iget-object v3, v0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 52
    .line 53
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getDistinctId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    iget-object v3, v0, Lio/sentry/Scope;->d:Lio/sentry/protocol/User;

    .line 58
    .line 59
    iget-object v6, v0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 60
    .line 61
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v17

    .line 65
    iget-object v6, v0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 66
    .line 67
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v18

    .line 71
    sget-object v6, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    .line 72
    .line 73
    invoke-static {}, Lio/sentry/DateUtils;->b()Ljava/util/Date;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-static {}, Lio/sentry/DateUtils;->b()Ljava/util/Date;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-static {}, Lio/sentry/SentryUUID;->a()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    .line 87
    if-eqz v3, :cond_1

    .line 88
    .line 89
    iget-object v3, v3, Lio/sentry/protocol/User;->m:Ljava/lang/String;

    .line 90
    .line 91
    move-object v15, v3

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move-object v15, v4

    .line 94
    :goto_1
    const/16 v16, 0x0

    .line 95
    .line 96
    const/16 v19, 0x0

    .line 97
    .line 98
    const/4 v9, 0x0

    .line 99
    const/4 v13, 0x0

    .line 100
    const/4 v14, 0x0

    .line 101
    invoke-direct/range {v5 .. v19}, Lio/sentry/Session;-><init>(Lio/sentry/Session$State;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iput-object v5, v0, Lio/sentry/Scope;->n:Lio/sentry/Session;

    .line 105
    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-virtual {v2}, Lio/sentry/Session;->a()Lio/sentry/Session;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    :cond_2
    new-instance v2, Lio/sentry/Scope$SessionPair;

    .line 113
    .line 114
    iget-object v0, v0, Lio/sentry/Scope;->n:Lio/sentry/Session;

    .line 115
    .line 116
    invoke-virtual {v0}, Lio/sentry/Session;->a()Lio/sentry/Session;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {v2, v0, v4}, Lio/sentry/Scope$SessionPair;-><init>(Lio/sentry/Session;Lio/sentry/Session;)V

    .line 121
    .line 122
    .line 123
    move-object v4, v2

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    iget-object v0, v0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 126
    .line 127
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 132
    .line 133
    const-string v3, "Release is not set on SentryOptions. Session could not be started"

    .line 134
    .line 135
    const/4 v5, 0x0

    .line 136
    new-array v5, v5, [Ljava/lang/Object;

    .line 137
    .line 138
    invoke-interface {v0, v2, v3, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .line 140
    .line 141
    :goto_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 142
    .line 143
    .line 144
    return-object v4

    .line 145
    :goto_3
    :try_start_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :catchall_1
    move-exception v0

    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    :goto_4
    throw v2
.end method

.method public final n(Lio/sentry/SentryLevel;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/sentry/Scope;->a:Lio/sentry/SentryLevel;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lio/sentry/IScopeObserver;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Lio/sentry/IScopeObserver;->n(Lio/sentry/SentryLevel;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/Scope;->p:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    iput-object v1, p0, Lio/sentry/Scope;->b:Lio/sentry/ITransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lio/sentry/IScopeObserver;

    .line 34
    .line 35
    invoke-interface {v2, v1}, Lio/sentry/IScopeObserver;->e(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v2, v1, p0}, Lio/sentry/IScopeObserver;->c(Lio/sentry/SpanContext;Lio/sentry/Scope;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_1
    move-exception v0

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    throw p0
.end method

.method public final p()Lio/sentry/featureflags/IFeatureFlagBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->x:Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final q()Lio/sentry/Session;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->n:Lio/sentry/Session;

    .line 2
    .line 3
    return-object p0
.end method

.method public final r()Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->h:Ljava/util/Queue;

    .line 2
    .line 3
    return-object p0
.end method

.method public final s()Lio/sentry/SentryLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->a:Lio/sentry/SentryLevel;

    .line 2
    .line 3
    return-object p0
.end method

.method public final t()Lio/sentry/PropagationContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->t:Lio/sentry/PropagationContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public final u(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/Scope;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lio/sentry/Scope;->n:Lio/sentry/Session;

    .line 8
    .line 9
    invoke-interface {p1, v1}, Lio/sentry/Scope$IWithSession;->a(Lio/sentry/Session;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lio/sentry/Scope;->n:Lio/sentry/Session;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lio/sentry/Scope;->n:Lio/sentry/Session;

    .line 17
    .line 18
    invoke-virtual {p0}, Lio/sentry/Session;->a()Lio/sentry/Session;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_2
    throw p0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lio/sentry/Scope;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/Scope;->r:Lio/sentry/protocol/Contexts;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->d()Lio/sentry/protocol/App;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lio/sentry/protocol/App;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->m(Lio/sentry/protocol/App;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, v1, Lio/sentry/protocol/App;->r:Ljava/util/List;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iput-object v2, v1, Lio/sentry/protocol/App;->r:Ljava/util/List;

    .line 35
    .line 36
    :goto_0
    iget-object p0, p0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 37
    .line 38
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lio/sentry/IScopeObserver;

    .line 57
    .line 58
    invoke-interface {p1, v0}, Lio/sentry/IScopeObserver;->d(Lio/sentry/protocol/Contexts;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    return-void
.end method

.method public final w()Lio/sentry/ISentryClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->v:Lio/sentry/ISentryClient;

    .line 2
    .line 3
    return-object p0
.end method

.method public final x()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p0}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final y()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scope;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final z()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/Scope;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
