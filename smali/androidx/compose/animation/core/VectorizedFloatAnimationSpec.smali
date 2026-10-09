.class public final Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/compose/animation/core/Animations;

.field public b:Landroidx/compose/animation/core/AnimationVector;

.field public c:Landroidx/compose/animation/core/AnimationVector;

.field public d:Landroidx/compose/animation/core/AnimationVector;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Animations;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->a:Landroidx/compose/animation/core/Animations;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/FloatAnimationSpec;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec$1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec$1;-><init>(Landroidx/compose/animation/core/FloatAnimationSpec;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;-><init>(Landroidx/compose/animation/core/Animations;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v0, :cond_0

    .line 9
    .line 10
    iget-object v4, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->a:Landroidx/compose/animation/core/Animations;

    .line 11
    .line 12
    invoke-interface {v4, v3}, Landroidx/compose/animation/core/Animations;->get(I)Landroidx/compose/animation/core/FloatAnimationSpec;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {p1, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-virtual {p2, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    invoke-virtual {p3, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-interface {v4, v5, v6, v7}, Landroidx/compose/animation/core/FloatAnimationSpec;->c(FFF)J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-wide v1
.end method

.method public final c(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->c:Landroidx/compose/animation/core/AnimationVector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/animation/core/AnimationVector;->c()Landroidx/compose/animation/core/AnimationVector;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->c:Landroidx/compose/animation/core/AnimationVector;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->c:Landroidx/compose/animation/core/AnimationVector;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "velocityVector"

    .line 15
    .line 16
    if-eqz v0, :cond_4

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
    iget-object v4, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->c:Landroidx/compose/animation/core/AnimationVector;

    .line 24
    .line 25
    if-ge v3, v0, :cond_2

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget-object v5, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->a:Landroidx/compose/animation/core/Animations;

    .line 30
    .line 31
    invoke-interface {v5, v3}, Landroidx/compose/animation/core/Animations;->get(I)Landroidx/compose/animation/core/FloatAnimationSpec;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    move-object/from16 v5, p3

    .line 36
    .line 37
    invoke-virtual {v5, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    move-object/from16 v12, p4

    .line 42
    .line 43
    invoke-virtual {v12, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    move-object/from16 v13, p5

    .line 48
    .line 49
    invoke-virtual {v13, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    move-wide v7, p1

    .line 54
    invoke-interface/range {v6 .. v11}, Landroidx/compose/animation/core/FloatAnimationSpec;->b(JFFF)F

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {v4, v3, v6}, Landroidx/compose/animation/core/AnimationVector;->e(IF)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1

    .line 68
    :cond_2
    if-eqz v4, :cond_3

    .line 69
    .line 70
    return-object v4

    .line 71
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v1
.end method

.method public final e(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->d:Landroidx/compose/animation/core/AnimationVector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationVector;->c()Landroidx/compose/animation/core/AnimationVector;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->d:Landroidx/compose/animation/core/AnimationVector;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->d:Landroidx/compose/animation/core/AnimationVector;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "endVelocityVector"

    .line 15
    .line 16
    if-eqz v0, :cond_4

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
    iget-object v4, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->d:Landroidx/compose/animation/core/AnimationVector;

    .line 24
    .line 25
    if-ge v3, v0, :cond_2

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget-object v5, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->a:Landroidx/compose/animation/core/Animations;

    .line 30
    .line 31
    invoke-interface {v5, v3}, Landroidx/compose/animation/core/Animations;->get(I)Landroidx/compose/animation/core/FloatAnimationSpec;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {p1, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual {p2, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-virtual {p3, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    invoke-interface {v5, v6, v7, v8}, Landroidx/compose/animation/core/FloatAnimationSpec;->d(FFF)F

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-virtual {v4, v3, v5}, Landroidx/compose/animation/core/AnimationVector;->e(IF)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :cond_2
    if-eqz v4, :cond_3

    .line 62
    .line 63
    return-object v4

    .line 64
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1

    .line 68
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1
.end method

.method public final f(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->b:Landroidx/compose/animation/core/AnimationVector;

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
    iput-object v0, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->b:Landroidx/compose/animation/core/AnimationVector;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->b:Landroidx/compose/animation/core/AnimationVector;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "valueVector"

    .line 15
    .line 16
    if-eqz v0, :cond_4

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
    iget-object v4, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->b:Landroidx/compose/animation/core/AnimationVector;

    .line 24
    .line 25
    if-ge v3, v0, :cond_2

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget-object v5, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;->a:Landroidx/compose/animation/core/Animations;

    .line 30
    .line 31
    invoke-interface {v5, v3}, Landroidx/compose/animation/core/Animations;->get(I)Landroidx/compose/animation/core/FloatAnimationSpec;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    move-object/from16 v5, p3

    .line 36
    .line 37
    invoke-virtual {v5, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    move-object/from16 v12, p4

    .line 42
    .line 43
    invoke-virtual {v12, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    move-object/from16 v13, p5

    .line 48
    .line 49
    invoke-virtual {v13, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    move-wide v7, p1

    .line 54
    invoke-interface/range {v6 .. v11}, Landroidx/compose/animation/core/FloatAnimationSpec;->e(JFFF)F

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {v4, v3, v6}, Landroidx/compose/animation/core/AnimationVector;->e(IF)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1

    .line 68
    :cond_2
    if-eqz v4, :cond_3

    .line 69
    .line 70
    return-object v4

    .line 71
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v1
.end method
