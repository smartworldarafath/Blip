.class final Landroidx/compose/foundation/layout/AspectRatioNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field public x:F


# virtual methods
.method public final Y0(JZ)J
    .locals 2

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7fffffff

    .line 6
    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    int-to-float v1, v0

    .line 11
    iget p0, p0, Landroidx/compose/foundation/layout/AspectRatioNode;->x:F

    .line 12
    .line 13
    mul-float/2addr v1, p0

    .line 14
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-lez p0, :cond_1

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    invoke-static {p0, v0, p1, p2}, Landroidx/compose/foundation/layout/AspectRatioKt;->b(IIJ)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    :cond_0
    int-to-long p0, p0

    .line 29
    const/16 p2, 0x20

    .line 30
    .line 31
    shl-long/2addr p0, p2

    .line 32
    int-to-long p2, v0

    .line 33
    const-wide v0, 0xffffffffL

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    and-long/2addr p2, v0

    .line 39
    or-long/2addr p0, p2

    .line 40
    return-wide p0

    .line 41
    :cond_1
    const-wide/16 p0, 0x0

    .line 42
    .line 43
    return-wide p0
.end method

.method public final Z0(JZ)J
    .locals 4

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7fffffff

    .line 6
    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    int-to-float v1, v0

    .line 11
    iget p0, p0, Landroidx/compose/foundation/layout/AspectRatioNode;->x:F

    .line 12
    .line 13
    div-float/2addr v1, p0

    .line 14
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-lez p0, :cond_1

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/layout/AspectRatioKt;->b(IIJ)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    :cond_0
    int-to-long p1, v0

    .line 29
    const/16 p3, 0x20

    .line 30
    .line 31
    shl-long/2addr p1, p3

    .line 32
    int-to-long v0, p0

    .line 33
    const-wide v2, 0xffffffffL

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    and-long/2addr v0, v2

    .line 39
    or-long p0, p1, v0

    .line 40
    .line 41
    return-wide p0

    .line 42
    :cond_1
    const-wide/16 p0, 0x0

    .line 43
    .line 44
    return-wide p0
.end method

.method public final a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    const p1, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-eq p3, p1, :cond_0

    .line 5
    .line 6
    int-to-float p1, p3

    .line 7
    iget p0, p0, Landroidx/compose/foundation/layout/AspectRatioNode;->x:F

    .line 8
    .line 9
    mul-float/2addr p1, p0

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->m(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final a1(JZ)J
    .locals 2

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v1, v0

    .line 6
    iget p0, p0, Landroidx/compose/foundation/layout/AspectRatioNode;->x:F

    .line 7
    .line 8
    mul-float/2addr v1, p0

    .line 9
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-lez p0, :cond_1

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-static {p0, v0, p1, p2}, Landroidx/compose/foundation/layout/AspectRatioKt;->b(IIJ)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    :cond_0
    int-to-long p0, p0

    .line 24
    const/16 p2, 0x20

    .line 25
    .line 26
    shl-long/2addr p0, p2

    .line 27
    int-to-long p2, v0

    .line 28
    const-wide v0, 0xffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr p2, v0

    .line 34
    or-long/2addr p0, p2

    .line 35
    return-wide p0

    .line 36
    :cond_1
    const-wide/16 p0, 0x0

    .line 37
    .line 38
    return-wide p0
.end method

.method public final b1(JZ)J
    .locals 4

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v1, v0

    .line 6
    iget p0, p0, Landroidx/compose/foundation/layout/AspectRatioNode;->x:F

    .line 7
    .line 8
    div-float/2addr v1, p0

    .line 9
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-lez p0, :cond_1

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/layout/AspectRatioKt;->b(IIJ)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    :cond_0
    int-to-long p1, v0

    .line 24
    const/16 p3, 0x20

    .line 25
    .line 26
    shl-long/2addr p1, p3

    .line 27
    int-to-long v0, p0

    .line 28
    const-wide v2, 0xffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr v0, v2

    .line 34
    or-long p0, p1, v0

    .line 35
    .line 36
    return-wide p0

    .line 37
    :cond_1
    const-wide/16 p0, 0x0

    .line 38
    .line 39
    return-wide p0
.end method

.method public final c(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    const p1, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-eq p3, p1, :cond_0

    .line 5
    .line 6
    int-to-float p1, p3

    .line 7
    iget p0, p0, Landroidx/compose/foundation/layout/AspectRatioNode;->x:F

    .line 8
    .line 9
    div-float/2addr p1, p0

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final d(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    const p1, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-eq p3, p1, :cond_0

    .line 5
    .line 6
    int-to-float p1, p3

    .line 7
    iget p0, p0, Landroidx/compose/foundation/layout/AspectRatioNode;->x:F

    .line 8
    .line 9
    mul-float/2addr p1, p0

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->p(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final e(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    const p1, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-eq p3, p1, :cond_0

    .line 5
    .line 6
    int-to-float p1, p3

    .line 7
    iget p0, p0, Landroidx/compose/foundation/layout/AspectRatioNode;->x:F

    .line 8
    .line 9
    div-float/2addr p1, p0

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->b(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p3, p4, v0}, Landroidx/compose/foundation/layout/AspectRatioNode;->Z0(JZ)J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p3, p4, v0}, Landroidx/compose/foundation/layout/AspectRatioNode;->Y0(JZ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0, p3, p4, v0}, Landroidx/compose/foundation/layout/AspectRatioNode;->b1(JZ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0, p3, p4, v0}, Landroidx/compose/foundation/layout/AspectRatioNode;->a1(JZ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p3, p4, v0}, Landroidx/compose/foundation/layout/AspectRatioNode;->Z0(JZ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {p0, p3, p4, v0}, Landroidx/compose/foundation/layout/AspectRatioNode;->Y0(JZ)J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_5

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    invoke-virtual {p0, p3, p4, v0}, Landroidx/compose/foundation/layout/AspectRatioNode;->b1(JZ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-nez v5, :cond_6

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_6
    invoke-virtual {p0, p3, p4, v0}, Landroidx/compose/foundation/layout/AspectRatioNode;->a1(JZ)J

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-nez p0, :cond_7

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_7
    move-wide v1, v3

    .line 94
    :goto_0
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-nez p0, :cond_8

    .line 99
    .line 100
    const/16 p0, 0x20

    .line 101
    .line 102
    shr-long p3, v1, p0

    .line 103
    .line 104
    long-to-int p0, p3

    .line 105
    const-wide p3, 0xffffffffL

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    and-long/2addr p3, v1

    .line 111
    long-to-int p3, p3

    .line 112
    invoke-static {p0, p3}, Landroidx/compose/ui/unit/Constraints$Companion;->c(II)J

    .line 113
    .line 114
    .line 115
    move-result-wide p3

    .line 116
    :cond_8
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 121
    .line 122
    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 123
    .line 124
    new-instance p4, Lf;

    .line 125
    .line 126
    const/4 v0, 0x2

    .line 127
    invoke-direct {p4, p0, v0}, Lf;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-interface {p1, p2, p3, p0, p4}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0
.end method
