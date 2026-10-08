.class public Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/Call$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field public static final I:Ljava/util/List;

.field public static final J:Ljava/util/List;


# instance fields
.field public final A:Ljava/util/List;

.field public final B:Ljavax/net/ssl/HostnameVerifier;

.field public final C:Lokhttp3/CertificatePinner;

.field public final D:Lokhttp3/internal/tls/CertificateChainCleaner;

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:Lokhttp3/internal/connection/RouteDatabase;

.field public final j:Lokhttp3/Dispatcher;

.field public final k:Lokhttp3/ConnectionPool;

.field public final l:Ljava/util/List;

.field public final m:Ljava/util/List;

.field public final n:Lokhttp3/EventListener$Factory;

.field public final o:Z

.field public final p:Lokhttp3/Authenticator;

.field public final q:Z

.field public final r:Z

.field public final s:Lokhttp3/CookieJar;

.field public final t:Lokhttp3/Dns;

.field public final u:Ljava/net/ProxySelector;

.field public final v:Lokhttp3/Authenticator;

.field public final w:Ljavax/net/SocketFactory;

.field public final x:Ljavax/net/ssl/SSLSocketFactory;

.field public final y:Ljavax/net/ssl/X509TrustManager;

.field public final z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lokhttp3/Protocol;->n:Lokhttp3/Protocol;

    .line 2
    .line 3
    sget-object v1, Lokhttp3/Protocol;->l:Lokhttp3/Protocol;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lokhttp3/Protocol;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lokhttp3/internal/Util;->i([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lokhttp3/OkHttpClient;->I:Ljava/util/List;

    .line 14
    .line 15
    sget-object v0, Lokhttp3/ConnectionSpec;->e:Lokhttp3/ConnectionSpec;

    .line 16
    .line 17
    sget-object v1, Lokhttp3/ConnectionSpec;->f:Lokhttp3/ConnectionSpec;

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Lokhttp3/ConnectionSpec;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lokhttp3/internal/Util;->i([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lokhttp3/OkHttpClient;->J:Ljava/util/List;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    .line 10
    .line 11
    iput-object v1, p0, Lokhttp3/OkHttpClient;->j:Lokhttp3/Dispatcher;

    .line 12
    .line 13
    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->b:Lokhttp3/ConnectionPool;

    .line 14
    .line 15
    iput-object v1, p0, Lokhttp3/OkHttpClient;->k:Lokhttp3/ConnectionPool;

    .line 16
    .line 17
    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {v1}, Lokhttp3/internal/Util;->t(Ljava/util/List;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lokhttp3/OkHttpClient;->l:Ljava/util/List;

    .line 24
    .line 25
    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-static {v1}, Lokhttp3/internal/Util;->t(Ljava/util/List;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lokhttp3/OkHttpClient;->m:Ljava/util/List;

    .line 32
    .line 33
    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->e:Lfe;

    .line 34
    .line 35
    iput-object v1, p0, Lokhttp3/OkHttpClient;->n:Lokhttp3/EventListener$Factory;

    .line 36
    .line 37
    iget-boolean v1, v0, Lokhttp3/OkHttpClient$Builder;->f:Z

    .line 38
    .line 39
    iput-boolean v1, p0, Lokhttp3/OkHttpClient;->o:Z

    .line 40
    .line 41
    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->g:Lokhttp3/Authenticator;

    .line 42
    .line 43
    iput-object v1, p0, Lokhttp3/OkHttpClient;->p:Lokhttp3/Authenticator;

    .line 44
    .line 45
    iget-boolean v1, v0, Lokhttp3/OkHttpClient$Builder;->h:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lokhttp3/OkHttpClient;->q:Z

    .line 48
    .line 49
    iget-boolean v1, v0, Lokhttp3/OkHttpClient$Builder;->i:Z

    .line 50
    .line 51
    iput-boolean v1, p0, Lokhttp3/OkHttpClient;->r:Z

    .line 52
    .line 53
    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->j:Lokhttp3/CookieJar;

    .line 54
    .line 55
    iput-object v1, p0, Lokhttp3/OkHttpClient;->s:Lokhttp3/CookieJar;

    .line 56
    .line 57
    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->k:Lokhttp3/Dns;

    .line 58
    .line 59
    iput-object v1, p0, Lokhttp3/OkHttpClient;->t:Lokhttp3/Dns;

    .line 60
    .line 61
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    sget-object v1, Lokhttp3/internal/proxy/NullProxySelector;->a:Lokhttp3/internal/proxy/NullProxySelector;

    .line 68
    .line 69
    :cond_0
    iput-object v1, p0, Lokhttp3/OkHttpClient;->u:Ljava/net/ProxySelector;

    .line 70
    .line 71
    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->l:Lokhttp3/Authenticator;

    .line 72
    .line 73
    iput-object v1, p0, Lokhttp3/OkHttpClient;->v:Lokhttp3/Authenticator;

    .line 74
    .line 75
    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->m:Ljavax/net/SocketFactory;

    .line 76
    .line 77
    iput-object v1, p0, Lokhttp3/OkHttpClient;->w:Ljavax/net/SocketFactory;

    .line 78
    .line 79
    iget-object v1, v0, Lokhttp3/OkHttpClient$Builder;->n:Ljava/util/List;

    .line 80
    .line 81
    iput-object v1, p0, Lokhttp3/OkHttpClient;->z:Ljava/util/List;

    .line 82
    .line 83
    iget-object v2, v0, Lokhttp3/OkHttpClient$Builder;->o:Ljava/util/List;

    .line 84
    .line 85
    iput-object v2, p0, Lokhttp3/OkHttpClient;->A:Ljava/util/List;

    .line 86
    .line 87
    iget-object v2, v0, Lokhttp3/OkHttpClient$Builder;->p:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 88
    .line 89
    iput-object v2, p0, Lokhttp3/OkHttpClient;->B:Ljavax/net/ssl/HostnameVerifier;

    .line 90
    .line 91
    iget v2, v0, Lokhttp3/OkHttpClient$Builder;->r:I

    .line 92
    .line 93
    iput v2, p0, Lokhttp3/OkHttpClient;->E:I

    .line 94
    .line 95
    iget v2, v0, Lokhttp3/OkHttpClient$Builder;->s:I

    .line 96
    .line 97
    iput v2, p0, Lokhttp3/OkHttpClient;->F:I

    .line 98
    .line 99
    iget v2, v0, Lokhttp3/OkHttpClient$Builder;->t:I

    .line 100
    .line 101
    iput v2, p0, Lokhttp3/OkHttpClient;->G:I

    .line 102
    .line 103
    new-instance v2, Lokhttp3/internal/connection/RouteDatabase;

    .line 104
    .line 105
    invoke-direct {v2}, Lokhttp3/internal/connection/RouteDatabase;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v2, p0, Lokhttp3/OkHttpClient;->H:Lokhttp3/internal/connection/RouteDatabase;

    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    if-eqz v1, :cond_1

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_4

    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Lokhttp3/ConnectionSpec;

    .line 135
    .line 136
    iget-boolean v3, v3, Lokhttp3/ConnectionSpec;->a:Z

    .line 137
    .line 138
    if-eqz v3, :cond_2

    .line 139
    .line 140
    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 141
    .line 142
    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 143
    .line 144
    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->m()Ljavax/net/ssl/X509TrustManager;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iput-object v1, p0, Lokhttp3/OkHttpClient;->y:Ljavax/net/ssl/X509TrustManager;

    .line 149
    .line 150
    sget-object v3, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 151
    .line 152
    invoke-virtual {v3, v1}, Lokhttp3/internal/platform/Platform;->l(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    iput-object v3, p0, Lokhttp3/OkHttpClient;->x:Ljavax/net/ssl/SSLSocketFactory;

    .line 157
    .line 158
    sget-object v3, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 159
    .line 160
    invoke-virtual {v3, v1}, Lokhttp3/internal/platform/Platform;->b(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iput-object v1, p0, Lokhttp3/OkHttpClient;->D:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 165
    .line 166
    iget-object v0, v0, Lokhttp3/OkHttpClient$Builder;->q:Lokhttp3/CertificatePinner;

    .line 167
    .line 168
    iget-object v3, v0, Lokhttp3/CertificatePinner;->b:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 169
    .line 170
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_3

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_3
    new-instance v3, Lokhttp3/CertificatePinner;

    .line 178
    .line 179
    iget-object v0, v0, Lokhttp3/CertificatePinner;->a:Ljava/util/Set;

    .line 180
    .line 181
    invoke-direct {v3, v0, v1}, Lokhttp3/CertificatePinner;-><init>(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V

    .line 182
    .line 183
    .line 184
    move-object v0, v3

    .line 185
    :goto_0
    iput-object v0, p0, Lokhttp3/OkHttpClient;->C:Lokhttp3/CertificatePinner;

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_4
    :goto_1
    iput-object v2, p0, Lokhttp3/OkHttpClient;->x:Ljavax/net/ssl/SSLSocketFactory;

    .line 189
    .line 190
    iput-object v2, p0, Lokhttp3/OkHttpClient;->D:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 191
    .line 192
    iput-object v2, p0, Lokhttp3/OkHttpClient;->y:Ljavax/net/ssl/X509TrustManager;

    .line 193
    .line 194
    sget-object v0, Lokhttp3/CertificatePinner;->c:Lokhttp3/CertificatePinner;

    .line 195
    .line 196
    iput-object v0, p0, Lokhttp3/OkHttpClient;->C:Lokhttp3/CertificatePinner;

    .line 197
    .line 198
    :goto_2
    iget-object v0, p0, Lokhttp3/OkHttpClient;->y:Ljavax/net/ssl/X509TrustManager;

    .line 199
    .line 200
    iget-object v1, p0, Lokhttp3/OkHttpClient;->D:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 201
    .line 202
    iget-object v3, p0, Lokhttp3/OkHttpClient;->x:Ljavax/net/ssl/SSLSocketFactory;

    .line 203
    .line 204
    iget-object v4, p0, Lokhttp3/OkHttpClient;->m:Ljava/util/List;

    .line 205
    .line 206
    iget-object v5, p0, Lokhttp3/OkHttpClient;->l:Ljava/util/List;

    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-nez v6, :cond_10

    .line 216
    .line 217
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-nez v5, :cond_f

    .line 225
    .line 226
    iget-object v4, p0, Lokhttp3/OkHttpClient;->z:Ljava/util/List;

    .line 227
    .line 228
    if-eqz v4, :cond_5

    .line 229
    .line 230
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-eqz v5, :cond_5

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-eqz v5, :cond_a

    .line 246
    .line 247
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    check-cast v5, Lokhttp3/ConnectionSpec;

    .line 252
    .line 253
    iget-boolean v5, v5, Lokhttp3/ConnectionSpec;->a:Z

    .line 254
    .line 255
    if-eqz v5, :cond_6

    .line 256
    .line 257
    if-eqz v3, :cond_9

    .line 258
    .line 259
    if-eqz v1, :cond_8

    .line 260
    .line 261
    if-eqz v0, :cond_7

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_7
    const-string p0, "x509TrustManager == null"

    .line 265
    .line 266
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v2

    .line 270
    :cond_8
    const-string p0, "certificateChainCleaner == null"

    .line 271
    .line 272
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw v2

    .line 276
    :cond_9
    const-string p0, "sslSocketFactory == null"

    .line 277
    .line 278
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw v2

    .line 282
    :cond_a
    :goto_3
    const-string v4, "Check failed."

    .line 283
    .line 284
    if-nez v3, :cond_e

    .line 285
    .line 286
    if-nez v1, :cond_d

    .line 287
    .line 288
    if-nez v0, :cond_c

    .line 289
    .line 290
    iget-object p0, p0, Lokhttp3/OkHttpClient;->C:Lokhttp3/CertificatePinner;

    .line 291
    .line 292
    sget-object v0, Lokhttp3/CertificatePinner;->c:Lokhttp3/CertificatePinner;

    .line 293
    .line 294
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    if-eqz p0, :cond_b

    .line 299
    .line 300
    :goto_4
    return-void

    .line 301
    :cond_b
    invoke-static {v4}, Lu2;->l(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw v2

    .line 305
    :cond_c
    invoke-static {v4}, Lu2;->l(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v2

    .line 309
    :cond_d
    invoke-static {v4}, Lu2;->l(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw v2

    .line 313
    :cond_e
    invoke-static {v4}, Lu2;->l(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v2

    .line 317
    :cond_f
    const-string p0, "Null network interceptor: "

    .line 318
    .line 319
    invoke-static {v4, p0}, Lk8;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v2

    .line 323
    :cond_10
    const-string p0, "Null interceptor: "

    .line 324
    .line 325
    invoke-static {v5, p0}, Lk8;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw v2
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
