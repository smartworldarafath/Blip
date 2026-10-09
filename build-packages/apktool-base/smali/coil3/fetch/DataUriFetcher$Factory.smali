.class public final Lcoil3/fetch/DataUriFetcher$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/fetch/Fetcher$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/fetch/DataUriFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcoil3/fetch/Fetcher$Factory<",
        "Lcoil3/Uri;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/RealImageLoader;)Lcoil3/fetch/Fetcher;
    .locals 0

    .line 1
    check-cast p1, Lcoil3/Uri;

    .line 2
    .line 3
    iget-object p0, p1, Lcoil3/Uri;->c:Ljava/lang/String;

    .line 4
    .line 5
    const-string p3, "data"

    .line 6
    .line 7
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance p0, Lcoil3/fetch/DataUriFetcher;

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lcoil3/fetch/DataUriFetcher;-><init>(Lcoil3/Uri;Lcoil3/request/Options;)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method
