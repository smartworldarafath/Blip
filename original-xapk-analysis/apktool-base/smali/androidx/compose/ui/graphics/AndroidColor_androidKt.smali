.class public abstract Landroidx/compose/ui/graphics/AndroidColor_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(J)J
    .locals 5

    .line 1
    const-wide/16 v0, 0x3f

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    long-to-int v2, v0

    .line 5
    const/16 v3, 0xf

    .line 6
    .line 7
    if-gt v2, v3, :cond_0

    .line 8
    .line 9
    return-wide p0

    .line 10
    :cond_0
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->u:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 11
    .line 12
    iget v3, v3, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c:I

    .line 13
    .line 14
    if-ne v2, v3, :cond_1

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->f(J)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    int-to-long p0, p0

    .line 21
    return-wide p0

    .line 22
    :cond_1
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->v:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 23
    .line 24
    iget v3, v3, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c:I

    .line 25
    .line 26
    if-eq v2, v3, :cond_2

    .line 27
    .line 28
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->w:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 29
    .line 30
    iget v3, v3, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c:I

    .line 31
    .line 32
    if-ne v2, v3, :cond_3

    .line 33
    .line 34
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v4, 0x22

    .line 37
    .line 38
    if-ge v3, v4, :cond_3

    .line 39
    .line 40
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->f(J)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    int-to-long p0, p0

    .line 45
    return-wide p0

    .line 46
    :cond_3
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->x:Landroidx/compose/ui/graphics/colorspace/Oklab;

    .line 47
    .line 48
    iget v3, v3, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c:I

    .line 49
    .line 50
    if-ne v2, v3, :cond_4

    .line 51
    .line 52
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    .line 54
    const/16 v3, 0x24

    .line 55
    .line 56
    if-ge v2, v3, :cond_4

    .line 57
    .line 58
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->f(J)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    int-to-long p0, p0

    .line 63
    return-wide p0

    .line 64
    :cond_4
    const-wide/16 v2, -0x40

    .line 65
    .line 66
    and-long/2addr p0, v2

    .line 67
    const-wide/16 v2, 0x1

    .line 68
    .line 69
    sub-long/2addr v0, v2

    .line 70
    or-long/2addr p0, v0

    .line 71
    return-wide p0
.end method

.method public static final b(J)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x3f

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    long-to-int v0, v0

    .line 5
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->x:Landroidx/compose/ui/graphics/colorspace/Oklab;

    .line 6
    .line 7
    iget v1, v1, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->s:Landroidx/compose/ui/graphics/colorspace/Xyz;

    .line 12
    .line 13
    iget v1, v1, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->t:Landroidx/compose/ui/graphics/colorspace/Lab;

    .line 18
    .line 19
    iget v1, v1, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c:I

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/AndroidColor_androidKt;->a(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    return-wide p0

    .line 28
    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->e:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 29
    .line 30
    invoke-static {p0, p1, v0}, Landroidx/compose/ui/graphics/Color;->a(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/AndroidColor_androidKt;->a(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide p0

    .line 38
    return-wide p0
.end method
