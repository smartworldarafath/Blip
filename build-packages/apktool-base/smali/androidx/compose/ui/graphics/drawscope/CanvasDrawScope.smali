.class public final Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/graphics/drawscope/DrawScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    }
.end annotation


# instance fields
.field public final j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

.field public final k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

.field public l:Landroidx/compose/ui/graphics/AndroidPaint;

.field public m:Landroidx/compose/ui/graphics/AndroidPaint;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/graphics/drawscope/DrawContextKt;->a:Landroidx/compose/ui/unit/Density;

    .line 7
    .line 8
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    .line 14
    .line 15
    iput-object v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 16
    .line 17
    sget-object v1, Landroidx/compose/ui/graphics/drawscope/EmptyCanvas;->a:Landroidx/compose/ui/graphics/drawscope/EmptyCanvas;

    .line 18
    .line 19
    iput-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    iput-wide v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 26
    .line 27
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;-><init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 33
    .line 34
    return-void
.end method

.method public static a(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/graphics/Paint;
    .locals 2

    .line 1
    invoke-virtual {p0, p3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->e(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/high16 p3, 0x3f800000    # 1.0f

    .line 6
    .line 7
    cmpg-float p3, p4, p3

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->d(J)F

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    mul-float/2addr p3, p4

    .line 17
    invoke-static {p1, p2, p3}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    :goto_0
    move-object p3, p0

    .line 22
    check-cast p3, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 23
    .line 24
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/AndroidPaint;->a()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 29
    .line 30
    .line 31
    move-result p4

    .line 32
    if-nez p4, :cond_1

    .line 33
    .line 34
    invoke-virtual {p3, p1, p2}, Landroidx/compose/ui/graphics/AndroidPaint;->f(J)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p1, p3, Landroidx/compose/ui/graphics/AndroidPaint;->c:Landroid/graphics/Shader;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p3, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->i(Landroid/graphics/Shader;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p1, p3, Landroidx/compose/ui/graphics/AndroidPaint;->d:Landroidx/compose/ui/graphics/ColorFilter;

    .line 46
    .line 47
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p3, p5}, Landroidx/compose/ui/graphics/AndroidPaint;->g(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget p1, p3, Landroidx/compose/ui/graphics/AndroidPaint;->b:I

    .line 57
    .line 58
    if-ne p1, p6, :cond_4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {p3, p6}, Landroidx/compose/ui/graphics/AndroidPaint;->e(I)V

    .line 62
    .line 63
    .line 64
    :goto_1
    iget-object p1, p3, Landroidx/compose/ui/graphics/AndroidPaint;->a:Landroid/graphics/Paint;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    const/4 p2, 0x1

    .line 71
    if-ne p1, p2, :cond_5

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_5
    invoke-virtual {p3, p2}, Landroidx/compose/ui/graphics/AndroidPaint;->h(I)V

    .line 75
    .line 76
    .line 77
    return-object p0
.end method

.method public static c(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JF)Landroidx/compose/ui/graphics/Paint;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->m:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->m(I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->m:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 14
    .line 15
    :cond_0
    iget-object p0, v0, Landroidx/compose/ui/graphics/AndroidPaint;->a:Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/AndroidPaint;->a()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-static {v2, v3, p1, p2}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/AndroidPaint;->f(J)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p1, v0, Landroidx/compose/ui/graphics/AndroidPaint;->c:Landroid/graphics/Shader;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Landroidx/compose/ui/graphics/AndroidPaint;->i(Landroid/graphics/Shader;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p1, v0, Landroidx/compose/ui/graphics/AndroidPaint;->d:Landroidx/compose/ui/graphics/ColorFilter;

    .line 39
    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, p2}, Landroidx/compose/ui/graphics/AndroidPaint;->g(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget p1, v0, Landroidx/compose/ui/graphics/AndroidPaint;->b:I

    .line 50
    .line 51
    const/4 p2, 0x3

    .line 52
    if-ne p1, p2, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {v0, p2}, Landroidx/compose/ui/graphics/AndroidPaint;->e(I)V

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    cmpg-float p1, p1, p3

    .line 63
    .line 64
    if-nez p1, :cond_5

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    invoke-virtual {v0, p3}, Landroidx/compose/ui/graphics/AndroidPaint;->l(F)V

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeMiter()F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    const/high16 p2, 0x40800000    # 4.0f

    .line 75
    .line 76
    cmpg-float p1, p1, p2

    .line 77
    .line 78
    if-nez p1, :cond_6

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_6
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/AndroidPaint;->b()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-ne p1, v1, :cond_7

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_7
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->j(I)V

    .line 92
    .line 93
    .line 94
    :goto_3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/AndroidPaint;->c()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_8

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_8
    const/4 p1, 0x0

    .line 102
    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->k(I)V

    .line 103
    .line 104
    .line 105
    :goto_4
    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-ne p0, v1, :cond_9

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_9
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->h(I)V

    .line 113
    .line 114
    .line 115
    return-object v0
.end method


# virtual methods
.method public final D(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 12

    .line 1
    iget-object v1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 2
    .line 3
    iget-object v7, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    shr-long v2, p3, v1

    .line 8
    .line 9
    long-to-int v2, v2

    .line 10
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 11
    .line 12
    .line 13
    move-result v8

    .line 14
    const-wide v3, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long v5, p3, v3

    .line 20
    .line 21
    long-to-int v5, v5

    .line 22
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    shr-long v10, p5, v1

    .line 31
    .line 32
    long-to-int v1, v10

    .line 33
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-float v10, v1, v2

    .line 38
    .line 39
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    and-long v2, p5, v3

    .line 44
    .line 45
    long-to-int v2, v2

    .line 46
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-float v11, v2, v1

    .line 51
    .line 52
    move-object v0, p0

    .line 53
    move-wide v1, p1

    .line 54
    move/from16 v4, p7

    .line 55
    .line 56
    move-object/from16 v3, p8

    .line 57
    .line 58
    move-object/from16 v5, p9

    .line 59
    .line 60
    move/from16 v6, p10

    .line 61
    .line 62
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->a(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/graphics/Paint;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object/from16 p5, v0

    .line 67
    .line 68
    move-object p0, v7

    .line 69
    move p1, v8

    .line 70
    move p2, v9

    .line 71
    move p3, v10

    .line 72
    move/from16 p4, v11

    .line 73
    .line 74
    invoke-interface/range {p0 .. p5}, Landroidx/compose/ui/graphics/Canvas;->e(FFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final G(JFJF)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    sget-object v4, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v7, 0x3

    .line 9
    move-object v1, p0

    .line 10
    move-wide v2, p1

    .line 11
    move v5, p6

    .line 12
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->a(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/graphics/Paint;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {v0, p3, p4, p5, p0}, Landroidx/compose/ui/graphics/Canvas;->s(FJLandroidx/compose/ui/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final H0(JFFJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 12

    .line 1
    iget-object v1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 2
    .line 3
    iget-object v7, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    shr-long v2, p5, v1

    .line 8
    .line 9
    long-to-int v2, v2

    .line 10
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 11
    .line 12
    .line 13
    move-result v8

    .line 14
    const-wide v3, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long v5, p5, v3

    .line 20
    .line 21
    long-to-int v5, v5

    .line 22
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    shr-long v10, p7, v1

    .line 31
    .line 32
    long-to-int v1, v10

    .line 33
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-float v10, v1, v2

    .line 38
    .line 39
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    and-long v2, p7, v3

    .line 44
    .line 45
    long-to-int v2, v2

    .line 46
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-float v11, v2, v1

    .line 51
    .line 52
    const/high16 v4, 0x3f800000    # 1.0f

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x3

    .line 56
    move-object v0, p0

    .line 57
    move-wide v1, p1

    .line 58
    move-object/from16 v3, p9

    .line 59
    .line 60
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->a(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/graphics/Paint;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v2, v7

    .line 65
    move v3, v8

    .line 66
    move v4, v9

    .line 67
    move v5, v10

    .line 68
    move v6, v11

    .line 69
    move v7, p3

    .line 70
    move/from16 v8, p4

    .line 71
    .line 72
    move-object v9, v0

    .line 73
    invoke-interface/range {v2 .. v9}, Landroidx/compose/ui/graphics/Canvas;->f(FFFFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final b(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->e(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p1, p3, v0, v1, p2}, Landroidx/compose/ui/graphics/Brush;->a(FJLandroidx/compose/ui/graphics/Paint;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p0, p2

    .line 16
    check-cast p0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->c:Landroid/graphics/Shader;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->i(Landroid/graphics/Shader;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidPaint;->a()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->b:J

    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/graphics/AndroidPaint;->f(J)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->a:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    int-to-float p1, p1

    .line 48
    const/high16 v0, 0x437f0000    # 255.0f

    .line 49
    .line 50
    div-float/2addr p1, v0

    .line 51
    cmpg-float p1, p1, p3

    .line 52
    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p0, p3}, Landroidx/compose/ui/graphics/AndroidPaint;->d(F)V

    .line 57
    .line 58
    .line 59
    :goto_0
    move-object p0, p2

    .line 60
    check-cast p0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 61
    .line 62
    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->d:Landroidx/compose/ui/graphics/ColorFilter;

    .line 63
    .line 64
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0, p4}, Landroidx/compose/ui/graphics/AndroidPaint;->g(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->b:I

    .line 74
    .line 75
    if-ne p1, p5, :cond_5

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    invoke-virtual {p0, p5}, Landroidx/compose/ui/graphics/AndroidPaint;->e(I)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->a:Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-ne p1, p6, :cond_6

    .line 88
    .line 89
    return-object p2

    .line 90
    :cond_6
    invoke-virtual {p0, p6}, Landroidx/compose/ui/graphics/AndroidPaint;->h(I)V

    .line 91
    .line 92
    .line 93
    return-object p2
.end method

.method public final d(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/BlendModeColorFilter;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v7, 0x1

    .line 7
    sget-object v3, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 8
    .line 9
    const/high16 v4, 0x3f800000    # 1.0f

    .line 10
    .line 11
    const/4 v6, 0x3

    .line 12
    move-object v1, p0

    .line 13
    move-object v5, p2

    .line 14
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->b(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {v0, p1, p0}, Landroidx/compose/ui/graphics/Canvas;->q(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final e(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/graphics/Paint;
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->l:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/AndroidPaint;->m(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->l:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 22
    .line 23
    :cond_0
    return-object p1

    .line 24
    :cond_1
    instance-of v0, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 25
    .line 26
    if-eqz v0, :cond_7

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->m:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->m(I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->m:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 41
    .line 42
    :cond_2
    iget-object p0, v0, Landroidx/compose/ui/graphics/AndroidPaint;->a:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 49
    .line 50
    iget v2, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->a:F

    .line 51
    .line 52
    cmpg-float v1, v1, v2

    .line 53
    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/AndroidPaint;->l(F)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/AndroidPaint;->b()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iget v2, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->c:I

    .line 65
    .line 66
    if-ne v1, v2, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/AndroidPaint;->j(I)V

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeMiter()F

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget v2, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->b:F

    .line 77
    .line 78
    cmpg-float v1, v1, v2

    .line 79
    .line 80
    if-nez v1, :cond_5

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 84
    .line 85
    .line 86
    :goto_2
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/AndroidPaint;->c()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    iget p1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->d:I

    .line 91
    .line 92
    if-ne p0, p1, :cond_6

    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->k(I)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_7
    invoke-static {}, Lk8;->e()V

    .line 100
    .line 101
    .line 102
    const/4 p0, 0x0

    .line 103
    return-object p0
.end method

.method public final e0()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->e0()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getDensity()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    return-object p0
.end method

.method public final l0()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final m0(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    shr-long v2, p2, v1

    .line 8
    .line 9
    long-to-int v2, v2

    .line 10
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const-wide v4, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr p2, v4

    .line 20
    long-to-int p2, p2

    .line 21
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    shr-long v6, p4, v1

    .line 30
    .line 31
    long-to-int v1, v6

    .line 32
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-float/2addr v1, v2

    .line 37
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    and-long/2addr v4, p4

    .line 42
    long-to-int v2, v4

    .line 43
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-float/2addr v2, p2

    .line 48
    const/4 v10, 0x1

    .line 49
    const/4 v8, 0x0

    .line 50
    move-object v4, p0

    .line 51
    move-object v5, p1

    .line 52
    move/from16 v7, p6

    .line 53
    .line 54
    move-object/from16 v6, p7

    .line 55
    .line 56
    move/from16 v9, p8

    .line 57
    .line 58
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->b(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    move-object/from16 p5, p0

    .line 63
    .line 64
    move p2, p3

    .line 65
    move-object p0, v0

    .line 66
    move p3, v1

    .line 67
    move p4, v2

    .line 68
    move p1, v3

    .line 69
    invoke-interface/range {p0 .. p5}, Landroidx/compose/ui/graphics/Canvas;->e(FFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final o0(Landroidx/compose/ui/graphics/ImageBitmap;JJJFLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 7
    .line 8
    const/4 v7, 0x3

    .line 9
    move-object v2, p0

    .line 10
    move/from16 v5, p8

    .line 11
    .line 12
    move-object/from16 v6, p9

    .line 13
    .line 14
    move/from16 v8, p10

    .line 15
    .line 16
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->b(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;

    .line 17
    .line 18
    .line 19
    move-result-object v9

    .line 20
    move-object v2, p1

    .line 21
    move-wide v3, p2

    .line 22
    move-wide v5, p4

    .line 23
    move-wide/from16 v7, p6

    .line 24
    .line 25
    invoke-interface/range {v1 .. v9}, Landroidx/compose/ui/graphics/Canvas;->i(Landroidx/compose/ui/graphics/ImageBitmap;JJJLandroidx/compose/ui/graphics/Paint;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final u0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    const/4 v7, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p2

    .line 9
    move v4, p3

    .line 10
    move-object v3, p4

    .line 11
    move v6, p5

    .line 12
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->b(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {v0, p1, p0}, Landroidx/compose/ui/graphics/Canvas;->m(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final v(FJJJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    invoke-static {p0, p2, p3, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JF)Landroidx/compose/ui/graphics/Paint;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    move-wide p1, p4

    .line 10
    move-wide p3, p6

    .line 11
    move-object p5, p0

    .line 12
    move-object p0, v0

    .line 13
    invoke-interface/range {p0 .. p5}, Landroidx/compose/ui/graphics/Canvas;->d(JJLandroidx/compose/ui/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final x0(Ljava/util/ArrayList;JF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    invoke-static {p0, p2, p3, p4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JF)Landroidx/compose/ui/graphics/Paint;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {v0, p1, p0}, Landroidx/compose/ui/graphics/Canvas;->a(Ljava/util/ArrayList;Landroidx/compose/ui/graphics/Paint;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
