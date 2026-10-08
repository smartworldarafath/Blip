.class public Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/ReplayBreadcrumbConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$ReplayBeforeBreadcrumbCallback;
    }
.end annotation


# static fields
.field public static final c:Lkotlin/Lazy;

.field public static final d:Ljava/util/HashSet;


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->k:Lkotlin/LazyThreadSafetyMode;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion$snakecasePattern$2;->k:Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion$snakecasePattern$2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->c:Lkotlin/Lazy;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "status_code"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v1, "method"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const-string v1, "response_content_length"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    const-string v1, "request_content_length"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const-string v1, "http.response_content_length"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    const-string v1, "http.request_content_length"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    sput-object v0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->d:Ljava/util/HashSet;

    .line 47
    .line 48
    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$httpNetworkDetails$1;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->b:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$ReplayBeforeBreadcrumbCallback;

    .line 19
    .line 20
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getBeforeBreadcrumb()Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, p0, v1}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$ReplayBeforeBreadcrumbCallback;-><init>(Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setBeforeBreadcrumb(Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebEvent;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "http"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v1, :cond_7

    .line 21
    .line 22
    iget-object v0, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    const-string v1, "url"

    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    instance-of v5, v0, Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v0, v4

    .line 38
    :goto_0
    if-eqz v0, :cond_1f

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    goto/16 :goto_f

    .line 47
    .line 48
    :cond_1
    iget-object v0, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v5, "http.start_timestamp"

    .line 54
    .line 55
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1f

    .line 60
    .line 61
    iget-object v0, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    const-string v6, "http.end_timestamp"

    .line 67
    .line 68
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1f

    .line 73
    .line 74
    iget-object v0, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    .line 76
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v5, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    .line 82
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    new-instance v6, Lio/sentry/rrweb/RRWebSpanEvent;

    .line 87
    .line 88
    invoke-direct {v6}, Lio/sentry/rrweb/RRWebSpanEvent;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->b()Ljava/util/Date;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 96
    .line 97
    .line 98
    move-result-wide v7

    .line 99
    iput-wide v7, v6, Lio/sentry/rrweb/RRWebEvent;->k:J

    .line 100
    .line 101
    const-string v7, "resource.http"

    .line 102
    .line 103
    iput-object v7, v6, Lio/sentry/rrweb/RRWebSpanEvent;->m:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v7, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    .line 107
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    check-cast v1, Ljava/lang/String;

    .line 115
    .line 116
    iput-object v1, v6, Lio/sentry/rrweb/RRWebSpanEvent;->n:Ljava/lang/String;

    .line 117
    .line 118
    instance-of v1, v0, Ljava/lang/Double;

    .line 119
    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    check-cast v0, Ljava/lang/Number;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    :goto_1
    div-double/2addr v0, v2

    .line 129
    goto :goto_2

    .line 130
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    check-cast v0, Ljava/lang/Long;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    long-to-double v0, v0

    .line 140
    goto :goto_1

    .line 141
    :goto_2
    iput-wide v0, v6, Lio/sentry/rrweb/RRWebSpanEvent;->o:D

    .line 142
    .line 143
    instance-of v0, v5, Ljava/lang/Double;

    .line 144
    .line 145
    if-eqz v0, :cond_3

    .line 146
    .line 147
    check-cast v5, Ljava/lang/Number;

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    .line 150
    .line 151
    .line 152
    move-result-wide v0

    .line 153
    :goto_3
    div-double/2addr v0, v2

    .line 154
    goto :goto_4

    .line 155
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    check-cast v5, Ljava/lang/Long;

    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 161
    .line 162
    .line 163
    move-result-wide v0

    .line 164
    long-to-double v0, v0

    .line 165
    goto :goto_3

    .line 166
    :goto_4
    iput-wide v0, v6, Lio/sentry/rrweb/RRWebSpanEvent;->p:D

    .line 167
    .line 168
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 169
    .line 170
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 171
    .line 172
    .line 173
    iget-object p0, p0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->b:Ljava/util/Map;

    .line 174
    .line 175
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    if-nez p0, :cond_6

    .line 180
    .line 181
    iget-object p0, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 182
    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    :cond_4
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_5

    .line 199
    .line 200
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Ljava/util/Map$Entry;

    .line 205
    .line 206
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Ljava/lang/String;

    .line 211
    .line 212
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    sget-object v2, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->d:Ljava/util/HashSet;

    .line 217
    .line 218
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_4

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    const-string v2, "content_length"

    .line 228
    .line 229
    const-string v3, "body_size"

    .line 230
    .line 231
    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    const-string v2, "."

    .line 236
    .line 237
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    sget-object v2, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->c:Lkotlin/Lazy;

    .line 242
    .line 243
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    check-cast v2, Lkotlin/text/Regex;

    .line 248
    .line 249
    sget-object v3, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$snakeToCamelCase$1;->k:Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$snakeToCamelCase$1;

    .line 250
    .line 251
    invoke-virtual {v2, v1, v3}, Lkotlin/text/Regex;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_5
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 260
    .line 261
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 262
    .line 263
    .line 264
    iput-object p0, v6, Lio/sentry/rrweb/RRWebSpanEvent;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 265
    .line 266
    return-object v6

    .line 267
    :cond_6
    invoke-static {}, Lio/sentry/d;->i()V

    .line 268
    .line 269
    .line 270
    return-object v4

    .line 271
    :cond_7
    iget-object v1, p1, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 272
    .line 273
    const-string v5, "navigation"

    .line 274
    .line 275
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    const-string v6, "state"

    .line 280
    .line 281
    if-eqz v1, :cond_8

    .line 282
    .line 283
    iget-object v1, p1, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 284
    .line 285
    const-string v7, "app.lifecycle"

    .line 286
    .line 287
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_8

    .line 292
    .line 293
    new-instance p0, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v1, "app."

    .line 296
    .line 297
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget-object v1, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 301
    .line 302
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    :goto_6
    move-object p0, v4

    .line 314
    move-object v1, p0

    .line 315
    goto/16 :goto_e

    .line 316
    .line 317
    :cond_8
    iget-object v1, p1, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 318
    .line 319
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-eqz v1, :cond_a

    .line 324
    .line 325
    iget-object v1, p1, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 326
    .line 327
    const-string v7, "device.orientation"

    .line 328
    .line 329
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_a

    .line 334
    .line 335
    iget-object v5, p1, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    iget-object p0, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 341
    .line 342
    const-string v1, "position"

    .line 343
    .line 344
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    const-string v6, "landscape"

    .line 349
    .line 350
    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    if-nez v6, :cond_9

    .line 355
    .line 356
    const-string v6, "portrait"

    .line 357
    .line 358
    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    if-eqz v6, :cond_1f

    .line 363
    .line 364
    :cond_9
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    goto :goto_6

    .line 368
    :cond_a
    iget-object v1, p1, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 369
    .line 370
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_f

    .line 375
    .line 376
    iget-object p0, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 377
    .line 378
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    const-string v1, "resumed"

    .line 383
    .line 384
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result p0

    .line 388
    iget-object v1, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 389
    .line 390
    const-string v6, "to"

    .line 391
    .line 392
    if-eqz p0, :cond_d

    .line 393
    .line 394
    const-string p0, "screen"

    .line 395
    .line 396
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p0

    .line 400
    instance-of v1, p0, Ljava/lang/String;

    .line 401
    .line 402
    if-eqz v1, :cond_b

    .line 403
    .line 404
    check-cast p0, Ljava/lang/String;

    .line 405
    .line 406
    goto :goto_7

    .line 407
    :cond_b
    move-object p0, v4

    .line 408
    :goto_7
    if-eqz p0, :cond_c

    .line 409
    .line 410
    const/16 v1, 0x2e

    .line 411
    .line 412
    invoke-static {p0, v1, p0}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object p0

    .line 416
    goto :goto_8

    .line 417
    :cond_c
    move-object p0, v4

    .line 418
    goto :goto_8

    .line 419
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result p0

    .line 426
    if-eqz p0, :cond_c

    .line 427
    .line 428
    iget-object p0, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 429
    .line 430
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object p0

    .line 434
    instance-of v1, p0, Ljava/lang/String;

    .line 435
    .line 436
    if-eqz v1, :cond_c

    .line 437
    .line 438
    check-cast p0, Ljava/lang/String;

    .line 439
    .line 440
    :goto_8
    if-nez p0, :cond_e

    .line 441
    .line 442
    goto/16 :goto_f

    .line 443
    .line 444
    :cond_e
    invoke-interface {v0, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    goto/16 :goto_6

    .line 448
    .line 449
    :cond_f
    iget-object v1, p1, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 450
    .line 451
    const-string v5, "ui.click"

    .line 452
    .line 453
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    if-eqz v1, :cond_13

    .line 458
    .line 459
    iget-object p0, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 460
    .line 461
    const-string v1, "view.id"

    .line 462
    .line 463
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object p0

    .line 467
    if-nez p0, :cond_10

    .line 468
    .line 469
    iget-object p0, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 470
    .line 471
    const-string v1, "view.tag"

    .line 472
    .line 473
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object p0

    .line 477
    if-nez p0, :cond_10

    .line 478
    .line 479
    iget-object p0, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 480
    .line 481
    const-string v1, "view.class"

    .line 482
    .line 483
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object p0

    .line 487
    :cond_10
    instance-of v1, p0, Ljava/lang/String;

    .line 488
    .line 489
    if-eqz v1, :cond_11

    .line 490
    .line 491
    check-cast p0, Ljava/lang/String;

    .line 492
    .line 493
    goto :goto_9

    .line 494
    :cond_11
    move-object p0, v4

    .line 495
    :goto_9
    if-nez p0, :cond_12

    .line 496
    .line 497
    goto/16 :goto_f

    .line 498
    .line 499
    :cond_12
    iget-object v1, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 500
    .line 501
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    .line 503
    .line 504
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 505
    .line 506
    .line 507
    const-string v5, "ui.tap"

    .line 508
    .line 509
    move-object v1, v4

    .line 510
    goto/16 :goto_e

    .line 511
    .line 512
    :cond_13
    iget-object v1, p1, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 513
    .line 514
    const-string v5, "system"

    .line 515
    .line 516
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    const-string v5, "action"

    .line 521
    .line 522
    if-eqz v1, :cond_19

    .line 523
    .line 524
    iget-object v1, p1, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 525
    .line 526
    const-string v7, "network.event"

    .line 527
    .line 528
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    if-eqz v1, :cond_19

    .line 533
    .line 534
    iget-object v1, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 535
    .line 536
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    const-string v5, "NETWORK_LOST"

    .line 541
    .line 542
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    if-eqz v1, :cond_14

    .line 547
    .line 548
    const-string v1, "offline"

    .line 549
    .line 550
    goto :goto_b

    .line 551
    :cond_14
    iget-object v1, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    const-string v5, "network_type"

    .line 557
    .line 558
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    if-eqz v1, :cond_1f

    .line 563
    .line 564
    iget-object v1, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 565
    .line 566
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    instance-of v7, v1, Ljava/lang/String;

    .line 571
    .line 572
    if-eqz v7, :cond_15

    .line 573
    .line 574
    check-cast v1, Ljava/lang/String;

    .line 575
    .line 576
    goto :goto_a

    .line 577
    :cond_15
    move-object v1, v4

    .line 578
    :goto_a
    if-eqz v1, :cond_1f

    .line 579
    .line 580
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    if-nez v1, :cond_16

    .line 585
    .line 586
    goto/16 :goto_f

    .line 587
    .line 588
    :cond_16
    iget-object v1, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 589
    .line 590
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    :goto_b
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    iget-object v1, p0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->a:Ljava/lang/String;

    .line 598
    .line 599
    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v5

    .line 603
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-eqz v1, :cond_17

    .line 608
    .line 609
    goto/16 :goto_f

    .line 610
    .line 611
    :cond_17
    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    instance-of v5, v1, Ljava/lang/String;

    .line 616
    .line 617
    if-eqz v5, :cond_18

    .line 618
    .line 619
    check-cast v1, Ljava/lang/String;

    .line 620
    .line 621
    goto :goto_c

    .line 622
    :cond_18
    move-object v1, v4

    .line 623
    :goto_c
    iput-object v1, p0, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->a:Ljava/lang/String;

    .line 624
    .line 625
    const-string v5, "device.connectivity"

    .line 626
    .line 627
    goto/16 :goto_6

    .line 628
    .line 629
    :cond_19
    iget-object p0, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 630
    .line 631
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object p0

    .line 635
    const-string v1, "BATTERY_CHANGED"

    .line 636
    .line 637
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result p0

    .line 641
    if-eqz p0, :cond_1d

    .line 642
    .line 643
    iget-object p0, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 644
    .line 645
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 646
    .line 647
    .line 648
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 649
    .line 650
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 651
    .line 652
    .line 653
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 654
    .line 655
    .line 656
    move-result-object p0

    .line 657
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 658
    .line 659
    .line 660
    move-result-object p0

    .line 661
    :cond_1a
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 662
    .line 663
    .line 664
    move-result v5

    .line 665
    if-eqz v5, :cond_1c

    .line 666
    .line 667
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v5

    .line 671
    check-cast v5, Ljava/util/Map$Entry;

    .line 672
    .line 673
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v6

    .line 677
    check-cast v6, Ljava/lang/String;

    .line 678
    .line 679
    const-string v7, "level"

    .line 680
    .line 681
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v7

    .line 685
    if-nez v7, :cond_1b

    .line 686
    .line 687
    const-string v7, "charging"

    .line 688
    .line 689
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v6

    .line 693
    if-eqz v6, :cond_1a

    .line 694
    .line 695
    :cond_1b
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v6

    .line 699
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v5

    .line 703
    invoke-virtual {v1, v6, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    goto :goto_d

    .line 707
    :cond_1c
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 708
    .line 709
    .line 710
    const-string v5, "device.battery"

    .line 711
    .line 712
    goto/16 :goto_6

    .line 713
    .line 714
    :cond_1d
    iget-object v5, p1, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 715
    .line 716
    iget-object p0, p1, Lio/sentry/Breadcrumb;->m:Ljava/lang/String;

    .line 717
    .line 718
    iget-object v1, p1, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 719
    .line 720
    iget-object v6, p1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 721
    .line 722
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 723
    .line 724
    .line 725
    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 726
    .line 727
    .line 728
    :goto_e
    if-eqz v5, :cond_1f

    .line 729
    .line 730
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 731
    .line 732
    .line 733
    move-result v6

    .line 734
    if-nez v6, :cond_1e

    .line 735
    .line 736
    goto :goto_f

    .line 737
    :cond_1e
    new-instance v4, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    .line 738
    .line 739
    invoke-direct {v4}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;-><init>()V

    .line 740
    .line 741
    .line 742
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->b()Ljava/util/Date;

    .line 743
    .line 744
    .line 745
    move-result-object v6

    .line 746
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 747
    .line 748
    .line 749
    move-result-wide v6

    .line 750
    iput-wide v6, v4, Lio/sentry/rrweb/RRWebEvent;->k:J

    .line 751
    .line 752
    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->b()Ljava/util/Date;

    .line 753
    .line 754
    .line 755
    move-result-object p1

    .line 756
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 757
    .line 758
    .line 759
    move-result-wide v6

    .line 760
    long-to-double v6, v6

    .line 761
    div-double/2addr v6, v2

    .line 762
    iput-wide v6, v4, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->m:D

    .line 763
    .line 764
    const-string p1, "default"

    .line 765
    .line 766
    iput-object p1, v4, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->n:Ljava/lang/String;

    .line 767
    .line 768
    iput-object v5, v4, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->o:Ljava/lang/String;

    .line 769
    .line 770
    iput-object p0, v4, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->p:Ljava/lang/String;

    .line 771
    .line 772
    iput-object v1, v4, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->q:Lio/sentry/SentryLevel;

    .line 773
    .line 774
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 775
    .line 776
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 777
    .line 778
    .line 779
    iput-object p0, v4, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->r:Ljava/util/concurrent/ConcurrentHashMap;

    .line 780
    .line 781
    :cond_1f
    :goto_f
    return-object v4
.end method
