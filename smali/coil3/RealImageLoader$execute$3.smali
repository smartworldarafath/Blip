.class final Lcoil3/RealImageLoader$execute$3;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.RealImageLoader"
    f = "RealImageLoader.kt"
    l = {
        0x76,
        0x82,
        0x86
    }
    m = "execute"
    v = 0x1
.end annotation


# instance fields
.field public m:Lcoil3/request/RequestDelegate;

.field public n:Lcoil3/request/ImageRequest;

.field public o:Lcoil3/EventListener;

.field public p:Lcoil3/Image;

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Lcoil3/RealImageLoader;

.field public t:I


# direct methods
.method public constructor <init>(Lcoil3/RealImageLoader;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/RealImageLoader$execute$3;->s:Lcoil3/RealImageLoader;

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
    .locals 2

    .line 1
    iput-object p1, p0, Lcoil3/RealImageLoader$execute$3;->r:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcoil3/RealImageLoader$execute$3;->t:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcoil3/RealImageLoader$execute$3;->t:I

    .line 9
    .line 10
    sget p1, Lcoil3/RealImageLoader;->f:I

    .line 11
    .line 12
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$3;->s:Lcoil3/RealImageLoader;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v0, v1, p0}, Lcoil3/RealImageLoader;->b(Lcoil3/request/ImageRequest;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
