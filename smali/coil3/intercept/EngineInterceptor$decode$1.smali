.class final Lcoil3/intercept/EngineInterceptor$decode$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.intercept.EngineInterceptor"
    f = "EngineInterceptor.kt"
    l = {
        0xcb
    }
    m = "decode"
    v = 0x1
.end annotation


# instance fields
.field public m:Lcoil3/fetch/SourceFetchResult;

.field public n:Lcoil3/ComponentRegistry;

.field public o:Lcoil3/request/ImageRequest;

.field public p:Ljava/lang/Object;

.field public q:Lcoil3/request/Options;

.field public r:Lcoil3/EventListener;

.field public s:I

.field public synthetic t:Ljava/lang/Object;

.field public final synthetic u:Lcoil3/intercept/EngineInterceptor;

.field public v:I


# direct methods
.method public constructor <init>(Lcoil3/intercept/EngineInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor$decode$1;->u:Lcoil3/intercept/EngineInterceptor;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iput-object p1, p0, Lcoil3/intercept/EngineInterceptor$decode$1;->t:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcoil3/intercept/EngineInterceptor$decode$1;->v:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcoil3/intercept/EngineInterceptor$decode$1;->v:I

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    iget-object v0, p0, Lcoil3/intercept/EngineInterceptor$decode$1;->u:Lcoil3/intercept/EngineInterceptor;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v7, p0

    .line 19
    invoke-static/range {v0 .. v7}, Lcoil3/intercept/EngineInterceptor;->a(Lcoil3/intercept/EngineInterceptor;Lcoil3/fetch/SourceFetchResult;Lcoil3/ComponentRegistry;Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
