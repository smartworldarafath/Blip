.class final Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcoil3/network/NetworkResponse;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcoil3/fetch/SourceFetchResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.network.NetworkFetcher$doFetch$fetchResult$1"
    f = "NetworkFetcher.kt"
    l = {
        0x6e,
        0x7c
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic r:Lcoil3/network/NetworkFetcher;

.field public final synthetic s:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic t:Lcoil3/network/NetworkRequest;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/network/NetworkFetcher;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/network/NetworkRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->q:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->r:Lcoil3/network/NetworkFetcher;

    .line 4
    .line 5
    iput-object p3, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->s:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p4, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->t:Lcoil3/network/NetworkRequest;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcoil3/network/NetworkResponse;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;

    .line 2
    .line 3
    iget-object v3, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->s:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-object v4, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->t:Lcoil3/network/NetworkRequest;

    .line 6
    .line 7
    iget-object v1, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->q:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-object v2, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->r:Lcoil3/network/NetworkFetcher;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/network/NetworkFetcher;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/network/NetworkRequest;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->p:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcoil3/network/NetworkResponse;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->o:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    iget-object v6, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->s:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 13
    .line 14
    iget-object v7, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->q:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 15
    .line 16
    iget-object v8, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->r:Lcoil3/network/NetworkFetcher;

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    if-eq v2, v4, :cond_1

    .line 21
    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v5

    .line 35
    :cond_1
    iget-object v2, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lcoil3/disk/DiskCache$Snapshot;

    .line 47
    .line 48
    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Lcoil3/network/NetworkResponse;

    .line 51
    .line 52
    iput-object v0, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->p:Ljava/lang/Object;

    .line 53
    .line 54
    iput-object v7, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    iput v4, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->o:I

    .line 57
    .line 58
    invoke-static {v8, p1, v2, v0, p0}, Lcoil3/network/NetworkFetcher;->d(Lcoil3/network/NetworkFetcher;Lcoil3/disk/DiskCache$Snapshot;Lcoil3/network/NetworkResponse;Lcoil3/network/NetworkResponse;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-ne p1, v1, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move-object v2, v7

    .line 66
    :goto_0
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcoil3/network/NetworkFetcher;->h(Lcoil3/network/NetworkResponse;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    check-cast p1, Lcoil3/disk/DiskCache$Snapshot;

    .line 79
    .line 80
    invoke-virtual {v8, p1}, Lcoil3/network/NetworkFetcher;->j(Lcoil3/disk/DiskCache$Snapshot;)Lcoil3/network/NetworkResponse;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    iput-object p0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 85
    .line 86
    new-instance p0, Lcoil3/fetch/SourceFetchResult;

    .line 87
    .line 88
    iget-object p1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    check-cast p1, Lcoil3/disk/DiskCache$Snapshot;

    .line 94
    .line 95
    invoke-virtual {v8, p1}, Lcoil3/network/NetworkFetcher;->i(Lcoil3/disk/DiskCache$Snapshot;)Lcoil3/decode/FileImageSource;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v0, v8, Lcoil3/network/NetworkFetcher;->a:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v1, Lcoil3/network/NetworkResponse;

    .line 104
    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    iget-object v1, v1, Lcoil3/network/NetworkResponse;->d:Lcoil3/network/NetworkHeaders;

    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    invoke-virtual {v1}, Lcoil3/network/NetworkHeaders;->a()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    :cond_4
    invoke-static {v0, v5}, Lcoil3/network/NetworkFetcher;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sget-object v1, Lcoil3/decode/DataSource;->m:Lcoil3/decode/DataSource;

    .line 120
    .line 121
    invoke-direct {p0, p1, v0, v1}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 122
    .line 123
    .line 124
    return-object p0

    .line 125
    :cond_5
    iget-object p1, v0, Lcoil3/network/NetworkResponse;->e:Lcoil3/network/NetworkResponseBody;

    .line 126
    .line 127
    if-eqz p1, :cond_8

    .line 128
    .line 129
    iput-object v0, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->p:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v5, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 132
    .line 133
    iput v3, p0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;->o:I

    .line 134
    .line 135
    invoke-static {p1, p0}, Lcoil3/network/internal/UtilsKt;->a(Lcoil3/network/NetworkResponseBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-ne p1, v1, :cond_6

    .line 140
    .line 141
    :goto_1
    return-object v1

    .line 142
    :cond_6
    :goto_2
    check-cast p1, Lokio/Buffer;

    .line 143
    .line 144
    iget-wide v1, p1, Lokio/Buffer;->k:J

    .line 145
    .line 146
    const-wide/16 v3, 0x0

    .line 147
    .line 148
    cmp-long p0, v1, v3

    .line 149
    .line 150
    if-lez p0, :cond_7

    .line 151
    .line 152
    new-instance p0, Lcoil3/fetch/SourceFetchResult;

    .line 153
    .line 154
    invoke-virtual {v8}, Lcoil3/network/NetworkFetcher;->e()Lokio/FileSystem;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    new-instance v2, Lcoil3/decode/SourceImageSource;

    .line 159
    .line 160
    invoke-direct {v2, p1, v1, v5}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, v8, Lcoil3/network/NetworkFetcher;->a:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v0, v0, Lcoil3/network/NetworkResponse;->d:Lcoil3/network/NetworkHeaders;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcoil3/network/NetworkHeaders;->a()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {p1, v0}, Lcoil3/network/NetworkFetcher;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    sget-object v0, Lcoil3/decode/DataSource;->m:Lcoil3/decode/DataSource;

    .line 176
    .line 177
    invoke-direct {p0, v2, p1, v0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 178
    .line 179
    .line 180
    return-object p0

    .line 181
    :cond_7
    return-object v5

    .line 182
    :cond_8
    const-string p0, "body == null"

    .line 183
    .line 184
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-object v5
.end method
