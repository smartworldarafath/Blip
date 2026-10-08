.class public abstract Lcoil3/decode/DecodeUtils;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J
    .locals 2

    .line 1
    sget-object v0, Lcoil3/size/Size;->c:Lcoil3/size/Size;

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p2, Lcoil3/size/Size;->a:Lcoil3/size/Dimension;

    .line 11
    .line 12
    invoke-static {p0, p3}, Lcoil3/decode/DecodeUtils;->c(Lcoil3/size/Dimension;Lcoil3/size/Scale;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    iget-object p1, p2, Lcoil3/size/Size;->b:Lcoil3/size/Dimension;

    .line 17
    .line 18
    invoke-static {p1, p3}, Lcoil3/decode/DecodeUtils;->c(Lcoil3/size/Dimension;Lcoil3/size/Scale;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    :goto_0
    iget-object p2, p4, Lcoil3/size/Size;->a:Lcoil3/size/Dimension;

    .line 23
    .line 24
    iget-object p3, p4, Lcoil3/size/Size;->b:Lcoil3/size/Dimension;

    .line 25
    .line 26
    instance-of p4, p2, Lcoil3/size/Dimension$Pixels;

    .line 27
    .line 28
    const v0, 0x7fffffff

    .line 29
    .line 30
    .line 31
    const/high16 v1, -0x80000000

    .line 32
    .line 33
    if-eqz p4, :cond_2

    .line 34
    .line 35
    if-eq p0, v1, :cond_2

    .line 36
    .line 37
    if-ne p0, v0, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    check-cast p2, Lcoil3/size/Dimension$Pixels;

    .line 41
    .line 42
    iget p2, p2, Lcoil3/size/Dimension$Pixels;->a:I

    .line 43
    .line 44
    if-le p0, p2, :cond_2

    .line 45
    .line 46
    move p0, p2

    .line 47
    :cond_2
    :goto_1
    instance-of p2, p3, Lcoil3/size/Dimension$Pixels;

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    if-eq p1, v1, :cond_4

    .line 52
    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    check-cast p3, Lcoil3/size/Dimension$Pixels;

    .line 57
    .line 58
    iget p2, p3, Lcoil3/size/Dimension$Pixels;->a:I

    .line 59
    .line 60
    if-le p1, p2, :cond_4

    .line 61
    .line 62
    move p1, p2

    .line 63
    :cond_4
    :goto_2
    int-to-long p2, p0

    .line 64
    const/16 p0, 0x20

    .line 65
    .line 66
    shl-long/2addr p2, p0

    .line 67
    int-to-long p0, p1

    .line 68
    const-wide v0, 0xffffffffL

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    and-long/2addr p0, v0

    .line 74
    or-long/2addr p0, p2

    .line 75
    return-wide p0
.end method

.method public static final b(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D
    .locals 5

    .line 1
    int-to-double v0, p2

    .line 2
    int-to-double v2, p0

    .line 3
    div-double/2addr v0, v2

    .line 4
    int-to-double p2, p3

    .line 5
    int-to-double p0, p1

    .line 6
    div-double/2addr p2, p0

    .line 7
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne p4, v4, :cond_0

    .line 15
    .line 16
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(DD)D

    .line 17
    .line 18
    .line 19
    move-result-wide p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lk8;->e()V

    .line 22
    .line 23
    .line 24
    const-wide/16 p0, 0x0

    .line 25
    .line 26
    return-wide p0

    .line 27
    :cond_1
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide p2

    .line 31
    :goto_0
    iget-object p4, p5, Lcoil3/size/Size;->a:Lcoil3/size/Dimension;

    .line 32
    .line 33
    instance-of v0, p4, Lcoil3/size/Dimension$Pixels;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    check-cast p4, Lcoil3/size/Dimension$Pixels;

    .line 38
    .line 39
    iget p4, p4, Lcoil3/size/Dimension$Pixels;->a:I

    .line 40
    .line 41
    int-to-double v0, p4

    .line 42
    div-double/2addr v0, v2

    .line 43
    cmpl-double p4, p2, v0

    .line 44
    .line 45
    if-lez p4, :cond_2

    .line 46
    .line 47
    move-wide p2, v0

    .line 48
    :cond_2
    iget-object p4, p5, Lcoil3/size/Size;->b:Lcoil3/size/Dimension;

    .line 49
    .line 50
    instance-of p5, p4, Lcoil3/size/Dimension$Pixels;

    .line 51
    .line 52
    if-eqz p5, :cond_3

    .line 53
    .line 54
    check-cast p4, Lcoil3/size/Dimension$Pixels;

    .line 55
    .line 56
    iget p4, p4, Lcoil3/size/Dimension$Pixels;->a:I

    .line 57
    .line 58
    int-to-double p4, p4

    .line 59
    div-double/2addr p4, p0

    .line 60
    cmpl-double p0, p2, p4

    .line 61
    .line 62
    if-lez p0, :cond_3

    .line 63
    .line 64
    return-wide p4

    .line 65
    :cond_3
    return-wide p2
.end method

.method public static c(Lcoil3/size/Dimension;Lcoil3/size/Scale;)I
    .locals 1

    .line 1
    instance-of v0, p0, Lcoil3/size/Dimension$Pixels;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcoil3/size/Dimension$Pixels;

    .line 6
    .line 7
    iget p0, p0, Lcoil3/size/Dimension$Pixels;->a:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    if-ne p0, p1, :cond_1

    .line 18
    .line 19
    const p0, 0x7fffffff

    .line 20
    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    invoke-static {}, Lk8;->e()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_2
    const/high16 p0, -0x80000000

    .line 29
    .line 30
    return p0
.end method
