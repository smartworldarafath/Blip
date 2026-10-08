.class public interface abstract Landroidx/compose/ui/graphics/drawscope/DrawScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/unit/Density;


# direct methods
.method public static A(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJFLandroidx/compose/ui/graphics/ColorFilter;II)V
    .locals 13

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x10

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-wide v8, p2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide/from16 v8, p4

    .line 10
    .line 11
    :goto_0
    and-int/lit8 v1, v0, 0x20

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    move v10, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move/from16 v10, p6

    .line 20
    .line 21
    :goto_1
    and-int/lit16 v0, v0, 0x200

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    move v12, v0

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move/from16 v12, p8

    .line 29
    .line 30
    :goto_2
    const-wide/16 v4, 0x0

    .line 31
    .line 32
    move-object v2, p0

    .line 33
    move-object v3, p1

    .line 34
    move-wide v6, p2

    .line 35
    move-object/from16 v11, p7

    .line 36
    .line 37
    invoke-interface/range {v2 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->o0(Landroidx/compose/ui/graphics/ImageBitmap;JJJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static synthetic H(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V
    .locals 6

    .line 1
    and-int/lit8 v0, p5, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 p3, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :cond_0
    move v3, p3

    .line 8
    and-int/lit8 p3, p5, 0x8

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    sget-object p4, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 13
    .line 14
    :cond_1
    move-object v4, p4

    .line 15
    and-int/lit8 p3, p5, 0x20

    .line 16
    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    const/4 p3, 0x3

    .line 20
    :goto_0
    move-object v0, p0

    .line 21
    move-object v1, p1

    .line 22
    move-object v2, p2

    .line 23
    move v5, p3

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    const/4 p3, 0x0

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->u0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic J(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFI)V
    .locals 7

    .line 1
    and-int/lit8 v0, p7, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->B0()J

    .line 6
    .line 7
    .line 8
    move-result-wide p4

    .line 9
    :cond_0
    move-wide v4, p4

    .line 10
    and-int/lit8 p4, p7, 0x8

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    const/high16 p6, 0x3f800000    # 1.0f

    .line 15
    .line 16
    :cond_1
    move-object v0, p0

    .line 17
    move-wide v1, p1

    .line 18
    move v3, p3

    .line 19
    move v6, p6

    .line 20
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G(JFJF)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static synthetic O(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    .locals 9

    .line 1
    and-int/lit8 v0, p8, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 p2, 0x0

    .line 6
    .line 7
    :cond_0
    move-wide v2, p2

    .line 8
    and-int/lit8 p2, p8, 0x4

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 13
    .line 14
    .line 15
    move-result-wide p2

    .line 16
    invoke-static {p2, p3, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Y(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide p2

    .line 20
    move-wide v4, p2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-wide v4, p4

    .line 23
    :goto_0
    and-int/lit8 p2, p8, 0x8

    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    const/high16 p2, 0x3f800000    # 1.0f

    .line 28
    .line 29
    move v6, p2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move v6, p6

    .line 32
    :goto_1
    and-int/lit8 p2, p8, 0x10

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    sget-object p2, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 37
    .line 38
    move-object v7, p2

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    move-object/from16 v7, p7

    .line 41
    .line 42
    :goto_2
    and-int/lit8 p2, p8, 0x40

    .line 43
    .line 44
    if-eqz p2, :cond_4

    .line 45
    .line 46
    const/4 p2, 0x3

    .line 47
    :goto_3
    move-object v0, p0

    .line 48
    move-object v1, p1

    .line 49
    move v8, p2

    .line 50
    goto :goto_4

    .line 51
    :cond_4
    const/4 p2, 0x5

    .line 52
    goto :goto_3

    .line 53
    :goto_4
    invoke-interface/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->m0(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static Y(JJ)J
    .locals 6

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v1, p0, v0

    .line 4
    .line 5
    long-to-int v1, v1

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    shr-long v2, p2, v0

    .line 11
    .line 12
    long-to-int v2, v2

    .line 13
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sub-float/2addr v1, v2

    .line 18
    const-wide v2, 0xffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    and-long/2addr p0, v2

    .line 24
    long-to-int p0, p0

    .line 25
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    and-long p1, p2, v2

    .line 30
    .line 31
    long-to-int p1, p1

    .line 32
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    sub-float/2addr p0, p1

    .line 37
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    int-to-long p1, p1

    .line 42
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    int-to-long v4, p0

    .line 47
    shl-long p0, p1, v0

    .line 48
    .line 49
    and-long p2, v4, v2

    .line 50
    .line 51
    or-long/2addr p0, p2

    .line 52
    return-wide p0
.end method

.method public static d0(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/graphics/SolidColor;JJFFI)V
    .locals 5

    .line 1
    and-int/lit8 p8, p8, 0x40

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    const/high16 p7, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 8
    .line 9
    iget-object p8, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 10
    .line 11
    iget-object p8, p8, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->m:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->m(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->m:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 26
    .line 27
    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/graphics/AndroidPaint;->a:Landroid/graphics/Paint;

    .line 28
    .line 29
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    invoke-virtual {p1, p7, v3, v4, v0}, Landroidx/compose/ui/graphics/SolidColor;->a(FJLandroidx/compose/ui/graphics/Paint;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, v0, Landroidx/compose/ui/graphics/AndroidPaint;->d:Landroidx/compose/ui/graphics/ColorFilter;

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->g(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget p0, v0, Landroidx/compose/ui/graphics/AndroidPaint;->b:I

    .line 49
    .line 50
    const/4 p1, 0x3

    .line 51
    if-ne p0, p1, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->e(I)V

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    cmpg-float p0, p0, p6

    .line 62
    .line 63
    if-nez p0, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {v0, p6}, Landroidx/compose/ui/graphics/AndroidPaint;->l(F)V

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeMiter()F

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    const/high16 p1, 0x40800000    # 4.0f

    .line 74
    .line 75
    cmpg-float p0, p0, p1

    .line 76
    .line 77
    if-nez p0, :cond_5

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 81
    .line 82
    .line 83
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/AndroidPaint;->b()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    const/4 p1, 0x0

    .line 88
    if-nez p0, :cond_6

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->j(I)V

    .line 92
    .line 93
    .line 94
    :goto_3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/AndroidPaint;->c()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-nez p0, :cond_7

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_7
    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->k(I)V

    .line 102
    .line 103
    .line 104
    :goto_4
    invoke-virtual {v2}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-ne p0, v1, :cond_8

    .line 109
    .line 110
    :goto_5
    move-object p1, p8

    .line 111
    move-object p6, v0

    .line 112
    goto :goto_6

    .line 113
    :cond_8
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->h(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_5

    .line 117
    :goto_6
    invoke-interface/range {p1 .. p6}, Landroidx/compose/ui/graphics/Canvas;->d(JJLandroidx/compose/ui/graphics/Paint;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public static k(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    .locals 10

    .line 1
    and-int/lit8 v0, p9, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 p2, 0x0

    .line 6
    .line 7
    :cond_0
    move-wide v2, p2

    .line 8
    and-int/lit8 p2, p9, 0x4

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 13
    .line 14
    invoke-interface {p2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 15
    .line 16
    .line 17
    move-result-wide p2

    .line 18
    invoke-static {p2, p3, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Y(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide p2

    .line 22
    move-wide v4, p2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-wide v4, p4

    .line 25
    :goto_0
    and-int/lit8 p2, p9, 0x20

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    sget-object p2, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 30
    .line 31
    move-object v9, p2

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move-object/from16 v9, p8

    .line 34
    .line 35
    :goto_1
    const/high16 v8, 0x3f800000    # 1.0f

    .line 36
    .line 37
    move-object v0, p0

    .line 38
    move-object v1, p1

    .line 39
    move-wide/from16 v6, p6

    .line 40
    .line 41
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->d(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static synthetic r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 12

    .line 1
    and-int/lit8 v0, p7, 0x4

    .line 2
    .line 3
    const-wide/16 v4, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Y(JJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    move-wide v6, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-wide v6, p3

    .line 18
    :goto_0
    and-int/lit8 v0, p7, 0x8

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    move v8, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move/from16 v8, p5

    .line 27
    .line 28
    :goto_1
    and-int/lit8 v0, p7, 0x20

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    move-object v10, v0

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move-object/from16 v10, p6

    .line 36
    .line 37
    :goto_2
    and-int/lit8 v0, p7, 0x40

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    :goto_3
    move v11, v0

    .line 43
    goto :goto_4

    .line 44
    :cond_3
    const/4 v0, 0x0

    .line 45
    goto :goto_3

    .line 46
    :goto_4
    sget-object v9, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 47
    .line 48
    move-object v1, p0

    .line 49
    move-wide v2, p1

    .line 50
    invoke-interface/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->D(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public B0()J
    .locals 2

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->l0()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->a(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public abstract D(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract G(JFJF)V
.end method

.method public abstract H0(JFFJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V
.end method

.method public abstract getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
.end method

.method public i()J
    .locals 2

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->l0()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public abstract l0()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;
.end method

.method public abstract m0(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
.end method

.method public abstract o0(Landroidx/compose/ui/graphics/ImageBitmap;JJJFLandroidx/compose/ui/graphics/ColorFilter;I)V
.end method

.method public abstract u0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
.end method

.method public abstract v(FJJJ)V
.end method

.method public abstract x0(Ljava/util/ArrayList;JF)V
.end method
