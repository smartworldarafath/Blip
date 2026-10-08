.class public Lokhttp3/internal/platform/Platform;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/platform/Platform$Companion;
    }
.end annotation


# static fields
.field public static volatile a:Lokhttp3/internal/platform/Platform;

.field public static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v0, "java.vm.name"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Dalvik"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    sget-object v0, Lokhttp3/internal/platform/android/AndroidLog;->b:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    sget-object v5, Lokhttp3/internal/platform/android/AndroidLog;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 56
    .line 57
    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_0

    .line 62
    .line 63
    invoke-virtual {v4, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 64
    .line 65
    .line 66
    const/4 v5, 0x3

    .line 67
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const/4 v5, 0x4

    .line 77
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 87
    .line 88
    :goto_1
    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 89
    .line 90
    .line 91
    sget-object v3, Lokhttp3/internal/platform/android/AndroidLogHandler;->a:Lokhttp3/internal/platform/android/AndroidLogHandler;

    .line 92
    .line 93
    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    sget-boolean v0, Lokhttp3/internal/platform/Android10Platform;->d:Z

    .line 98
    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    new-instance v0, Lokhttp3/internal/platform/Android10Platform;

    .line 102
    .line 103
    invoke-direct {v0}, Lokhttp3/internal/platform/Android10Platform;-><init>()V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    move-object v0, v2

    .line 108
    :goto_2
    if-nez v0, :cond_11

    .line 109
    .line 110
    sget-boolean v0, Lokhttp3/internal/platform/AndroidPlatform;->e:Z

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    new-instance v2, Lokhttp3/internal/platform/AndroidPlatform;

    .line 115
    .line 116
    invoke-direct {v2}, Lokhttp3/internal/platform/AndroidPlatform;-><init>()V

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    :goto_3
    move-object v0, v2

    .line 123
    goto/16 :goto_9

    .line 124
    .line 125
    :cond_6
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    aget-object v0, v0, v1

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const-string v3, "Conscrypt"

    .line 136
    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_8

    .line 142
    .line 143
    sget-boolean v0, Lokhttp3/internal/platform/ConscryptPlatform;->d:Z

    .line 144
    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    new-instance v0, Lokhttp3/internal/platform/ConscryptPlatform;

    .line 148
    .line 149
    invoke-direct {v0}, Lokhttp3/internal/platform/ConscryptPlatform;-><init>()V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_7
    move-object v0, v2

    .line 154
    :goto_4
    if-eqz v0, :cond_8

    .line 155
    .line 156
    goto/16 :goto_9

    .line 157
    .line 158
    :cond_8
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    aget-object v0, v0, v1

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string v3, "BC"

    .line 169
    .line 170
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_a

    .line 175
    .line 176
    sget-boolean v0, Lokhttp3/internal/platform/BouncyCastlePlatform;->d:Z

    .line 177
    .line 178
    if-eqz v0, :cond_9

    .line 179
    .line 180
    new-instance v0, Lokhttp3/internal/platform/BouncyCastlePlatform;

    .line 181
    .line 182
    invoke-direct {v0}, Lokhttp3/internal/platform/BouncyCastlePlatform;-><init>()V

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_9
    move-object v0, v2

    .line 187
    :goto_5
    if-eqz v0, :cond_a

    .line 188
    .line 189
    goto/16 :goto_9

    .line 190
    .line 191
    :cond_a
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    aget-object v0, v0, v1

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const-string v1, "OpenJSSE"

    .line 202
    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_c

    .line 208
    .line 209
    sget-boolean v0, Lokhttp3/internal/platform/OpenJSSEPlatform;->d:Z

    .line 210
    .line 211
    if-eqz v0, :cond_b

    .line 212
    .line 213
    new-instance v0, Lokhttp3/internal/platform/OpenJSSEPlatform;

    .line 214
    .line 215
    invoke-direct {v0}, Lokhttp3/internal/platform/OpenJSSEPlatform;-><init>()V

    .line 216
    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_b
    move-object v0, v2

    .line 220
    :goto_6
    if-eqz v0, :cond_c

    .line 221
    .line 222
    goto/16 :goto_9

    .line 223
    .line 224
    :cond_c
    sget-boolean v0, Lokhttp3/internal/platform/Jdk9Platform;->c:Z

    .line 225
    .line 226
    if-eqz v0, :cond_d

    .line 227
    .line 228
    new-instance v0, Lokhttp3/internal/platform/Jdk9Platform;

    .line 229
    .line 230
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 231
    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_d
    move-object v0, v2

    .line 235
    :goto_7
    if-eqz v0, :cond_e

    .line 236
    .line 237
    goto :goto_9

    .line 238
    :cond_e
    const-class v0, Ljavax/net/ssl/SSLSocket;

    .line 239
    .line 240
    const-string v1, "java.specification.version"

    .line 241
    .line 242
    const-string v3, "unknown"

    .line 243
    .line 244
    invoke-static {v1, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    const/16 v3, 0x9

    .line 256
    .line 257
    if-lt v1, v3, :cond_f

    .line 258
    .line 259
    goto :goto_8

    .line 260
    :catch_0
    :cond_f
    const-string v1, "org.eclipse.jetty.alpn.ALPN"

    .line 261
    .line 262
    const/4 v3, 0x1

    .line 263
    :try_start_1
    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    const-string v4, "org.eclipse.jetty.alpn.ALPN$Provider"

    .line 268
    .line 269
    invoke-static {v4, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    const-string v5, "org.eclipse.jetty.alpn.ALPN$ClientProvider"

    .line 274
    .line 275
    invoke-static {v5, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    const-string v5, "org.eclipse.jetty.alpn.ALPN$ServerProvider"

    .line 280
    .line 281
    invoke-static {v5, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    const-string v3, "put"

    .line 286
    .line 287
    filled-new-array {v0, v4}, [Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    const-string v3, "get"

    .line 296
    .line 297
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    const-string v3, "remove"

    .line 306
    .line 307
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    new-instance v6, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;

    .line 316
    .line 317
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    invoke-direct/range {v6 .. v11}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    .line 334
    .line 335
    move-object v2, v6

    .line 336
    :catch_1
    :goto_8
    if-eqz v2, :cond_10

    .line 337
    .line 338
    goto/16 :goto_3

    .line 339
    .line 340
    :cond_10
    new-instance v0, Lokhttp3/internal/platform/Platform;

    .line 341
    .line 342
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 343
    .line 344
    .line 345
    :cond_11
    :goto_9
    sput-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 346
    .line 347
    const-class v0, Lokhttp3/OkHttpClient;

    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    sput-object v0, Lokhttp3/internal/platform/Platform;->b:Ljava/util/logging/Logger;

    .line 358
    .line 359
    return-void
.end method

.method public static i(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 8
    .line 9
    :goto_0
    sget-object v0, Lokhttp3/internal/platform/Platform;->b:Ljava/util/logging/Logger;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lokhttp3/internal/platform/Platform;->c(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lokhttp3/internal/tls/BasicCertificateChainCleaner;-><init>(Lokhttp3/internal/tls/TrustRootIndex;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public c(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;
    .locals 1

    .line 1
    new-instance p0, Lokhttp3/internal/tls/BasicTrustRootIndex;

    .line 2
    .line 3
    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    array-length v0, p1

    .line 11
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, [Ljava/security/cert/X509Certificate;

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lokhttp3/internal/tls/BasicTrustRootIndex;-><init>([Ljava/security/cert/X509Certificate;)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p0, Lokhttp3/internal/platform/Platform;->b:Ljava/util/logging/Logger;

    .line 2
    .line 3
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/Throwable;

    .line 12
    .line 13
    const-string v0, "response.body().close()"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0
.end method

.method public j(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    .line 4
    .line 5
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :cond_0
    const/4 p0, 0x5

    .line 10
    check-cast p1, Ljava/lang/Throwable;

    .line 11
    .line 12
    invoke-static {p2, p0, p1}, Lokhttp3/internal/platform/Platform;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public k()Ljavax/net/ssl/SSLContext;
    .locals 0

    .line 1
    const-string p0, "TLS"

    .line 2
    .line 3
    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public l(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/platform/Platform;->k()Ljavax/net/ssl/SSLContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/AssertionError;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "No System TLS: "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public m()Ljavax/net/ssl/X509TrustManager;
    .locals 3

    .line 1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    array-length v1, p0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    aget-object v1, p0, v1

    .line 26
    .line 27
    instance-of v2, v1, Ljavax/net/ssl/X509TrustManager;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-string v1, "Unexpected default trust managers: "

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Lu2;->f(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
