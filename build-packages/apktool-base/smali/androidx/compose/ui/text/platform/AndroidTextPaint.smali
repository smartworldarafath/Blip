.class public final Landroidx/compose/ui/text/platform/AndroidTextPaint;
.super Landroid/text/TextPaint;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final synthetic j:I


# instance fields
.field public a:Landroidx/compose/ui/graphics/AndroidPaint;

.field public b:Landroidx/compose/ui/text/style/TextDecoration;

.field public c:I

.field public d:Landroidx/compose/ui/graphics/Shadow;

.field public e:Landroidx/compose/ui/graphics/Color;

.field public f:Landroidx/compose/ui/graphics/Brush;

.field public g:Landroidx/compose/runtime/State;

.field public h:Landroidx/compose/ui/geometry/Size;

.field public i:Landroidx/compose/ui/graphics/drawscope/DrawStyle;


# virtual methods
.method public final a()Landroidx/compose/ui/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/AndroidPaint;-><init>(Landroid/graphics/Paint;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 12
    .line 13
    return-object v0
.end method

.method public final b(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a()Landroidx/compose/ui/graphics/Paint;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->e(I)V

    .line 13
    .line 14
    .line 15
    iput p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c:I

    .line 16
    .line 17
    return-void
.end method

.method public final c(Landroidx/compose/ui/graphics/Brush;JF)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g:Landroidx/compose/runtime/State;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f:Landroidx/compose/ui/graphics/Brush;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->h:Landroidx/compose/ui/geometry/Size;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/SolidColor;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast p1, Landroidx/compose/ui/graphics/SolidColor;

    .line 19
    .line 20
    iget-wide p1, p1, Landroidx/compose/ui/graphics/SolidColor;->a:J

    .line 21
    .line 22
    invoke-static {p1, p2, p4}, Landroidx/compose/ui/text/style/TextDrawStyleKt;->a(JF)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d(J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    instance-of v1, p1, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 31
    .line 32
    if-eqz v1, :cond_7

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f:Landroidx/compose/ui/graphics/Brush;

    .line 35
    .line 36
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->h:Landroidx/compose/ui/geometry/Size;

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    move v1, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-wide v3, v1, Landroidx/compose/ui/geometry/Size;->a:J

    .line 50
    .line 51
    invoke-static {v3, v4, p2, p3}, Landroidx/compose/ui/geometry/Size;->a(JJ)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    :goto_0
    if-nez v1, :cond_5

    .line 56
    .line 57
    :cond_3
    const-wide v3, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    cmp-long v1, p2, v3

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    :cond_4
    if-eqz v2, :cond_5

    .line 68
    .line 69
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f:Landroidx/compose/ui/graphics/Brush;

    .line 70
    .line 71
    new-instance v1, Landroidx/compose/ui/geometry/Size;

    .line 72
    .line 73
    invoke-direct {v1, p2, p3}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->h:Landroidx/compose/ui/geometry/Size;

    .line 77
    .line 78
    new-instance v1, Lj2;

    .line 79
    .line 80
    invoke-direct {v1, p1, p2, p3}, Lj2;-><init>(Landroidx/compose/ui/graphics/Brush;J)V

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g:Landroidx/compose/runtime/State;

    .line 88
    .line 89
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a()Landroidx/compose/ui/graphics/Paint;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g:Landroidx/compose/runtime/State;

    .line 94
    .line 95
    if-eqz p2, :cond_6

    .line 96
    .line 97
    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Landroid/graphics/Shader;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    move-object p2, v0

    .line 105
    :goto_1
    check-cast p1, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroidx/compose/ui/graphics/AndroidPaint;->i(Landroid/graphics/Shader;)V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e:Landroidx/compose/ui/graphics/Color;

    .line 111
    .line 112
    invoke-static {p0, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint_androidKt;->a(Landroid/text/TextPaint;F)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_7
    invoke-static {}, Lk8;->e()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final d(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e:Landroidx/compose/ui/graphics/Color;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-wide v2, v0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 9
    .line 10
    invoke-static {v2, v3, p1, p2}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    if-nez v0, :cond_2

    .line 15
    .line 16
    const-wide/16 v2, 0x10

    .line 17
    .line 18
    cmp-long v0, p1, v2

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_1
    if-eqz v1, :cond_2

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 26
    .line 27
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e:Landroidx/compose/ui/graphics/Color;

    .line 31
    .line 32
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->f(J)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g:Landroidx/compose/runtime/State;

    .line 41
    .line 42
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f:Landroidx/compose/ui/graphics/Brush;

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->h:Landroidx/compose/ui/geometry/Size;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final e(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->i:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->i:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 13
    .line 14
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    instance-of v0, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a()Landroidx/compose/ui/graphics/Paint;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x1

    .line 37
    check-cast v0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->m(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a()Landroidx/compose/ui/graphics/Paint;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 47
    .line 48
    iget v1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->a:F

    .line 49
    .line 50
    check-cast v0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->l(F)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a()Landroidx/compose/ui/graphics/Paint;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget v1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->b:F

    .line 60
    .line 61
    check-cast v0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 62
    .line 63
    iget-object v0, v0, Landroidx/compose/ui/graphics/AndroidPaint;->a:Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a()Landroidx/compose/ui/graphics/Paint;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->d:I

    .line 73
    .line 74
    check-cast v0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->k(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a()Landroidx/compose/ui/graphics/Paint;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget p1, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;->c:I

    .line 84
    .line 85
    check-cast v0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->j(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a()Landroidx/compose/ui/graphics/Paint;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    check-cast p0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 95
    .line 96
    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->a:Landroid/graphics/Paint;

    .line 97
    .line 98
    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    invoke-static {}, Lk8;->e()V

    .line 104
    .line 105
    .line 106
    :cond_3
    :goto_0
    return-void
.end method

.method public final f(Landroidx/compose/ui/graphics/Shadow;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d:Landroidx/compose/ui/graphics/Shadow;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d:Landroidx/compose/ui/graphics/Shadow;

    .line 13
    .line 14
    sget-object v0, Landroidx/compose/ui/graphics/Shadow;->d:Landroidx/compose/ui/graphics/Shadow;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/Shadow;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d:Landroidx/compose/ui/graphics/Shadow;

    .line 27
    .line 28
    iget v0, p1, Landroidx/compose/ui/graphics/Shadow;->c:F

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    cmpg-float v1, v0, v1

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    :cond_2
    iget-wide v1, p1, Landroidx/compose/ui/graphics/Shadow;->b:J

    .line 37
    .line 38
    const/16 p1, 0x20

    .line 39
    .line 40
    shr-long/2addr v1, p1

    .line 41
    long-to-int p1, v1

    .line 42
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d:Landroidx/compose/ui/graphics/Shadow;

    .line 47
    .line 48
    iget-wide v1, v1, Landroidx/compose/ui/graphics/Shadow;->b:J

    .line 49
    .line 50
    const-wide v3, 0xffffffffL

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    and-long/2addr v1, v3

    .line 56
    long-to-int v1, v1

    .line 57
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d:Landroidx/compose/ui/graphics/Shadow;

    .line 62
    .line 63
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Shadow;->a:J

    .line 64
    .line 65
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->f(J)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_0
    return-void
.end method

.method public final g(Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b:Landroidx/compose/ui/text/style/TextDecoration;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b:Landroidx/compose/ui/text/style/TextDecoration;

    .line 13
    .line 14
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->c:Landroidx/compose/ui/text/style/TextDecoration;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/style/TextDecoration;->a(Landroidx/compose/ui/text/style/TextDecoration;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b:Landroidx/compose/ui/text/style/TextDecoration;

    .line 24
    .line 25
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->d:Landroidx/compose/ui/text/style/TextDecoration;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/style/TextDecoration;->a(Landroidx/compose/ui/text/style/TextDecoration;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method
