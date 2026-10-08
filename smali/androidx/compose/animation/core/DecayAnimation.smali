.class public final Landroidx/compose/animation/core/DecayAnimation;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/animation/core/Animation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/Animation<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

.field public final b:Landroidx/compose/animation/core/TwoWayConverter;

.field public final c:Ljava/lang/Object;

.field public final d:Landroidx/compose/animation/core/AnimationVector;

.field public final e:Landroidx/compose/animation/core/AnimationVector;

.field public final f:Landroidx/compose/animation/core/AnimationVector;

.field public final g:Ljava/lang/Object;

.field public final h:J


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 10

    .line 1
    check-cast p1, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/compose/animation/core/DecayAnimationSpecImpl;->a:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;-><init>(Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->a:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    .line 14
    .line 15
    iput-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->b:Landroidx/compose/animation/core/TwoWayConverter;

    .line 16
    .line 17
    iput-object p3, p0, Landroidx/compose/animation/core/DecayAnimation;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 20
    .line 21
    iget-object p1, p2, Landroidx/compose/animation/core/TwoWayConverterImpl;->a:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/animation/core/DecayAnimation;->d:Landroidx/compose/animation/core/AnimationVector;

    .line 30
    .line 31
    invoke-static {p4}, Landroidx/compose/animation/core/AnimationVectorsKt;->a(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    iput-object p3, p0, Landroidx/compose/animation/core/DecayAnimation;->e:Landroidx/compose/animation/core/AnimationVector;

    .line 36
    .line 37
    iget-object p2, p2, Landroidx/compose/animation/core/TwoWayConverterImpl;->b:Lkotlin/jvm/functions/Function1;

    .line 38
    .line 39
    invoke-virtual {v0, p1, p4}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->a(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iput-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->g:Ljava/lang/Object;

    .line 48
    .line 49
    iget-object p2, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->c:Landroidx/compose/animation/core/AnimationVector;

    .line 50
    .line 51
    if-nez p2, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->c()Landroidx/compose/animation/core/AnimationVector;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iput-object p2, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->c:Landroidx/compose/animation/core/AnimationVector;

    .line 58
    .line 59
    :cond_0
    iget-object p2, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->c:Landroidx/compose/animation/core/AnimationVector;

    .line 60
    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    invoke-virtual {p2}, Landroidx/compose/animation/core/AnimationVector;->b()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    const/4 p3, 0x0

    .line 68
    const-wide/16 v1, 0x0

    .line 69
    .line 70
    move v3, p3

    .line 71
    :goto_0
    if-ge v3, p2, :cond_1

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p4, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    iget-object v5, v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->a:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    .line 81
    .line 82
    iget-object v5, v5, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->a:Landroidx/compose/animation/FlingCalculator;

    .line 83
    .line 84
    invoke-virtual {v5, v4}, Landroidx/compose/animation/FlingCalculator;->b(F)D

    .line 85
    .line 86
    .line 87
    move-result-wide v4

    .line 88
    sget v6, Landroidx/compose/animation/FlingCalculatorKt;->a:F

    .line 89
    .line 90
    float-to-double v6, v6

    .line 91
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 92
    .line 93
    sub-double/2addr v6, v8

    .line 94
    div-double/2addr v4, v6

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    .line 96
    .line 97
    .line 98
    move-result-wide v4

    .line 99
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    mul-double/2addr v4, v6

    .line 105
    double-to-long v4, v4

    .line 106
    const-wide/32 v6, 0xf4240

    .line 107
    .line 108
    .line 109
    mul-long/2addr v4, v6

    .line 110
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 111
    .line 112
    .line 113
    move-result-wide v1

    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    iput-wide v1, p0, Landroidx/compose/animation/core/DecayAnimation;->h:J

    .line 118
    .line 119
    iget-object p1, p0, Landroidx/compose/animation/core/DecayAnimation;->a:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    .line 120
    .line 121
    iget-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->d:Landroidx/compose/animation/core/AnimationVector;

    .line 122
    .line 123
    check-cast p1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    .line 124
    .line 125
    invoke-virtual {p1, v1, v2, p2, p4}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->b(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Landroidx/compose/animation/core/AnimationVectorsKt;->a(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iput-object p1, p0, Landroidx/compose/animation/core/DecayAnimation;->f:Landroidx/compose/animation/core/AnimationVector;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->b()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    :goto_1
    if-ge p3, p1, :cond_2

    .line 140
    .line 141
    iget-object p2, p0, Landroidx/compose/animation/core/DecayAnimation;->f:Landroidx/compose/animation/core/AnimationVector;

    .line 142
    .line 143
    invoke-virtual {p2, p3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 144
    .line 145
    .line 146
    move-result p4

    .line 147
    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->a:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->a:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    const/4 v0, 0x0

    .line 158
    const/high16 v1, -0x80000000

    .line 159
    .line 160
    invoke-static {p4, v1, v0}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 161
    .line 162
    .line 163
    move-result p4

    .line 164
    invoke-virtual {p2, p3, p4}, Landroidx/compose/animation/core/AnimationVector;->e(IF)V

    .line 165
    .line 166
    .line 167
    add-int/lit8 p3, p3, 0x1

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_2
    return-void

    .line 171
    :cond_3
    const-string p0, "velocityVector"

    .line 172
    .line 173
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const/4 p0, 0x0

    .line 177
    throw p0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/animation/core/DecayAnimation;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->b:Landroidx/compose/animation/core/TwoWayConverter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(J)Landroidx/compose/animation/core/AnimationVector;
    .locals 2

    .line 1
    invoke-interface {p0, p1, p2}, Landroidx/compose/animation/core/Animation;->e(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/animation/core/DecayAnimation;->e:Landroidx/compose/animation/core/AnimationVector;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/animation/core/DecayAnimation;->a:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    .line 10
    .line 11
    check-cast v1, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->d:Landroidx/compose/animation/core/AnimationVector;

    .line 14
    .line 15
    invoke-virtual {v1, p1, p2, p0, v0}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->b(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->f:Landroidx/compose/animation/core/AnimationVector;

    .line 21
    .line 22
    return-object p0
.end method

.method public final f(J)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-interface/range {p0 .. p2}, Landroidx/compose/animation/core/Animation;->e(J)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_6

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/compose/animation/core/DecayAnimation;->b:Landroidx/compose/animation/core/TwoWayConverter;

    .line 10
    .line 11
    check-cast v1, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/compose/animation/core/TwoWayConverterImpl;->b:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/compose/animation/core/DecayAnimation;->a:Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;

    .line 16
    .line 17
    check-cast v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    .line 18
    .line 19
    iget-object v3, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->b:Landroidx/compose/animation/core/AnimationVector;

    .line 20
    .line 21
    iget-object v4, v0, Landroidx/compose/animation/core/DecayAnimation;->d:Landroidx/compose/animation/core/AnimationVector;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v4}, Landroidx/compose/animation/core/AnimationVector;->c()Landroidx/compose/animation/core/AnimationVector;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iput-object v3, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->b:Landroidx/compose/animation/core/AnimationVector;

    .line 30
    .line 31
    :cond_0
    iget-object v3, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->b:Landroidx/compose/animation/core/AnimationVector;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const-string v6, "valueVector"

    .line 35
    .line 36
    if-eqz v3, :cond_5

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/compose/animation/core/AnimationVector;->b()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v7, 0x0

    .line 43
    :goto_0
    iget-object v8, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->b:Landroidx/compose/animation/core/AnimationVector;

    .line 44
    .line 45
    if-ge v7, v3, :cond_3

    .line 46
    .line 47
    if-eqz v8, :cond_2

    .line 48
    .line 49
    iget-object v9, v2, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->a:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    .line 50
    .line 51
    invoke-virtual {v4, v7}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    iget-object v11, v0, Landroidx/compose/animation/core/DecayAnimation;->e:Landroidx/compose/animation/core/AnimationVector;

    .line 56
    .line 57
    invoke-virtual {v11, v7}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    const-wide/32 v12, 0xf4240

    .line 62
    .line 63
    .line 64
    div-long v12, p1, v12

    .line 65
    .line 66
    iget-object v9, v9, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->a:Landroidx/compose/animation/FlingCalculator;

    .line 67
    .line 68
    invoke-virtual {v9, v11}, Landroidx/compose/animation/FlingCalculator;->a(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    iget-wide v14, v9, Landroidx/compose/animation/FlingCalculator$FlingInfo;->c:J

    .line 73
    .line 74
    const-wide/16 v16, 0x0

    .line 75
    .line 76
    cmp-long v11, v14, v16

    .line 77
    .line 78
    if-lez v11, :cond_1

    .line 79
    .line 80
    long-to-float v11, v12

    .line 81
    long-to-float v12, v14

    .line 82
    div-float/2addr v11, v12

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const/high16 v11, 0x3f800000    # 1.0f

    .line 85
    .line 86
    :goto_1
    iget v12, v9, Landroidx/compose/animation/FlingCalculator$FlingInfo;->b:F

    .line 87
    .line 88
    iget v9, v9, Landroidx/compose/animation/FlingCalculator$FlingInfo;->a:F

    .line 89
    .line 90
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    mul-float/2addr v9, v12

    .line 95
    invoke-static {v11}, Landroidx/compose/animation/AndroidFlingSpline;->a(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    iget v11, v11, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->a:F

    .line 100
    .line 101
    mul-float/2addr v9, v11

    .line 102
    add-float/2addr v9, v10

    .line 103
    invoke-virtual {v8, v7, v9}, Landroidx/compose/animation/core/AnimationVector;->e(IF)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v7, v7, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v5

    .line 113
    :cond_3
    if-eqz v8, :cond_4

    .line 114
    .line 115
    invoke-interface {v1, v8}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0

    .line 120
    :cond_4
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v5

    .line 124
    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v5

    .line 128
    :cond_6
    iget-object v0, v0, Landroidx/compose/animation/core/DecayAnimation;->g:Ljava/lang/Object;

    .line 129
    .line 130
    return-object v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimation;->g:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method
