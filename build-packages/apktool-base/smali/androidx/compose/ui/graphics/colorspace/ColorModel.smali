.class public abstract Landroidx/compose/ui/graphics/colorspace/ColorModel;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(JJ)Z
    .locals 0

    .line 1
    cmp-long p0, p0, p2

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide v0, 0x300000000L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->a(JJ)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p0, "Rgb"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    const-wide v0, 0x300000001L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->a(JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string p0, "Xyz"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    const-wide v0, 0x300000002L

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->a(JJ)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string p0, "Lab"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    const-wide v0, 0x400000003L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->a(JJ)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    const-string p0, "Cmyk"

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_3
    const-string p0, "Unknown"

    .line 58
    .line 59
    return-object p0
.end method
