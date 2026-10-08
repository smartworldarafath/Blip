.class public final synthetic Landroidx/core/provider/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    check-cast p2, [B

    .line 4
    .line 5
    sget-object p0, Landroidx/core/provider/FontProvider;->a:Landroidx/collection/LruCache;

    .line 6
    .line 7
    array-length p0, p1

    .line 8
    array-length v0, p2

    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    array-length p0, p1

    .line 12
    array-length p1, p2

    .line 13
    sub-int/2addr p0, p1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    move v0, p0

    .line 17
    :goto_0
    array-length v1, p1

    .line 18
    if-ge v0, v1, :cond_2

    .line 19
    .line 20
    aget-byte v1, p1, v0

    .line 21
    .line 22
    aget-byte v2, p2, v0

    .line 23
    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    sub-int/2addr v1, v2

    .line 27
    return v1

    .line 28
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return p0
.end method
