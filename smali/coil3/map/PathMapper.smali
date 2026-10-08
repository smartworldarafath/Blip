.class public final Lcoil3/map/PathMapper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/map/Mapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcoil3/map/Mapper<",
        "Lokio/Path;",
        "Lcoil3/Uri;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lcoil3/request/Options;)Lcoil3/Uri;
    .locals 0

    .line 1
    check-cast p1, Lokio/Path;

    .line 2
    .line 3
    iget-object p0, p1, Lokio/Path;->j:Lokio/ByteString;

    .line 4
    .line 5
    invoke-virtual {p0}, Lokio/ByteString;->s()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcoil3/UriKt;->a(Ljava/lang/String;)Lcoil3/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
