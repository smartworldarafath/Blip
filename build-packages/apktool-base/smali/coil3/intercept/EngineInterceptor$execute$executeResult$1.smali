.class final Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;
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
        "Lcoil3/intercept/EngineInterceptor$ExecuteResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.intercept.EngineInterceptor$execute$executeResult$1"
    f = "EngineInterceptor.kt"
    l = {
        0x83
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lcoil3/intercept/EngineInterceptor;

.field public final synthetic p:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic q:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic r:Lcoil3/request/ImageRequest;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic u:Lcoil3/EventListener;


# direct methods
.method public constructor <init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/EventListener;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->o:Lcoil3/intercept/EngineInterceptor;

    .line 2
    .line 3
    iput-object p2, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->q:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p4, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->r:Lcoil3/request/ImageRequest;

    .line 8
    .line 9
    iput-object p5, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->s:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p6, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->t:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    iput-object p7, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->u:Lcoil3/EventListener;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
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
    invoke-virtual {p0, p1, p2}, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    new-instance v0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;

    .line 2
    .line 3
    iget-object v6, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->t:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-object v7, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->u:Lcoil3/EventListener;

    .line 6
    .line 7
    iget-object v1, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->o:Lcoil3/intercept/EngineInterceptor;

    .line 8
    .line 9
    iget-object v2, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    iget-object v3, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->q:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    iget-object v4, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->r:Lcoil3/request/ImageRequest;

    .line 14
    .line 15
    iget-object v5, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->s:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v8, p2

    .line 18
    invoke-direct/range {v0 .. v8}, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;-><init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/EventListener;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->n:I

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
    iget-object p1, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 25
    .line 26
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v4, p1

    .line 29
    check-cast v4, Lcoil3/fetch/SourceFetchResult;

    .line 30
    .line 31
    iget-object p1, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->q:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 32
    .line 33
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 34
    .line 35
    move-object v5, p1

    .line 36
    check-cast v5, Lcoil3/ComponentRegistry;

    .line 37
    .line 38
    iget-object p1, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->t:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 39
    .line 40
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 41
    .line 42
    move-object v8, p1

    .line 43
    check-cast v8, Lcoil3/request/Options;

    .line 44
    .line 45
    iput v2, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->n:I

    .line 46
    .line 47
    iget-object v3, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->o:Lcoil3/intercept/EngineInterceptor;

    .line 48
    .line 49
    iget-object v6, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->r:Lcoil3/request/ImageRequest;

    .line 50
    .line 51
    iget-object v7, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->s:Ljava/lang/Object;

    .line 52
    .line 53
    iget-object v9, p0, Lcoil3/intercept/EngineInterceptor$execute$executeResult$1;->u:Lcoil3/EventListener;

    .line 54
    .line 55
    move-object v10, p0

    .line 56
    invoke-static/range {v3 .. v10}, Lcoil3/intercept/EngineInterceptor;->a(Lcoil3/intercept/EngineInterceptor;Lcoil3/fetch/SourceFetchResult;Lcoil3/ComponentRegistry;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-ne p0, v0, :cond_2

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_2
    return-object p0
.end method
