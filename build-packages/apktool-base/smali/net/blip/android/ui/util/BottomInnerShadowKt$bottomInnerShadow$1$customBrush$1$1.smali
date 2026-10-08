.class public final Lnet/blip/android/ui/util/BottomInnerShadowKt$bottomInnerShadow$1$customBrush$1$1;
.super Landroidx/compose/ui/graphics/ShaderBrush;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic c:J

.field public final synthetic d:F


# direct methods
.method public constructor <init>(JF)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/blip/android/ui/util/BottomInnerShadowKt$bottomInnerShadow$1$customBrush$1$1;->c:J

    .line 2
    .line 3
    iput p3, p0, Lnet/blip/android/ui/util/BottomInnerShadowKt$bottomInnerShadow$1$customBrush$1$1;->d:F

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/ui/graphics/ShaderBrush;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(J)Landroid/graphics/Shader;
    .locals 9

    .line 1
    iget-wide v0, p0, Lnet/blip/android/ui/util/BottomInnerShadowKt$bottomInnerShadow$1$customBrush$1$1;->c:J

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2}, Lnet/blip/shared/ColorKt;->a(JF)J

    .line 5
    .line 6
    .line 7
    move-result-wide v3

    .line 8
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 9
    .line 10
    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 11
    .line 12
    .line 13
    const/high16 v3, 0x3f000000    # 0.5f

    .line 14
    .line 15
    invoke-static {v0, v1, v3}, Lnet/blip/shared/ColorKt;->a(JF)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    new-instance v6, Landroidx/compose/ui/graphics/Color;

    .line 20
    .line 21
    invoke-direct {v6, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    .line 25
    .line 26
    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 27
    .line 28
    .line 29
    filled-new-array {v5, v6, v3}, [Landroidx/compose/ui/graphics/Color;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const v1, 0x3f19999a    # 0.6f

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/high16 v3, 0x3f800000    # 1.0f

    .line 49
    .line 50
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    filled-new-array {v0, v1, v3}, [Ljava/lang/Float;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    const-wide v0, 0xffffffffL

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    and-long/2addr p1, v0

    .line 68
    long-to-int p1, p1

    .line 69
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iget p0, p0, Lnet/blip/android/ui/util/BottomInnerShadowKt$bottomInnerShadow$1$customBrush$1$1;->d:F

    .line 74
    .line 75
    sub-float/2addr p2, p0

    .line 76
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    int-to-long v3, p0

    .line 81
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    int-to-long v5, p0

    .line 86
    const/16 p0, 0x20

    .line 87
    .line 88
    shl-long/2addr v3, p0

    .line 89
    and-long/2addr v5, v0

    .line 90
    or-long/2addr v3, v5

    .line 91
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    int-to-long v5, p2

    .line 100
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    int-to-long p1, p1

    .line 105
    shl-long/2addr v5, p0

    .line 106
    and-long p0, p1, v0

    .line 107
    .line 108
    or-long/2addr v5, p0

    .line 109
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/graphics/ShaderKt;->a(JJLjava/util/List;Ljava/util/List;)Landroid/graphics/LinearGradient;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0
.end method
