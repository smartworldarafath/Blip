.class public final Lcoil3/fetch/ByteArrayFetcher$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/fetch/Fetcher$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/fetch/ByteArrayFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcoil3/fetch/Fetcher$Factory<",
        "[B>;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/RealImageLoader;)Lcoil3/fetch/Fetcher;
    .locals 0

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    new-instance p0, Lcoil3/fetch/ByteArrayFetcher;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcoil3/fetch/ByteArrayFetcher;-><init>([BLcoil3/request/Options;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
