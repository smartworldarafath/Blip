.class final Lcoil3/compose/AsyncImagePainter$launchJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.compose.AsyncImagePainter$launchJob$1"
    f = "AsyncImagePainter.kt"
    l = {
        0xe9,
        0xed
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lcoil3/compose/AsyncImagePainter;

.field public o:I

.field public final synthetic p:Lcoil3/compose/AsyncImagePainter;

.field public final synthetic q:Lcoil3/compose/AsyncImagePainter$Input;


# direct methods
.method public constructor <init>(Lcoil3/compose/AsyncImagePainter;Lcoil3/compose/AsyncImagePainter$Input;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->p:Lcoil3/compose/AsyncImagePainter;

    .line 2
    .line 3
    iput-object p2, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->q:Lcoil3/compose/AsyncImagePainter$Input;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcoil3/compose/AsyncImagePainter$launchJob$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcoil3/compose/AsyncImagePainter$launchJob$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lcoil3/compose/AsyncImagePainter$launchJob$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->p:Lcoil3/compose/AsyncImagePainter;

    .line 4
    .line 5
    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->q:Lcoil3/compose/AsyncImagePainter$Input;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lcoil3/compose/AsyncImagePainter$launchJob$1;-><init>(Lcoil3/compose/AsyncImagePainter;Lcoil3/compose/AsyncImagePainter$Input;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->o:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->p:Lcoil3/compose/AsyncImagePainter;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->n:Lcoil3/compose/AsyncImagePainter;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v5

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v3, Lcoil3/compose/AsyncImagePainter;->z:Lcoil3/compose/AsyncImagePreviewHandler;

    .line 36
    .line 37
    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->q:Lcoil3/compose/AsyncImagePainter$Input;

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    iget-object v2, v1, Lcoil3/compose/AsyncImagePainter$Input;->b:Lcoil3/request/ImageRequest;

    .line 42
    .line 43
    invoke-static {v3, v2, v4}, Lcoil3/compose/AsyncImagePainter;->k(Lcoil3/compose/AsyncImagePainter;Lcoil3/request/ImageRequest;Z)Lcoil3/request/ImageRequest;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v1, v1, Lcoil3/compose/AsyncImagePainter$Input;->a:Lcoil3/ImageLoader;

    .line 48
    .line 49
    iput v4, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->o:I

    .line 50
    .line 51
    check-cast p1, Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 52
    .line 53
    invoke-virtual {p1, v1, v2, p0}, Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;->a(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p1, v0, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    :goto_0
    check-cast p1, Lcoil3/compose/AsyncImagePainter$State;

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_4
    iget-object p1, v1, Lcoil3/compose/AsyncImagePainter$Input;->b:Lcoil3/request/ImageRequest;

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {v3, p1, v4}, Lcoil3/compose/AsyncImagePainter;->k(Lcoil3/compose/AsyncImagePainter;Lcoil3/request/ImageRequest;Z)Lcoil3/request/ImageRequest;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v1, v1, Lcoil3/compose/AsyncImagePainter$Input;->a:Lcoil3/ImageLoader;

    .line 71
    .line 72
    iput-object v3, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->n:Lcoil3/compose/AsyncImagePainter;

    .line 73
    .line 74
    iput v2, p0, Lcoil3/compose/AsyncImagePainter$launchJob$1;->o:I

    .line 75
    .line 76
    check-cast v1, Lcoil3/RealImageLoader;

    .line 77
    .line 78
    invoke-virtual {v1, p1, p0}, Lcoil3/RealImageLoader;->c(Lcoil3/request/ImageRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v0, :cond_5

    .line 83
    .line 84
    :goto_1
    return-object v0

    .line 85
    :cond_5
    move-object p0, v3

    .line 86
    :goto_2
    check-cast p1, Lcoil3/request/ImageResult;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    instance-of v0, p1, Lcoil3/request/SuccessResult;

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    new-instance v0, Lcoil3/compose/AsyncImagePainter$State$Success;

    .line 96
    .line 97
    check-cast p1, Lcoil3/request/SuccessResult;

    .line 98
    .line 99
    iget-object v1, p1, Lcoil3/request/SuccessResult;->a:Lcoil3/Image;

    .line 100
    .line 101
    iget-object v2, p1, Lcoil3/request/SuccessResult;->b:Lcoil3/request/ImageRequest;

    .line 102
    .line 103
    iget-object v2, v2, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    .line 104
    .line 105
    iget p0, p0, Lcoil3/compose/AsyncImagePainter;->y:I

    .line 106
    .line 107
    invoke-static {v1, v2, p0}, Lcoil3/compose/ImagePainter_androidKt;->a(Lcoil3/Image;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-direct {v0, p0, p1}, Lcoil3/compose/AsyncImagePainter$State$Success;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lcoil3/request/SuccessResult;)V

    .line 112
    .line 113
    .line 114
    :goto_3
    move-object p1, v0

    .line 115
    goto :goto_4

    .line 116
    :cond_6
    instance-of v0, p1, Lcoil3/request/ErrorResult;

    .line 117
    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    new-instance v0, Lcoil3/compose/AsyncImagePainter$State$Error;

    .line 121
    .line 122
    check-cast p1, Lcoil3/request/ErrorResult;

    .line 123
    .line 124
    iget-object v1, p1, Lcoil3/request/ErrorResult;->a:Lcoil3/Image;

    .line 125
    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    iget-object v2, p1, Lcoil3/request/ErrorResult;->b:Lcoil3/request/ImageRequest;

    .line 129
    .line 130
    iget-object v2, v2, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    .line 131
    .line 132
    iget p0, p0, Lcoil3/compose/AsyncImagePainter;->y:I

    .line 133
    .line 134
    invoke-static {v1, v2, p0}, Lcoil3/compose/ImagePainter_androidKt;->a(Lcoil3/Image;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    :cond_7
    invoke-direct {v0, v5, p1}, Lcoil3/compose/AsyncImagePainter$State$Error;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lcoil3/request/ErrorResult;)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :goto_4
    invoke-static {v3, p1}, Lcoil3/compose/AsyncImagePainter;->l(Lcoil3/compose/AsyncImagePainter;Lcoil3/compose/AsyncImagePainter$State;)V

    .line 143
    .line 144
    .line 145
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 146
    .line 147
    return-object p0

    .line 148
    :cond_8
    invoke-static {}, Lk8;->e()V

    .line 149
    .line 150
    .line 151
    return-object v5
.end method
