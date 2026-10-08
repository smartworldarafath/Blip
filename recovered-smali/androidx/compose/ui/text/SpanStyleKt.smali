.class public abstract Landroidx/compose/ui/text/SpanStyleKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:J

.field public static final b:J

.field public static final c:J

.field public static final d:Landroidx/compose/ui/text/style/TextForegroundStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->a:J

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->b:J

    .line 15
    .line 16
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->g:J

    .line 17
    .line 18
    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->c:J

    .line 19
    .line 20
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->b:J

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;->b(J)Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Landroidx/compose/ui/text/SpanStyleKt;->d:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 27
    .line 28
    return-void
.end method

.method public static final a(Landroidx/compose/ui/text/SpanStyle;JLandroidx/compose/ui/graphics/Brush;FJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/text/SpanStyle;
    .locals 24

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-wide/from16 v11, p12

    move-object/from16 v15, p19

    .line 1
    sget-object v16, Landroidx/compose/ui/unit/TextUnit;->b:[Landroidx/compose/ui/unit/TextUnitType;

    const-wide v16, 0xff00000000L

    and-long v18, v4, v16

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    const-wide/16 v22, 0x10

    if-nez v18, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v13, v0, Landroidx/compose/ui/text/SpanStyle;->b:J

    .line 3
    invoke-static {v4, v5, v13, v14}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    move-result v13

    if-eqz v13, :cond_1

    :goto_0
    if-nez v3, :cond_6

    cmp-long v13, v1, v22

    if-eqz v13, :cond_6

    .line 4
    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 5
    invoke-interface {v13}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    move-result-wide v13

    invoke-static {v1, v2, v13, v14}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v14, p14

    :cond_2
    move-object/from16 v13, p16

    :cond_3
    move-wide/from16 v1, p17

    :cond_4
    move-object/from16 v3, p20

    :cond_5
    move-object/from16 v4, p22

    goto/16 :goto_7

    :cond_6
    :goto_1
    if-eqz v7, :cond_7

    .line 6
    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    .line 7
    invoke-virtual {v7, v13}, Landroidx/compose/ui/text/font/FontStyle;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_7
    if-eqz v6, :cond_8

    .line 8
    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    .line 9
    invoke-virtual {v6, v13}, Landroidx/compose/ui/text/font/FontWeight;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_8
    if-eqz v9, :cond_9

    .line 10
    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    if-ne v9, v13, :cond_1

    :cond_9
    and-long v13, v11, v16

    cmp-long v13, v13, v20

    if-nez v13, :cond_a

    goto :goto_2

    .line 11
    :cond_a
    iget-wide v13, v0, Landroidx/compose/ui/text/SpanStyle;->h:J

    .line 12
    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    move-result v13

    if-eqz v13, :cond_1

    :goto_2
    if-eqz v15, :cond_b

    .line 13
    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    .line 14
    invoke-virtual {v15, v13}, Landroidx/compose/ui/text/style/TextDecoration;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 15
    :cond_b
    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 16
    invoke-interface {v13}, Landroidx/compose/ui/text/style/TextForegroundStyle;->d()Landroidx/compose/ui/graphics/Brush;

    move-result-object v13

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    if-eqz v3, :cond_c

    .line 17
    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 18
    invoke-interface {v13}, Landroidx/compose/ui/text/style/TextForegroundStyle;->a()F

    move-result v13

    cmpg-float v13, p4, v13

    if-nez v13, :cond_1

    :cond_c
    if-eqz v8, :cond_d

    .line 19
    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 20
    invoke-virtual {v8, v13}, Landroidx/compose/ui/text/font/FontSynthesis;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_d
    if-eqz v10, :cond_e

    .line 21
    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->g:Ljava/lang/String;

    .line 22
    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_e
    if-eqz p14, :cond_f

    .line 23
    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    move-object/from16 v14, p14

    .line 24
    invoke-virtual {v14, v13}, Landroidx/compose/ui/text/style/BaselineShift;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_3

    :cond_f
    move-object/from16 v14, p14

    :goto_3
    if-eqz p15, :cond_10

    .line 25
    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-object/from16 v1, p15

    .line 26
    invoke-virtual {v1, v13}, Landroidx/compose/ui/text/style/TextGeometricTransform;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_10
    move-object/from16 v1, p15

    :goto_4
    if-eqz p16, :cond_11

    .line 27
    iget-object v2, v0, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    move-object/from16 v13, p16

    .line 28
    invoke-virtual {v13, v2}, Landroidx/compose/ui/text/intl/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_5
    move-wide/from16 v1, p17

    goto :goto_6

    :cond_11
    move-object/from16 v13, p16

    goto :goto_5

    :goto_6
    cmp-long v19, v1, v22

    if-eqz v19, :cond_12

    .line 29
    iget-wide v3, v0, Landroidx/compose/ui/text/SpanStyle;->l:J

    .line 30
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_12
    move-object/from16 v3, p20

    if-eqz v3, :cond_13

    .line 31
    iget-object v4, v0, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    .line 32
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/Shadow;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_13
    move-object/from16 v4, p22

    if-eqz v4, :cond_14

    .line 33
    iget-object v5, v0, Landroidx/compose/ui/text/SpanStyle;->o:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_7

    :cond_14
    return-object v0

    :goto_7
    if-eqz p3, :cond_15

    .line 35
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;->a(Landroidx/compose/ui/graphics/Brush;F)Landroidx/compose/ui/text/style/TextForegroundStyle;

    move-result-object v5

    goto :goto_8

    .line 36
    :cond_15
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;->b(J)Landroidx/compose/ui/text/style/TextForegroundStyle;

    move-result-object v5

    .line 37
    :goto_8
    iget-object v1, v0, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 38
    invoke-interface {v1, v5}, Landroidx/compose/ui/text/style/TextForegroundStyle;->c(Landroidx/compose/ui/text/style/TextForegroundStyle;)Landroidx/compose/ui/text/style/TextForegroundStyle;

    move-result-object v1

    if-nez v9, :cond_16

    .line 39
    iget-object v2, v0, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    move-object v9, v2

    :cond_16
    if-nez v18, :cond_17

    move-object/from16 p1, v1

    .line 40
    iget-wide v1, v0, Landroidx/compose/ui/text/SpanStyle;->b:J

    goto :goto_9

    :cond_17
    move-object/from16 p1, v1

    move-wide/from16 v1, p5

    :goto_9
    if-nez v6, :cond_18

    .line 41
    iget-object v5, v0, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    goto :goto_a

    :cond_18
    move-object v5, v6

    :goto_a
    if-nez v7, :cond_19

    .line 42
    iget-object v6, v0, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    goto :goto_b

    :cond_19
    move-object v6, v7

    :goto_b
    if-nez v8, :cond_1a

    .line 43
    iget-object v7, v0, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    goto :goto_c

    :cond_1a
    move-object v7, v8

    :goto_c
    if-nez v10, :cond_1b

    .line 44
    iget-object v8, v0, Landroidx/compose/ui/text/SpanStyle;->g:Ljava/lang/String;

    move-object v10, v8

    :cond_1b
    and-long v16, v11, v16

    cmp-long v8, v16, v20

    if-nez v8, :cond_1c

    .line 45
    iget-wide v11, v0, Landroidx/compose/ui/text/SpanStyle;->h:J

    :cond_1c
    if-nez v14, :cond_1d

    .line 46
    iget-object v8, v0, Landroidx/compose/ui/text/SpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    move-object v14, v8

    :cond_1d
    if-nez p15, :cond_1e

    .line 47
    iget-object v8, v0, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    goto :goto_d

    :cond_1e
    move-object/from16 v8, p15

    :goto_d
    if-nez v13, :cond_1f

    .line 48
    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    :cond_1f
    cmp-long v16, p17, v22

    if-eqz v16, :cond_20

    move-wide/from16 p2, v1

    move-wide/from16 v1, p17

    goto :goto_e

    :cond_20
    move-wide/from16 p2, v1

    .line 49
    iget-wide v1, v0, Landroidx/compose/ui/text/SpanStyle;->l:J

    :goto_e
    if-nez v15, :cond_21

    .line 50
    iget-object v15, v0, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    :cond_21
    if-nez v3, :cond_22

    .line 51
    iget-object v3, v0, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    :cond_22
    if-nez v4, :cond_23

    .line 52
    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->o:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    goto :goto_f

    :cond_23
    move-object v0, v4

    .line 53
    :goto_f
    new-instance v4, Landroidx/compose/ui/text/SpanStyle;

    move-object/from16 p18, p21

    move-object/from16 p19, v0

    move-wide/from16 p14, v1

    move-object/from16 p17, v3

    move-object/from16 p0, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p12, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move-wide/from16 p9, v11

    move-object/from16 p13, v13

    move-object/from16 p11, v14

    move-object/from16 p16, v15

    invoke-direct/range {p0 .. p19}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    move-object/from16 v0, p0

    return-object v0
.end method
