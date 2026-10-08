.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final a:Lokhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar;)V
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
    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->a:Lokhttp3/CookieJar;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 11

    .line 1
    iget-object v0, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/Request$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 8
    .line 9
    iget-object v3, v0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 10
    .line 11
    iget-object v4, v0, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 12
    .line 13
    const-wide/16 v5, -0x1

    .line 14
    .line 15
    const-string v7, "Content-Length"

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {v4}, Lokhttp3/RequestBody;->a()J

    .line 20
    .line 21
    .line 22
    move-result-wide v8

    .line 23
    cmp-long v4, v8, v5

    .line 24
    .line 25
    const-string v10, "Transfer-Encoding"

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v1, v7, v4}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v4, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 37
    .line 38
    invoke-virtual {v4, v10}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string v4, "chunked"

    .line 43
    .line 44
    invoke-virtual {v1, v10, v4}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v4, v1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 48
    .line 49
    invoke-virtual {v4, v7}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    const-string v4, "Host"

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Lokhttp3/Headers;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    const/4 v9, 0x0

    .line 59
    if-nez v8, :cond_2

    .line 60
    .line 61
    invoke-static {v2, v9}, Lokhttp3/internal/Util;->s(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v1, v4, v8}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    const-string v4, "Connection"

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Lokhttp3/Headers;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    if-nez v8, :cond_3

    .line 75
    .line 76
    const-string v8, "Keep-Alive"

    .line 77
    .line 78
    invoke-virtual {v1, v4, v8}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    const-string v4, "Accept-Encoding"

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Lokhttp3/Headers;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    const-string v10, "gzip"

    .line 88
    .line 89
    if-nez v8, :cond_4

    .line 90
    .line 91
    const-string v8, "Range"

    .line 92
    .line 93
    invoke-virtual {v3, v8}, Lokhttp3/Headers;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    if-nez v8, :cond_4

    .line 98
    .line 99
    invoke-virtual {v1, v4, v10}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 v9, 0x1

    .line 103
    :cond_4
    iget-object p0, p0, Lokhttp3/internal/http/BridgeInterceptor;->a:Lokhttp3/CookieJar;

    .line 104
    .line 105
    invoke-interface {p0, v2}, Lokhttp3/CookieJar;->a(Lokhttp3/HttpUrl;)V

    .line 106
    .line 107
    .line 108
    const-string v4, "User-Agent"

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Lokhttp3/Headers;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    if-nez v3, :cond_5

    .line 115
    .line 116
    const-string v3, "okhttp/4.12.0"

    .line 117
    .line 118
    invoke-virtual {v1, v4, v3}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {p1, v1}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object v1, p1, Lokhttp3/Response;->o:Lokhttp3/Headers;

    .line 130
    .line 131
    invoke-static {p0, v2, v1}, Lokhttp3/internal/http/HttpHeaders;->b(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    iput-object v0, p0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 139
    .line 140
    if-eqz v9, :cond_6

    .line 141
    .line 142
    const-string v0, "Content-Encoding"

    .line 143
    .line 144
    invoke-static {v0, p1}, Lokhttp3/Response;->a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_6

    .line 153
    .line 154
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/Response;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_6

    .line 159
    .line 160
    iget-object v2, p1, Lokhttp3/Response;->p:Lokhttp3/ResponseBody;

    .line 161
    .line 162
    if-eqz v2, :cond_6

    .line 163
    .line 164
    new-instance v3, Lokio/GzipSource;

    .line 165
    .line 166
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->U0()Lokio/BufferedSource;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-direct {v3, v2}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Lokhttp3/Headers;->d()Lokhttp3/Headers$Builder;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1, v0}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v7}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->b()Lokhttp3/Headers;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lokhttp3/Headers;->d()Lokhttp3/Headers$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iput-object v0, p0, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 192
    .line 193
    const-string v0, "Content-Type"

    .line 194
    .line 195
    invoke-static {v0, p1}, Lokhttp3/Response;->a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    new-instance p1, Lokhttp3/internal/http/RealResponseBody;

    .line 199
    .line 200
    new-instance v0, Lokio/RealBufferedSource;

    .line 201
    .line 202
    invoke-direct {v0, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 203
    .line 204
    .line 205
    invoke-direct {p1, v5, v6, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(JLokio/RealBufferedSource;)V

    .line 206
    .line 207
    .line 208
    iput-object p1, p0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 209
    .line 210
    :cond_6
    invoke-virtual {p0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    return-object p0
.end method
