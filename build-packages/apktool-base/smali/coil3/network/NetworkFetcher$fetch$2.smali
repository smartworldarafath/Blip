.class final synthetic Lcoil3/network/NetworkFetcher$fetch$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcoil3/fetch/FetchResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->k:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcoil3/network/NetworkFetcher;

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcoil3/network/NetworkFetcher;->b(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
