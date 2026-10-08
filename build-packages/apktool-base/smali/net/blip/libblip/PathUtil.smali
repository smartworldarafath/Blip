.class public final Lnet/blip/libblip/PathUtil;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lokio/Path;->k:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p0}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    array-length v1, p1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    array-length v1, p1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v1, :cond_0

    .line 20
    .line 21
    aget-object v4, p1, v3

    .line 22
    .line 23
    sget-object v5, Lokio/Path;->k:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v4}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-array p1, v2, [Lokio/Path;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, [Lokio/Path;

    .line 42
    .line 43
    array-length v0, p1

    .line 44
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, [Lokio/Path;

    .line 49
    .line 50
    array-length v0, p1

    .line 51
    move v1, v2

    .line 52
    :goto_1
    if-ge v1, v0, :cond_1

    .line 53
    .line 54
    aget-object v3, p1, v1

    .line 55
    .line 56
    invoke-virtual {p0, v3, v2}, Lokio/Path;->f(Lokio/Path;Z)Lokio/Path;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object p0, p0, Lokio/Path;->j:Lokio/ByteString;

    .line 64
    .line 65
    invoke-virtual {p0}, Lokio/ByteString;->s()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method
