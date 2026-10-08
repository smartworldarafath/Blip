.class public final Lcoil3/video/VideoFrameDecoder$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/decode/Decoder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/video/VideoFrameDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# virtual methods
.method public final a(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;)Lcoil3/decode/Decoder;
    .locals 2

    .line 1
    iget-object p0, p1, Lcoil3/fetch/SourceFetchResult;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string v0, "video/"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    new-instance p0, Lcoil3/video/VideoFrameDecoder;

    .line 15
    .line 16
    iget-object p1, p1, Lcoil3/fetch/SourceFetchResult;->a:Lcoil3/decode/ImageSource;

    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Lcoil3/video/VideoFrameDecoder;-><init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method
