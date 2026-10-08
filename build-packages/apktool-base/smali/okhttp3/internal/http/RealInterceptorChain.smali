.class public final Lokhttp3/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lokhttp3/internal/connection/RealCall;

.field public final b:Ljava/util/ArrayList;

.field public final c:I

.field public final d:Lokhttp3/internal/connection/Exchange;

.field public final e:Lokhttp3/Request;

.field public final f:I

.field public final g:I

.field public final h:I

.field public i:I


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Ljava/util/ArrayList;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    .line 5
    .line 6
    iput-object p2, p0, Lokhttp3/internal/http/RealInterceptorChain;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput p3, p0, Lokhttp3/internal/http/RealInterceptorChain;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    .line 11
    .line 12
    iput-object p5, p0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 13
    .line 14
    iput p6, p0, Lokhttp3/internal/http/RealInterceptorChain;->f:I

    .line 15
    .line 16
    iput p7, p0, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    .line 17
    .line 18
    iput p8, p0, Lokhttp3/internal/http/RealInterceptorChain;->h:I

    .line 19
    .line 20
    return-void
.end method

.method public static a(Lokhttp3/internal/http/RealInterceptorChain;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;I)Lokhttp3/internal/http/RealInterceptorChain;
    .locals 9

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->c:I

    .line 6
    .line 7
    :cond_0
    move v3, p1

    .line 8
    and-int/lit8 p1, p4, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    .line 13
    .line 14
    :cond_1
    move-object v4, p2

    .line 15
    and-int/lit8 p1, p4, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p3, p0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 20
    .line 21
    :cond_2
    move-object v5, p3

    .line 22
    iget v6, p0, Lokhttp3/internal/http/RealInterceptorChain;->f:I

    .line 23
    .line 24
    iget v7, p0, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    .line 25
    .line 26
    iget v8, p0, Lokhttp3/internal/http/RealInterceptorChain;->h:I

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lokhttp3/internal/http/RealInterceptorChain;

    .line 32
    .line 33
    iget-object v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    .line 34
    .line 35
    iget-object v2, p0, Lokhttp3/internal/http/RealInterceptorChain;->b:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct/range {v0 .. v8}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Lokhttp3/internal/connection/RealCall;Ljava/util/ArrayList;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;III)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method


# virtual methods
.method public final b(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    iget v3, p0, Lokhttp3/internal/http/RealInterceptorChain;->c:I

    .line 12
    .line 13
    if-ge v3, v1, :cond_7

    .line 14
    .line 15
    iget v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->i:I

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    add-int/2addr v1, v4

    .line 19
    iput v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->i:I

    .line 20
    .line 21
    const-string v1, " must call proceed() exactly once"

    .line 22
    .line 23
    iget-object v5, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    .line 24
    .line 25
    const-string v6, "network interceptor "

    .line 26
    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    iget-object v7, v5, Lokhttp3/internal/connection/Exchange;->c:Lokhttp3/internal/connection/ExchangeFinder;

    .line 30
    .line 31
    iget-object v8, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 32
    .line 33
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v7, v7, Lokhttp3/internal/connection/ExchangeFinder;->b:Lokhttp3/Address;

    .line 40
    .line 41
    iget-object v7, v7, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 42
    .line 43
    iget v9, v8, Lokhttp3/HttpUrl;->e:I

    .line 44
    .line 45
    iget v10, v7, Lokhttp3/HttpUrl;->e:I

    .line 46
    .line 47
    if-ne v9, v10, :cond_1

    .line 48
    .line 49
    iget-object v8, v8, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v7, v7, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    iget v7, p0, Lokhttp3/internal/http/RealInterceptorChain;->i:I

    .line 60
    .line 61
    if-ne v7, v4, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sub-int/2addr v3, v4

    .line 65
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v6, p0, v1}, Lu2;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_1
    sub-int/2addr v3, v4

    .line 74
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string p1, " must retain the same host and port"

    .line 79
    .line 80
    invoke-static {v6, p0, p1}, Lu2;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-object v2

    .line 84
    :cond_2
    :goto_0
    add-int/lit8 v7, v3, 0x1

    .line 85
    .line 86
    const/16 v8, 0x3a

    .line 87
    .line 88
    invoke-static {p0, v7, v2, p1, v8}, Lokhttp3/internal/http/RealInterceptorChain;->a(Lokhttp3/internal/http/RealInterceptorChain;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;I)Lokhttp3/internal/http/RealInterceptorChain;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lokhttp3/Interceptor;

    .line 97
    .line 98
    invoke-interface {p1, p0}, Lokhttp3/Interceptor;->a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const-string v8, "interceptor "

    .line 103
    .line 104
    if-eqz v3, :cond_6

    .line 105
    .line 106
    if-eqz v5, :cond_4

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-ge v7, v0, :cond_4

    .line 113
    .line 114
    iget p0, p0, Lokhttp3/internal/http/RealInterceptorChain;->i:I

    .line 115
    .line 116
    if-ne p0, v4, :cond_3

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    invoke-static {v6, p1, v1}, Lu2;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-object v2

    .line 123
    :cond_4
    :goto_1
    iget-object p0, v3, Lokhttp3/Response;->p:Lokhttp3/ResponseBody;

    .line 124
    .line 125
    if-eqz p0, :cond_5

    .line 126
    .line 127
    return-object v3

    .line 128
    :cond_5
    const-string p0, " returned a response with no body"

    .line 129
    .line 130
    invoke-static {v8, p1, p0}, Lu2;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-object v2

    .line 134
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    .line 135
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p1, " returned null"

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :cond_7
    const-string p0, "Check failed."

    .line 158
    .line 159
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-object v2
.end method
