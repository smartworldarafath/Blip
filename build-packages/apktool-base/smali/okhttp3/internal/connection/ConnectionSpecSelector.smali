.class public final Lokhttp3/internal/connection/ConnectionSpecSelector;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/util/List;

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->a:Ljava/util/List;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;
    .locals 13

    .line 1
    iget v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    :goto_0
    const/4 v3, 0x1

    .line 10
    if-ge v0, v2, :cond_1

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Lokhttp3/ConnectionSpec;

    .line 17
    .line 18
    invoke-virtual {v4, p1}, Lokhttp3/ConnectionSpec;->b(Ljavax/net/ssl/SSLSocket;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    add-int/2addr v0, v3

    .line 25
    iput v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->b:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 32
    :goto_1
    if-eqz v4, :cond_b

    .line 33
    .line 34
    iget v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->b:I

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    :goto_2
    const/4 v5, 0x0

    .line 41
    if-ge v0, v2, :cond_3

    .line 42
    .line 43
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lokhttp3/ConnectionSpec;

    .line 48
    .line 49
    invoke-virtual {v6, p1}, Lokhttp3/ConnectionSpec;->b(Ljavax/net/ssl/SSLSocket;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    move v0, v3

    .line 56
    goto :goto_3

    .line 57
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move v0, v5

    .line 61
    :goto_3
    iput-boolean v0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->c:Z

    .line 62
    .line 63
    iget-boolean p0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->d:Z

    .line 64
    .line 65
    iget-object v0, v4, Lokhttp3/ConnectionSpec;->d:[Ljava/lang/String;

    .line 66
    .line 67
    iget-object v1, v4, Lokhttp3/ConnectionSpec;->c:[Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    sget-object v6, Lokhttp3/CipherSuite;->c:Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;

    .line 79
    .line 80
    invoke-static {v2, v1, v6}, Lokhttp3/internal/Util;->m([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :goto_4
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lkotlin/comparisons/ComparisonsKt;->c()Ljava/util/Comparator;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-static {v6, v0, v7}, Lokhttp3/internal/Util;->m([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    goto :goto_5

    .line 107
    :cond_5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    :goto_5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    sget-object v8, Lokhttp3/CipherSuite;->c:Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;

    .line 119
    .line 120
    sget-object v9, Lokhttp3/internal/Util;->a:[B

    .line 121
    .line 122
    array-length v9, v7

    .line 123
    :goto_6
    const/4 v10, -0x1

    .line 124
    if-ge v5, v9, :cond_7

    .line 125
    .line 126
    aget-object v11, v7, v5

    .line 127
    .line 128
    const-string v12, "TLS_FALLBACK_SCSV"

    .line 129
    .line 130
    invoke-virtual {v8, v11, v12}, Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-nez v11, :cond_6

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_7
    move v5, v10

    .line 141
    :goto_7
    if-eqz p0, :cond_8

    .line 142
    .line 143
    if-eq v5, v10, :cond_8

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    aget-object p0, v7, v5

    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    array-length v5, v2

    .line 154
    add-int/2addr v5, v3

    .line 155
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, [Ljava/lang/String;

    .line 160
    .line 161
    array-length v5, v2

    .line 162
    sub-int/2addr v5, v3

    .line 163
    aput-object p0, v2, v5

    .line 164
    .line 165
    :cond_8
    new-instance p0, Lokhttp3/ConnectionSpec$Builder;

    .line 166
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    .line 169
    .line 170
    iget-boolean v3, v4, Lokhttp3/ConnectionSpec;->a:Z

    .line 171
    .line 172
    iput-boolean v3, p0, Lokhttp3/ConnectionSpec$Builder;->a:Z

    .line 173
    .line 174
    iput-object v1, p0, Lokhttp3/ConnectionSpec$Builder;->b:[Ljava/lang/String;

    .line 175
    .line 176
    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->c:[Ljava/lang/String;

    .line 177
    .line 178
    iget-boolean v0, v4, Lokhttp3/ConnectionSpec;->b:Z

    .line 179
    .line 180
    iput-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->d:Z

    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    array-length v0, v2

    .line 186
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, [Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p0, v0}, Lokhttp3/ConnectionSpec$Builder;->b([Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    array-length v0, v6

    .line 199
    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, [Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p0, v0}, Lokhttp3/ConnectionSpec$Builder;->d([Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lokhttp3/ConnectionSpec$Builder;->a()Lokhttp3/ConnectionSpec;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {p0}, Lokhttp3/ConnectionSpec;->c()Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-eqz v0, :cond_9

    .line 217
    .line 218
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->d:[Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :cond_9
    invoke-virtual {p0}, Lokhttp3/ConnectionSpec;->a()Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-eqz v0, :cond_a

    .line 228
    .line 229
    iget-object p0, p0, Lokhttp3/ConnectionSpec;->c:[Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {p1, p0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_a
    return-object v4

    .line 235
    :cond_b
    new-instance v0, Ljava/net/UnknownServiceException;

    .line 236
    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v3, "Unable to find acceptable protocols. isFallback="

    .line 240
    .line 241
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-boolean p0, p0, Lokhttp3/internal/connection/ConnectionSpecSelector;->d:Z

    .line 245
    .line 246
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string p0, ", modes="

    .line 250
    .line 251
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    const-string p1, ", supported protocols="

    .line 272
    .line 273
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-direct {v0, p0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw v0
.end method
