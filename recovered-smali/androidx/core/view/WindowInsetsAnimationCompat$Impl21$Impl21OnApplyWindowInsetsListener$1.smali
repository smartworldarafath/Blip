.class Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/core/view/WindowInsetsAnimationCompat;

.field public final synthetic b:Landroidx/core/view/WindowInsetsCompat;

.field public final synthetic c:Landroidx/core/view/WindowInsetsCompat;

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->a:Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->b:Landroidx/core/view/WindowInsetsCompat;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->c:Landroidx/core/view/WindowInsetsCompat;

    .line 9
    .line 10
    iput p4, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->e:Landroid/view/View;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->a:Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/core/view/WindowInsetsAnimationCompat;->a:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    .line 10
    .line 11
    invoke-virtual {v3, v1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->e(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->c()F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sget-object v3, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->e:Landroid/view/animation/PathInterpolator;

    .line 19
    .line 20
    new-instance v3, Landroidx/core/view/WindowInsetsCompat$Builder;

    .line 21
    .line 22
    iget-object v4, v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->b:Landroidx/core/view/WindowInsetsCompat;

    .line 23
    .line 24
    invoke-direct {v3, v4}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    :goto_0
    const/16 v6, 0x200

    .line 29
    .line 30
    iget-object v7, v3, Landroidx/core/view/WindowInsetsCompat$Builder;->a:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    .line 31
    .line 32
    if-gt v5, v6, :cond_1

    .line 33
    .line 34
    iget v6, v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->d:I

    .line 35
    .line 36
    and-int/2addr v6, v5

    .line 37
    iget-object v8, v4, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 38
    .line 39
    if-nez v6, :cond_0

    .line 40
    .line 41
    invoke-virtual {v8, v5}, Landroidx/core/view/WindowInsetsCompat$Impl;->i(I)Landroidx/core/graphics/Insets;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v7, v5, v6}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->d(ILandroidx/core/graphics/Insets;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v8, v5}, Landroidx/core/view/WindowInsetsCompat$Impl;->i(I)Landroidx/core/graphics/Insets;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    iget-object v8, v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->c:Landroidx/core/view/WindowInsetsCompat;

    .line 54
    .line 55
    iget-object v8, v8, Landroidx/core/view/WindowInsetsCompat;->a:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 56
    .line 57
    invoke-virtual {v8, v5}, Landroidx/core/view/WindowInsetsCompat$Impl;->i(I)Landroidx/core/graphics/Insets;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    iget v9, v6, Landroidx/core/graphics/Insets;->a:I

    .line 62
    .line 63
    iget v10, v8, Landroidx/core/graphics/Insets;->a:I

    .line 64
    .line 65
    sub-int/2addr v9, v10

    .line 66
    int-to-float v9, v9

    .line 67
    const/high16 v10, 0x3f800000    # 1.0f

    .line 68
    .line 69
    sub-float/2addr v10, v1

    .line 70
    mul-float/2addr v9, v10

    .line 71
    float-to-double v11, v9

    .line 72
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 73
    .line 74
    add-double/2addr v11, v13

    .line 75
    double-to-int v9, v11

    .line 76
    iget v11, v6, Landroidx/core/graphics/Insets;->b:I

    .line 77
    .line 78
    iget v12, v8, Landroidx/core/graphics/Insets;->b:I

    .line 79
    .line 80
    sub-int/2addr v11, v12

    .line 81
    int-to-float v11, v11

    .line 82
    mul-float/2addr v11, v10

    .line 83
    float-to-double v11, v11

    .line 84
    add-double/2addr v11, v13

    .line 85
    double-to-int v11, v11

    .line 86
    iget v12, v6, Landroidx/core/graphics/Insets;->c:I

    .line 87
    .line 88
    iget v15, v8, Landroidx/core/graphics/Insets;->c:I

    .line 89
    .line 90
    sub-int/2addr v12, v15

    .line 91
    int-to-float v12, v12

    .line 92
    mul-float/2addr v12, v10

    .line 93
    move-wide v15, v13

    .line 94
    float-to-double v13, v12

    .line 95
    add-double/2addr v13, v15

    .line 96
    double-to-int v12, v13

    .line 97
    iget v13, v6, Landroidx/core/graphics/Insets;->d:I

    .line 98
    .line 99
    iget v8, v8, Landroidx/core/graphics/Insets;->d:I

    .line 100
    .line 101
    sub-int/2addr v13, v8

    .line 102
    int-to-float v8, v13

    .line 103
    mul-float/2addr v8, v10

    .line 104
    float-to-double v13, v8

    .line 105
    add-double/2addr v13, v15

    .line 106
    double-to-int v8, v13

    .line 107
    invoke-static {v6, v9, v11, v12, v8}, Landroidx/core/view/WindowInsetsCompat;->o(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v7, v5, v6}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->d(ILandroidx/core/graphics/Insets;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    shl-int/lit8 v5, v5, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v7}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->b()Landroidx/core/view/WindowInsetsCompat;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget-object v0, v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$1;->e:Landroid/view/View;

    .line 126
    .line 127
    invoke-static {v0, v1, v2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->h(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
