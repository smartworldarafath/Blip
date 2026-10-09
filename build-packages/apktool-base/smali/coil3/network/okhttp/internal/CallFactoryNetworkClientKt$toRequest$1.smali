.class final Lcoil3/network/okhttp/internal/CallFactoryNetworkClientKt$toRequest$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil3.network.okhttp.internal.CallFactoryNetworkClientKt"
    f = "CallFactoryNetworkClient.kt"
    l = {
        0x20
    }
    m = "toRequest"
    v = 0x1
.end annotation


# instance fields
.field public synthetic m:Ljava/lang/Object;

.field public n:I


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClientKt$toRequest$1;->m:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClientKt$toRequest$1;->n:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClientKt$toRequest$1;->n:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1, p0}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClientKt;->b(Lcoil3/network/NetworkRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lokhttp3/Request;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
