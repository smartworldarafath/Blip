.class public final Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;
.super Landroidx/compose/foundation/shape/CornerBasedShape;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final e:F

.field public final f:I

.field public final g:F

.field public final h:I

.field public final i:F

.field public final j:I

.field public final k:F

.field public final l:I


# direct methods
.method public constructor <init>(FIFIFIFI)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/compose/foundation/shape/CornerSizeKt;->a(F)Landroidx/compose/foundation/shape/CornerSize;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p3}, Landroidx/compose/foundation/shape/CornerSizeKt;->a(F)Landroidx/compose/foundation/shape/CornerSize;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p5}, Landroidx/compose/foundation/shape/CornerSizeKt;->a(F)Landroidx/compose/foundation/shape/CornerSize;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p7}, Landroidx/compose/foundation/shape/CornerSizeKt;->a(F)Landroidx/compose/foundation/shape/CornerSize;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/compose/foundation/shape/CornerBasedShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    .line 18
    .line 19
    .line 20
    iput p1, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->e:F

    .line 21
    .line 22
    iput p2, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->f:I

    .line 23
    .line 24
    iput p3, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->g:F

    .line 25
    .line 26
    iput p4, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->h:I

    .line 27
    .line 28
    iput p5, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->i:F

    .line 29
    .line 30
    iput p6, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->j:I

    .line 31
    .line 32
    iput p7, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->k:F

    .line 33
    .line 34
    iput p8, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->l:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final b(JFFFFLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v7, v3, v4

    add-float v7, v7, p5

    add-float v7, v7, p6

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    const-wide/16 v9, 0x0

    if-nez v7, :cond_0

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 2
    invoke-static {v9, v10, v1, v2}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    return-object v0

    .line 4
    :cond_0
    iget v7, v0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->f:I

    iget v11, v0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->h:I

    add-int v12, v7, v11

    iget v13, v0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->j:I

    add-int/2addr v12, v13

    iget v0, v0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->l:I

    add-int/2addr v12, v0

    if-nez v12, :cond_1

    .line 5
    new-instance v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 6
    invoke-static {v9, v10, v1, v2}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 7
    invoke-static {v3}, Landroidx/compose/ui/geometry/CornerRadiusKt;->a(F)J

    move-result-wide v7

    .line 8
    invoke-static {v4}, Landroidx/compose/ui/geometry/CornerRadiusKt;->a(F)J

    move-result-wide v9

    .line 9
    invoke-static/range {p5 .. p5}, Landroidx/compose/ui/geometry/CornerRadiusKt;->a(F)J

    move-result-wide v11

    .line 10
    invoke-static/range {p6 .. p6}, Landroidx/compose/ui/geometry/CornerRadiusKt;->a(F)J

    move-result-wide v13

    .line 11
    new-instance v2, Landroidx/compose/ui/geometry/RoundRect;

    .line 12
    iget v3, v1, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 13
    iget v4, v1, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 14
    iget v5, v1, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 15
    iget v6, v1, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 16
    invoke-direct/range {v2 .. v14}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJ)V

    .line 17
    invoke-direct {v0, v2}, Landroidx/compose/ui/graphics/Outline$Rounded;-><init>(Landroidx/compose/ui/geometry/RoundRect;)V

    return-object v0

    .line 18
    :cond_1
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v14

    iget-object v9, v14, Landroidx/compose/ui/graphics/AndroidPath;->a:Landroid/graphics/Path;

    .line 19
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v10

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/high16 v21, 0x40000000    # 2.0f

    div-float v10, v10, v21

    .line 20
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lracra/compose/smooth_corner_rect_library/SmoothCorner;

    if-nez v15, :cond_2

    new-instance v15, Lracra/compose/smooth_corner_rect_library/SmoothCorner;

    invoke-direct {v15, v3, v10, v7}, Lracra/compose/smooth_corner_rect_library/SmoothCorner;-><init>(FFI)V

    .line 22
    :cond_2
    iget-object v3, v15, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->e:Lracra/compose/smooth_corner_rect_library/Arc;

    iget-object v7, v15, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->c:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    iget-object v1, v15, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->b:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    iget-object v2, v15, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->a:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    move-object/from16 p0, v14

    iget v14, v2, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    move/from16 v22, v0

    .line 23
    iget v0, v2, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    .line 24
    invoke-virtual {v9, v14, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 25
    iget v0, v1, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    .line 26
    iget v14, v1, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    move/from16 v16, v0

    .line 27
    iget v0, v7, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    move/from16 v17, v0

    .line 28
    iget v0, v7, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    .line 29
    iget-object v15, v15, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->d:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    move/from16 v18, v0

    .line 30
    iget v0, v15, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    .line 31
    iget v15, v15, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    move/from16 v19, v0

    move/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v14

    move-object/from16 v14, p0

    .line 32
    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/AndroidPath;->e(FFFFFF)V

    .line 33
    iget v0, v3, Lracra/compose/smooth_corner_rect_library/Arc;->a:F

    mul-float v0, v0, v21

    .line 34
    new-instance v15, Landroidx/compose/ui/geometry/Rect;

    move-object/from16 p0, v9

    const/4 v9, 0x0

    invoke-direct {v15, v9, v9, v0, v0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    const-wide v16, 0x4066800000000000L    # 180.0

    .line 35
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 36
    iget v0, v3, Lracra/compose/smooth_corner_rect_library/Arc;->b:F

    float-to-double v5, v0

    add-double v5, v16, v5

    double-to-float v0, v5

    .line 37
    iget v3, v3, Lracra/compose/smooth_corner_rect_library/Arc;->c:F

    .line 38
    invoke-interface {v14, v15, v0, v3}, Landroidx/compose/ui/graphics/Path;->a(Landroidx/compose/ui/geometry/Rect;FF)V

    .line 39
    iget v15, v7, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    .line 40
    iget v0, v7, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    .line 41
    iget v3, v1, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    .line 42
    iget v1, v1, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    .line 43
    iget v5, v2, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    .line 44
    iget v2, v2, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v20, v2

    move/from16 v17, v3

    move/from16 v19, v5

    .line 45
    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/AndroidPath;->e(FFFFFF)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;

    if-nez v0, :cond_3

    new-instance v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;

    invoke-direct {v0, v4, v10, v11}, Lracra/compose/smooth_corner_rect_library/SmoothCorner;-><init>(FFI)V

    .line 47
    :cond_3
    iget-object v1, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->c:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    iget-object v2, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->b:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    iget-object v3, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->a:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    iget-object v4, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->e:Lracra/compose/smooth_corner_rect_library/Arc;

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v5

    .line 48
    iget v6, v3, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    sub-float/2addr v5, v6

    .line 49
    iget v6, v3, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    .line 50
    invoke-virtual {v14, v5, v6}, Landroidx/compose/ui/graphics/AndroidPath;->g(FF)V

    .line 51
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v5

    .line 52
    iget v6, v2, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    sub-float v15, v5, v6

    .line 53
    iget v5, v2, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    .line 54
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v6

    .line 55
    iget v7, v1, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    sub-float v17, v6, v7

    .line 56
    iget v6, v1, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    .line 57
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v7

    .line 58
    iget-object v0, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->d:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    .line 59
    iget v9, v0, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    sub-float v19, v7, v9

    .line 60
    iget v0, v0, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    move/from16 v20, v0

    move/from16 v16, v5

    move/from16 v18, v6

    .line 61
    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/AndroidPath;->e(FFFFFF)V

    .line 62
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v0

    .line 63
    iget v5, v4, Lracra/compose/smooth_corner_rect_library/Arc;->a:F

    mul-float v5, v5, v21

    sub-float/2addr v0, v5

    .line 64
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v5

    .line 65
    iget v6, v4, Lracra/compose/smooth_corner_rect_library/Arc;->a:F

    mul-float v6, v6, v21

    .line 66
    new-instance v7, Landroidx/compose/ui/geometry/Rect;

    const/4 v9, 0x0

    invoke-direct {v7, v0, v9, v5, v6}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    const-wide v5, 0x4070e00000000000L    # 270.0

    .line 67
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 68
    iget v0, v4, Lracra/compose/smooth_corner_rect_library/Arc;->b:F

    move-wide/from16 p3, v5

    float-to-double v5, v0

    add-double v5, p3, v5

    double-to-float v0, v5

    .line 69
    iget v4, v4, Lracra/compose/smooth_corner_rect_library/Arc;->c:F

    .line 70
    invoke-interface {v14, v7, v0, v4}, Landroidx/compose/ui/graphics/Path;->a(Landroidx/compose/ui/geometry/Rect;FF)V

    .line 71
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v0

    .line 72
    iget v4, v1, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    sub-float v15, v0, v4

    .line 73
    iget v0, v1, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    .line 74
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v1

    .line 75
    iget v4, v2, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    sub-float v17, v1, v4

    .line 76
    iget v1, v2, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    .line 77
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v2

    .line 78
    iget v4, v3, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    sub-float v19, v2, v4

    .line 79
    iget v2, v3, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v20, v2

    .line 80
    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/AndroidPath;->e(FFFFFF)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v5, p5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;

    if-nez v0, :cond_4

    new-instance v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;

    invoke-direct {v0, v5, v10, v13}, Lracra/compose/smooth_corner_rect_library/SmoothCorner;-><init>(FFI)V

    .line 82
    :cond_4
    iget-object v1, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->d:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    iget-object v2, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->e:Lracra/compose/smooth_corner_rect_library/Arc;

    iget-object v3, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->c:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    iget-object v4, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->b:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    iget-object v0, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->a:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v5

    .line 83
    iget v6, v0, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    iget v7, v0, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    sub-float/2addr v5, v6

    .line 84
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v6

    sub-float/2addr v6, v7

    .line 85
    invoke-virtual {v14, v5, v6}, Landroidx/compose/ui/graphics/AndroidPath;->g(FF)V

    .line 86
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v5

    .line 87
    iget v6, v4, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    iget v9, v4, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    sub-float/2addr v5, v6

    .line 88
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v6

    sub-float v11, v6, v9

    .line 89
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v6

    .line 90
    iget v13, v3, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    iget v15, v3, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    sub-float/2addr v6, v13

    .line 91
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v13

    sub-float/2addr v13, v15

    .line 92
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v16

    move/from16 p3, v5

    .line 93
    iget v5, v1, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    sub-float v16, v16, v5

    .line 94
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v5

    .line 95
    iget v1, v1, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    sub-float/2addr v5, v1

    move-object v1, v12

    move v12, v6

    move-object v6, v1

    move/from16 v1, v16

    move/from16 v16, v9

    move-object v9, v14

    move v14, v1

    move-object/from16 v1, p0

    move/from16 v17, v15

    move v15, v5

    move v5, v10

    move/from16 v10, p3

    .line 96
    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/AndroidPath;->e(FFFFFF)V

    move-object v14, v9

    .line 97
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v9

    .line 98
    iget v10, v2, Lracra/compose/smooth_corner_rect_library/Arc;->a:F

    mul-float v10, v10, v21

    sub-float/2addr v9, v10

    .line 99
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v10

    .line 100
    iget v11, v2, Lracra/compose/smooth_corner_rect_library/Arc;->a:F

    mul-float v11, v11, v21

    sub-float/2addr v10, v11

    .line 101
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v11

    .line 102
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v12

    .line 103
    new-instance v13, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v13, v10, v9, v11, v12}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    const-wide/16 v9, 0x0

    .line 104
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 105
    iget v11, v2, Lracra/compose/smooth_corner_rect_library/Arc;->b:F

    float-to-double v11, v11

    add-double/2addr v9, v11

    double-to-float v9, v9

    .line 106
    iget v2, v2, Lracra/compose/smooth_corner_rect_library/Arc;->c:F

    .line 107
    invoke-interface {v14, v13, v9, v2}, Landroidx/compose/ui/graphics/Path;->a(Landroidx/compose/ui/geometry/Rect;FF)V

    .line 108
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v2

    sub-float v10, v2, v17

    .line 109
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v2

    .line 110
    iget v3, v3, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    sub-float v11, v2, v3

    .line 111
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v2

    sub-float v12, v2, v16

    .line 112
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v2

    .line 113
    iget v3, v4, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    sub-float v13, v2, v3

    .line 114
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->d(J)F

    move-result v2

    sub-float/2addr v2, v7

    .line 115
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v3

    .line 116
    iget v0, v0, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    sub-float v15, v3, v0

    move-object v9, v14

    move v14, v2

    .line 117
    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/AndroidPath;->e(FFFFFF)V

    move-object v14, v9

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v2, p6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;

    if-nez v0, :cond_5

    new-instance v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;

    invoke-direct {v0, v2, v5, v3}, Lracra/compose/smooth_corner_rect_library/SmoothCorner;-><init>(FFI)V

    .line 119
    :cond_5
    iget-object v2, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->e:Lracra/compose/smooth_corner_rect_library/Arc;

    iget-object v3, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->d:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    iget-object v4, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->c:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    iget-object v5, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->b:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    iget-object v0, v0, Lracra/compose/smooth_corner_rect_library/SmoothCorner;->a:Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;

    iget v6, v0, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    .line 120
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v7

    .line 121
    iget v8, v0, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    sub-float/2addr v7, v8

    .line 122
    invoke-virtual {v14, v6, v7}, Landroidx/compose/ui/graphics/AndroidPath;->g(FF)V

    .line 123
    iget v10, v5, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    .line 124
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v6

    .line 125
    iget v7, v5, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    sub-float v11, v6, v7

    .line 126
    iget v12, v4, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    .line 127
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v6

    .line 128
    iget v7, v4, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    sub-float v13, v6, v7

    move-object v9, v14

    .line 129
    iget v14, v3, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    .line 130
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v6

    .line 131
    iget v3, v3, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    sub-float v15, v6, v3

    .line 132
    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/AndroidPath;->e(FFFFFF)V

    move-object v14, v9

    .line 133
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v3

    .line 134
    iget v6, v2, Lracra/compose/smooth_corner_rect_library/Arc;->a:F

    mul-float v6, v6, v21

    sub-float/2addr v3, v6

    .line 135
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v7

    .line 136
    new-instance v8, Landroidx/compose/ui/geometry/Rect;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v3, v6, v7}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    const-wide v6, 0x4056800000000000L    # 90.0

    .line 137
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 138
    iget v3, v2, Lracra/compose/smooth_corner_rect_library/Arc;->b:F

    float-to-double v9, v3

    add-double/2addr v6, v9

    double-to-float v3, v6

    .line 139
    iget v2, v2, Lracra/compose/smooth_corner_rect_library/Arc;->c:F

    .line 140
    invoke-interface {v14, v8, v3, v2}, Landroidx/compose/ui/graphics/Path;->a(Landroidx/compose/ui/geometry/Rect;FF)V

    .line 141
    iget v2, v4, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    .line 142
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v3

    .line 143
    iget v4, v4, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    sub-float/2addr v3, v4

    .line 144
    iget v4, v5, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    .line 145
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v6

    .line 146
    iget v5, v5, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    sub-float/2addr v6, v5

    .line 147
    iget v5, v0, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->b:F

    .line 148
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Size;->b(J)F

    move-result v7

    .line 149
    iget v0, v0, Lracra/compose/smooth_corner_rect_library/PointRelativeToVertex;->a:F

    sub-float/2addr v7, v0

    move/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p5, v5

    move/from16 p4, v6

    move/from16 p6, v7

    move-object/from16 p0, v14

    .line 150
    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/graphics/AndroidPath;->e(FFFFFF)V

    .line 151
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 152
    new-instance v0, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-direct {v0, v14}, Landroidx/compose/ui/graphics/Outline$Generic;-><init>(Landroidx/compose/ui/graphics/Path;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;

    .line 10
    .line 11
    iget v0, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->e:F

    .line 12
    .line 13
    iget v1, p1, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->e:F

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget v0, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->f:I

    .line 23
    .line 24
    iget v1, p1, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->f:I

    .line 25
    .line 26
    if-eq v0, v1, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget v0, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->g:F

    .line 30
    .line 31
    iget v1, p1, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->g:F

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget v0, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->h:I

    .line 41
    .line 42
    iget v1, p1, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->h:I

    .line 43
    .line 44
    if-eq v0, v1, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget v0, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->i:F

    .line 48
    .line 49
    iget v1, p1, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->i:F

    .line 50
    .line 51
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_6

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    iget v0, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->j:I

    .line 59
    .line 60
    iget v1, p1, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->j:I

    .line 61
    .line 62
    if-eq v0, v1, :cond_7

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    iget v0, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->k:F

    .line 66
    .line 67
    iget v1, p1, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->k:F

    .line 68
    .line 69
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_8

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_8
    iget p0, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->l:I

    .line 77
    .line 78
    iget p1, p1, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->l:I

    .line 79
    .line 80
    if-eq p0, p1, :cond_9

    .line 81
    .line 82
    :goto_0
    const/4 p0, 0x0

    .line 83
    return p0

    .line 84
    :cond_9
    :goto_1
    const/4 p0, 0x1

    .line 85
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->e:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget v2, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->f:I

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Lq;->b(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->g:F

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v2, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->h:I

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, Lq;->b(III)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v2, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->i:F

    .line 29
    .line 30
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget v2, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->j:I

    .line 35
    .line 36
    invoke-static {v2, v0, v1}, Lq;->b(III)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget v2, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->k:F

    .line 41
    .line 42
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget p0, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->l:I

    .line 47
    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    add-int/2addr p0, v0

    .line 53
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AbsoluteSmoothCornerShape(cornerRadiusTL="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->e:F

    .line 9
    .line 10
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", smoothnessAsPercentTL="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->f:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", cornerRadiusTR="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->g:F

    .line 33
    .line 34
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", smoothnessAsPercentTR="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->h:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", cornerRadiusBR="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->i:F

    .line 57
    .line 58
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", smoothnessAsPercentBR="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v1, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->j:I

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ", cornerRadiusBL="

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget v1, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->k:F

    .line 81
    .line 82
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, ", smoothnessAsPercentBL="

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget p0, p0, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;->l:I

    .line 95
    .line 96
    const/16 v1, 0x29

    .line 97
    .line 98
    invoke-static {v0, p0, v1}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method
