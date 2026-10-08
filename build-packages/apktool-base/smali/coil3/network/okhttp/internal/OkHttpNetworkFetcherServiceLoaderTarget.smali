.class public final Lcoil3/network/okhttp/internal/OkHttpNetworkFetcherServiceLoaderTarget;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/util/FetcherServiceLoaderTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcoil3/util/FetcherServiceLoaderTarget<",
        "Lcoil3/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lcoil3/fetch/Fetcher$Factory;
    .locals 2

    .line 1
    new-instance p0, Lcoil3/network/NetworkFetcher$Factory;

    .line 2
    .line 3
    new-instance v0, Lx9;

    .line 4
    .line 5
    const/16 v1, 0x1c

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lx9;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcoil3/network/NetworkFetcher$Factory;-><init>(Lx9;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final b()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final type()Lkotlin/jvm/internal/ClassReference;
    .locals 0

    .line 1
    const-class p0, Lcoil3/Uri;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
