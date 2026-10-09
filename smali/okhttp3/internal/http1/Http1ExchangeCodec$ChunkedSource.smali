.class final Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;
.super Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1ExchangeCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChunkedSource"
.end annotation


# instance fields
.field public final m:Lokhttp3/HttpUrl;

.field public n:J

.field public o:Z

.field public final synthetic p:Lokhttp3/internal/http1/Http1ExchangeCodec;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->p:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->m:Lokhttp3/HttpUrl;

    .line 10
    .line 11
    const-wide/16 p1, -0x1

    .line 12
    .line 13
    iput-wide p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->n:J

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->o:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final J0(JLokio/Buffer;)J
    .locals 11

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->p:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 2
    .line 3
    iget-object v1, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->c:Lokio/BufferedSource;

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v4, p1, v2

    .line 11
    .line 12
    if-ltz v4, :cond_9

    .line 13
    .line 14
    iget-boolean v4, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->k:Z

    .line 15
    .line 16
    if-nez v4, :cond_8

    .line 17
    .line 18
    iget-boolean v4, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->o:Z

    .line 19
    .line 20
    const-wide/16 v5, -0x1

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-wide v7, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->n:J

    .line 26
    .line 27
    cmp-long v4, v7, v2

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    cmp-long v4, v7, v5

    .line 32
    .line 33
    if-nez v4, :cond_5

    .line 34
    .line 35
    :cond_1
    const-string v4, "expected chunk size and optional extensions but was \""

    .line 36
    .line 37
    cmp-long v7, v7, v5

    .line 38
    .line 39
    if-eqz v7, :cond_2

    .line 40
    .line 41
    invoke-interface {v1}, Lokio/BufferedSource;->A0()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    :cond_2
    :try_start_0
    invoke-interface {v1}, Lokio/BufferedSource;->Y0()J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    iput-wide v7, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->n:J

    .line 49
    .line 50
    invoke-interface {v1}, Lokio/BufferedSource;->A0()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lkotlin/text/StringsKt;->U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-wide v7, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->n:J

    .line 63
    .line 64
    cmp-long v7, v7, v2

    .line 65
    .line 66
    if-ltz v7, :cond_7

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    const/4 v8, 0x0

    .line 73
    if-lez v7, :cond_3

    .line 74
    .line 75
    const-string v7, ";"

    .line 76
    .line 77
    invoke-static {v1, v7, v8}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    if-eqz v7, :cond_7

    .line 82
    .line 83
    :cond_3
    iget-wide v9, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->n:J

    .line 84
    .line 85
    cmp-long v1, v9, v2

    .line 86
    .line 87
    if-nez v1, :cond_4

    .line 88
    .line 89
    iput-boolean v8, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->o:Z

    .line 90
    .line 91
    iget-object v1, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->f:Lokhttp3/internal/http1/HeadersReader;

    .line 92
    .line 93
    invoke-virtual {v1}, Lokhttp3/internal/http1/HeadersReader;->a()Lokhttp3/Headers;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iput-object v1, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->g:Lokhttp3/Headers;

    .line 98
    .line 99
    iget-object v1, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->a:Lokhttp3/OkHttpClient;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object v1, v1, Lokhttp3/OkHttpClient;->s:Lokhttp3/CookieJar;

    .line 105
    .line 106
    iget-object v2, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->g:Lokhttp3/Headers;

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget-object v3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->m:Lokhttp3/HttpUrl;

    .line 112
    .line 113
    invoke-static {v1, v3, v2}, Lokhttp3/internal/http/HttpHeaders;->b(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->a()V

    .line 117
    .line 118
    .line 119
    :cond_4
    iget-boolean v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->o:Z

    .line 120
    .line 121
    if-nez v1, :cond_5

    .line 122
    .line 123
    :goto_0
    return-wide v5

    .line 124
    :cond_5
    iget-wide v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->n:J

    .line 125
    .line 126
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 127
    .line 128
    .line 129
    move-result-wide p1

    .line 130
    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->J0(JLokio/Buffer;)J

    .line 131
    .line 132
    .line 133
    move-result-wide p1

    .line 134
    cmp-long p3, p1, v5

    .line 135
    .line 136
    if-eqz p3, :cond_6

    .line 137
    .line 138
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->n:J

    .line 139
    .line 140
    sub-long/2addr v0, p1

    .line 141
    iput-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->n:J

    .line 142
    .line 143
    return-wide p1

    .line 144
    :cond_6
    iget-object p1, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->b:Lokhttp3/internal/connection/RealConnection;

    .line 145
    .line 146
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->k()V

    .line 147
    .line 148
    .line 149
    new-instance p1, Ljava/net/ProtocolException;

    .line 150
    .line 151
    const-string p2, "unexpected end of stream"

    .line 152
    .line 153
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->a()V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :cond_7
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    .line 161
    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-wide v2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->n:J

    .line 168
    .line 169
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const/16 p0, 0x22

    .line 176
    .line 177
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    :catch_0
    move-exception p0

    .line 189
    new-instance p1, Ljava/net/ProtocolException;

    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p1

    .line 199
    :cond_8
    const-string p0, "closed"

    .line 200
    .line 201
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return-wide v2

    .line 205
    :cond_9
    const-string p0, "byteCount < 0: "

    .line 206
    .line 207
    invoke-static {p1, p2, p0}, Lq;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    return-wide v2
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->o:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lokhttp3/internal/Util;->a:[B

    .line 11
    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x64

    .line 18
    .line 19
    :try_start_0
    invoke-static {p0, v0}, Lokhttp3/internal/Util;->q(Lokio/Source;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->p:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 28
    .line 29
    iget-object v0, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->b:Lokhttp3/internal/connection/RealConnection;

    .line 30
    .line 31
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->k()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->a()V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->k:Z

    .line 39
    .line 40
    return-void
.end method
