.class public final Lcoil3/video/internal/MediaDataSourceFetcherServiceLoaderTarget;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/util/FetcherServiceLoaderTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcoil3/util/FetcherServiceLoaderTarget<",
        "Landroid/media/MediaDataSource;",
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
    .locals 0

    .line 1
    new-instance p0, Lcoil3/video/MediaDataSourceFetcher$Factory;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final type()Lkotlin/jvm/internal/ClassReference;
    .locals 0

    .line 1
    const-class p0, Landroid/media/MediaDataSource;

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
