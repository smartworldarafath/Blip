.class public final Landroidx/compose/ui/layout/ContentScale$Companion$Inside$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/ContentScale;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/ContentScale$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# virtual methods
.method public final a(JJ)J
    .locals 5

    .line 1
    const/16 p0, 0x20

    .line 2
    .line 3
    shr-long v0, p1, p0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    shr-long v1, p3, p0

    .line 11
    .line 12
    long-to-int v1, v1

    .line 13
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    cmpg-float v0, v0, v1

    .line 18
    .line 19
    const-wide v1, 0xffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    if-gtz v0, :cond_0

    .line 25
    .line 26
    and-long v3, p1, v1

    .line 27
    .line 28
    long-to-int v0, v3

    .line 29
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    and-long v3, p3, v1

    .line 34
    .line 35
    long-to-int v3, v3

    .line 36
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    cmpg-float v0, v0, v3

    .line 41
    .line 42
    if-gtz v0, :cond_0

    .line 43
    .line 44
    const/high16 p1, 0x3f800000    # 1.0f

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    int-to-long p2, p2

    .line 51
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    int-to-long v3, p1

    .line 56
    shl-long p0, p2, p0

    .line 57
    .line 58
    and-long p2, v3, v1

    .line 59
    .line 60
    or-long/2addr p0, p2

    .line 61
    sget p2, Landroidx/compose/ui/layout/ScaleFactor;->a:I

    .line 62
    .line 63
    return-wide p0

    .line 64
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/layout/ContentScaleKt;->a(JJ)F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    int-to-long p2, p2

    .line 73
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    int-to-long v3, p1

    .line 78
    shl-long p0, p2, p0

    .line 79
    .line 80
    and-long p2, v3, v1

    .line 81
    .line 82
    or-long/2addr p0, p2

    .line 83
    sget p2, Landroidx/compose/ui/layout/ScaleFactor;->a:I

    .line 84
    .line 85
    return-wide p0
.end method
