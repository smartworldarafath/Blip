.class final Lcom/google/android/datatransport/cct/CctTransportBackend;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/datatransport/runtime/backends/TransportBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;,
        Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/firebase/encoders/DataEncoder;

.field public final b:Landroid/net/ConnectivityManager;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/net/URL;

.field public final e:Lcom/google/android/datatransport/runtime/time/Clock;

.field public final f:Lcom/google/android/datatransport/runtime/time/Clock;

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder;->a:Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/datatransport/cct/internal/AutoBatchedLogRequestEncoder;->a(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->d:Z

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->a()Lcom/google/firebase/encoders/DataEncoder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->a:Lcom/google/firebase/encoders/DataEncoder;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->c:Landroid/content/Context;

    .line 24
    .line 25
    const-string v0, "connectivity"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->b:Landroid/net/ConnectivityManager;

    .line 34
    .line 35
    sget-object p1, Lcom/google/android/datatransport/cct/CCTDestination;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/google/android/datatransport/cct/CctTransportBackend;->c(Ljava/lang/String;)Ljava/net/URL;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->d:Ljava/net/URL;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->e:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->f:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 46
    .line 47
    const p1, 0x1fbd0

    .line 48
    .line 49
    .line 50
    iput p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->g:I

    .line 51
    .line 52
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-object v0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v2, "Invalid url: "

    .line 11
    .line 12
    invoke-static {v2, p0}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/android/datatransport/runtime/backends/BackendRequest;)Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->b()Ljava/lang/Iterable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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
    check-cast v2, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/EventInternal;->i()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    new-instance v4, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v3, 0x5

    .line 76
    const-string v4, "CctTransportBackend"

    .line 77
    .line 78
    if-eqz v2, :cond_7

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/util/Map$Entry;

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Ljava/util/List;

    .line 91
    .line 92
    const/4 v6, 0x0

    .line 93
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 98
    .line 99
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/LogRequest;->a()Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    sget-object v7, Lcom/google/android/datatransport/cct/internal/QosTier;->j:Lcom/google/android/datatransport/cct/internal/QosTier;

    .line 104
    .line 105
    invoke-virtual {v6}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->d()Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 106
    .line 107
    .line 108
    iget-object v7, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->f:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 109
    .line 110
    invoke-interface {v7}, Lcom/google/android/datatransport/runtime/time/Clock;->a()J

    .line 111
    .line 112
    .line 113
    move-result-wide v7

    .line 114
    invoke-virtual {v6, v7, v8}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->e(J)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 115
    .line 116
    .line 117
    iget-object v7, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->e:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 118
    .line 119
    invoke-interface {v7}, Lcom/google/android/datatransport/runtime/time/Clock;->a()J

    .line 120
    .line 121
    .line 122
    move-result-wide v7

    .line 123
    invoke-virtual {v6, v7, v8}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->f(J)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/ClientInfo;->a()Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {v7}, Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;->c()Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->a()Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    const-string v9, "sdk-version"

    .line 138
    .line 139
    invoke-virtual {v5, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->f(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->m(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 148
    .line 149
    .line 150
    const-string v9, "model"

    .line 151
    .line 152
    invoke-virtual {v5, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->j(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 157
    .line 158
    .line 159
    const-string v9, "hardware"

    .line 160
    .line 161
    invoke-virtual {v5, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->f(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 166
    .line 167
    .line 168
    const-string v9, "device"

    .line 169
    .line 170
    invoke-virtual {v5, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->d(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 175
    .line 176
    .line 177
    const-string v9, "product"

    .line 178
    .line 179
    invoke-virtual {v5, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->l(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 184
    .line 185
    .line 186
    const-string v9, "os-uild"

    .line 187
    .line 188
    invoke-virtual {v5, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->k(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 193
    .line 194
    .line 195
    const-string v9, "manufacturer"

    .line 196
    .line 197
    invoke-virtual {v5, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->h(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 202
    .line 203
    .line 204
    const-string v9, "fingerprint"

    .line 205
    .line 206
    invoke-virtual {v5, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->e(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 211
    .line 212
    .line 213
    const-string v9, "country"

    .line 214
    .line 215
    invoke-virtual {v5, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->c(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 220
    .line 221
    .line 222
    const-string v9, "locale"

    .line 223
    .line 224
    invoke-virtual {v5, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->g(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 229
    .line 230
    .line 231
    const-string v9, "mcc_mnc"

    .line 232
    .line 233
    invoke-virtual {v5, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->i(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 238
    .line 239
    .line 240
    const-string v9, "application_build"

    .line 241
    .line 242
    invoke-virtual {v5, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-virtual {v8, v5}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->b(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->a()Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {v7, v5}, Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;->b(Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;)Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v7}, Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;->a()Lcom/google/android/datatransport/cct/internal/ClientInfo;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v6, v5}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->b(Lcom/google/android/datatransport/cct/internal/ClientInfo;)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 261
    .line 262
    .line 263
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    check-cast v5, Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    invoke-virtual {v6, v5}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->g(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :catch_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    check-cast v5, Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v6, v5}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->h(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    check-cast v2, Ljava/util/List;

    .line 296
    .line 297
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    :cond_2
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-eqz v7, :cond_6

    .line 306
    .line 307
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    check-cast v7, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 312
    .line 313
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/EventInternal;->d()Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    iget-object v9, v8, Lcom/google/android/datatransport/runtime/EncodedPayload;->a:Lcom/google/android/datatransport/Encoding;

    .line 318
    .line 319
    iget-object v8, v8, Lcom/google/android/datatransport/runtime/EncodedPayload;->b:[B

    .line 320
    .line 321
    new-instance v10, Lcom/google/android/datatransport/Encoding;

    .line 322
    .line 323
    const-string v11, "proto"

    .line 324
    .line 325
    invoke-direct {v10, v11}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v9, v10}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v10

    .line 332
    if-eqz v10, :cond_3

    .line 333
    .line 334
    invoke-static {v8}, Lcom/google/android/datatransport/cct/internal/LogEvent;->b([B)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    goto :goto_4

    .line 339
    :cond_3
    new-instance v10, Lcom/google/android/datatransport/Encoding;

    .line 340
    .line 341
    const-string v11, "json"

    .line 342
    .line 343
    invoke-direct {v10, v11}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v9, v10}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v10

    .line 350
    if-eqz v10, :cond_5

    .line 351
    .line 352
    new-instance v9, Ljava/lang/String;

    .line 353
    .line 354
    const-string v10, "UTF-8"

    .line 355
    .line 356
    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 357
    .line 358
    .line 359
    move-result-object v10

    .line 360
    invoke-direct {v9, v8, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 361
    .line 362
    .line 363
    invoke-static {v9}, Lcom/google/android/datatransport/cct/internal/LogEvent;->a(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    :goto_4
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/EventInternal;->e()J

    .line 368
    .line 369
    .line 370
    move-result-wide v9

    .line 371
    invoke-virtual {v8, v9, v10}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->c(J)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/EventInternal;->j()J

    .line 375
    .line 376
    .line 377
    move-result-wide v9

    .line 378
    invoke-virtual {v8, v9, v10}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->d(J)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/EventInternal;->g()J

    .line 382
    .line 383
    .line 384
    move-result-wide v9

    .line 385
    invoke-virtual {v8, v9, v10}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->f(J)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 386
    .line 387
    .line 388
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;->a()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;

    .line 389
    .line 390
    .line 391
    move-result-object v9

    .line 392
    const-string v10, "net-type"

    .line 393
    .line 394
    invoke-virtual {v7, v10}, Lcom/google/android/datatransport/runtime/EventInternal;->f(Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    move-result v10

    .line 398
    sget-object v11, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->j:Landroid/util/SparseArray;

    .line 399
    .line 400
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v10

    .line 404
    check-cast v10, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 405
    .line 406
    invoke-virtual {v9, v10}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;->c(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;

    .line 407
    .line 408
    .line 409
    const-string v10, "mobile-subtype"

    .line 410
    .line 411
    invoke-virtual {v7, v10}, Lcom/google/android/datatransport/runtime/EventInternal;->f(Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    move-result v10

    .line 415
    sget-object v11, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->j:Landroid/util/SparseArray;

    .line 416
    .line 417
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v10

    .line 421
    check-cast v10, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 422
    .line 423
    invoke-virtual {v9, v10}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;->b(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v9}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;->a()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    .line 427
    .line 428
    .line 429
    move-result-object v9

    .line 430
    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->e(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/EventInternal;->c()Ljava/lang/Integer;

    .line 434
    .line 435
    .line 436
    move-result-object v9

    .line 437
    if-eqz v9, :cond_4

    .line 438
    .line 439
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/EventInternal;->c()Ljava/lang/Integer;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    invoke-virtual {v8, v7}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->b(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 444
    .line 445
    .line 446
    :cond_4
    invoke-virtual {v8}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->a()Lcom/google/android/datatransport/cct/internal/LogEvent;

    .line 447
    .line 448
    .line 449
    move-result-object v7

    .line 450
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    goto/16 :goto_3

    .line 454
    .line 455
    :cond_5
    const-string v7, "TRuntime."

    .line 456
    .line 457
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v7

    .line 461
    invoke-static {v7, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 462
    .line 463
    .line 464
    move-result v8

    .line 465
    if-eqz v8, :cond_2

    .line 466
    .line 467
    new-instance v8, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    const-string v10, "Received event of unsupported encoding "

    .line 470
    .line 471
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v9, ". Skipping..."

    .line 478
    .line 479
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    goto/16 :goto_3

    .line 490
    .line 491
    :cond_6
    invoke-virtual {v6, v5}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->c(Ljava/util/ArrayList;)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v6}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->a()Lcom/google/android/datatransport/cct/internal/LogRequest;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    goto/16 :goto_1

    .line 502
    .line 503
    :cond_7
    invoke-static {v1}, Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;->a(Ljava/util/ArrayList;)Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->c()[B

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    const/4 v2, 0x0

    .line 512
    if-eqz v1, :cond_9

    .line 513
    .line 514
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->c()[B

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-static {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->a([B)Lcom/google/android/datatransport/cct/CCTDestination;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    iget-object v1, p1, Lcom/google/android/datatransport/cct/CCTDestination;->b:Ljava/lang/String;

    .line 523
    .line 524
    if-eqz v1, :cond_8

    .line 525
    .line 526
    goto :goto_5

    .line 527
    :cond_8
    move-object v1, v2

    .line 528
    :goto_5
    iget-object p1, p1, Lcom/google/android/datatransport/cct/CCTDestination;->a:Ljava/lang/String;

    .line 529
    .line 530
    invoke-static {p1}, Lcom/google/android/datatransport/cct/CctTransportBackend;->c(Ljava/lang/String;)Ljava/net/URL;

    .line 531
    .line 532
    .line 533
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 534
    goto :goto_6

    .line 535
    :catch_1
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->a()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 536
    .line 537
    .line 538
    move-result-object p0

    .line 539
    return-object p0

    .line 540
    :cond_9
    iget-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->d:Ljava/net/URL;

    .line 541
    .line 542
    move-object v1, v2

    .line 543
    :goto_6
    :try_start_2
    new-instance v5, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;

    .line 544
    .line 545
    invoke-direct {v5, p1, v0, v1}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;-><init>(Ljava/net/URL;Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    new-instance p1, Lcom/google/android/datatransport/cct/a;

    .line 549
    .line 550
    invoke-direct {p1, p0}, Lcom/google/android/datatransport/cct/a;-><init>(Lcom/google/android/datatransport/cct/CctTransportBackend;)V

    .line 551
    .line 552
    .line 553
    :cond_a
    invoke-virtual {p1, v5}, Lcom/google/android/datatransport/cct/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object p0

    .line 557
    move-object v0, p0

    .line 558
    check-cast v0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    .line 559
    .line 560
    iget-object v0, v0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->b:Ljava/net/URL;

    .line 561
    .line 562
    if-eqz v0, :cond_b

    .line 563
    .line 564
    const-string v1, "Following redirect to: %s"

    .line 565
    .line 566
    invoke-static {v4, v1, v0}, Lcom/google/android/datatransport/runtime/logging/Logging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    new-instance v1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;

    .line 570
    .line 571
    iget-object v6, v5, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->b:Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

    .line 572
    .line 573
    iget-object v5, v5, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->c:Ljava/lang/String;

    .line 574
    .line 575
    invoke-direct {v1, v0, v6, v5}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;-><init>(Ljava/net/URL;Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    move-object v5, v1

    .line 579
    goto :goto_7

    .line 580
    :cond_b
    move-object v5, v2

    .line 581
    :goto_7
    if-eqz v5, :cond_c

    .line 582
    .line 583
    add-int/lit8 v3, v3, -0x1

    .line 584
    .line 585
    const/4 v0, 0x1

    .line 586
    if-ge v3, v0, :cond_a

    .line 587
    .line 588
    :cond_c
    check-cast p0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    .line 589
    .line 590
    iget p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->a:I

    .line 591
    .line 592
    const/16 v0, 0xc8

    .line 593
    .line 594
    if-ne p1, v0, :cond_d

    .line 595
    .line 596
    iget-wide p0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->c:J

    .line 597
    .line 598
    invoke-static {p0, p1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->e(J)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 599
    .line 600
    .line 601
    move-result-object p0

    .line 602
    return-object p0

    .line 603
    :catch_2
    move-exception p0

    .line 604
    goto :goto_9

    .line 605
    :cond_d
    const/16 p0, 0x1f4

    .line 606
    .line 607
    if-ge p1, p0, :cond_10

    .line 608
    .line 609
    const/16 p0, 0x194

    .line 610
    .line 611
    if-ne p1, p0, :cond_e

    .line 612
    .line 613
    goto :goto_8

    .line 614
    :cond_e
    const/16 p0, 0x190

    .line 615
    .line 616
    if-ne p1, p0, :cond_f

    .line 617
    .line 618
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->d()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 619
    .line 620
    .line 621
    move-result-object p0

    .line 622
    return-object p0

    .line 623
    :cond_f
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->a()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 624
    .line 625
    .line 626
    move-result-object p0

    .line 627
    return-object p0

    .line 628
    :cond_10
    :goto_8
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->f()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 629
    .line 630
    .line 631
    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 632
    return-object p0

    .line 633
    :goto_9
    const-string p1, "Could not make request to the backend"

    .line 634
    .line 635
    invoke-static {v4, p1, p0}, Lcom/google/android/datatransport/runtime/logging/Logging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 636
    .line 637
    .line 638
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->f()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 639
    .line 640
    .line 641
    move-result-object p0

    .line 642
    return-object p0
.end method

.method public final b(Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/EventInternal;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->b:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->k()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->c()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v2, Ljava/util/HashMap;

    .line 22
    .line 23
    const-string v3, "sdk-version"

    .line 24
    .line 25
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string v1, "model"

    .line 29
    .line 30
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "hardware"

    .line 36
    .line 37
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "device"

    .line 43
    .line 44
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "product"

    .line 50
    .line 51
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "os-uild"

    .line 57
    .line 58
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "manufacturer"

    .line 64
    .line 65
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v1, "fingerprint"

    .line 71
    .line 72
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    div-int/lit16 v1, v1, 0x3e8

    .line 97
    .line 98
    int-to-long v1, v1

    .line 99
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->c()Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v3, Ljava/util/HashMap;

    .line 108
    .line 109
    const-string v2, "tz-offset"

    .line 110
    .line 111
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    const/4 v1, -0x1

    .line 115
    if-nez v0, :cond_0

    .line 116
    .line 117
    sget-object v2, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->j:Landroid/util/SparseArray;

    .line 118
    .line 119
    move v2, v1

    .line 120
    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->c()Ljava/util/Map;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v3, Ljava/util/HashMap;

    .line 134
    .line 135
    const-string v4, "net-type"

    .line 136
    .line 137
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    const/4 v2, 0x0

    .line 141
    if-nez v0, :cond_2

    .line 142
    .line 143
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->j:Landroid/util/SparseArray;

    .line 144
    .line 145
    :cond_1
    move v0, v2

    .line 146
    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-ne v0, v1, :cond_3

    .line 152
    .line 153
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->j:Landroid/util/SparseArray;

    .line 154
    .line 155
    const/16 v0, 0x64

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_3
    sget-object v3, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->j:Landroid/util/SparseArray;

    .line 159
    .line 160
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 165
    .line 166
    if-eqz v3, :cond_1

    .line 167
    .line 168
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->c()Ljava/util/Map;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v3, Ljava/util/HashMap;

    .line 177
    .line 178
    const-string v4, "mobile-subtype"

    .line 179
    .line 180
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string v3, "country"

    .line 192
    .line 193
    invoke-virtual {p1, v3, v0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-string v3, "locale"

    .line 205
    .line 206
    invoke-virtual {p1, v3, v0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string v0, "phone"

    .line 210
    .line 211
    iget-object p0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->c:Landroid/content/Context;

    .line 212
    .line 213
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const-string v3, "mcc_mnc"

    .line 224
    .line 225
    invoke-virtual {p1, v3, v0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :catch_0
    move-exception p0

    .line 244
    const-string v0, "CctTransportBackend"

    .line 245
    .line 246
    const-string v2, "Unable to find version code for package"

    .line 247
    .line 248
    invoke-static {v0, v2, p0}, Lcom/google/android/datatransport/runtime/logging/Logging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 249
    .line 250
    .line 251
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    const-string v0, "application_build"

    .line 256
    .line 257
    invoke-virtual {p1, v0, p0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->b()Lcom/google/android/datatransport/runtime/EventInternal;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    return-object p0
.end method
