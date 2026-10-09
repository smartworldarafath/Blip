.class final Lcoil3/RealImageLoader$execute$result$1;
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
        "Lcoil3/request/ImageResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.RealImageLoader$execute$result$1"
    f = "RealImageLoader.kt"
    l = {
        0x8f
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lcoil3/request/ImageRequest;

.field public final synthetic p:Lcoil3/RealImageLoader;

.field public final synthetic q:Lcoil3/size/Size;

.field public final synthetic r:Lcoil3/EventListener;

.field public final synthetic s:Lcoil3/Image;


# direct methods
.method public constructor <init>(Lcoil3/request/ImageRequest;Lcoil3/RealImageLoader;Lcoil3/size/Size;Lcoil3/EventListener;Lcoil3/Image;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->o:Lcoil3/request/ImageRequest;

    .line 2
    .line 3
    iput-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->p:Lcoil3/RealImageLoader;

    .line 4
    .line 5
    iput-object p3, p0, Lcoil3/RealImageLoader$execute$result$1;->q:Lcoil3/size/Size;

    .line 6
    .line 7
    iput-object p4, p0, Lcoil3/RealImageLoader$execute$result$1;->r:Lcoil3/EventListener;

    .line 8
    .line 9
    iput-object p5, p0, Lcoil3/RealImageLoader$execute$result$1;->s:Lcoil3/Image;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
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
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcoil3/RealImageLoader$execute$result$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lcoil3/RealImageLoader$execute$result$1;

    .line 2
    .line 3
    iget-object v4, p0, Lcoil3/RealImageLoader$execute$result$1;->r:Lcoil3/EventListener;

    .line 4
    .line 5
    iget-object v5, p0, Lcoil3/RealImageLoader$execute$result$1;->s:Lcoil3/Image;

    .line 6
    .line 7
    iget-object v1, p0, Lcoil3/RealImageLoader$execute$result$1;->o:Lcoil3/request/ImageRequest;

    .line 8
    .line 9
    iget-object v2, p0, Lcoil3/RealImageLoader$execute$result$1;->p:Lcoil3/RealImageLoader;

    .line 10
    .line 11
    iget-object v3, p0, Lcoil3/RealImageLoader$execute$result$1;->q:Lcoil3/size/Size;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Lcoil3/request/ImageRequest;Lcoil3/RealImageLoader;Lcoil3/size/Size;Lcoil3/EventListener;Lcoil3/Image;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcoil3/RealImageLoader$execute$result$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lcoil3/intercept/RealInterceptorChain;

    .line 25
    .line 26
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->p:Lcoil3/RealImageLoader;

    .line 27
    .line 28
    iget-object p1, p1, Lcoil3/RealImageLoader;->d:Lcoil3/ComponentRegistry;

    .line 29
    .line 30
    iget-object v5, p1, Lcoil3/ComponentRegistry;->a:Ljava/util/List;

    .line 31
    .line 32
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->s:Lcoil3/Image;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    move v10, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 p1, 0x0

    .line 39
    move v10, p1

    .line 40
    :goto_0
    iget-object v4, p0, Lcoil3/RealImageLoader$execute$result$1;->o:Lcoil3/request/ImageRequest;

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    iget-object v8, p0, Lcoil3/RealImageLoader$execute$result$1;->q:Lcoil3/size/Size;

    .line 44
    .line 45
    iget-object v9, p0, Lcoil3/RealImageLoader$execute$result$1;->r:Lcoil3/EventListener;

    .line 46
    .line 47
    move-object v7, v4

    .line 48
    invoke-direct/range {v3 .. v10}, Lcoil3/intercept/RealInterceptorChain;-><init>(Lcoil3/request/ImageRequest;Ljava/util/List;ILcoil3/request/ImageRequest;Lcoil3/size/Size;Lcoil3/EventListener;Z)V

    .line 49
    .line 50
    .line 51
    iput v2, p0, Lcoil3/RealImageLoader$execute$result$1;->n:I

    .line 52
    .line 53
    invoke-virtual {v3, p0}, Lcoil3/intercept/RealInterceptorChain;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    if-ne p0, v0, :cond_3

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_3
    return-object p0
.end method
