.class public final Lio/sentry/JsonReflectionObjectSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/JsonReflectionObjectSerializer;->a:Ljava/util/HashSet;

    .line 10
    .line 11
    iput p1, p0, Lio/sentry/JsonReflectionObjectSerializer;->b:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lio/sentry/ILogger;)Ljava/util/HashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p0, p2, v3}, Lio/sentry/JsonReflectionObjectSerializer;->b(Lio/sentry/ILogger;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
.end method

.method public final b(Lio/sentry/ILogger;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p2, Ljava/lang/Character;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_1
    instance-of v1, p2, Ljava/lang/Number;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    return-object p2

    .line 19
    :cond_2
    instance-of v1, p2, Ljava/lang/Boolean;

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_3
    instance-of v1, p2, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    return-object p2

    .line 29
    :cond_4
    instance-of v1, p2, Ljava/util/Locale;

    .line 30
    .line 31
    if-eqz v1, :cond_5

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_5
    instance-of v1, p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v1, :cond_7

    .line 42
    .line 43
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 44
    .line 45
    sget-object p0, Lio/sentry/util/JsonSerializationUtils;->a:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    if-ge v2, p0, :cond_6

    .line 57
    .line 58
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_6
    return-object p1

    .line 73
    :cond_7
    instance-of v1, p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    .line 75
    if-eqz v1, :cond_8

    .line 76
    .line 77
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_8
    instance-of v1, p2, Ljava/net/URI;

    .line 89
    .line 90
    if-eqz v1, :cond_9

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_9
    instance-of v1, p2, Ljava/net/InetAddress;

    .line 98
    .line 99
    if-eqz v1, :cond_a

    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :cond_a
    instance-of v1, p2, Ljava/util/UUID;

    .line 107
    .line 108
    if-eqz v1, :cond_b

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :cond_b
    instance-of v1, p2, Ljava/util/Currency;

    .line 116
    .line 117
    if-eqz v1, :cond_c

    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :cond_c
    instance-of v1, p2, Ljava/util/Calendar;

    .line 125
    .line 126
    if-eqz v1, :cond_d

    .line 127
    .line 128
    check-cast p2, Ljava/util/Calendar;

    .line 129
    .line 130
    invoke-static {p2}, Lio/sentry/util/JsonSerializationUtils;->a(Ljava/util/Calendar;)Ljava/util/HashMap;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_e

    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    :cond_e
    iget-object v1, p0, Lio/sentry/JsonReflectionObjectSerializer;->a:Ljava/util/HashSet;

    .line 151
    .line 152
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_f

    .line 157
    .line 158
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 159
    .line 160
    const-string v0, "Cyclic reference detected. Calling toString() on object."

    .line 161
    .line 162
    new-array v1, v2, [Ljava/lang/Object;

    .line 163
    .line 164
    invoke-interface {p1, p0, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :cond_f
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    iget v4, p0, Lio/sentry/JsonReflectionObjectSerializer;->b:I

    .line 180
    .line 181
    if-le v3, v4, :cond_10

    .line 182
    .line 183
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 187
    .line 188
    const-string v0, "Max depth exceeded. Calling toString() on object."

    .line 189
    .line 190
    new-array v1, v2, [Ljava/lang/Object;

    .line 191
    .line 192
    invoke-interface {p1, p0, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    return-object p0

    .line 200
    :cond_10
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_11

    .line 209
    .line 210
    move-object v3, p2

    .line 211
    check-cast v3, [Ljava/lang/Object;

    .line 212
    .line 213
    new-instance v4, Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .line 217
    .line 218
    array-length v5, v3

    .line 219
    :goto_1
    if-ge v2, v5, :cond_14

    .line 220
    .line 221
    aget-object v6, v3, v2

    .line 222
    .line 223
    invoke-virtual {p0, p1, v6}, Lio/sentry/JsonReflectionObjectSerializer;->b(Lio/sentry/ILogger;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    add-int/lit8 v2, v2, 0x1

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :catchall_0
    move-exception p0

    .line 234
    goto :goto_5

    .line 235
    :catch_0
    move-exception p0

    .line 236
    goto :goto_4

    .line 237
    :cond_11
    instance-of v2, p2, Ljava/util/Collection;

    .line 238
    .line 239
    if-eqz v2, :cond_12

    .line 240
    .line 241
    move-object v2, p2

    .line 242
    check-cast v2, Ljava/util/Collection;

    .line 243
    .line 244
    new-instance v4, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-eqz v3, :cond_14

    .line 258
    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {p0, p1, v3}, Lio/sentry/JsonReflectionObjectSerializer;->b(Lio/sentry/ILogger;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_12
    instance-of v2, p2, Ljava/util/Map;

    .line 272
    .line 273
    if-eqz v2, :cond_13

    .line 274
    .line 275
    move-object v2, p2

    .line 276
    check-cast v2, Ljava/util/Map;

    .line 277
    .line 278
    invoke-virtual {p0, v2, p1}, Lio/sentry/JsonReflectionObjectSerializer;->a(Ljava/util/Map;Lio/sentry/ILogger;)Ljava/util/HashMap;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    goto :goto_3

    .line 283
    :cond_13
    invoke-virtual {p0, p1, p2}, Lio/sentry/JsonReflectionObjectSerializer;->c(Lio/sentry/ILogger;Ljava/lang/Object;)Ljava/util/HashMap;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result p0

    .line 291
    if-eqz p0, :cond_14

    .line 292
    .line 293
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_14
    :goto_3
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    return-object v4

    .line 301
    :goto_4
    :try_start_1
    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 302
    .line 303
    const-string v3, "Not serializing object due to throwing sub-path."

    .line 304
    .line 305
    invoke-interface {p1, v2, v3, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    return-object v0

    .line 312
    :goto_5
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    throw p0
.end method

.method public final c(Lio/sentry/ILogger;Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    array-length v2, v0

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v4, v2, :cond_2

    .line 18
    .line 19
    aget-object v5, v0, v4

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const/4 v7, 0x1

    .line 48
    :try_start_0
    invoke-virtual {v5, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {p0, p1, v7}, Lio/sentry/JsonReflectionObjectSerializer;->b(Lio/sentry/ILogger;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    sget-object v5, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 67
    .line 68
    const-string v7, "Cannot access field "

    .line 69
    .line 70
    const-string v8, "."

    .line 71
    .line 72
    invoke-static {v7, v6, v8}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    new-array v7, v3, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-interface {p1, v5, v6, v7}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-object v1
.end method
