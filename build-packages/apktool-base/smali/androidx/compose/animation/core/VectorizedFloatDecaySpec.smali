.class final Landroidx/compose/animation/core/VectorizedFloatDecaySpec;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/VectorizedDecayAnimationSpec<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

.field public b:Landroidx/compose/animation/core/AnimationVector;

.field public c:Landroidx/compose/animation/core/AnimationVector;

.field public d:Landroidx/compose/animation/core/AnimationVector;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->a:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->d:Landroidx/compose/animation/core/AnimationVector;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/core/AnimationVector;->c()Landroidx/compose/animation/core/AnimationVector;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->d:Landroidx/compose/animation/core/AnimationVector;

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->d:Landroidx/compose/animation/core/AnimationVector;

    .line 14
    .line 15
    const-string v3, "targetVector"

    .line 16
    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationVector;->b()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    iget-object v5, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->d:Landroidx/compose/animation/core/AnimationVector;

    .line 25
    .line 26
    if-ge v4, v1, :cond_2

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    move-object/from16 v6, p1

    .line 31
    .line 32
    invoke-virtual {v6, v4}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    move-object/from16 v8, p2

    .line 37
    .line 38
    invoke-virtual {v8, v4}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    iget-object v10, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->a:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    .line 43
    .line 44
    iget-object v10, v10, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->a:Landroidx/compose/animation/FlingCalculator;

    .line 45
    .line 46
    invoke-virtual {v10, v9}, Landroidx/compose/animation/FlingCalculator;->b(F)D

    .line 47
    .line 48
    .line 49
    move-result-wide v11

    .line 50
    sget v13, Landroidx/compose/animation/FlingCalculatorKt;->a:F

    .line 51
    .line 52
    float-to-double v13, v13

    .line 53
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 54
    .line 55
    sub-double v15, v13, v15

    .line 56
    .line 57
    const/16 v17, 0x0

    .line 58
    .line 59
    iget v2, v10, Landroidx/compose/animation/FlingCalculator;->a:F

    .line 60
    .line 61
    iget v10, v10, Landroidx/compose/animation/FlingCalculator;->b:F

    .line 62
    .line 63
    mul-float/2addr v2, v10

    .line 64
    move v10, v1

    .line 65
    float-to-double v0, v2

    .line 66
    div-double/2addr v13, v15

    .line 67
    mul-double/2addr v13, v11

    .line 68
    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    .line 69
    .line 70
    .line 71
    move-result-wide v11

    .line 72
    mul-double/2addr v11, v0

    .line 73
    double-to-float v0, v11

    .line 74
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    mul-float/2addr v1, v0

    .line 79
    add-float/2addr v1, v7

    .line 80
    invoke-virtual {v5, v4, v1}, Landroidx/compose/animation/core/AnimationVector;->e(IF)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    move-object/from16 v0, p0

    .line 86
    .line 87
    move v1, v10

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/16 v17, 0x0

    .line 90
    .line 91
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v17

    .line 95
    :cond_2
    const/16 v17, 0x0

    .line 96
    .line 97
    if-eqz v5, :cond_3

    .line 98
    .line 99
    return-object v5

    .line 100
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v17

    .line 104
    :cond_4
    const/16 v17, 0x0

    .line 105
    .line 106
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v17
.end method

.method public final b(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->c:Landroidx/compose/animation/core/AnimationVector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/animation/core/AnimationVector;->c()Landroidx/compose/animation/core/AnimationVector;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->c:Landroidx/compose/animation/core/AnimationVector;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->c:Landroidx/compose/animation/core/AnimationVector;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "velocityVector"

    .line 15
    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationVector;->b()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    iget-object v4, p0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->c:Landroidx/compose/animation/core/AnimationVector;

    .line 24
    .line 25
    if-ge v3, v0, :cond_3

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-object/from16 v5, p4

    .line 33
    .line 34
    invoke-virtual {v5, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const-wide/32 v7, 0xf4240

    .line 39
    .line 40
    .line 41
    div-long v7, p1, v7

    .line 42
    .line 43
    iget-object v9, p0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->a:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    .line 44
    .line 45
    iget-object v9, v9, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->a:Landroidx/compose/animation/FlingCalculator;

    .line 46
    .line 47
    invoke-virtual {v9, v6}, Landroidx/compose/animation/FlingCalculator;->a(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iget-wide v9, v6, Landroidx/compose/animation/FlingCalculator$FlingInfo;->c:J

    .line 52
    .line 53
    const-wide/16 v11, 0x0

    .line 54
    .line 55
    cmp-long v11, v9, v11

    .line 56
    .line 57
    if-lez v11, :cond_1

    .line 58
    .line 59
    long-to-float v7, v7

    .line 60
    long-to-float v8, v9

    .line 61
    div-float/2addr v7, v8

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    .line 64
    .line 65
    :goto_1
    invoke-static {v7}, Landroidx/compose/animation/AndroidFlingSpline;->a(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    iget v7, v7, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->b:F

    .line 70
    .line 71
    iget v8, v6, Landroidx/compose/animation/FlingCalculator$FlingInfo;->a:F

    .line 72
    .line 73
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    mul-float/2addr v8, v7

    .line 78
    iget v6, v6, Landroidx/compose/animation/FlingCalculator$FlingInfo;->b:F

    .line 79
    .line 80
    mul-float/2addr v8, v6

    .line 81
    long-to-float v6, v9

    .line 82
    div-float/2addr v8, v6

    .line 83
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 84
    .line 85
    mul-float/2addr v8, v6

    .line 86
    invoke-virtual {v4, v3, v8}, Landroidx/compose/animation/core/AnimationVector;->e(IF)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v1

    .line 96
    :cond_3
    if-eqz v4, :cond_4

    .line 97
    .line 98
    return-object v4

    .line 99
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v1

    .line 103
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v1
.end method
