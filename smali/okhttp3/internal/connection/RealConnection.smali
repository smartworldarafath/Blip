.class public final Lokhttp3/internal/connection/RealConnection;
.super Lokhttp3/internal/http2/Http2Connection$Listener;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/RealConnection$WhenMappings;
    }
.end annotation


# instance fields
.field public final b:Lokhttp3/Route;

.field public c:Ljava/net/Socket;

.field public d:Ljava/net/Socket;

.field public e:Lokhttp3/Handshake;

.field public f:Lokhttp3/Protocol;

.field public g:Lokhttp3/internal/http2/Http2Connection;

.field public h:Lokio/RealBufferedSource;

.field public i:Lokio/RealBufferedSink;

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public final p:Ljava/util/ArrayList;

.field public q:J


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->o:I

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->p:Ljava/util/ArrayList;

    .line 21
    .line 22
    const-wide p1, 0x7fffffffffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iput-wide p1, p0, Lokhttp3/internal/connection/RealConnection;->q:J

    .line 28
    .line 29
    return-void
.end method

.method public static d(Lokhttp3/OkHttpClient;Lokhttp3/Route;Ljava/io/IOException;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 18
    .line 19
    iget-object v1, v0, Lokhttp3/Address;->g:Ljava/net/ProxySelector;

    .line 20
    .line 21
    iget-object v0, v0, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 22
    .line 23
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->g()Ljava/net/URI;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v2, p1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lokhttp3/OkHttpClient;->H:Lokhttp3/internal/connection/RouteDatabase;

    .line 37
    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object p2, p0, Lokhttp3/internal/connection/RouteDatabase;->a:Ljava/util/LinkedHashSet;

    .line 40
    .line 41
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    iget p1, p2, Lokhttp3/internal/http2/Settings;->a:I

    .line 6
    .line 7
    and-int/lit8 p1, p1, 0x10

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p2, Lokhttp3/internal/http2/Settings;->b:[I

    .line 12
    .line 13
    const/4 p2, 0x4

    .line 14
    aget p1, p1, p2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const p1, 0x7fffffff

    .line 18
    .line 19
    .line 20
    :goto_0
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
.end method

.method public final b(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 1

    .line 1
    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->o:Lokhttp3/internal/http2/ErrorCode;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p0, v0}, Lokhttp3/internal/http2/Http2Stream;->c(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final c(IIIZLokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 11

    .line 1
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->f:Lokhttp3/Protocol;

    .line 5
    .line 6
    if-nez v0, :cond_e

    .line 7
    .line 8
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 9
    .line 10
    iget-object v0, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 11
    .line 12
    iget-object v0, v0, Lokhttp3/Address;->j:Ljava/util/List;

    .line 13
    .line 14
    new-instance v7, Lokhttp3/internal/connection/ConnectionSpecSelector;

    .line 15
    .line 16
    invoke-direct {v7, v0}, Lokhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 20
    .line 21
    iget-object v1, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 22
    .line 23
    iget-object v2, v1, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    sget-object v1, Lokhttp3/ConnectionSpec;->f:Lokhttp3/ConnectionSpec;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 36
    .line 37
    iget-object v0, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 38
    .line 39
    iget-object v0, v0, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 40
    .line 41
    iget-object v0, v0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 42
    .line 43
    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 44
    .line 45
    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lokhttp3/internal/platform/Platform;->h(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p0, Lokhttp3/internal/connection/RouteException;

    .line 55
    .line 56
    new-instance p1, Ljava/net/UnknownServiceException;

    .line 57
    .line 58
    const-string p2, "CLEARTEXT communication to "

    .line 59
    .line 60
    const-string p3, " not permitted by network security policy"

    .line 61
    .line 62
    invoke-static {p2, v0, p3}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_1
    new-instance p0, Lokhttp3/internal/connection/RouteException;

    .line 74
    .line 75
    new-instance p1, Ljava/net/UnknownServiceException;

    .line 76
    .line 77
    const-string p2, "CLEARTEXT communication not enabled for client"

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_2
    iget-object v0, v1, Lokhttp3/Address;->i:Ljava/util/List;

    .line 87
    .line 88
    sget-object v1, Lokhttp3/Protocol;->o:Lokhttp3/Protocol;

    .line 89
    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_d

    .line 95
    .line 96
    :goto_0
    const/4 v8, 0x0

    .line 97
    move-object v9, v8

    .line 98
    :goto_1
    const/4 v10, 0x1

    .line 99
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 100
    .line 101
    iget-object v1, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 102
    .line 103
    iget-object v1, v1, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 104
    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    iget-object v0, v0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    .line 115
    if-ne v0, v1, :cond_3

    .line 116
    .line 117
    move v0, v10

    .line 118
    goto :goto_2

    .line 119
    :cond_3
    const/4 v0, 0x0

    .line 120
    :goto_2
    if-eqz v0, :cond_4

    .line 121
    .line 122
    move-object v1, p0

    .line 123
    move v2, p1

    .line 124
    move v3, p2

    .line 125
    move v4, p3

    .line 126
    move-object/from16 v5, p5

    .line 127
    .line 128
    move-object/from16 v6, p6

    .line 129
    .line 130
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/RealConnection;->f(IIILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->c:Ljava/net/Socket;

    .line 134
    .line 135
    if-nez v0, :cond_5

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :catch_0
    move-exception v0

    .line 139
    goto :goto_5

    .line 140
    :cond_4
    move-object/from16 v5, p5

    .line 141
    .line 142
    move-object/from16 v6, p6

    .line 143
    .line 144
    invoke-virtual {p0, p1, p2, v5, v6}, Lokhttp3/internal/connection/RealConnection;->e(IILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    invoke-virtual {p0, v7, v5, v6}, Lokhttp3/internal/connection/RealConnection;->g(Lokhttp3/internal/connection/ConnectionSpecSelector;Lokhttp3/Call;Lokhttp3/EventListener;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 151
    .line 152
    iget-object v0, v0, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    .line 156
    .line 157
    :goto_3
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 158
    .line 159
    iget-object p2, p1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 160
    .line 161
    iget-object p2, p2, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 162
    .line 163
    if-eqz p2, :cond_7

    .line 164
    .line 165
    iget-object p1, p1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 172
    .line 173
    if-ne p1, p2, :cond_7

    .line 174
    .line 175
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->c:Ljava/net/Socket;

    .line 176
    .line 177
    if-eqz p1, :cond_6

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    new-instance p0, Lokhttp3/internal/connection/RouteException;

    .line 181
    .line 182
    new-instance p1, Ljava/net/ProtocolException;

    .line 183
    .line 184
    const-string p2, "Too many tunnel connections attempted: 21"

    .line 185
    .line 186
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :cond_7
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 194
    .line 195
    .line 196
    move-result-wide p1

    .line 197
    iput-wide p1, p0, Lokhttp3/internal/connection/RealConnection;->q:J

    .line 198
    .line 199
    return-void

    .line 200
    :catch_1
    move-exception v0

    .line 201
    move-object/from16 v5, p5

    .line 202
    .line 203
    move-object/from16 v6, p6

    .line 204
    .line 205
    :goto_5
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->d:Ljava/net/Socket;

    .line 206
    .line 207
    if-eqz v4, :cond_8

    .line 208
    .line 209
    invoke-static {v4}, Lokhttp3/internal/Util;->c(Ljava/net/Socket;)V

    .line 210
    .line 211
    .line 212
    :cond_8
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->c:Ljava/net/Socket;

    .line 213
    .line 214
    if-eqz v4, :cond_9

    .line 215
    .line 216
    invoke-static {v4}, Lokhttp3/internal/Util;->c(Ljava/net/Socket;)V

    .line 217
    .line 218
    .line 219
    :cond_9
    iput-object v8, p0, Lokhttp3/internal/connection/RealConnection;->d:Ljava/net/Socket;

    .line 220
    .line 221
    iput-object v8, p0, Lokhttp3/internal/connection/RealConnection;->c:Ljava/net/Socket;

    .line 222
    .line 223
    iput-object v8, p0, Lokhttp3/internal/connection/RealConnection;->h:Lokio/RealBufferedSource;

    .line 224
    .line 225
    iput-object v8, p0, Lokhttp3/internal/connection/RealConnection;->i:Lokio/RealBufferedSink;

    .line 226
    .line 227
    iput-object v8, p0, Lokhttp3/internal/connection/RealConnection;->e:Lokhttp3/Handshake;

    .line 228
    .line 229
    iput-object v8, p0, Lokhttp3/internal/connection/RealConnection;->f:Lokhttp3/Protocol;

    .line 230
    .line 231
    iput-object v8, p0, Lokhttp3/internal/connection/RealConnection;->g:Lokhttp3/internal/http2/Http2Connection;

    .line 232
    .line 233
    iput v10, p0, Lokhttp3/internal/connection/RealConnection;->o:I

    .line 234
    .line 235
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 236
    .line 237
    iget-object v4, v4, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    if-nez v9, :cond_a

    .line 243
    .line 244
    new-instance v9, Lokhttp3/internal/connection/RouteException;

    .line 245
    .line 246
    invoke-direct {v9, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 247
    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_a
    iget-object v4, v9, Lokhttp3/internal/connection/RouteException;->j:Ljava/io/IOException;

    .line 251
    .line 252
    invoke-static {v4, v0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 253
    .line 254
    .line 255
    iput-object v0, v9, Lokhttp3/internal/connection/RouteException;->k:Ljava/io/IOException;

    .line 256
    .line 257
    :goto_6
    if-eqz p4, :cond_c

    .line 258
    .line 259
    iput-boolean v10, v7, Lokhttp3/internal/connection/ConnectionSpecSelector;->d:Z

    .line 260
    .line 261
    iget-boolean v4, v7, Lokhttp3/internal/connection/ConnectionSpecSelector;->c:Z

    .line 262
    .line 263
    if-eqz v4, :cond_c

    .line 264
    .line 265
    instance-of v4, v0, Ljava/net/ProtocolException;

    .line 266
    .line 267
    if-nez v4, :cond_c

    .line 268
    .line 269
    instance-of v4, v0, Ljava/io/InterruptedIOException;

    .line 270
    .line 271
    if-nez v4, :cond_c

    .line 272
    .line 273
    instance-of v4, v0, Ljavax/net/ssl/SSLHandshakeException;

    .line 274
    .line 275
    if-eqz v4, :cond_b

    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    instance-of v4, v4, Ljava/security/cert/CertificateException;

    .line 282
    .line 283
    if-nez v4, :cond_c

    .line 284
    .line 285
    :cond_b
    instance-of v4, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 286
    .line 287
    if-nez v4, :cond_c

    .line 288
    .line 289
    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    .line 290
    .line 291
    if-eqz v0, :cond_c

    .line 292
    .line 293
    goto/16 :goto_1

    .line 294
    .line 295
    :cond_c
    throw v9

    .line 296
    :cond_d
    new-instance p0, Lokhttp3/internal/connection/RouteException;

    .line 297
    .line 298
    new-instance p1, Ljava/net/UnknownServiceException;

    .line 299
    .line 300
    const-string p2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    .line 301
    .line 302
    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 306
    .line 307
    .line 308
    throw p0

    .line 309
    :cond_e
    const-string p0, "already connected"

    .line 310
    .line 311
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    return-void
.end method

.method public final e(IILokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 3

    .line 1
    iget-object p3, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 2
    .line 3
    iget-object v0, p3, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 4
    .line 5
    iget-object p3, p3, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v2, Lokhttp3/internal/connection/RealConnection$WhenMappings;->a:[I

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    aget v1, v2, v1

    .line 22
    .line 23
    :goto_0
    const/4 v2, 0x1

    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    .line 29
    new-instance p3, Ljava/net/Socket;

    .line 30
    .line 31
    invoke-direct {p3, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object p3, p3, Lokhttp3/Address;->b:Ljavax/net/SocketFactory;

    .line 36
    .line 37
    invoke-virtual {p3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    :goto_1
    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection;->c:Ljava/net/Socket;

    .line 45
    .line 46
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 47
    .line 48
    iget-object v0, v0, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 49
    .line 50
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 57
    .line 58
    .line 59
    :try_start_0
    sget-object p2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 60
    .line 61
    sget-object p2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 62
    .line 63
    iget-object p4, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 64
    .line 65
    iget-object p4, p4, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 66
    .line 67
    invoke-virtual {p2, p3, p4, p1}, Lokhttp3/internal/platform/Platform;->e(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .line 69
    .line 70
    :try_start_1
    invoke-static {p3}, Lokio/Okio;->c(Ljava/net/Socket;)Lokio/AsyncTimeout$source$1;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p2, Lokio/RealBufferedSource;

    .line 75
    .line 76
    invoke-direct {p2, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 77
    .line 78
    .line 79
    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->h:Lokio/RealBufferedSource;

    .line 80
    .line 81
    invoke-static {p3}, Lokio/Okio;->b(Ljava/net/Socket;)Lokio/AsyncTimeout$sink$1;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance p2, Lokio/RealBufferedSink;

    .line 86
    .line 87
    invoke-direct {p2, p1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    .line 88
    .line 89
    .line 90
    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->i:Lokio/RealBufferedSink;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .line 92
    return-void

    .line 93
    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string p2, "throw with null exception"

    .line 99
    .line 100
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_2

    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 108
    .line 109
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :catch_1
    move-exception p1

    .line 114
    new-instance p2, Ljava/net/ConnectException;

    .line 115
    .line 116
    new-instance p3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string p4, "Failed to connect to "

    .line 119
    .line 120
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 124
    .line 125
    iget-object p0, p0, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 126
    .line 127
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-direct {p2, p0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    .line 139
    .line 140
    throw p2
.end method

.method public final f(IIILokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lokhttp3/Request$Builder;

    .line 6
    .line 7
    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 11
    .line 12
    iget-object v4, v3, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 13
    .line 14
    iget-object v4, v4, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iput-object v4, v2, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 20
    .line 21
    const-string v4, "CONNECT"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual {v2, v4, v5}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 25
    .line 26
    .line 27
    iget-object v4, v3, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 28
    .line 29
    iget-object v6, v4, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    invoke-static {v6, v7}, Lokhttp3/internal/Util;->s(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    const-string v8, "Host"

    .line 37
    .line 38
    invoke-virtual {v2, v8, v6}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v6, "Proxy-Connection"

    .line 42
    .line 43
    const-string v8, "Keep-Alive"

    .line 44
    .line 45
    invoke-virtual {v2, v6, v8}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v6, "User-Agent"

    .line 49
    .line 50
    const-string v8, "okhttp/4.12.0"

    .line 51
    .line 52
    invoke-virtual {v2, v6, v8}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v6, Lokhttp3/Response$Builder;

    .line 60
    .line 61
    invoke-direct {v6}, Lokhttp3/Response$Builder;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v2, v6, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 65
    .line 66
    sget-object v8, Lokhttp3/Protocol;->l:Lokhttp3/Protocol;

    .line 67
    .line 68
    iput-object v8, v6, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    .line 69
    .line 70
    const/16 v8, 0x197

    .line 71
    .line 72
    iput v8, v6, Lokhttp3/Response$Builder;->c:I

    .line 73
    .line 74
    const-string v9, "Preemptive Authenticate"

    .line 75
    .line 76
    iput-object v9, v6, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    .line 77
    .line 78
    sget-object v9, Lokhttp3/internal/Util;->c:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 79
    .line 80
    iput-object v9, v6, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 81
    .line 82
    const-wide/16 v9, -0x1

    .line 83
    .line 84
    iput-wide v9, v6, Lokhttp3/Response$Builder;->k:J

    .line 85
    .line 86
    iput-wide v9, v6, Lokhttp3/Response$Builder;->l:J

    .line 87
    .line 88
    iget-object v9, v6, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 89
    .line 90
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    const-string v10, "Proxy-Authenticate"

    .line 94
    .line 95
    invoke-static {v10}, Lokhttp3/Headers$Companion;->a(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v11, "OkHttp-Preemptive"

    .line 99
    .line 100
    invoke-static {v11, v10}, Lokhttp3/Headers$Companion;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9, v10}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v10, v11}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    iget-object v9, v4, Lokhttp3/Address;->f:Lokhttp3/Authenticator;

    .line 114
    .line 115
    invoke-interface {v9, v3, v6}, Lokhttp3/Authenticator;->a(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    if-nez v6, :cond_0

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    move-object v2, v6

    .line 123
    :goto_0
    iget-object v6, v2, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 124
    .line 125
    const/4 v10, 0x0

    .line 126
    :goto_1
    const/16 v11, 0x15

    .line 127
    .line 128
    if-ge v10, v11, :cond_8

    .line 129
    .line 130
    move/from16 v11, p1

    .line 131
    .line 132
    move-object/from16 v12, p4

    .line 133
    .line 134
    move-object/from16 v13, p5

    .line 135
    .line 136
    invoke-virtual {v0, v11, v1, v12, v13}, Lokhttp3/internal/connection/RealConnection;->e(IILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 137
    .line 138
    .line 139
    new-instance v14, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v15, "CONNECT "

    .line 142
    .line 143
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v6, v7}, Lokhttp3/internal/Util;->s(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v15, " HTTP/1.1"

    .line 154
    .line 155
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v14

    .line 162
    :goto_2
    iget-object v15, v0, Lokhttp3/internal/connection/RealConnection;->h:Lokio/RealBufferedSource;

    .line 163
    .line 164
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    iget-object v7, v0, Lokhttp3/internal/connection/RealConnection;->i:Lokio/RealBufferedSink;

    .line 168
    .line 169
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    new-instance v8, Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 173
    .line 174
    invoke-direct {v8, v5, v0, v15, v7}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/RealBufferedSource;Lokio/RealBufferedSink;)V

    .line 175
    .line 176
    .line 177
    iget-object v5, v15, Lokio/RealBufferedSource;->j:Lokio/Source;

    .line 178
    .line 179
    invoke-interface {v5}, Lokio/Source;->i()Lokio/Timeout;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    move/from16 v16, v10

    .line 184
    .line 185
    int-to-long v9, v1

    .line 186
    invoke-virtual {v5, v9, v10}, Lokio/Timeout;->g(J)Lokio/Timeout;

    .line 187
    .line 188
    .line 189
    iget-object v5, v7, Lokio/RealBufferedSink;->j:Lokio/Sink;

    .line 190
    .line 191
    invoke-interface {v5}, Lokio/Sink;->i()Lokio/Timeout;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    move/from16 v9, p3

    .line 196
    .line 197
    int-to-long v10, v9

    .line 198
    invoke-virtual {v5, v10, v11}, Lokio/Timeout;->g(J)Lokio/Timeout;

    .line 199
    .line 200
    .line 201
    iget-object v5, v2, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 202
    .line 203
    invoke-virtual {v8, v5, v14}, Lokhttp3/internal/http1/Http1ExchangeCodec;->k(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8}, Lokhttp3/internal/http1/Http1ExchangeCodec;->a()V

    .line 207
    .line 208
    .line 209
    const/4 v5, 0x0

    .line 210
    invoke-virtual {v8, v5}, Lokhttp3/internal/http1/Http1ExchangeCodec;->d(Z)Lokhttp3/Response$Builder;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    iput-object v2, v10, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 218
    .line 219
    invoke-virtual {v10}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    iget v10, v2, Lokhttp3/Response;->m:I

    .line 224
    .line 225
    invoke-virtual {v8, v2}, Lokhttp3/internal/http1/Http1ExchangeCodec;->j(Lokhttp3/Response;)V

    .line 226
    .line 227
    .line 228
    const/16 v8, 0xc8

    .line 229
    .line 230
    if-eq v10, v8, :cond_4

    .line 231
    .line 232
    const/16 v8, 0x197

    .line 233
    .line 234
    if-ne v10, v8, :cond_3

    .line 235
    .line 236
    iget-object v7, v4, Lokhttp3/Address;->f:Lokhttp3/Authenticator;

    .line 237
    .line 238
    invoke-interface {v7, v3, v2}, Lokhttp3/Authenticator;->a(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    if-eqz v7, :cond_2

    .line 243
    .line 244
    const-string v10, "Connection"

    .line 245
    .line 246
    invoke-static {v10, v2}, Lokhttp3/Response;->a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    const-string v10, "close"

    .line 251
    .line 252
    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_1

    .line 257
    .line 258
    move-object v2, v7

    .line 259
    goto :goto_3

    .line 260
    :cond_1
    move/from16 v11, p1

    .line 261
    .line 262
    move-object v2, v7

    .line 263
    move/from16 v10, v16

    .line 264
    .line 265
    const/4 v5, 0x0

    .line 266
    const/4 v7, 0x1

    .line 267
    goto :goto_2

    .line 268
    :cond_2
    const-string v0, "Failed to authenticate with proxy"

    .line 269
    .line 270
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_3
    const-string v0, "Unexpected response code for CONNECT: "

    .line 275
    .line 276
    invoke-static {v10, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :cond_4
    const/16 v8, 0x197

    .line 285
    .line 286
    iget-object v2, v15, Lokio/RealBufferedSource;->k:Lokio/Buffer;

    .line 287
    .line 288
    invoke-virtual {v2}, Lokio/Buffer;->J()Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_7

    .line 293
    .line 294
    iget-object v2, v7, Lokio/RealBufferedSink;->k:Lokio/Buffer;

    .line 295
    .line 296
    invoke-virtual {v2}, Lokio/Buffer;->J()Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_7

    .line 301
    .line 302
    const/4 v2, 0x0

    .line 303
    :goto_3
    if-nez v2, :cond_5

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_5
    iget-object v7, v0, Lokhttp3/internal/connection/RealConnection;->c:Ljava/net/Socket;

    .line 307
    .line 308
    if-eqz v7, :cond_6

    .line 309
    .line 310
    invoke-static {v7}, Lokhttp3/internal/Util;->c(Ljava/net/Socket;)V

    .line 311
    .line 312
    .line 313
    :cond_6
    const/4 v7, 0x0

    .line 314
    iput-object v7, v0, Lokhttp3/internal/connection/RealConnection;->c:Ljava/net/Socket;

    .line 315
    .line 316
    iput-object v7, v0, Lokhttp3/internal/connection/RealConnection;->i:Lokio/RealBufferedSink;

    .line 317
    .line 318
    iput-object v7, v0, Lokhttp3/internal/connection/RealConnection;->h:Lokio/RealBufferedSource;

    .line 319
    .line 320
    iget-object v10, v3, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 321
    .line 322
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    add-int/lit8 v10, v16, 0x1

    .line 326
    .line 327
    move-object v5, v7

    .line 328
    const/4 v7, 0x1

    .line 329
    goto/16 :goto_1

    .line 330
    .line 331
    :cond_7
    const-string v0, "TLS tunnel buffered too many bytes!"

    .line 332
    .line 333
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    :cond_8
    :goto_4
    return-void
.end method

.method public final g(Lokhttp3/internal/connection/ConnectionSpecSelector;Lokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 9

    .line 1
    sget-object p2, Lokhttp3/Protocol;->l:Lokhttp3/Protocol;

    .line 2
    .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 4
    .line 5
    iget-object v0, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 6
    .line 7
    iget-object v1, v0, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object p1, v0, Lokhttp3/Address;->i:Ljava/util/List;

    .line 12
    .line 13
    sget-object p3, Lokhttp3/Protocol;->o:Lokhttp3/Protocol;

    .line 14
    .line 15
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->c:Ljava/net/Socket;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->d:Ljava/net/Socket;

    .line 24
    .line 25
    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection;->f:Lokhttp3/Protocol;

    .line 26
    .line 27
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->l()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->d:Ljava/net/Socket;

    .line 32
    .line 33
    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->f:Lokhttp3/Protocol;

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-string p3, "Hostname "

    .line 40
    .line 41
    const-string v0, "\n              |Hostname "

    .line 42
    .line 43
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 44
    .line 45
    iget-object v1, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 46
    .line 47
    iget-object v2, v1, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->c:Ljava/net/Socket;

    .line 54
    .line 55
    iget-object v5, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 56
    .line 57
    iget-object v6, v5, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 58
    .line 59
    iget v5, v5, Lokhttp3/HttpUrl;->e:I

    .line 60
    .line 61
    const/4 v7, 0x1

    .line 62
    invoke-virtual {v2, v4, v6, v5, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    check-cast v2, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    .line 71
    :try_start_1
    invoke-virtual {p1, v2}, Lokhttp3/internal/connection/ConnectionSpecSelector;->a(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-boolean v4, p1, Lokhttp3/ConnectionSpec;->b:Z

    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    sget-object v4, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 80
    .line 81
    sget-object v4, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 82
    .line 83
    iget-object v5, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 84
    .line 85
    iget-object v5, v5, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v6, v1, Lokhttp3/Address;->i:Ljava/util/List;

    .line 88
    .line 89
    invoke-virtual {v4, v2, v5, v6}, Lokhttp3/internal/platform/Platform;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    move-object v3, v2

    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {v4}, Lokhttp3/Handshake$Companion;->a(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    iget-object v6, v1, Lokhttp3/Address;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object v7, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 117
    .line 118
    iget-object v7, v7, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 119
    .line 120
    invoke-interface {v6, v7, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-nez v4, :cond_4

    .line 125
    .line 126
    invoke-virtual {v5}, Lokhttp3/Handshake;->a()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_3

    .line 135
    .line 136
    const/4 p1, 0x0

    .line 137
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 145
    .line 146
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 147
    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object p3, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 154
    .line 155
    iget-object p3, p3, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p3, " not verified:\n              |    certificate: "

    .line 161
    .line 162
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    sget-object p3, Lokhttp3/CertificatePinner;->c:Lokhttp3/CertificatePinner;

    .line 166
    .line 167
    sget-object p3, Lokio/ByteString;->m:Lokio/ByteString;

    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    invoke-interface {p3}, Ljava/security/Key;->getEncoded()[B

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-static {p3}, Lokio/ByteString$Companion;->c([B)Lokio/ByteString;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    const-string v0, "SHA-256"

    .line 185
    .line 186
    invoke-virtual {p3, v0}, Lokio/ByteString;->d(Ljava/lang/String;)Lokio/ByteString;

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    invoke-virtual {p3}, Lokio/ByteString;->a()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    const-string v0, "sha256/"

    .line 195
    .line 196
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p3

    .line 200
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string p3, "\n              |    DN: "

    .line 204
    .line 205
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 209
    .line 210
    .line 211
    move-result-object p3

    .line 212
    invoke-interface {p3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p3

    .line 216
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string p3, "\n              |    subjectAltNames: "

    .line 220
    .line 221
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const/4 p3, 0x7

    .line 225
    invoke-static {p0, p3}, Lokhttp3/internal/tls/OkHostnameVerifier;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object p3

    .line 229
    const/4 v0, 0x2

    .line 230
    invoke-static {p0, v0}, Lokhttp3/internal/tls/OkHostnameVerifier;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-static {p3, p0}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string p0, "\n              "

    .line 242
    .line 243
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-static {p0}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-direct {p1, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw p1

    .line 258
    :cond_3
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 259
    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object p2, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 266
    .line 267
    iget-object p2, p2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string p2, " not verified (no certificates)"

    .line 273
    .line 274
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p0

    .line 285
    :cond_4
    iget-object p3, v1, Lokhttp3/Address;->e:Lokhttp3/CertificatePinner;

    .line 286
    .line 287
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    new-instance v0, Lokhttp3/Handshake;

    .line 291
    .line 292
    iget-object v4, v5, Lokhttp3/Handshake;->a:Lokhttp3/TlsVersion;

    .line 293
    .line 294
    iget-object v6, v5, Lokhttp3/Handshake;->b:Lokhttp3/CipherSuite;

    .line 295
    .line 296
    iget-object v7, v5, Lokhttp3/Handshake;->c:Ljava/util/List;

    .line 297
    .line 298
    new-instance v8, Lokhttp3/internal/connection/RealConnection$connectTls$1;

    .line 299
    .line 300
    invoke-direct {v8, p3, v5, v1}, Lokhttp3/internal/connection/RealConnection$connectTls$1;-><init>(Lokhttp3/CertificatePinner;Lokhttp3/Handshake;Lokhttp3/Address;)V

    .line 301
    .line 302
    .line 303
    invoke-direct {v0, v4, v6, v7, v8}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 304
    .line 305
    .line 306
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->e:Lokhttp3/Handshake;

    .line 307
    .line 308
    iget-object v0, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 309
    .line 310
    iget-object v0, v0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    iget-object p3, p3, Lokhttp3/CertificatePinner;->a:Ljava/util/Set;

    .line 316
    .line 317
    check-cast p3, Ljava/lang/Iterable;

    .line 318
    .line 319
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 320
    .line 321
    .line 322
    move-result-object p3

    .line 323
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-nez v0, :cond_8

    .line 328
    .line 329
    iget-boolean p1, p1, Lokhttp3/ConnectionSpec;->b:Z

    .line 330
    .line 331
    if-eqz p1, :cond_5

    .line 332
    .line 333
    sget-object p1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 334
    .line 335
    sget-object p1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 336
    .line 337
    invoke-virtual {p1, v2}, Lokhttp3/internal/platform/Platform;->f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    :cond_5
    iput-object v2, p0, Lokhttp3/internal/connection/RealConnection;->d:Ljava/net/Socket;

    .line 342
    .line 343
    invoke-static {v2}, Lokio/Okio;->c(Ljava/net/Socket;)Lokio/AsyncTimeout$source$1;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    new-instance p3, Lokio/RealBufferedSource;

    .line 348
    .line 349
    invoke-direct {p3, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 350
    .line 351
    .line 352
    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection;->h:Lokio/RealBufferedSource;

    .line 353
    .line 354
    invoke-static {v2}, Lokio/Okio;->b(Ljava/net/Socket;)Lokio/AsyncTimeout$sink$1;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    new-instance p3, Lokio/RealBufferedSink;

    .line 359
    .line 360
    invoke-direct {p3, p1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    .line 361
    .line 362
    .line 363
    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection;->i:Lokio/RealBufferedSink;

    .line 364
    .line 365
    if-eqz v3, :cond_6

    .line 366
    .line 367
    invoke-static {v3}, Lokhttp3/Protocol$Companion;->a(Ljava/lang/String;)Lokhttp3/Protocol;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    :cond_6
    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->f:Lokhttp3/Protocol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    .line 373
    sget-object p1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 374
    .line 375
    sget-object p1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 376
    .line 377
    invoke-virtual {p1, v2}, Lokhttp3/internal/platform/Platform;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 378
    .line 379
    .line 380
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->f:Lokhttp3/Protocol;

    .line 381
    .line 382
    sget-object p2, Lokhttp3/Protocol;->n:Lokhttp3/Protocol;

    .line 383
    .line 384
    if-ne p1, p2, :cond_7

    .line 385
    .line 386
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->l()V

    .line 387
    .line 388
    .line 389
    :cond_7
    return-void

    .line 390
    :cond_8
    :try_start_2
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    new-instance p0, Ljava/lang/ClassCastException;

    .line 398
    .line 399
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 400
    .line 401
    .line 402
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    :catchall_1
    move-exception p0

    .line 404
    :goto_1
    if-eqz v3, :cond_9

    .line 405
    .line 406
    sget-object p1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 407
    .line 408
    sget-object p1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 409
    .line 410
    invoke-virtual {p1, v3}, Lokhttp3/internal/platform/Platform;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 411
    .line 412
    .line 413
    :cond_9
    if-eqz v3, :cond_a

    .line 414
    .line 415
    invoke-static {v3}, Lokhttp3/internal/Util;->c(Ljava/net/Socket;)V

    .line 416
    .line 417
    .line 418
    :cond_a
    throw p0
.end method

.method public final h(Lokhttp3/Address;Ljava/util/List;)Z
    .locals 8

    .line 1
    iget-object v0, p1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 2
    .line 3
    sget-object v1, Lokhttp3/internal/Util;->a:[B

    .line 4
    .line 5
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->p:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget v2, p0, Lokhttp3/internal/connection/RealConnection;->o:I

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-ge v1, v2, :cond_a

    .line 15
    .line 16
    iget-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->j:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 23
    .line 24
    iget-object v2, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 25
    .line 26
    iget-object v4, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Lokhttp3/Address;->a(Lokhttp3/Address;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_1
    iget-object v2, v0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v5, v0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v6, v4, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 41
    .line 42
    iget-object v6, v6, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->g:Lokhttp3/internal/http2/Http2Connection;

    .line 53
    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_3
    if-eqz p2, :cond_a

    .line 59
    .line 60
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_a

    .line 77
    .line 78
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lokhttp3/Route;

    .line 83
    .line 84
    iget-object v6, v2, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 85
    .line 86
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 91
    .line 92
    if-ne v6, v7, :cond_5

    .line 93
    .line 94
    iget-object v6, v1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 95
    .line 96
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    if-ne v6, v7, :cond_5

    .line 101
    .line 102
    iget-object v6, v1, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 103
    .line 104
    iget-object v2, v2, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 105
    .line 106
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    iget-object p2, p1, Lokhttp3/Address;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 113
    .line 114
    sget-object v1, Lokhttp3/internal/tls/OkHostnameVerifier;->a:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 115
    .line 116
    if-eq p2, v1, :cond_6

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    sget-object p2, Lokhttp3/internal/Util;->a:[B

    .line 120
    .line 121
    iget-object p2, v4, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 122
    .line 123
    iget v0, v0, Lokhttp3/HttpUrl;->e:I

    .line 124
    .line 125
    iget v1, p2, Lokhttp3/HttpUrl;->e:I

    .line 126
    .line 127
    if-eq v0, v1, :cond_7

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_7
    iget-object p2, p2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_8

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_8
    iget-boolean p2, p0, Lokhttp3/internal/connection/RealConnection;->k:Z

    .line 140
    .line 141
    if-nez p2, :cond_a

    .line 142
    .line 143
    iget-object p2, p0, Lokhttp3/internal/connection/RealConnection;->e:Lokhttp3/Handshake;

    .line 144
    .line 145
    if-eqz p2, :cond_a

    .line 146
    .line 147
    invoke-virtual {p2}, Lokhttp3/Handshake;->a()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_a

    .line 156
    .line 157
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 165
    .line 166
    invoke-static {v5, p2}, Lokhttp3/internal/tls/OkHostnameVerifier;->b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    if-eqz p2, :cond_a

    .line 171
    .line 172
    :goto_0
    :try_start_0
    iget-object p1, p1, Lokhttp3/Address;->e:Lokhttp3/CertificatePinner;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection;->e:Lokhttp3/Handshake;

    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lokhttp3/Handshake;->a()Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iget-object p0, p1, Lokhttp3/CertificatePinner;->a:Ljava/util/Set;

    .line 193
    .line 194
    check-cast p0, Ljava/lang/Iterable;

    .line 195
    .line 196
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-nez p1, :cond_9

    .line 205
    .line 206
    :goto_1
    const/4 p0, 0x1

    .line 207
    return p0

    .line 208
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    new-instance p0, Ljava/lang/ClassCastException;

    .line 216
    .line 217
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 218
    .line 219
    .line 220
    throw p0
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :catch_0
    :cond_a
    :goto_2
    return v3
.end method

.method public final i(Z)Z
    .locals 9

    .line 1
    sget-object v0, Lokhttp3/internal/Util;->a:[B

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->c:Ljava/net/Socket;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->d:Ljava/net/Socket;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->h:Lokio/RealBufferedSource;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v5, 0x0

    .line 27
    if-nez v2, :cond_5

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_5

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_5

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->g:Lokhttp3/internal/http2/Http2Connection;

    .line 49
    .line 50
    const/4 v6, 0x1

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    monitor-enter v2

    .line 54
    :try_start_0
    iget-boolean p0, v2, Lokhttp3/internal/http2/Http2Connection;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    monitor-exit v2

    .line 59
    return v5

    .line 60
    :cond_1
    :try_start_1
    iget-wide p0, v2, Lokhttp3/internal/http2/Http2Connection;->w:J

    .line 61
    .line 62
    iget-wide v3, v2, Lokhttp3/internal/http2/Http2Connection;->v:J

    .line 63
    .line 64
    cmp-long p0, p0, v3

    .line 65
    .line 66
    if-gez p0, :cond_2

    .line 67
    .line 68
    iget-wide p0, v2, Lokhttp3/internal/http2/Http2Connection;->x:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    cmp-long p0, v0, p0

    .line 71
    .line 72
    if-ltz p0, :cond_2

    .line 73
    .line 74
    monitor-exit v2

    .line 75
    return v5

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    monitor-exit v2

    .line 79
    return v6

    .line 80
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    throw p0

    .line 82
    :cond_3
    monitor-enter p0

    .line 83
    :try_start_3
    iget-wide v7, p0, Lokhttp3/internal/connection/RealConnection;->q:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 84
    .line 85
    sub-long/2addr v0, v7

    .line 86
    monitor-exit p0

    .line 87
    const-wide v7, 0x2540be400L

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    cmp-long p0, v0, v7

    .line 93
    .line 94
    if-ltz p0, :cond_4

    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    :try_start_4
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    .line 99
    .line 100
    .line 101
    move-result p0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 102
    :try_start_5
    invoke-virtual {v3, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Lokio/RealBufferedSource;->J()Z

    .line 106
    .line 107
    .line 108
    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 109
    xor-int/2addr p1, v6

    .line 110
    :try_start_6
    invoke-virtual {v3, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 111
    .line 112
    .line 113
    return p1

    .line 114
    :catchall_1
    move-exception p1

    .line 115
    invoke-virtual {v3, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 116
    .line 117
    .line 118
    throw p1
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 119
    :catch_0
    move v5, v6

    .line 120
    :catch_1
    return v5

    .line 121
    :cond_4
    return v6

    .line 122
    :catchall_2
    move-exception p1

    .line 123
    monitor-exit p0

    .line 124
    throw p1

    .line 125
    :cond_5
    :goto_1
    return v5
.end method

.method public final j(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/http/ExchangeCodec;
    .locals 6

    .line 1
    iget v0, p2, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->d:Ljava/net/Socket;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->h:Lokio/RealBufferedSource;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->i:Lokio/RealBufferedSink;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->g:Lokhttp3/internal/http2/Http2Connection;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    new-instance v0, Lokhttp3/internal/http2/Http2ExchangeCodec;

    .line 23
    .line 24
    invoke-direct {v0, p1, p0, p2, v4}, Lokhttp3/internal/http2/Http2ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/internal/http2/Http2Connection;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v2, Lokio/RealBufferedSource;->j:Lokio/Source;

    .line 32
    .line 33
    invoke-interface {v1}, Lokio/Source;->i()Lokio/Timeout;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    int-to-long v4, v0

    .line 38
    invoke-virtual {v1, v4, v5}, Lokio/Timeout;->g(J)Lokio/Timeout;

    .line 39
    .line 40
    .line 41
    iget-object v0, v3, Lokio/RealBufferedSink;->j:Lokio/Sink;

    .line 42
    .line 43
    invoke-interface {v0}, Lokio/Sink;->i()Lokio/Timeout;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget p2, p2, Lokhttp3/internal/http/RealInterceptorChain;->h:I

    .line 48
    .line 49
    int-to-long v4, p2

    .line 50
    invoke-virtual {v0, v4, v5}, Lokio/Timeout;->g(J)Lokio/Timeout;

    .line 51
    .line 52
    .line 53
    new-instance p2, Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 54
    .line 55
    invoke-direct {p2, p1, p0, v2, v3}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/RealBufferedSource;Lokio/RealBufferedSink;)V

    .line 56
    .line 57
    .line 58
    return-object p2
.end method

.method public final declared-synchronized k()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public final l()V
    .locals 9

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->d:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->h:Lokio/RealBufferedSource;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->i:Lokio/RealBufferedSink;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lokhttp3/internal/http2/Http2Connection$Builder;

    .line 21
    .line 22
    sget-object v5, Lokhttp3/internal/concurrent/TaskRunner;->h:Lokhttp3/internal/concurrent/TaskRunner;

    .line 23
    .line 24
    invoke-direct {v4, v5}, Lokhttp3/internal/http2/Http2Connection$Builder;-><init>(Lokhttp3/internal/concurrent/TaskRunner;)V

    .line 25
    .line 26
    .line 27
    iget-object v6, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 28
    .line 29
    iget-object v6, v6, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 30
    .line 31
    iget-object v6, v6, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 32
    .line 33
    iget-object v6, v6, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iput-object v0, v4, Lokhttp3/internal/http2/Http2Connection$Builder;->b:Ljava/net/Socket;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    sget-object v7, Lokhttp3/internal/Util;->f:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v7, 0x20

    .line 51
    .line 52
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, v4, Lokhttp3/internal/http2/Http2Connection$Builder;->c:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v1, v4, Lokhttp3/internal/http2/Http2Connection$Builder;->d:Lokio/RealBufferedSource;

    .line 65
    .line 66
    iput-object v2, v4, Lokhttp3/internal/http2/Http2Connection$Builder;->e:Lokio/RealBufferedSink;

    .line 67
    .line 68
    iput-object p0, v4, Lokhttp3/internal/http2/Http2Connection$Builder;->f:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 69
    .line 70
    new-instance v0, Lokhttp3/internal/http2/Http2Connection;

    .line 71
    .line 72
    invoke-direct {v0, v4}, Lokhttp3/internal/http2/Http2Connection;-><init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->g:Lokhttp3/internal/http2/Http2Connection;

    .line 76
    .line 77
    sget-object v1, Lokhttp3/internal/http2/Http2Connection;->I:Lokhttp3/internal/http2/Settings;

    .line 78
    .line 79
    iget v2, v1, Lokhttp3/internal/http2/Settings;->a:I

    .line 80
    .line 81
    and-int/lit8 v2, v2, 0x10

    .line 82
    .line 83
    const/4 v4, 0x4

    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    iget-object v1, v1, Lokhttp3/internal/http2/Settings;->b:[I

    .line 87
    .line 88
    aget v1, v1, v4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    const v1, 0x7fffffff

    .line 92
    .line 93
    .line 94
    :goto_0
    iput v1, p0, Lokhttp3/internal/connection/RealConnection;->o:I

    .line 95
    .line 96
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->F:Lokhttp3/internal/http2/Http2Writer;

    .line 97
    .line 98
    const-string v1, ">> CONNECTION "

    .line 99
    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Writer;->m:Z

    .line 102
    .line 103
    if-nez v2, :cond_9

    .line 104
    .line 105
    sget-object v2, Lokhttp3/internal/http2/Http2Writer;->o:Ljava/util/logging/Logger;

    .line 106
    .line 107
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 108
    .line 109
    invoke-virtual {v2, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_1

    .line 114
    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object v1, Lokhttp3/internal/http2/Http2;->a:Lokio/ByteString;

    .line 121
    .line 122
    invoke-virtual {v1}, Lokio/ByteString;->f()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-array v6, v3, [Ljava/lang/Object;

    .line 134
    .line 135
    invoke-static {v1, v6}, Lokhttp3/internal/Util;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    goto/16 :goto_7

    .line 145
    .line 146
    :cond_1
    :goto_1
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Writer;->j:Lokio/BufferedSink;

    .line 147
    .line 148
    sget-object v2, Lokhttp3/internal/http2/Http2;->a:Lokio/ByteString;

    .line 149
    .line 150
    invoke-interface {v1, v2}, Lokio/BufferedSink;->M0(Lokio/ByteString;)Lokio/BufferedSink;

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Writer;->j:Lokio/BufferedSink;

    .line 154
    .line 155
    invoke-interface {v1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .line 157
    .line 158
    monitor-exit p0

    .line 159
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->F:Lokhttp3/internal/http2/Http2Writer;

    .line 160
    .line 161
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->y:Lokhttp3/internal/http2/Settings;

    .line 162
    .line 163
    monitor-enter v1

    .line 164
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    iget-boolean v2, v1, Lokhttp3/internal/http2/Http2Writer;->m:Z

    .line 168
    .line 169
    if-nez v2, :cond_8

    .line 170
    .line 171
    iget v2, p0, Lokhttp3/internal/http2/Settings;->a:I

    .line 172
    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    mul-int/lit8 v2, v2, 0x6

    .line 178
    .line 179
    invoke-virtual {v1, v3, v2, v4, v3}, Lokhttp3/internal/http2/Http2Writer;->n(IIII)V

    .line 180
    .line 181
    .line 182
    move v2, v3

    .line 183
    :goto_2
    const/16 v6, 0xa

    .line 184
    .line 185
    if-ge v2, v6, :cond_6

    .line 186
    .line 187
    const/4 v6, 0x1

    .line 188
    shl-int v7, v6, v2

    .line 189
    .line 190
    iget v8, p0, Lokhttp3/internal/http2/Settings;->a:I

    .line 191
    .line 192
    and-int/2addr v7, v8

    .line 193
    if-eqz v7, :cond_2

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_2
    move v6, v3

    .line 197
    :goto_3
    if-eqz v6, :cond_5

    .line 198
    .line 199
    if-eq v2, v4, :cond_4

    .line 200
    .line 201
    const/4 v6, 0x7

    .line 202
    if-eq v2, v6, :cond_3

    .line 203
    .line 204
    move v6, v2

    .line 205
    goto :goto_4

    .line 206
    :cond_3
    move v6, v4

    .line 207
    goto :goto_4

    .line 208
    :cond_4
    const/4 v6, 0x3

    .line 209
    :goto_4
    iget-object v7, v1, Lokhttp3/internal/http2/Http2Writer;->j:Lokio/BufferedSink;

    .line 210
    .line 211
    invoke-interface {v7, v6}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    .line 212
    .line 213
    .line 214
    iget-object v6, v1, Lokhttp3/internal/http2/Http2Writer;->j:Lokio/BufferedSink;

    .line 215
    .line 216
    iget-object v7, p0, Lokhttp3/internal/http2/Settings;->b:[I

    .line 217
    .line 218
    aget v7, v7, v2

    .line 219
    .line 220
    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :catchall_1
    move-exception p0

    .line 225
    goto :goto_6

    .line 226
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_6
    iget-object p0, v1, Lokhttp3/internal/http2/Http2Writer;->j:Lokio/BufferedSink;

    .line 230
    .line 231
    invoke-interface {p0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    .line 233
    .line 234
    monitor-exit v1

    .line 235
    iget-object p0, v0, Lokhttp3/internal/http2/Http2Connection;->y:Lokhttp3/internal/http2/Settings;

    .line 236
    .line 237
    invoke-virtual {p0}, Lokhttp3/internal/http2/Settings;->a()I

    .line 238
    .line 239
    .line 240
    move-result p0

    .line 241
    const v1, 0xffff

    .line 242
    .line 243
    .line 244
    if-eq p0, v1, :cond_7

    .line 245
    .line 246
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->F:Lokhttp3/internal/http2/Http2Writer;

    .line 247
    .line 248
    sub-int/2addr p0, v1

    .line 249
    int-to-long v6, p0

    .line 250
    invoke-virtual {v2, v3, v6, v7}, Lokhttp3/internal/http2/Http2Writer;->E(IJ)V

    .line 251
    .line 252
    .line 253
    :cond_7
    invoke-virtual {v5}, Lokhttp3/internal/concurrent/TaskRunner;->e()Lokhttp3/internal/concurrent/TaskQueue;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->l:Ljava/lang/String;

    .line 258
    .line 259
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->G:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 260
    .line 261
    new-instance v2, Lokhttp3/internal/concurrent/TaskQueue$execute$1;

    .line 262
    .line 263
    invoke-direct {v2, v1, v0}, Lokhttp3/internal/concurrent/TaskQueue$execute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;)V

    .line 264
    .line 265
    .line 266
    const-wide/16 v0, 0x0

    .line 267
    .line 268
    invoke-virtual {p0, v2, v0, v1}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/Task;J)V

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :cond_8
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    .line 273
    .line 274
    const-string v0, "closed"

    .line 275
    .line 276
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw p0

    .line 280
    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 281
    throw p0

    .line 282
    :cond_9
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 283
    .line 284
    const-string v1, "closed"

    .line 285
    .line 286
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw v0

    .line 290
    :goto_7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 291
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Connection{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 9
    .line 10
    iget-object v2, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 11
    .line 12
    iget-object v2, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 13
    .line 14
    iget-object v2, v2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v2, 0x3a

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 25
    .line 26
    iget-object v2, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 27
    .line 28
    iget v2, v2, Lokhttp3/HttpUrl;->e:I

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", proxy="

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, v1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " hostAddress="

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, v1, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " cipherSuite="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->e:Lokhttp3/Handshake;

    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    iget-object v1, v1, Lokhttp3/Handshake;->b:Lokhttp3/CipherSuite;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const-string v1, "none"

    .line 66
    .line 67
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, " protocol="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection;->f:Lokhttp3/Protocol;

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/16 p0, 0x7d

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method
