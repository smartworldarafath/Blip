.class public abstract Lcoil3/ExtrasKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil3/request/ImageRequest;->r:Lcoil3/Extras;

    .line 2
    .line 3
    iget-object v0, v0, Lcoil3/Extras;->a:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcoil3/request/ImageRequest;->t:Lcoil3/request/ImageRequest$Defaults;

    .line 12
    .line 13
    iget-object p0, p0, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    .line 14
    .line 15
    iget-object p0, p0, Lcoil3/Extras;->a:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    iget-object p0, p1, Lcoil3/Extras$Key;->a:Ljava/lang/Object;

    .line 24
    .line 25
    :cond_0
    return-object p0

    .line 26
    :cond_1
    return-object v0
.end method

.method public static final b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/request/Options;->j:Lcoil3/Extras;

    .line 2
    .line 3
    iget-object p0, p0, Lcoil3/Extras;->a:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p1, Lcoil3/Extras$Key;->a:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    return-object p0
.end method
