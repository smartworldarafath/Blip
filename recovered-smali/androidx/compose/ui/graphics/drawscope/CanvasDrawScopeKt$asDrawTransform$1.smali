.class public final Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(FFFF)V
    .locals 8

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const/16 v3, 0x20

    .line 12
    .line 13
    shr-long/2addr v1, v3

    .line 14
    long-to-int v1, v1

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-float/2addr p3, p1

    .line 20
    sub-float/2addr v1, p3

    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    const-wide v6, 0xffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    and-long/2addr v4, v6

    .line 31
    long-to-int p3, v4

    .line 32
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    add-float/2addr p4, p2

    .line 37
    sub-float/2addr p3, p4

    .line 38
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    int-to-long v1, p4

    .line 43
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    int-to-long p3, p3

    .line 48
    shl-long/2addr v1, v3

    .line 49
    and-long/2addr p3, v6

    .line 50
    or-long/2addr p3, v1

    .line 51
    shr-long v1, p3, v3

    .line 52
    .line 53
    long-to-int v1, v1

    .line 54
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/4 v2, 0x0

    .line 59
    cmpl-float v1, v1, v2

    .line 60
    .line 61
    if-ltz v1, :cond_0

    .line 62
    .line 63
    and-long v3, p3, v6

    .line 64
    .line 65
    long-to-int v1, v3

    .line 66
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    cmpl-float v1, v1, v2

    .line 71
    .line 72
    if-ltz v1, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const-string v1, "Width and height must be greater than or equal to zero"

    .line 76
    .line 77
    invoke-static {v1}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {p0, p3, p4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->o(FF)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final b(FFJ)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    shr-long v0, p3, v0

    .line 10
    .line 11
    long-to-int v0, v0

    .line 12
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-wide v2, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr p3, v2

    .line 22
    long-to-int p3, p3

    .line 23
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    invoke-interface {p0, v1, p4}, Landroidx/compose/ui/graphics/Canvas;->o(FF)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->b(FF)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    neg-float p1, p1

    .line 38
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    neg-float p2, p2

    .line 43
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->o(FF)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final c(FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/Canvas;->o(FF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
