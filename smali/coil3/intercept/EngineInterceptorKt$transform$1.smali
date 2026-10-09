.class final Lcoil3/intercept/EngineInterceptorKt$transform$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.intercept.EngineInterceptorKt"
    f = "EngineInterceptor.kt"
    l = {
        0x103
    }
    m = "transform"
    v = 0x1
.end annotation


# instance fields
.field public m:Lcoil3/intercept/EngineInterceptor$ExecuteResult;

.field public n:Lcoil3/request/ImageRequest;

.field public o:Lcoil3/request/Options;

.field public p:Lcoil3/EventListener;

.field public q:Ljava/util/List;

.field public r:I

.field public s:I

.field public synthetic t:Ljava/lang/Object;

.field public u:I


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lcoil3/intercept/EngineInterceptorKt$transform$1;->t:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcoil3/intercept/EngineInterceptorKt$transform$1;->u:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcoil3/intercept/EngineInterceptorKt$transform$1;->u:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1, p1, p1, p1, p0}, Lcoil3/intercept/EngineInterceptorKt;->a(Lcoil3/intercept/EngineInterceptor$ExecuteResult;Lcoil3/request/ImageRequest;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
