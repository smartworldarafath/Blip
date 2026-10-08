.class public abstract Landroidx/compose/ui/graphics/ShaderBrush;
.super Landroidx/compose/ui/graphics/Brush;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:Landroidx/compose/ui/graphics/TransformShader;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->b:J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(FJLandroidx/compose/ui/graphics/Paint;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->a:Landroidx/compose/ui/graphics/TransformShader;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v2, p0, Landroidx/compose/ui/graphics/ShaderBrush;->b:J

    .line 7
    .line 8
    invoke-static {v2, v3, p2, p3}, Landroidx/compose/ui/geometry/Size;->a(JJ)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_3

    .line 13
    .line 14
    :cond_0
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->e(J)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iput-object v1, p0, Landroidx/compose/ui/graphics/ShaderBrush;->a:Landroidx/compose/ui/graphics/TransformShader;

    .line 21
    .line 22
    const-wide p2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iput-wide p2, p0, Landroidx/compose/ui/graphics/ShaderBrush;->b:J

    .line 28
    .line 29
    move-object v0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->a:Landroidx/compose/ui/graphics/TransformShader;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    new-instance v0, Landroidx/compose/ui/graphics/TransformShader;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->a:Landroidx/compose/ui/graphics/TransformShader;

    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/graphics/ShaderBrush;->b(J)Landroid/graphics/Shader;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, v0, Landroidx/compose/ui/graphics/TransformShader;->a:Landroid/graphics/Shader;

    .line 47
    .line 48
    iput-object v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->a:Landroidx/compose/ui/graphics/TransformShader;

    .line 49
    .line 50
    iput-wide p2, p0, Landroidx/compose/ui/graphics/ShaderBrush;->b:J

    .line 51
    .line 52
    :cond_3
    :goto_0
    check-cast p4, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 53
    .line 54
    invoke-virtual {p4}, Landroidx/compose/ui/graphics/AndroidPaint;->a()J

    .line 55
    .line 56
    .line 57
    move-result-wide p2

    .line 58
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->b:J

    .line 59
    .line 60
    invoke-static {p2, p3, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_4

    .line 65
    .line 66
    invoke-virtual {p4, v2, v3}, Landroidx/compose/ui/graphics/AndroidPaint;->f(J)V

    .line 67
    .line 68
    .line 69
    :cond_4
    iget-object p0, p4, Landroidx/compose/ui/graphics/AndroidPaint;->c:Landroid/graphics/Shader;

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    iget-object p2, v0, Landroidx/compose/ui/graphics/TransformShader;->a:Landroid/graphics/Shader;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    move-object p2, v1

    .line 77
    :goto_1
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_7

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    iget-object v1, v0, Landroidx/compose/ui/graphics/TransformShader;->a:Landroid/graphics/Shader;

    .line 86
    .line 87
    :cond_6
    invoke-virtual {p4, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->i(Landroid/graphics/Shader;)V

    .line 88
    .line 89
    .line 90
    :cond_7
    iget-object p0, p4, Landroidx/compose/ui/graphics/AndroidPaint;->a:Landroid/graphics/Paint;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    int-to-float p0, p0

    .line 97
    const/high16 p2, 0x437f0000    # 255.0f

    .line 98
    .line 99
    div-float/2addr p0, p2

    .line 100
    cmpg-float p0, p0, p1

    .line 101
    .line 102
    if-nez p0, :cond_8

    .line 103
    .line 104
    return-void

    .line 105
    :cond_8
    invoke-virtual {p4, p1}, Landroidx/compose/ui/graphics/AndroidPaint;->d(F)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public abstract b(J)Landroid/graphics/Shader;
.end method
