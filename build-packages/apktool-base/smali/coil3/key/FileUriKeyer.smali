.class public final Lcoil3/key/FileUriKeyer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/key/Keyer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcoil3/key/Keyer<",
        "Lcoil3/Uri;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lcoil3/request/Options;)Ljava/lang/String;
    .locals 1

    .line 1
    check-cast p1, Lcoil3/Uri;

    .line 2
    .line 3
    iget-object p0, p1, Lcoil3/Uri;->c:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "file"

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object p0, p1, Lcoil3/Uri;->e:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    sget-object p0, Lcoil3/util/Utils_androidKt;->a:[Landroid/graphics/Bitmap$Config;

    .line 20
    .line 21
    iget-object p0, p1, Lcoil3/Uri;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Lcoil3/UriKt;->c(Lcoil3/Uri;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v0, "android_asset"

    .line 38
    .line 39
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-object p0, Lcoil3/request/ImageRequestsKt;->c:Lcoil3/Extras$Key;

    .line 47
    .line 48
    invoke-static {p2, p0}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    invoke-static {p1}, Lcoil3/UriKt;->b(Lcoil3/Uri;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    iget-object p2, p2, Lcoil3/request/Options;->f:Lokio/FileSystem;

    .line 67
    .line 68
    sget-object v0, Lokio/Path;->k:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p0}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p2, p0}, Lokio/FileSystem;->O(Lokio/Path;)Lokio/FileMetadata;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iget-object p0, p0, Lokio/FileMetadata;->f:Ljava/lang/Long;

    .line 79
    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, "-"

    .line 89
    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 102
    return-object p0
.end method
