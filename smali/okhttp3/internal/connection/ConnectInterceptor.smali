.class public final Lokhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final a:Lokhttp3/internal/connection/ConnectInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/connection/ConnectInterceptor;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokhttp3/internal/connection/ConnectInterceptor;->a:Lokhttp3/internal/connection/ConnectInterceptor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 8

    .line 1
    iget-object p0, p1, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->v:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->u:Z

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealCall;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    iget-object v1, p0, Lokhttp3/internal/connection/RealCall;->q:Lokhttp3/internal/connection/ExchangeFinder;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lokhttp3/internal/connection/RealCall;->j:Lokhttp3/OkHttpClient;

    .line 23
    .line 24
    :try_start_1
    iget v2, p1, Lokhttp3/internal/http/RealInterceptorChain;->f:I

    .line 25
    .line 26
    iget v3, p1, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    .line 27
    .line 28
    iget v4, p1, Lokhttp3/internal/http/RealInterceptorChain;->h:I

    .line 29
    .line 30
    iget-boolean v5, v0, Lokhttp3/OkHttpClient;->o:Z

    .line 31
    .line 32
    iget-object v6, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 33
    .line 34
    iget-object v6, v6, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 35
    .line 36
    const-string v7, "GET"

    .line 37
    .line 38
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x1

    .line 43
    xor-int/2addr v6, v7

    .line 44
    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/ExchangeFinder;->a(IIIZZ)Lokhttp3/internal/connection/RealConnection;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2, v0, p1}, Lokhttp3/internal/connection/RealConnection;->j(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/http/ExchangeCodec;

    .line 49
    .line 50
    .line 51
    move-result-object v0
    :try_end_1
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    new-instance v2, Lokhttp3/internal/connection/Exchange;

    .line 53
    .line 54
    iget-object v3, p0, Lokhttp3/internal/connection/RealCall;->m:Lokhttp3/EventListener$Companion$NONE$1;

    .line 55
    .line 56
    invoke-direct {v2, p0, v3, v1, v0}, Lokhttp3/internal/connection/Exchange;-><init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener$Companion$NONE$1;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Lokhttp3/internal/connection/RealCall;->s:Lokhttp3/internal/connection/Exchange;

    .line 60
    .line 61
    iput-object v2, p0, Lokhttp3/internal/connection/RealCall;->x:Lokhttp3/internal/connection/Exchange;

    .line 62
    .line 63
    monitor-enter p0

    .line 64
    :try_start_2
    iput-boolean v7, p0, Lokhttp3/internal/connection/RealCall;->t:Z

    .line 65
    .line 66
    iput-boolean v7, p0, Lokhttp3/internal/connection/RealCall;->u:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    monitor-exit p0

    .line 69
    iget-boolean p0, p0, Lokhttp3/internal/connection/RealCall;->w:Z

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    if-nez p0, :cond_0

    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    const/16 v1, 0x3d

    .line 76
    .line 77
    invoke-static {p1, p0, v2, v0, v1}, Lokhttp3/internal/http/RealInterceptorChain;->a(Lokhttp3/internal/http/RealInterceptorChain;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;I)Lokhttp3/internal/http/RealInterceptorChain;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    iget-object p1, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_0
    const-string p0, "Canceled"

    .line 89
    .line 90
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    move-object p1, v0

    .line 96
    monitor-exit p0

    .line 97
    throw p1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    move-object p0, v0

    .line 100
    goto :goto_0

    .line 101
    :catch_1
    move-exception v0

    .line 102
    move-object p0, v0

    .line 103
    goto :goto_1

    .line 104
    :goto_0
    invoke-virtual {v1, p0}, Lokhttp3/internal/connection/ExchangeFinder;->b(Ljava/io/IOException;)V

    .line 105
    .line 106
    .line 107
    new-instance p1, Lokhttp3/internal/connection/RouteException;

    .line 108
    .line 109
    invoke-direct {p1, p0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :goto_1
    iget-object p1, p0, Lokhttp3/internal/connection/RouteException;->k:Ljava/io/IOException;

    .line 114
    .line 115
    invoke-virtual {v1, p1}, Lokhttp3/internal/connection/ExchangeFinder;->b(Ljava/io/IOException;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :cond_1
    :try_start_3
    const-string p1, "Check failed."

    .line 120
    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :catchall_1
    move-exception v0

    .line 128
    move-object p1, v0

    .line 129
    goto :goto_2

    .line 130
    :cond_2
    const-string p1, "Check failed."

    .line 131
    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_3
    const-string p1, "released"

    .line 139
    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    :goto_2
    monitor-exit p0

    .line 147
    throw p1
.end method
