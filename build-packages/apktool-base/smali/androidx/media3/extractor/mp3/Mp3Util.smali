.class abstract Landroidx/media3/extractor/mp3/Mp3Util;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(JJ)I
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    const v3, -0x7fffffff

    .line 6
    .line 7
    .line 8
    if-lez v2, :cond_1

    .line 9
    .line 10
    cmp-long v2, p2, v0

    .line 11
    .line 12
    if-gtz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide/32 v6, 0x7a1200

    .line 16
    .line 17
    .line 18
    sget-object v10, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 19
    .line 20
    move-wide v4, p0

    .line 21
    move-wide v8, p2

    .line 22
    invoke-static/range {v4 .. v10}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    cmp-long p2, p0, v0

    .line 27
    .line 28
    if-lez p2, :cond_1

    .line 29
    .line 30
    const-wide/32 p2, 0x7fffffff

    .line 31
    .line 32
    .line 33
    cmp-long p2, p0, p2

    .line 34
    .line 35
    if-gtz p2, :cond_1

    .line 36
    .line 37
    long-to-int p0, p0

    .line 38
    return p0

    .line 39
    :cond_1
    :goto_0
    return v3
.end method
