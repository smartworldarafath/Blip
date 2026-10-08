.class public abstract Lnet/blip/android/ui/components/DividerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 6

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x5c5a17c

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p3, 0x1

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    or-int/lit8 v2, p2, 0x6

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v2, v1

    .line 26
    :goto_0
    or-int/2addr v2, p2

    .line 27
    :goto_1
    and-int/lit8 v3, v2, 0x3

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x1

    .line 31
    if-eq v3, v1, :cond_2

    .line 32
    .line 33
    move v1, v5

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move v1, v4

    .line 36
    :goto_2
    and-int/2addr v2, v5

    .line 37
    invoke-virtual {p1, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 46
    .line 47
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    .line 49
    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/high16 v1, 0x3f000000    # 0.5f

    .line 54
    .line 55
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 66
    .line 67
    iget-wide v1, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->l:J

    .line 68
    .line 69
    sget-object v3, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 70
    .line 71
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0, p1, v4}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 80
    .line 81
    .line 82
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    new-instance v0, Lx0;

    .line 89
    .line 90
    invoke-direct {v0, p0, p2, p3, v5}, Lx0;-><init>(Landroidx/compose/ui/Modifier;III)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 94
    .line 95
    :cond_5
    return-void
.end method
