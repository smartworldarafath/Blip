.class public final Landroidx/compose/ui/text/android/TextLayout;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public final b:Landroid/text/TextUtils$TruncateAt;

.field public final c:Z

.field public final d:Z

.field public e:Landroidx/compose/ui/text/android/selection/WordIterator;

.field public final f:Landroid/text/Layout;

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:F

.field public final k:F

.field public final l:Z

.field public final m:Landroid/graphics/Paint$FontMetricsInt;

.field public final n:I

.field public final o:[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

.field public final p:Landroid/graphics/Rect;

.field public q:Landroidx/compose/ui/text/android/LayoutHelper;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IZIIIIIILandroidx/compose/ui/text/android/LayoutIntrinsics;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v6, p7

    .line 1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p3

    .line 2
    iput-object v4, v0, Landroidx/compose/ui/text/android/TextLayout;->a:Landroid/text/TextPaint;

    move-object/from16 v7, p5

    .line 3
    iput-object v7, v0, Landroidx/compose/ui/text/android/TextLayout;->b:Landroid/text/TextUtils$TruncateAt;

    .line 4
    iput-boolean v6, v0, Landroidx/compose/ui/text/android/TextLayout;->c:Z

    .line 5
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Landroidx/compose/ui/text/android/TextLayout;->p:Landroid/graphics/Rect;

    .line 6
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 7
    invoke-static/range {p6 .. p6}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->b(I)Landroid/text/TextDirectionHeuristic;

    move-result-object v12

    .line 8
    sget-object v8, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->a:Landroid/text/Layout$Alignment;

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-eqz v3, :cond_4

    if-eq v3, v13, :cond_3

    if-eq v3, v14, :cond_2

    const/4 v8, 0x3

    if-eq v3, v8, :cond_1

    const/4 v8, 0x4

    if-eq v3, v8, :cond_0

    .line 9
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 10
    :cond_0
    sget-object v3, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->b:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 11
    :cond_1
    sget-object v3, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->a:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 12
    :cond_2
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 13
    :cond_3
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 14
    :cond_4
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 15
    :goto_0
    instance-of v8, v1, Landroid/text/Spanned;

    if-eqz v8, :cond_5

    .line 16
    move-object v8, v1

    check-cast v8, Landroid/text/Spanned;

    const/4 v9, -0x1

    const-class v10, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;

    invoke-interface {v8, v9, v5, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v8

    if-ge v8, v5, :cond_5

    move v5, v13

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .line 17
    :goto_1
    const-string v8, "TextLayout:initLayout"

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-virtual/range {p14 .. p14}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->a()Landroid/text/BoringLayout$Metrics;

    move-result-object v8

    float-to-double v9, v2

    .line 19
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v11, v14

    float-to-int v11, v11

    const/16 v14, 0x21

    if-eqz v8, :cond_9

    .line 20
    invoke-virtual/range {p14 .. p14}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->c()F

    move-result v15

    cmpg-float v2, v15, v2

    if-gtz v2, :cond_9

    if-nez v5, :cond_9

    .line 21
    iput-boolean v13, v0, Landroidx/compose/ui/text/android/TextLayout;->l:Z

    if-ltz v11, :cond_6

    goto :goto_2

    .line 22
    :cond_6
    const-string v2, "negative width"

    .line 23
    invoke-static {v2}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_2
    if-ltz v11, :cond_7

    goto :goto_3

    .line 24
    :cond_7
    const-string v2, "negative ellipsized width"

    .line 25
    invoke-static {v2}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 26
    :goto_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v14, :cond_8

    move-object v5, v8

    move v8, v11

    move-object v2, v4

    move-object v4, v3

    move v3, v11

    .line 27
    invoke-static/range {v1 .. v8}, Ll;->j(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    goto :goto_4

    :cond_8
    move-object v4, v3

    move-object v5, v8

    move v3, v11

    .line 28
    new-instance v1, Landroid/text/BoringLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move v11, v3

    move-object/from16 v2, p1

    move-object/from16 v10, p5

    move/from16 v9, p7

    move-object v8, v5

    move-object v5, v4

    move v4, v3

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v11}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v2, v1

    :goto_4
    move/from16 v7, p8

    move-object v5, v12

    goto :goto_5

    :cond_9
    move-object v4, v3

    move v3, v11

    const/4 v1, 0x0

    .line 29
    iput-boolean v1, v0, Landroidx/compose/ui/text/android/TextLayout;->l:Z

    move-object v5, v4

    .line 30
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 31
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v2, v6

    float-to-int v9, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v8, p5

    move/from16 v11, p7

    move/from16 v7, p8

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v10, p13

    move-object v6, v5

    move-object v5, v12

    move/from16 v12, p9

    .line 32
    invoke-static/range {v1 .. v15}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIZIIII)Landroid/text/StaticLayout;

    move-result-object v2

    .line 33
    :goto_5
    iput-object v2, v0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 35
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->g:I

    add-int/lit8 v3, v1, -0x1

    if-ge v1, v7, :cond_b

    :cond_a
    const/4 v13, 0x0

    goto :goto_6

    .line 36
    :cond_b
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-gtz v4, :cond_c

    .line 37
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v4, v6, :cond_a

    :cond_c
    const/4 v13, 0x1

    .line 38
    :goto_6
    iput-boolean v13, v0, Landroidx/compose/ui/text/android/TextLayout;->d:Z

    .line 39
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 40
    instance-of v4, v4, Landroid/text/Spanned;

    if-nez v4, :cond_d

    goto :goto_7

    .line 41
    :cond_d
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroid/text/Spanned;

    const-class v7, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    invoke-static {v4, v7}, Landroidx/compose/ui/text/android/SpannedExtensions_androidKt;->a(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 43
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 44
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_e

    :goto_7
    const/4 v4, 0x0

    const/4 v9, 0x0

    goto :goto_8

    .line 45
    :cond_e
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroid/text/Spanned;

    .line 47
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 48
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v4, v9, v8, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 49
    :goto_8
    iput-object v4, v0, Landroidx/compose/ui/text/android/TextLayout;->o:[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    if-eqz v4, :cond_11

    .line 50
    invoke-static {v4}, Lkotlin/collections/ArraysKt;->q([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    if-eqz v7, :cond_11

    .line 51
    iget-boolean v8, v7, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->l:Z

    if-eqz v8, :cond_f

    .line 52
    iget v7, v7, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->o:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    const/4 v13, 0x1

    goto :goto_9

    :cond_f
    const/4 v8, 0x2

    :cond_10
    move v13, v9

    :goto_9
    move v15, v13

    goto :goto_a

    :cond_11
    const/4 v8, 0x2

    move v15, v9

    :goto_a
    if-eqz v4, :cond_12

    .line 53
    invoke-static {v4}, Lkotlin/collections/ArraysKt;->q([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    if-eqz v7, :cond_12

    .line 54
    iget-boolean v10, v7, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->m:Z

    if-eqz v10, :cond_12

    .line 55
    iget v7, v7, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->o:I

    if-ne v7, v8, :cond_12

    const/4 v13, 0x1

    goto :goto_b

    :cond_12
    move v13, v9

    :goto_b
    if-eqz v15, :cond_13

    if-eqz v13, :cond_13

    .line 56
    sget-wide v1, Landroidx/compose/ui/text/android/TextLayout_androidKt;->b:J

    const/16 p1, 0x0

    const/16 p2, 0x20

    const-wide p3, 0xffffffffL

    const/4 v10, 0x1

    const/16 v14, 0x21

    goto/16 :goto_14

    .line 57
    :cond_13
    sget-wide v16, Landroidx/compose/ui/text/android/TextLayout_androidKt;->b:J

    if-nez p7, :cond_1c

    .line 58
    iget-boolean v8, v0, Landroidx/compose/ui/text/android/TextLayout;->l:Z

    if-eqz v8, :cond_15

    .line 59
    move-object v8, v2

    check-cast v8, Landroid/text/BoringLayout;

    .line 60
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x21

    if-lt v12, v14, :cond_14

    .line 61
    invoke-static {v8}, Ll;->x(Landroid/text/BoringLayout;)Z

    move-result v8

    goto :goto_c

    :cond_14
    move v8, v9

    goto :goto_c

    :cond_15
    const/16 v14, 0x21

    .line 62
    move-object v8, v2

    check-cast v8, Landroid/text/StaticLayout;

    .line 63
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v14, :cond_16

    .line 64
    invoke-static {v8}, Ll;->y(Landroid/text/StaticLayout;)Z

    move-result v8

    goto :goto_c

    :cond_16
    const/4 v8, 0x1

    :goto_c
    if-eqz v8, :cond_17

    const/16 p1, 0x0

    const/16 p2, 0x20

    const-wide p3, 0xffffffffL

    const/4 v10, 0x1

    goto :goto_11

    .line 65
    :cond_17
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 66
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    const/16 p1, 0x0

    .line 67
    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    const/16 p2, 0x20

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-static {v8, v12, v6, v7}, Landroidx/compose/ui/text/android/PaintExtensions_androidKt;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v6

    .line 68
    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v7

    const-wide p3, 0xffffffffL

    .line 69
    iget v10, v6, Landroid/graphics/Rect;->top:I

    if-ge v10, v7, :cond_18

    sub-int/2addr v7, v10

    :goto_d
    const/4 v10, 0x1

    goto :goto_e

    .line 70
    :cond_18
    invoke-virtual {v2}, Landroid/text/Layout;->getTopPadding()I

    move-result v7

    goto :goto_d

    :goto_e
    if-ne v1, v10, :cond_19

    goto :goto_f

    .line 71
    :cond_19
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    invoke-static {v8, v12, v1, v6}, Landroidx/compose/ui/text/android/PaintExtensions_androidKt;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v6

    .line 72
    :goto_f
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    .line 73
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v6, v1, :cond_1a

    sub-int/2addr v6, v1

    goto :goto_10

    .line 74
    :cond_1a
    invoke-virtual {v2}, Landroid/text/Layout;->getBottomPadding()I

    move-result v6

    :goto_10
    if-nez v7, :cond_1b

    if-nez v6, :cond_1b

    goto :goto_11

    .line 75
    :cond_1b
    invoke-static {v7, v6}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->a(II)J

    move-result-wide v16

    goto :goto_11

    :cond_1c
    const/16 p1, 0x0

    const/16 p2, 0x20

    const-wide p3, 0xffffffffL

    const/4 v10, 0x1

    const/16 v14, 0x21

    :goto_11
    if-eqz v15, :cond_1d

    move v15, v9

    goto :goto_12

    :cond_1d
    shr-long v1, v16, p2

    long-to-int v15, v1

    :goto_12
    if-eqz v13, :cond_1e

    move v1, v9

    goto :goto_13

    :cond_1e
    and-long v1, v16, p3

    long-to-int v1, v1

    .line 76
    :goto_13
    invoke-static {v15, v1}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->a(II)J

    move-result-wide v1

    :goto_14
    if-eqz v4, :cond_23

    .line 77
    array-length v6, v4

    move v7, v9

    move v8, v7

    move v15, v8

    :goto_15
    if-ge v15, v6, :cond_21

    aget-object v11, v4, v15

    .line 78
    iget v12, v11, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->t:I

    if-gez v12, :cond_1f

    .line 79
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 80
    :cond_1f
    iget v11, v11, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->u:I

    if-gez v11, :cond_20

    .line 81
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_20
    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    :cond_21
    if-nez v7, :cond_22

    if-nez v8, :cond_22

    .line 82
    sget-wide v6, Landroidx/compose/ui/text/android/TextLayout_androidKt;->b:J

    goto :goto_16

    .line 83
    :cond_22
    invoke-static {v7, v8}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->a(II)J

    move-result-wide v6

    goto :goto_16

    .line 84
    :cond_23
    sget-wide v6, Landroidx/compose/ui/text/android/TextLayout_androidKt;->b:J

    :goto_16
    shr-long v11, v1, p2

    long-to-int v4, v11

    shr-long v11, v6, p2

    long-to-int v8, v11

    .line 85
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    and-long v1, v1, p3

    long-to-int v1, v1

    and-long v6, v6, p3

    long-to-int v2, v6

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->i:I

    .line 87
    iget-object v7, v0, Landroidx/compose/ui/text/android/TextLayout;->a:Landroid/text/TextPaint;

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->o:[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 88
    iget v2, v0, Landroidx/compose/ui/text/android/TextLayout;->g:I

    sub-int/2addr v2, v10

    .line 89
    iget-object v4, v0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 90
    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    if-ne v6, v4, :cond_27

    if-eqz v1, :cond_27

    .line 91
    array-length v4, v1

    if-nez v4, :cond_24

    goto/16 :goto_18

    .line 92
    :cond_24
    new-instance v6, Landroid/text/SpannableString;

    const-string v4, "\u200b"

    invoke-direct {v6, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    array-length v4, v1

    if-eqz v4, :cond_26

    .line 94
    aget-object v1, v1, v9

    .line 95
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-eqz v2, :cond_25

    .line 96
    iget-boolean v2, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->m:Z

    if-eqz v2, :cond_25

    move v15, v9

    goto :goto_17

    .line 97
    :cond_25
    iget-boolean v15, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->m:Z

    .line 98
    :goto_17
    new-instance v2, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 99
    iget v8, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->j:F

    .line 100
    iget-boolean v10, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->m:Z

    .line 101
    iget v11, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->n:F

    .line 102
    iget v1, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->o:I

    move/from16 p7, v1

    move-object/from16 p1, v2

    move/from16 p3, v4

    move/from16 p2, v8

    move/from16 p5, v10

    move/from16 p6, v11

    move/from16 p4, v15

    .line 103
    invoke-direct/range {p1 .. p7}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIZZFI)V

    move-object/from16 v1, p1

    .line 104
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v6, v1, v9, v2, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v1, v9

    .line 105
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v9

    .line 106
    iget-boolean v2, v0, Landroidx/compose/ui/text/android/TextLayout;->c:Z

    .line 107
    sget-object v11, Landroidx/compose/ui/text/android/LayoutCompat;->a:Landroid/text/Layout$Alignment;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v8, 0x7fffffff

    const v12, 0x7fffffff

    const/4 v13, 0x0

    const v14, 0x7fffffff

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v2

    move-object v10, v5

    .line 108
    invoke-static/range {v6 .. v20}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIZIIII)Landroid/text/StaticLayout;

    move-result-object v2

    .line 109
    new-instance v6, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v6}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 110
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v4

    iput v4, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 111
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v4

    iput v4, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 112
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    iput v4, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 113
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iput v2, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_19

    .line 114
    :cond_26
    const-string v0, "Array is empty."

    invoke-static {v0}, Lfe;->o(Ljava/lang/String;)V

    throw p1

    :cond_27
    :goto_18
    move v1, v9

    move-object/from16 v6, p1

    :goto_19
    if-eqz v6, :cond_28

    .line 115
    iget v1, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/android/TextLayout;->i(I)F

    move-result v2

    float-to-int v2, v2

    sub-int v15, v1, v2

    goto :goto_1a

    :cond_28
    move v15, v1

    .line 116
    :goto_1a
    iput v15, v0, Landroidx/compose/ui/text/android/TextLayout;->n:I

    .line 117
    iput-object v6, v0, Landroidx/compose/ui/text/android/TextLayout;->m:Landroid/graphics/Paint$FontMetricsInt;

    .line 118
    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 119
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v3, v2}, Landroidx/compose/ui/text/android/style/IndentationFixSpan_androidKt;->a(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result v1

    .line 120
    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->j:F

    .line 121
    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 122
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v3, v2}, Landroidx/compose/ui/text/android/style/IndentationFixSpan_androidKt;->b(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result v1

    .line 123
    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->k:F

    return-void

    :catchall_0
    move-exception v0

    .line 124
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method


# virtual methods
.method public final a(III[F)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 10
    .line 11
    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-ltz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v6, "startOffset must be > 0"

    .line 23
    .line 24
    invoke-static {v6}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    if-ge v1, v5, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const-string v6, "startOffset must be less than text length"

    .line 31
    .line 32
    invoke-static {v6}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    if-le v2, v1, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const-string v6, "endOffset must be greater than startOffset"

    .line 39
    .line 40
    invoke-static {v6}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_2
    if-gt v2, v5, :cond_3

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    const-string v5, "endOffset must be smaller or equal to text length"

    .line 47
    .line 48
    invoke-static {v5}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_3
    sub-int v5, v2, v1

    .line 52
    .line 53
    mul-int/lit8 v5, v5, 0x4

    .line 54
    .line 55
    array-length v6, v3

    .line 56
    sub-int v6, v6, p3

    .line 57
    .line 58
    if-lt v6, v5, :cond_4

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_4
    const-string v5, "array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4"

    .line 62
    .line 63
    invoke-static {v5}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_4
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/text/android/TextLayout;->h(I)I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    add-int/lit8 v6, v2, -0x1

    .line 71
    .line 72
    invoke-virtual {v0, v6}, Landroidx/compose/ui/text/android/TextLayout;->h(I)I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    new-instance v7, Landroidx/compose/ui/text/android/HorizontalPositionCache;

    .line 77
    .line 78
    invoke-direct {v7, v0}, Landroidx/compose/ui/text/android/HorizontalPositionCache;-><init>(Landroidx/compose/ui/text/android/TextLayout;)V

    .line 79
    .line 80
    .line 81
    if-gt v5, v6, :cond_a

    .line 82
    .line 83
    move v8, v5

    .line 84
    move/from16 v5, p3

    .line 85
    .line 86
    :goto_5
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineStart(I)I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    invoke-virtual {v0, v8}, Landroidx/compose/ui/text/android/TextLayout;->g(I)I

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    invoke-virtual {v0, v8}, Landroidx/compose/ui/text/android/TextLayout;->j(I)F

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    invoke-virtual {v0, v8}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 111
    .line 112
    .line 113
    move-result v13

    .line 114
    const/4 v14, 0x0

    .line 115
    const/4 v15, 0x1

    .line 116
    if-ne v13, v15, :cond_5

    .line 117
    .line 118
    move v13, v15

    .line 119
    goto :goto_6

    .line 120
    :cond_5
    move v13, v14

    .line 121
    :goto_6
    if-ge v9, v10, :cond_9

    .line 122
    .line 123
    invoke-virtual {v4, v9}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 124
    .line 125
    .line 126
    move-result v16

    .line 127
    if-eqz v13, :cond_6

    .line 128
    .line 129
    if-nez v16, :cond_6

    .line 130
    .line 131
    invoke-virtual {v7, v9, v14, v14, v15}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 132
    .line 133
    .line 134
    move-result v16

    .line 135
    add-int/lit8 v14, v9, 0x1

    .line 136
    .line 137
    invoke-virtual {v7, v14, v15, v15, v15}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    move v0, v14

    .line 142
    :goto_7
    const/4 v14, 0x0

    .line 143
    goto :goto_8

    .line 144
    :cond_6
    if-eqz v13, :cond_7

    .line 145
    .line 146
    if-eqz v16, :cond_7

    .line 147
    .line 148
    const/4 v14, 0x0

    .line 149
    invoke-virtual {v7, v9, v14, v14, v14}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 150
    .line 151
    .line 152
    move-result v16

    .line 153
    add-int/lit8 v0, v9, 0x1

    .line 154
    .line 155
    invoke-virtual {v7, v0, v15, v15, v14}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    move/from16 v17, v16

    .line 160
    .line 161
    move/from16 v16, v0

    .line 162
    .line 163
    move/from16 v0, v17

    .line 164
    .line 165
    goto :goto_8

    .line 166
    :cond_7
    const/4 v14, 0x0

    .line 167
    if-nez v13, :cond_8

    .line 168
    .line 169
    if-eqz v16, :cond_8

    .line 170
    .line 171
    invoke-virtual {v7, v9, v14, v14, v15}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    add-int/lit8 v14, v9, 0x1

    .line 176
    .line 177
    invoke-virtual {v7, v14, v15, v15, v15}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 178
    .line 179
    .line 180
    move-result v16

    .line 181
    goto :goto_7

    .line 182
    :cond_8
    invoke-virtual {v7, v9, v14, v14, v14}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 183
    .line 184
    .line 185
    move-result v16

    .line 186
    add-int/lit8 v0, v9, 0x1

    .line 187
    .line 188
    invoke-virtual {v7, v0, v15, v15, v14}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    :goto_8
    aput v16, v3, v5

    .line 193
    .line 194
    add-int/lit8 v16, v5, 0x1

    .line 195
    .line 196
    aput v11, v3, v16

    .line 197
    .line 198
    add-int/lit8 v16, v5, 0x2

    .line 199
    .line 200
    aput v0, v3, v16

    .line 201
    .line 202
    add-int/lit8 v0, v5, 0x3

    .line 203
    .line 204
    aput v12, v3, v0

    .line 205
    .line 206
    add-int/lit8 v5, v5, 0x4

    .line 207
    .line 208
    add-int/lit8 v9, v9, 0x1

    .line 209
    .line 210
    move-object/from16 v0, p0

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_9
    if-eq v8, v6, :cond_a

    .line 214
    .line 215
    add-int/lit8 v8, v8, 0x1

    .line 216
    .line 217
    move-object/from16 v0, p0

    .line 218
    .line 219
    goto/16 :goto_5

    .line 220
    .line 221
    :cond_a
    return-void
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->d:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineBottom(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->i:I

    .line 24
    .line 25
    add-int/2addr v0, v1

    .line 26
    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->n:I

    .line 27
    .line 28
    add-int/2addr v0, p0

    .line 29
    return v0
.end method

.method public final c(I)F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Landroidx/compose/ui/text/android/TextLayout;->j:F

    .line 8
    .line 9
    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->k:F

    .line 10
    .line 11
    add-float/2addr p1, p0

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final d()Landroidx/compose/ui/text/android/LayoutHelper;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->q:Landroidx/compose/ui/text/android/LayoutHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/text/android/LayoutHelper;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/android/LayoutHelper;-><init>(Landroid/text/Layout;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->q:Landroidx/compose/ui/text/android/LayoutHelper;

    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final e(I)F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->g:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->m:Landroid/graphics/Paint$FontMetricsInt;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->j(I)F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    iget p1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 19
    .line 20
    int-to-float p1, p1

    .line 21
    sub-float/2addr p0, p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    int-to-float p0, p0

    .line 30
    :goto_0
    add-float/2addr v0, p0

    .line 31
    return v0
.end method

.method public final f(I)F
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->m:Landroid/graphics/Paint$FontMetricsInt;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-float p0, p0

    .line 20
    iget p1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 21
    .line 22
    int-to-float p1, p1

    .line 23
    add-float/2addr p0, p1

    .line 24
    return p0

    .line 25
    :cond_0
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    add-float/2addr v1, v2

    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    if-ne p1, v0, :cond_1

    .line 37
    .line 38
    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->i:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    :goto_0
    int-to-float p0, p0

    .line 43
    add-float/2addr v1, p0

    .line 44
    return v1
.end method

.method public final g(I)I
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/text/android/TextLayout_androidKt;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->b:Landroid/text/TextUtils$TruncateAt;

    .line 12
    .line 13
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 14
    .line 15
    if-ne p0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public final h(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->g:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    if-le p0, v0, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    return p0
.end method

.method public final i(I)F
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->j(I)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sub-float/2addr v0, p0

    .line 10
    return v0
.end method

.method public final j(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    .line 13
    .line 14
    :goto_0
    int-to-float p0, p0

    .line 15
    add-float/2addr v0, p0

    .line 16
    return v0
.end method

.method public final k(IZ)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroidx/compose/ui/text/android/LayoutHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->c(IZZ)F

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->h(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->c(I)F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-float/2addr p0, p2

    .line 19
    return p0
.end method

.method public final l(IZ)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroidx/compose/ui/text/android/LayoutHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->c(IZZ)F

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->h(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->c(I)F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-float/2addr p0, p2

    .line 19
    return p0
.end method

.method public final m()Landroidx/compose/ui/text/android/selection/WordIterator;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->e:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v3, p0, Landroidx/compose/ui/text/android/TextLayout;->a:Landroid/text/TextPaint;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v0, v2, v1, v3}, Landroidx/compose/ui/text/android/selection/WordIterator;-><init>(Ljava/lang/CharSequence;ILjava/util/Locale;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->e:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 32
    .line 33
    return-object v0
.end method
