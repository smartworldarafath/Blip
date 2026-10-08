.class public final Lcoil3/intercept/RealInterceptorChain;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/intercept/Interceptor$Chain;


# instance fields
.field public final a:Lcoil3/request/ImageRequest;

.field public final b:Ljava/util/List;

.field public final c:I

.field public final d:Lcoil3/request/ImageRequest;

.field public final e:Lcoil3/size/Size;

.field public final f:Lcoil3/EventListener;

.field public final g:Z


# direct methods
.method public constructor <init>(Lcoil3/request/ImageRequest;Ljava/util/List;ILcoil3/request/ImageRequest;Lcoil3/size/Size;Lcoil3/EventListener;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/intercept/RealInterceptorChain;->a:Lcoil3/request/ImageRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/intercept/RealInterceptorChain;->b:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Lcoil3/intercept/RealInterceptorChain;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lcoil3/intercept/RealInterceptorChain;->d:Lcoil3/request/ImageRequest;

    .line 11
    .line 12
    iput-object p5, p0, Lcoil3/intercept/RealInterceptorChain;->e:Lcoil3/size/Size;

    .line 13
    .line 14
    iput-object p6, p0, Lcoil3/intercept/RealInterceptorChain;->f:Lcoil3/EventListener;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcoil3/intercept/RealInterceptorChain;->g:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Lcoil3/intercept/RealInterceptorChain$proceed$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->p:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcoil3/intercept/RealInterceptorChain$proceed$1;-><init>(Lcoil3/intercept/RealInterceptorChain;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->p:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    iget-object v5, p0, Lcoil3/intercept/RealInterceptorChain;->a:Lcoil3/request/ImageRequest;

    .line 33
    .line 34
    const/4 v12, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v12, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->m:Lcoil3/intercept/Interceptor;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v3

    .line 51
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcoil3/intercept/RealInterceptorChain;->b:Ljava/util/List;

    .line 55
    .line 56
    iget v2, p0, Lcoil3/intercept/RealInterceptorChain;->c:I

    .line 57
    .line 58
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcoil3/intercept/Interceptor;

    .line 63
    .line 64
    add-int/lit8 v7, v2, 0x1

    .line 65
    .line 66
    new-instance v4, Lcoil3/intercept/RealInterceptorChain;

    .line 67
    .line 68
    iget-object v10, p0, Lcoil3/intercept/RealInterceptorChain;->f:Lcoil3/EventListener;

    .line 69
    .line 70
    iget-boolean v11, p0, Lcoil3/intercept/RealInterceptorChain;->g:Z

    .line 71
    .line 72
    iget-object v6, p0, Lcoil3/intercept/RealInterceptorChain;->b:Ljava/util/List;

    .line 73
    .line 74
    iget-object v8, p0, Lcoil3/intercept/RealInterceptorChain;->d:Lcoil3/request/ImageRequest;

    .line 75
    .line 76
    iget-object v9, p0, Lcoil3/intercept/RealInterceptorChain;->e:Lcoil3/size/Size;

    .line 77
    .line 78
    invoke-direct/range {v4 .. v11}, Lcoil3/intercept/RealInterceptorChain;-><init>(Lcoil3/request/ImageRequest;Ljava/util/List;ILcoil3/request/ImageRequest;Lcoil3/size/Size;Lcoil3/EventListener;Z)V

    .line 79
    .line 80
    .line 81
    iput-object p1, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->m:Lcoil3/intercept/Interceptor;

    .line 82
    .line 83
    iput v12, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->p:I

    .line 84
    .line 85
    move-object p0, p1

    .line 86
    check-cast p0, Lcoil3/intercept/EngineInterceptor;

    .line 87
    .line 88
    invoke-virtual {p0, v4, v0}, Lcoil3/intercept/EngineInterceptor;->d(Lcoil3/intercept/RealInterceptorChain;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-ne p1, v1, :cond_3

    .line 93
    .line 94
    return-object v1

    .line 95
    :cond_3
    :goto_1
    check-cast p1, Lcoil3/request/ImageResult;

    .line 96
    .line 97
    invoke-interface {p1}, Lcoil3/request/ImageResult;->d()Lcoil3/request/ImageRequest;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, v0, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    .line 102
    .line 103
    iget-object v2, v5, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    .line 104
    .line 105
    const-string v4, "Interceptor \'"

    .line 106
    .line 107
    if-ne v1, v2, :cond_7

    .line 108
    .line 109
    iget-object v1, v0, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    .line 110
    .line 111
    sget-object v2, Lcoil3/request/NullRequestData;->a:Lcoil3/request/NullRequestData;

    .line 112
    .line 113
    if-eq v1, v2, :cond_6

    .line 114
    .line 115
    iget-object v1, v0, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    .line 116
    .line 117
    iget-object v2, v5, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    .line 118
    .line 119
    if-ne v1, v2, :cond_5

    .line 120
    .line 121
    iget-object v0, v0, Lcoil3/request/ImageRequest;->o:Lcoil3/size/SizeResolver;

    .line 122
    .line 123
    iget-object v1, v5, Lcoil3/request/ImageRequest;->o:Lcoil3/size/SizeResolver;

    .line 124
    .line 125
    if-ne v0, v1, :cond_4

    .line 126
    .line 127
    return-object p1

    .line 128
    :cond_4
    const-string p1, "\' cannot modify the request\'s size resolver. Use `Interceptor.Chain.withSize` instead."

    .line 129
    .line 130
    invoke-static {v4, p0, p1}, Lu2;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-object v3

    .line 134
    :cond_5
    const-string p1, "\' cannot modify the request\'s target."

    .line 135
    .line 136
    invoke-static {v4, p0, p1}, Lu2;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return-object v3

    .line 140
    :cond_6
    const-string p1, "\' cannot set the request\'s data to null."

    .line 141
    .line 142
    invoke-static {v4, p0, p1}, Lu2;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    return-object v3

    .line 146
    :cond_7
    const-string p1, "\' cannot modify the request\'s context."

    .line 147
    .line 148
    invoke-static {v4, p0, p1}, Lu2;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    return-object v3
.end method
