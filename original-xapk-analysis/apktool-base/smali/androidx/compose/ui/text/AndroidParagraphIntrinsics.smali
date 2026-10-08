.class public final Landroidx/compose/ui/text/AndroidParagraphIntrinsics;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/text/ParagraphIntrinsics;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/compose/ui/text/TextStyle;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final f:Landroidx/compose/ui/unit/Density;

.field public final g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

.field public final h:Ljava/lang/CharSequence;

.field public final i:Landroidx/compose/ui/text/android/LayoutIntrinsics;

.field public j:Landroidx/compose/ui/text/TypefaceDirtyTrackerLinkedList;

.field public final k:Z

.field public final l:I

.field public final m:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Z)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    .line 1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    .line 2
    iput-object v4, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->a:Ljava/lang/String;

    .line 3
    iput-object v1, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->b:Landroidx/compose/ui/text/TextStyle;

    .line 4
    iput-object v2, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->c:Ljava/util/List;

    move-object/from16 v4, p4

    .line 5
    iput-object v4, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->d:Ljava/util/List;

    move-object/from16 v4, p5

    .line 6
    iput-object v4, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->e:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 7
    iput-object v3, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->f:Landroidx/compose/ui/unit/Density;

    .line 8
    new-instance v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-interface {v3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v5

    const/4 v6, 0x1

    .line 9
    invoke-direct {v4, v6}, Landroid/text/TextPaint;-><init>(I)V

    .line 10
    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 11
    sget-object v5, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration;

    iput-object v5, v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b:Landroidx/compose/ui/text/style/TextDecoration;

    const/4 v5, 0x3

    .line 12
    iput v5, v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c:I

    .line 13
    sget-object v7, Landroidx/compose/ui/graphics/Shadow;->d:Landroidx/compose/ui/graphics/Shadow;

    .line 14
    iput-object v7, v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d:Landroidx/compose/ui/graphics/Shadow;

    .line 15
    iput-object v4, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 16
    invoke-static {v1}, Landroidx/compose/ui/text/ParagraphIntrinsicsKt;->a(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v7

    iget-object v8, v1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    const/4 v9, 0x0

    if-nez v7, :cond_0

    move v7, v9

    goto :goto_0

    .line 17
    :cond_0
    sget-object v7, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->a:Landroidx/compose/ui/text/platform/EmojiCompatStatus;

    invoke-virtual {v7}, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->a()Landroidx/compose/runtime/State;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 18
    :goto_0
    iput-boolean v7, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->k:Z

    .line 19
    iget v7, v1, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    .line 20
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v14, 0x2

    if-ne v7, v12, :cond_2

    :cond_1
    :goto_1
    move v7, v14

    goto :goto_3

    :cond_2
    if-ne v7, v11, :cond_4

    :cond_3
    move v7, v5

    goto :goto_3

    :cond_4
    if-ne v7, v6, :cond_5

    move v7, v9

    goto :goto_3

    :cond_5
    if-ne v7, v14, :cond_6

    move v7, v6

    goto :goto_3

    :cond_6
    if-ne v7, v5, :cond_7

    goto :goto_2

    :cond_7
    if-nez v7, :cond_81

    :goto_2
    if-eqz v10, :cond_8

    .line 21
    iget-object v7, v10, Landroidx/compose/ui/text/intl/LocaleList;->j:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/intl/Locale;

    .line 22
    iget-object v7, v7, Landroidx/compose/ui/text/intl/Locale;->a:Ljava/util/Locale;

    if-nez v7, :cond_9

    .line 23
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 24
    :cond_9
    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v7

    if-eqz v7, :cond_1

    if-eq v7, v6, :cond_3

    goto :goto_1

    .line 25
    :goto_3
    iput v7, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->l:I

    const/4 v7, -0x1

    .line 26
    iput v7, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->m:I

    .line 27
    new-instance v10, Landroidx/compose/ui/text/a;

    invoke-direct {v10, v0}, Landroidx/compose/ui/text/a;-><init>(Landroidx/compose/ui/text/AndroidParagraphIntrinsics;)V

    .line 28
    iget-object v1, v1, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    if-nez v1, :cond_a

    .line 29
    sget-object v1, Landroidx/compose/ui/text/style/TextMotion;->c:Landroidx/compose/ui/text/style/TextMotion;

    .line 30
    :cond_a
    iget-boolean v15, v1, Landroidx/compose/ui/text/style/TextMotion;->b:Z

    if-eqz v15, :cond_b

    .line 31
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v15

    or-int/lit16 v15, v15, 0x80

    goto :goto_4

    .line 32
    :cond_b
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v15

    and-int/lit16 v15, v15, -0x81

    .line 33
    :goto_4
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setFlags(I)V

    .line 34
    iget v1, v1, Landroidx/compose/ui/text/style/TextMotion;->a:I

    if-ne v1, v6, :cond_c

    .line 35
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 36
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_5

    :cond_c
    if-ne v1, v14, :cond_d

    .line 37
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 38
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_5

    :cond_d
    if-ne v1, v5, :cond_e

    .line 39
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 40
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_5

    .line 41
    :cond_e
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 42
    :goto_5
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    move v15, v9

    :goto_6
    if-ge v15, v1, :cond_10

    .line 43
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    const/16 p1, 0x0

    .line 44
    move-object/from16 v13, v16

    check-cast v13, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 45
    iget-object v13, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 46
    instance-of v13, v13, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v13, :cond_f

    goto :goto_7

    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_10
    const/16 p1, 0x0

    move-object/from16 v16, p1

    :goto_7
    if-eqz v16, :cond_11

    move v1, v6

    goto :goto_8

    :cond_11
    move v1, v9

    .line 47
    :goto_8
    iget-wide v11, v8, Landroidx/compose/ui/text/SpanStyle;->b:J

    iget-object v2, v8, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v13, v8, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v15, v8, Landroidx/compose/ui/text/SpanStyle;->g:Ljava/lang/String;

    iget-object v5, v8, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    move/from16 p7, v6

    iget-object v6, v8, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    iget-object v14, v8, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-object/from16 v18, v10

    iget-wide v9, v8, Landroidx/compose/ui/text/SpanStyle;->h:J

    move-object/from16 v19, v8

    .line 48
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v7

    move/from16 p3, v1

    move-object/from16 v21, v2

    const-wide v1, 0x100000000L

    .line 49
    invoke-static {v7, v8, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v22

    const-wide v1, 0x200000000L

    if-eqz v22, :cond_13

    invoke-interface {v3, v11, v12}, Landroidx/compose/ui/unit/Density;->I0(J)F

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_12
    :goto_9
    move-object/from16 v7, v19

    goto :goto_a

    .line 50
    :cond_13
    invoke-static {v7, v8, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 51
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v8

    mul-float/2addr v8, v7

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_9

    .line 52
    :goto_a
    iget-object v8, v7, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v8, :cond_15

    if-nez v13, :cond_15

    if-eqz v21, :cond_14

    goto :goto_b

    :cond_14
    move-object/from16 v2, v18

    goto :goto_f

    :cond_15
    :goto_b
    if-nez v21, :cond_16

    .line 53
    sget-object v11, Landroidx/compose/ui/text/font/FontWeight;->q:Landroidx/compose/ui/text/font/FontWeight;

    goto :goto_c

    :cond_16
    move-object/from16 v11, v21

    :goto_c
    if-eqz v13, :cond_17

    .line 54
    iget v12, v13, Landroidx/compose/ui/text/font/FontStyle;->a:I

    goto :goto_d

    :cond_17
    const/4 v12, 0x0

    .line 55
    :goto_d
    new-instance v13, Landroidx/compose/ui/text/font/FontStyle;

    invoke-direct {v13, v12}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    .line 56
    iget-object v12, v7, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v12, :cond_18

    .line 57
    iget v12, v12, Landroidx/compose/ui/text/font/FontSynthesis;->a:I

    goto :goto_e

    :cond_18
    const v12, 0xffff

    .line 58
    :goto_e
    new-instance v1, Landroidx/compose/ui/text/font/FontSynthesis;

    invoke-direct {v1, v12}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    move-object/from16 v2, v18

    .line 59
    invoke-virtual {v2, v8, v11, v13, v1}, Landroidx/compose/ui/text/a;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 60
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_f
    const/16 v1, 0xa

    if-eqz v5, :cond_1a

    .line 61
    sget-object v8, Landroidx/compose/ui/text/intl/LocaleList;->l:Landroidx/compose/ui/text/intl/LocaleList;

    .line 62
    sget-object v8, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->a:Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    .line 63
    invoke-virtual {v8}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->a()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v8

    .line 64
    invoke-virtual {v5, v8}, Landroidx/compose/ui/text/intl/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    .line 65
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v5, v1}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    iget-object v5, v5, Landroidx/compose/ui/text/intl/LocaleList;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 67
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 68
    check-cast v11, Landroidx/compose/ui/text/intl/Locale;

    .line 69
    iget-object v11, v11, Landroidx/compose/ui/text/intl/Locale;->a:Ljava/util/Locale;

    .line 70
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_19
    const/4 v11, 0x0

    .line 71
    new-array v5, v11, [Ljava/util/Locale;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 72
    check-cast v5, [Ljava/util/Locale;

    array-length v8, v5

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/util/Locale;

    new-instance v8, Landroid/os/LocaleList;

    invoke-direct {v8, v5}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 73
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_1a
    if-eqz v15, :cond_1b

    .line 74
    const-string v5, ""

    .line 75
    invoke-virtual {v15, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 76
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_1b
    if-eqz v14, :cond_1c

    .line 77
    sget-object v5, Landroidx/compose/ui/text/style/TextGeometricTransform;->c:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 78
    invoke-virtual {v14, v5}, Landroidx/compose/ui/text/style/TextGeometricTransform;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 79
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v5

    .line 80
    iget v8, v14, Landroidx/compose/ui/text/style/TextGeometricTransform;->a:F

    mul-float/2addr v5, v8

    .line 81
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 82
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v5

    .line 83
    iget v8, v14, Landroidx/compose/ui/text/style/TextGeometricTransform;->b:F

    add-float/2addr v5, v8

    .line 84
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 85
    :cond_1c
    invoke-interface {v6}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    move-result-wide v11

    .line 86
    invoke-virtual {v4, v11, v12}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d(J)V

    .line 87
    invoke-interface {v6}, Landroidx/compose/ui/text/style/TextForegroundStyle;->d()Landroidx/compose/ui/graphics/Brush;

    move-result-object v5

    const-wide v11, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 88
    invoke-interface {v6}, Landroidx/compose/ui/text/style/TextForegroundStyle;->a()F

    move-result v6

    .line 89
    invoke-virtual {v4, v5, v11, v12, v6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c(Landroidx/compose/ui/graphics/Brush;JF)V

    .line 90
    iget-object v5, v7, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    .line 91
    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f(Landroidx/compose/ui/graphics/Shadow;)V

    .line 92
    iget-object v5, v7, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    .line 93
    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 94
    iget-object v5, v7, Landroidx/compose/ui/text/SpanStyle;->o:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 95
    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 96
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v5

    const-wide v11, 0x100000000L

    invoke-static {v5, v6, v11, v12}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1f

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v5

    cmpg-float v5, v5, v6

    if-nez v5, :cond_1d

    goto :goto_11

    .line 97
    :cond_1d
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v8

    mul-float/2addr v8, v5

    .line 98
    invoke-interface {v3, v9, v10}, Landroidx/compose/ui/unit/Density;->I0(J)F

    move-result v3

    cmpg-float v5, v8, v6

    if-nez v5, :cond_1e

    goto :goto_12

    :cond_1e
    div-float/2addr v3, v8

    .line 99
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_12

    .line 100
    :cond_1f
    :goto_11
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v11

    const-wide v13, 0x200000000L

    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 101
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 102
    :cond_20
    :goto_12
    iget-wide v3, v7, Landroidx/compose/ui/text/SpanStyle;->l:J

    .line 103
    iget-object v5, v7, Landroidx/compose/ui/text/SpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz p3, :cond_22

    .line 104
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v7

    const-wide v11, 0x100000000L

    invoke-static {v7, v8, v11, v12}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v7

    cmpg-float v7, v7, v6

    if-nez v7, :cond_21

    goto :goto_13

    :cond_21
    move/from16 v7, p7

    goto :goto_14

    :cond_22
    :goto_13
    const/4 v7, 0x0

    .line 105
    :goto_14
    sget-wide v11, Landroidx/compose/ui/graphics/Color;->h:J

    .line 106
    invoke-static {v3, v4, v11, v12}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v8

    if-nez v8, :cond_23

    .line 107
    sget-wide v13, Landroidx/compose/ui/graphics/Color;->g:J

    .line 108
    invoke-static {v3, v4, v13, v14}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v8

    if-nez v8, :cond_23

    move/from16 v8, p7

    goto :goto_15

    :cond_23
    const/4 v8, 0x0

    :goto_15
    if-eqz v5, :cond_25

    .line 109
    iget v13, v5, Landroidx/compose/ui/text/style/BaselineShift;->a:F

    .line 110
    invoke-static {v13, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-nez v13, :cond_24

    goto :goto_16

    :cond_24
    move/from16 v13, p7

    goto :goto_17

    :cond_25
    :goto_16
    const/4 v13, 0x0

    :goto_17
    if-nez v7, :cond_26

    if-nez v8, :cond_26

    if-nez v13, :cond_26

    move-object/from16 v3, p1

    goto :goto_1c

    :cond_26
    if-eqz v7, :cond_27

    :goto_18
    move-wide/from16 v33, v9

    goto :goto_19

    .line 111
    :cond_27
    sget-wide v9, Landroidx/compose/ui/unit/TextUnit;->c:J

    goto :goto_18

    :goto_19
    if-eqz v8, :cond_28

    move-wide/from16 v38, v3

    goto :goto_1a

    :cond_28
    move-wide/from16 v38, v11

    :goto_1a
    if-eqz v13, :cond_29

    move-object/from16 v35, v5

    goto :goto_1b

    :cond_29
    move-object/from16 v35, p1

    .line 112
    :goto_1b
    new-instance v23, Landroidx/compose/ui/text/SpanStyle;

    const/16 v41, 0x0

    const v42, 0xf67f

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v40, 0x0

    invoke-direct/range {v23 .. v42}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    move-object/from16 v3, v23

    .line 113
    :goto_1c
    iget-object v4, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->c:Ljava/util/List;

    if-eqz v3, :cond_2c

    .line 114
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v4, :cond_2b

    if-nez v7, :cond_2a

    .line 115
    new-instance v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 116
    iget-object v9, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v11, 0x0

    .line 117
    invoke-direct {v8, v11, v9, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    goto :goto_1e

    .line 118
    :cond_2a
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->c:Ljava/util/List;

    add-int/lit8 v9, v7, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 119
    :goto_1e
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_2b
    move-object v4, v5

    .line 120
    :cond_2c
    iget-object v3, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->a:Ljava/lang/String;

    .line 121
    iget-object v5, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    .line 122
    iget-object v7, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->b:Landroidx/compose/ui/text/TextStyle;

    .line 123
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->d:Ljava/util/List;

    .line 124
    iget-object v12, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->f:Landroidx/compose/ui/unit/Density;

    .line 125
    iget-boolean v9, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->k:Z

    .line 126
    iget-object v10, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->a:Ljava/lang/String;

    iget v11, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->m:I

    const/4 v13, -0x1

    if-ne v11, v13, :cond_2f

    .line 127
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v13, 0x200

    if-gt v11, v13, :cond_2e

    invoke-static {v10, v1}, Lkotlin/text/StringsKt;->j(Ljava/lang/CharSequence;C)Z

    move-result v10

    if-eqz v10, :cond_2d

    goto :goto_1f

    :cond_2d
    const/4 v10, 0x0

    goto :goto_20

    :cond_2e
    :goto_1f
    move/from16 v10, p7

    .line 128
    :goto_20
    iput v10, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->m:I

    .line 129
    :cond_2f
    sget-object v10, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->a:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    if-eqz v9, :cond_33

    .line 130
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->g()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 131
    iget-object v9, v7, Landroidx/compose/ui/text/TextStyle;->c:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz v9, :cond_30

    .line 132
    iget-object v9, v9, Landroidx/compose/ui/text/PlatformTextStyle;->a:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v9, :cond_30

    .line 133
    iget v9, v9, Landroidx/compose/ui/text/PlatformParagraphStyle;->b:I

    .line 134
    new-instance v10, Landroidx/compose/ui/text/EmojiSupportMatch;

    invoke-direct {v10, v9}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    goto :goto_21

    :cond_30
    move-object/from16 v10, p1

    :goto_21
    if-nez v10, :cond_32

    :cond_31
    const/4 v9, 0x0

    goto :goto_22

    .line 135
    :cond_32
    iget v9, v10, Landroidx/compose/ui/text/EmojiSupportMatch;->a:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_31

    move/from16 v9, p7

    .line 136
    :goto_22
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->a()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v11, v9, v3}, Landroidx/emoji2/text/EmojiCompat;->j(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_23

    :cond_33
    move-object v9, v3

    .line 137
    :goto_23
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    const-wide/16 v13, 0x0

    const-wide v18, 0xff00000000L

    if-eqz v10, :cond_34

    .line 138
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_34

    .line 139
    iget-object v10, v7, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 140
    iget-object v10, v10, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    .line 141
    sget-object v11, Landroidx/compose/ui/text/style/TextIndent;->c:Landroidx/compose/ui/text/style/TextIndent;

    .line 142
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    .line 143
    iget-object v10, v7, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 144
    iget-wide v10, v10, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    and-long v10, v10, v18

    cmp-long v10, v10, v13

    if-nez v10, :cond_34

    goto/16 :goto_51

    .line 145
    :cond_34
    instance-of v10, v9, Landroid/text/Spannable;

    if-eqz v10, :cond_35

    .line 146
    check-cast v9, Landroid/text/Spannable;

    goto :goto_24

    .line 147
    :cond_35
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v9, v10

    .line 148
    :goto_24
    iget-object v10, v7, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget-object v15, v7, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 149
    iget-object v11, v10, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    move/from16 p3, v6

    .line 150
    sget-object v6, Landroidx/compose/ui/text/style/TextDecoration;->c:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const/16 v1, 0x21

    if-eqz v11, :cond_36

    .line 151
    sget-object v11, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->a:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-wide/from16 v23, v13

    const/4 v13, 0x0

    .line 152
    invoke-interface {v9, v11, v13, v3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_25

    :cond_36
    move-wide/from16 v23, v13

    .line 153
    :goto_25
    iget-object v3, v7, Landroidx/compose/ui/text/TextStyle;->c:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz v3, :cond_37

    .line 154
    iget-object v3, v3, Landroidx/compose/ui/text/PlatformTextStyle;->a:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v3, :cond_37

    .line 155
    iget-boolean v3, v3, Landroidx/compose/ui/text/PlatformParagraphStyle;->a:Z

    goto :goto_26

    :cond_37
    const/4 v3, 0x0

    :goto_26
    if-eqz v3, :cond_39

    .line 156
    iget-object v3, v15, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    if-nez v3, :cond_39

    .line 157
    iget-wide v13, v15, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    .line 158
    invoke-static {v13, v14, v5, v12}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->a(JFLandroidx/compose/ui/unit/Density;)F

    move-result v3

    .line 159
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_38

    .line 160
    new-instance v7, Landroidx/compose/ui/text/android/style/LineHeightSpan;

    invoke-direct {v7, v3}, Landroidx/compose/ui/text/android/style/LineHeightSpan;-><init>(F)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v11, 0x0

    .line 161
    invoke-interface {v9, v7, v11, v3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_38
    const/4 v11, 0x0

    goto :goto_2c

    .line 162
    :cond_39
    iget-object v3, v15, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    if-nez v3, :cond_3a

    .line 163
    sget-object v3, Landroidx/compose/ui/text/style/LineHeightStyle;->d:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 164
    :cond_3a
    iget-wide v13, v15, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    .line 165
    invoke-static {v13, v14, v5, v12}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->a(JFLandroidx/compose/ui/unit/Density;)F

    move-result v26

    .line 166
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_38

    .line 167
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_3b

    goto :goto_27

    :cond_3b
    invoke-static {v9}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;)C

    move-result v7

    const/16 v11, 0xa

    if-ne v7, v11, :cond_3c

    :goto_27
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    :goto_28
    move/from16 v27, v7

    goto :goto_29

    :cond_3c
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v7

    goto :goto_28

    .line 168
    :goto_29
    new-instance v25, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 169
    iget v7, v3, Landroidx/compose/ui/text/style/LineHeightStyle;->b:I

    and-int/lit8 v11, v7, 0x1

    if-lez v11, :cond_3d

    move/from16 v28, p7

    goto :goto_2a

    :cond_3d
    const/16 v28, 0x0

    :goto_2a
    and-int/lit8 v7, v7, 0x10

    if-lez v7, :cond_3e

    move/from16 v29, p7

    goto :goto_2b

    :cond_3e
    const/16 v29, 0x0

    .line 170
    :goto_2b
    iget v7, v3, Landroidx/compose/ui/text/style/LineHeightStyle;->a:F

    .line 171
    iget v3, v3, Landroidx/compose/ui/text/style/LineHeightStyle;->c:I

    move/from16 v31, v3

    move/from16 v30, v7

    .line 172
    invoke-direct/range {v25 .. v31}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIZZFI)V

    move-object/from16 v3, v25

    .line 173
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v11, 0x0

    .line 174
    invoke-interface {v9, v3, v11, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 175
    :goto_2c
    iget-object v3, v15, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    if-eqz v3, :cond_47

    .line 176
    iget-wide v13, v3, Landroidx/compose/ui/text/style/TextIndent;->a:J

    move-object v7, v2

    iget-wide v1, v3, Landroidx/compose/ui/text/style/TextIndent;->b:J

    move/from16 v17, v11

    move-object v3, v12

    .line 177
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    move-result-wide v11

    invoke-static {v13, v14, v11, v12}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    move-result v11

    if-eqz v11, :cond_3f

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    move-result-wide v11

    invoke-static {v1, v2, v11, v12}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    move-result v11

    if-nez v11, :cond_40

    :cond_3f
    and-long v11, v13, v18

    cmp-long v11, v11, v23

    if-nez v11, :cond_41

    :cond_40
    :goto_2d
    move-object/from16 v19, v7

    :goto_2e
    move-object/from16 v18, v8

    goto/16 :goto_31

    :cond_41
    and-long v11, v1, v18

    cmp-long v11, v11, v23

    if-nez v11, :cond_42

    goto :goto_2d

    .line 178
    :cond_42
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v11

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    const-wide v7, 0x100000000L

    .line 179
    invoke-static {v11, v12, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v20

    if-eqz v20, :cond_43

    invoke-interface {v3, v13, v14}, Landroidx/compose/ui/unit/Density;->I0(J)F

    move-result v11

    const-wide v7, 0x200000000L

    goto :goto_2f

    :cond_43
    const-wide v7, 0x200000000L

    .line 180
    invoke-static {v11, v12, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v11

    if-eqz v11, :cond_44

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v11

    mul-float/2addr v11, v5

    goto :goto_2f

    :cond_44
    move/from16 v11, p3

    .line 181
    :goto_2f
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v12

    const-wide v7, 0x100000000L

    .line 182
    invoke-static {v12, v13, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v14

    if-eqz v14, :cond_45

    invoke-interface {v3, v1, v2}, Landroidx/compose/ui/unit/Density;->I0(J)F

    move-result v1

    goto :goto_30

    :cond_45
    const-wide v7, 0x200000000L

    .line 183
    invoke-static {v12, v13, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v12

    if-eqz v12, :cond_46

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v1

    mul-float/2addr v1, v5

    goto :goto_30

    :cond_46
    move/from16 v1, p3

    .line 184
    :goto_30
    new-instance v2, Landroid/text/style/LeadingMarginSpan$Standard;

    float-to-double v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v5, v7

    float-to-int v5, v5

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v1, v7

    float-to-int v1, v1

    invoke-direct {v2, v5, v1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 185
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v5, 0x21

    const/4 v11, 0x0

    .line 186
    invoke-interface {v9, v2, v11, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_31

    :cond_47
    move-object/from16 v19, v2

    move-object v3, v12

    goto/16 :goto_2e

    .line 187
    :goto_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_32
    if-ge v5, v2, :cond_4c

    .line 189
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 190
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 191
    iget-object v8, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 192
    instance-of v11, v8, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v11, :cond_4b

    move-object v11, v8

    check-cast v11, Landroidx/compose/ui/text/SpanStyle;

    .line 193
    iget-object v12, v11, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v12, :cond_49

    .line 194
    iget-object v12, v11, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    if-nez v12, :cond_49

    .line 195
    iget-object v11, v11, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    if-eqz v11, :cond_48

    goto :goto_33

    :cond_48
    const/4 v11, 0x0

    goto :goto_34

    :cond_49
    :goto_33
    move/from16 v11, p7

    :goto_34
    if-nez v11, :cond_4a

    .line 196
    check-cast v8, Landroidx/compose/ui/text/SpanStyle;

    .line 197
    iget-object v8, v8, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v8, :cond_4b

    .line 198
    :cond_4a
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 199
    :cond_4c
    iget-object v2, v10, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v2, :cond_4e

    .line 200
    iget-object v5, v10, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    if-nez v5, :cond_4e

    .line 201
    iget-object v5, v10, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    if-eqz v5, :cond_4d

    goto :goto_35

    :cond_4d
    const/4 v5, 0x0

    goto :goto_36

    :cond_4e
    :goto_35
    move/from16 v5, p7

    :goto_36
    if-nez v5, :cond_50

    .line 202
    iget-object v5, v10, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v5, :cond_4f

    goto :goto_37

    :cond_4f
    move-object/from16 v2, p1

    goto :goto_38

    .line 203
    :cond_50
    :goto_37
    iget-object v5, v10, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    .line 204
    iget-object v7, v10, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    .line 205
    iget-object v8, v10, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 206
    new-instance v23, Landroidx/compose/ui/text/SpanStyle;

    const/16 v41, 0x0

    const v42, 0xffc3

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    move-object/from16 v31, v2

    move-object/from16 v28, v5

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    invoke-direct/range {v23 .. v42}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    move-object/from16 v2, v23

    .line 207
    :goto_38
    new-instance v5, Li0;

    const/16 v7, 0x8

    move-object/from16 v8, v19

    invoke-direct {v5, v7, v9, v8}, Li0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v8, p7

    if-gt v7, v8, :cond_54

    .line 209
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_52

    const/4 v11, 0x0

    .line 210
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 211
    iget-object v7, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 212
    check-cast v7, Landroidx/compose/ui/text/SpanStyle;

    if-nez v2, :cond_51

    goto :goto_39

    .line 213
    :cond_51
    invoke-virtual {v2, v7}, Landroidx/compose/ui/text/SpanStyle;->c(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v7

    .line 214
    :goto_39
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 215
    iget v2, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 216
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 217
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 218
    iget v1, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 220
    invoke-virtual {v5, v7, v2, v1}, Li0;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v3

    const/16 v17, 0x0

    goto/16 :goto_40

    :cond_52
    const/16 v17, 0x0

    :cond_53
    move-object/from16 v20, v3

    goto/16 :goto_40

    .line 221
    :cond_54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/lit8 v8, v7, 0x2

    .line 222
    new-array v10, v8, [I

    .line 223
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_3a
    if-ge v12, v11, :cond_55

    .line 224
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 225
    check-cast v13, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 226
    iget v14, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 227
    aput v14, v10, v12

    add-int v14, v12, v7

    .line 228
    iget v13, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 229
    aput v13, v10, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_3a

    :cond_55
    const/4 v12, 0x1

    if-le v8, v12, :cond_56

    .line 230
    invoke-static {v10}, Ljava/util/Arrays;->sort([I)V

    :cond_56
    if-eqz v8, :cond_80

    const/16 v17, 0x0

    .line 231
    aget v7, v10, v17

    move/from16 v11, v17

    :goto_3b
    if-ge v11, v8, :cond_53

    .line 232
    aget v12, v10, v11

    if-ne v12, v7, :cond_57

    move-object/from16 v23, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v24, v8

    goto :goto_3f

    .line 233
    :cond_57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 v19, v2

    move/from16 v14, v17

    :goto_3c
    if-ge v14, v13, :cond_5a

    .line 234
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v23, v1

    .line 235
    move-object/from16 v1, v20

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    move-object/from16 v20, v3

    .line 236
    iget v3, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    move/from16 v24, v8

    .line 237
    iget v8, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    if-eq v3, v8, :cond_59

    .line 238
    invoke-static {v7, v12, v3, v8}, Landroidx/compose/ui/text/AnnotatedStringKt;->b(IIII)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 239
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 240
    check-cast v1, Landroidx/compose/ui/text/SpanStyle;

    if-nez v2, :cond_58

    :goto_3d
    move-object v2, v1

    goto :goto_3e

    .line 241
    :cond_58
    invoke-virtual {v2, v1}, Landroidx/compose/ui/text/SpanStyle;->c(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v1

    goto :goto_3d

    :cond_59
    :goto_3e
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v20

    move-object/from16 v1, v23

    move/from16 v8, v24

    goto :goto_3c

    :cond_5a
    move-object/from16 v23, v1

    move-object/from16 v20, v3

    move/from16 v24, v8

    if-eqz v2, :cond_5b

    .line 242
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v1, v3}, Li0;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    move v7, v12

    :goto_3f
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v1, v23

    move/from16 v8, v24

    goto :goto_3b

    .line 243
    :goto_40
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    move/from16 v2, v17

    move v3, v2

    :goto_41
    if-ge v2, v1, :cond_6a

    .line 244
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 245
    iget-object v7, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 246
    instance-of v8, v7, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v8, :cond_5c

    .line 247
    iget v13, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 248
    iget v14, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    if-ltz v13, :cond_5c

    .line 249
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v13, v5, :cond_5c

    if-le v14, v13, :cond_5c

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v14, v5, :cond_5d

    :cond_5c
    move/from16 v19, v2

    move-object v11, v6

    move-object v2, v9

    move-object/from16 v12, v20

    move/from16 v20, v1

    goto/16 :goto_44

    .line 250
    :cond_5d
    check-cast v7, Landroidx/compose/ui/text/SpanStyle;

    iget-wide v10, v7, Landroidx/compose/ui/text/SpanStyle;->h:J

    .line 251
    iget-object v5, v7, Landroidx/compose/ui/text/SpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    iget-object v8, v7, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    if-eqz v5, :cond_5e

    .line 252
    iget v5, v5, Landroidx/compose/ui/text/style/BaselineShift;->a:F

    .line 253
    new-instance v12, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;

    invoke-direct {v12, v5}, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;-><init>(F)V

    const/16 v5, 0x21

    .line 254
    invoke-interface {v9, v12, v13, v14, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_5e
    move v5, v1

    move/from16 v19, v2

    .line 255
    invoke-interface {v8}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    move-result-wide v1

    .line 256
    invoke-static {v9, v1, v2, v13, v14}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->b(Landroid/text/Spannable;JII)V

    .line 257
    invoke-interface {v8}, Landroidx/compose/ui/text/style/TextForegroundStyle;->d()Landroidx/compose/ui/graphics/Brush;

    move-result-object v1

    .line 258
    invoke-interface {v8}, Landroidx/compose/ui/text/style/TextForegroundStyle;->a()F

    move-result v2

    if-eqz v1, :cond_5f

    .line 259
    instance-of v8, v1, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v8, :cond_60

    .line 260
    check-cast v1, Landroidx/compose/ui/graphics/SolidColor;

    .line 261
    iget-wide v1, v1, Landroidx/compose/ui/graphics/SolidColor;->a:J

    .line 262
    invoke-static {v9, v1, v2, v13, v14}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->b(Landroid/text/Spannable;JII)V

    :cond_5f
    const/16 v1, 0x21

    goto :goto_42

    .line 263
    :cond_60
    new-instance v8, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    check-cast v1, Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-direct {v8, v1, v2}, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;-><init>(Landroidx/compose/ui/graphics/ShaderBrush;F)V

    const/16 v1, 0x21

    .line 264
    invoke-interface {v9, v8, v13, v14, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 265
    :goto_42
    iget-object v2, v7, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    if-eqz v2, :cond_61

    .line 266
    new-instance v8, Landroidx/compose/ui/text/android/style/TextDecorationSpan;

    .line 267
    invoke-virtual {v2, v6}, Landroidx/compose/ui/text/style/TextDecoration;->a(Landroidx/compose/ui/text/style/TextDecoration;)Z

    move-result v12

    .line 268
    sget-object v1, Landroidx/compose/ui/text/style/TextDecoration;->d:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-virtual {v2, v1}, Landroidx/compose/ui/text/style/TextDecoration;->a(Landroidx/compose/ui/text/style/TextDecoration;)Z

    move-result v1

    .line 269
    invoke-direct {v8, v12, v1}, Landroidx/compose/ui/text/android/style/TextDecorationSpan;-><init>(ZZ)V

    const/16 v1, 0x21

    .line 270
    invoke-interface {v9, v8, v13, v14, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_61
    move-wide/from16 v23, v10

    .line 271
    iget-wide v10, v7, Landroidx/compose/ui/text/SpanStyle;->b:J

    move-object/from16 v12, v20

    .line 272
    invoke-static/range {v9 .. v14}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->c(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    move-object v2, v9

    .line 273
    iget-object v8, v7, Landroidx/compose/ui/text/SpanStyle;->g:Ljava/lang/String;

    if-eqz v8, :cond_62

    .line 274
    new-instance v9, Landroidx/compose/ui/text/android/style/FontFeatureSpan;

    invoke-direct {v9, v8}, Landroidx/compose/ui/text/android/style/FontFeatureSpan;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-interface {v2, v9, v13, v14, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 276
    :cond_62
    iget-object v8, v7, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-eqz v8, :cond_63

    .line 277
    new-instance v9, Landroid/text/style/ScaleXSpan;

    .line 278
    iget v10, v8, Landroidx/compose/ui/text/style/TextGeometricTransform;->a:F

    .line 279
    invoke-direct {v9, v10}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    .line 280
    invoke-interface {v2, v9, v13, v14, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 281
    new-instance v9, Landroidx/compose/ui/text/android/style/SkewXSpan;

    .line 282
    iget v8, v8, Landroidx/compose/ui/text/style/TextGeometricTransform;->b:F

    .line 283
    invoke-direct {v9, v8}, Landroidx/compose/ui/text/android/style/SkewXSpan;-><init>(F)V

    .line 284
    invoke-interface {v2, v9, v13, v14, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 285
    :cond_63
    iget-object v1, v7, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    .line 286
    invoke-static {v2, v1, v13, v14}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->d(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    .line 287
    iget-wide v8, v7, Landroidx/compose/ui/text/SpanStyle;->l:J

    const-wide/16 v10, 0x10

    cmp-long v1, v8, v10

    if-eqz v1, :cond_64

    .line 288
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->f(J)I

    move-result v8

    invoke-direct {v1, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v8, 0x21

    .line 289
    invoke-interface {v2, v1, v13, v14, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 290
    :cond_64
    iget-object v1, v7, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    if-eqz v1, :cond_66

    .line 291
    iget-wide v8, v1, Landroidx/compose/ui/graphics/Shadow;->b:J

    .line 292
    new-instance v10, Landroidx/compose/ui/text/android/style/ShadowSpan;

    move/from16 v20, v5

    move-object v11, v6

    .line 293
    iget-wide v5, v1, Landroidx/compose/ui/graphics/Shadow;->a:J

    .line 294
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->f(J)I

    move-result v5

    const/16 v6, 0x20

    move-wide/from16 v25, v8

    shr-long v8, v25, v6

    long-to-int v6, v8

    .line 295
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    const-wide v8, 0xffffffffL

    and-long v8, v25, v8

    long-to-int v8, v8

    .line 296
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 297
    iget v1, v1, Landroidx/compose/ui/graphics/Shadow;->c:F

    cmpg-float v9, v1, p3

    if-nez v9, :cond_65

    const/4 v1, 0x1

    .line 298
    :cond_65
    invoke-direct {v10, v6, v8, v1, v5}, Landroidx/compose/ui/text/android/style/ShadowSpan;-><init>(FFFI)V

    const/16 v1, 0x21

    .line 299
    invoke-interface {v2, v10, v13, v14, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_43

    :cond_66
    move/from16 v20, v5

    move-object v11, v6

    const/16 v1, 0x21

    .line 300
    :goto_43
    iget-object v5, v7, Landroidx/compose/ui/text/SpanStyle;->o:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    if-eqz v5, :cond_67

    .line 301
    new-instance v6, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;

    invoke-direct {v6, v5}, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;-><init>(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 302
    invoke-interface {v2, v6, v13, v14, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 303
    :cond_67
    invoke-static/range {v23 .. v24}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v5

    const-wide v7, 0x100000000L

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_68

    invoke-static/range {v23 .. v24}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v5

    const-wide v7, 0x200000000L

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_69

    :cond_68
    const/4 v3, 0x1

    :cond_69
    :goto_44
    add-int/lit8 v1, v19, 0x1

    move-object v9, v2

    move-object v6, v11

    move v2, v1

    move/from16 v1, v20

    move-object/from16 v20, v12

    goto/16 :goto_41

    :cond_6a
    move-object v2, v9

    move-object/from16 v12, v20

    if-eqz v3, :cond_6f

    .line 304
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    move/from16 v11, v17

    :goto_45
    if-ge v11, v1, :cond_6f

    .line 305
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 306
    iget-object v5, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 307
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    .line 308
    instance-of v6, v5, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v6, :cond_6e

    .line 309
    iget v6, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 310
    iget v3, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    if-ltz v6, :cond_6e

    .line 311
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_6e

    if-le v3, v6, :cond_6e

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v3, v7, :cond_6b

    goto :goto_47

    .line 312
    :cond_6b
    check-cast v5, Landroidx/compose/ui/text/SpanStyle;

    .line 313
    iget-wide v7, v5, Landroidx/compose/ui/text/SpanStyle;->h:J

    .line 314
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v9

    const-wide v13, 0x100000000L

    .line 315
    invoke-static {v9, v10, v13, v14}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_6c

    new-instance v5, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;

    invoke-interface {v12, v7, v8}, Landroidx/compose/ui/unit/Density;->I0(J)F

    move-result v7

    invoke-direct {v5, v7}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;-><init>(F)V

    goto :goto_46

    :cond_6c
    const-wide v13, 0x200000000L

    .line 316
    invoke-static {v9, v10, v13, v14}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 317
    new-instance v5, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v7

    invoke-direct {v5, v7}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;-><init>(F)V

    goto :goto_46

    :cond_6d
    move-object/from16 v5, p1

    :goto_46
    if-eqz v5, :cond_6e

    const/16 v8, 0x21

    .line 318
    invoke-interface {v2, v5, v6, v3, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_6e
    :goto_47
    add-int/lit8 v11, v11, 0x1

    goto :goto_45

    .line 319
    :cond_6f
    iget-object v1, v15, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    if-eqz v1, :cond_71

    .line 320
    iget-wide v5, v1, Landroidx/compose/ui/text/style/TextIndent;->a:J

    .line 321
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v7

    const-wide v13, 0x100000000L

    .line 322
    invoke-static {v7, v8, v13, v14}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v12, v5, v6}, Landroidx/compose/ui/unit/Density;->I0(J)F

    goto :goto_48

    :cond_70
    const-wide v13, 0x200000000L

    .line 323
    invoke-static {v7, v8, v13, v14}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 324
    :cond_71
    :goto_48
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    move/from16 v11, v17

    :goto_49
    if-ge v11, v1, :cond_72

    .line 325
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 326
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 327
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_49

    .line 328
    :cond_72
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v1

    move/from16 v3, v17

    :goto_4a
    if-ge v3, v1, :cond_7f

    move-object/from16 v4, v18

    .line 329
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 330
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 331
    iget-object v6, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 332
    check-cast v6, Landroidx/compose/ui/text/Placeholder;

    .line 333
    iget v7, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 334
    iget v5, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 335
    const-class v8, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v2, v7, v5, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 336
    array-length v9, v8

    move/from16 v11, v17

    :goto_4b
    if-ge v11, v9, :cond_73

    aget-object v10, v8, v11

    check-cast v10, Landroidx/emoji2/text/EmojiSpan;

    .line 337
    invoke-interface {v2, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4b

    .line 338
    :cond_73
    new-instance v9, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .line 339
    iget-wide v10, v6, Landroidx/compose/ui/text/Placeholder;->a:J

    iget-wide v13, v6, Landroidx/compose/ui/text/Placeholder;->b:J

    .line 340
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v10

    move v8, v3

    move-object/from16 v18, v4

    .line 341
    iget-wide v3, v6, Landroidx/compose/ui/text/Placeholder;->a:J

    .line 342
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v3

    move/from16 p3, v1

    const-wide v0, 0x100000000L

    .line 343
    invoke-static {v3, v4, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v11

    if-eqz v11, :cond_74

    move-object v3, v12

    move/from16 v11, v17

    const-wide v0, 0x200000000L

    goto :goto_4c

    :cond_74
    const-wide v0, 0x200000000L

    .line 344
    invoke-static {v3, v4, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_75

    move-object v3, v12

    const/4 v11, 0x1

    goto :goto_4c

    :cond_75
    move-object v3, v12

    const/4 v11, 0x2

    .line 345
    :goto_4c
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v12

    .line 346
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v13

    const-wide v0, 0x100000000L

    .line 347
    invoke-static {v13, v14, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_76

    move/from16 v13, v17

    const-wide v0, 0x200000000L

    goto :goto_4d

    :cond_76
    const-wide v0, 0x200000000L

    .line 348
    invoke-static {v13, v14, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_77

    const/4 v13, 0x1

    goto :goto_4d

    :cond_77
    const/4 v13, 0x2

    .line 349
    :goto_4d
    iget v4, v6, Landroidx/compose/ui/text/Placeholder;->c:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_78

    move-object v14, v3

    move/from16 v15, v17

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/16 v16, 0x2

    goto :goto_50

    :cond_78
    const/4 v14, 0x2

    if-ne v4, v14, :cond_79

    move v15, v6

    move/from16 v16, v14

    const/4 v0, 0x3

    :goto_4e
    const/4 v1, 0x5

    :goto_4f
    move-object v14, v3

    goto :goto_50

    :cond_79
    const/4 v15, 0x3

    if-ne v4, v15, :cond_7a

    move/from16 v16, v14

    move v0, v15

    const/4 v1, 0x5

    move-object v14, v3

    move/from16 v15, v16

    goto :goto_50

    :cond_7a
    const/4 v0, 0x4

    if-ne v4, v0, :cond_7b

    move/from16 v16, v14

    move v0, v15

    goto :goto_4e

    :cond_7b
    const/4 v1, 0x5

    if-ne v4, v1, :cond_7c

    move/from16 v16, v15

    move v15, v0

    move/from16 v0, v16

    move/from16 v16, v14

    goto :goto_4f

    :cond_7c
    const/4 v0, 0x6

    if-ne v4, v0, :cond_7d

    move/from16 v16, v14

    move v0, v15

    move v15, v1

    goto :goto_4f

    :cond_7d
    const/4 v0, 0x7

    if-ne v4, v0, :cond_7e

    move/from16 v16, v14

    move v0, v15

    const/4 v15, 0x6

    goto :goto_4f

    .line 350
    :goto_50
    invoke-direct/range {v9 .. v15}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;-><init>(FIFILandroidx/compose/ui/unit/Density;I)V

    move-object v3, v14

    const/16 v4, 0x21

    .line 351
    invoke-interface {v2, v9, v7, v5, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v5, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object v12, v3

    move v3, v5

    goto/16 :goto_4a

    .line 352
    :cond_7e
    const-string v0, "Invalid PlaceholderVerticalAlign"

    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    throw p1

    :cond_7f
    move-object/from16 v0, p0

    move-object v9, v2

    .line 353
    :goto_51
    iput-object v9, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->h:Ljava/lang/CharSequence;

    .line 354
    new-instance v1, Landroidx/compose/ui/text/android/LayoutIntrinsics;

    iget-object v2, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget v3, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->l:I

    invoke-direct {v1, v9, v2, v3}, Landroidx/compose/ui/text/android/LayoutIntrinsics;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    iput-object v1, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->i:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    return-void

    .line 355
    :cond_80
    const-string v0, "Array is empty."

    invoke-static {v0}, Lfe;->o(Ljava/lang/String;)V

    throw p1

    :cond_81
    const/16 p1, 0x0

    .line 356
    const-string v0, "Invalid TextDirection."

    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->j:Landroidx/compose/ui/text/TypefaceDirtyTrackerLinkedList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/ui/text/TypefaceDirtyTrackerLinkedList;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->k:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->b:Landroidx/compose/ui/text/TextStyle;

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/ui/text/ParagraphIntrinsicsKt;->a(Landroidx/compose/ui/text/TextStyle;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    sget-object p0, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->a:Landroidx/compose/ui/text/platform/EmojiCompatStatus;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->a()Landroidx/compose/runtime/State;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    return v1

    .line 46
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 47
    return p0
.end method

.method public final b()F
    .locals 10

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->i:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->e:F

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->b:Landroid/text/TextPaint;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget p0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->e:F

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v2, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->a:Ljava/lang/CharSequence;

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Ljava/util/PriorityQueue;

    .line 39
    .line 40
    sget-object v3, Landroidx/compose/ui/text/android/LayoutIntrinsics_androidKt;->a:Lv1;

    .line 41
    .line 42
    const/16 v4, 0xa

    .line 43
    .line 44
    invoke-direct {v2, v4, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v5, 0x0

    .line 52
    :goto_0
    const/4 v6, -0x1

    .line 53
    if-eq v3, v6, :cond_3

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    const/4 v7, 0x1

    .line 60
    if-ge v6, v4, :cond_1

    .line 61
    .line 62
    new-instance v6, Lkotlin/ranges/IntRange;

    .line 63
    .line 64
    invoke-direct {v6, v5, v3, v7}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Lkotlin/ranges/IntRange;

    .line 76
    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    iget v8, v6, Lkotlin/ranges/IntProgression;->k:I

    .line 80
    .line 81
    iget v6, v6, Lkotlin/ranges/IntProgression;->j:I

    .line 82
    .line 83
    sub-int/2addr v8, v6

    .line 84
    sub-int v6, v3, v5

    .line 85
    .line 86
    if-ge v8, v6, :cond_2

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    new-instance v6, Lkotlin/ranges/IntRange;

    .line 92
    .line 93
    invoke-direct {v6, v5, v3, v7}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    move v9, v5

    .line 104
    move v5, v3

    .line 105
    move v3, v9

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/4 v3, 0x0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_6

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Lkotlin/ranges/IntRange;

    .line 130
    .line 131
    iget v3, v2, Lkotlin/ranges/IntProgression;->j:I

    .line 132
    .line 133
    iget v2, v2, Lkotlin/ranges/IntProgression;->k:I

    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->b()Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-static {v4, v3, v2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    move v3, v2

    .line 144
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_5

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Lkotlin/ranges/IntRange;

    .line 155
    .line 156
    iget v4, v2, Lkotlin/ranges/IntProgression;->j:I

    .line 157
    .line 158
    iget v2, v2, Lkotlin/ranges/IntProgression;->k:I

    .line 159
    .line 160
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->b()Ljava/lang/CharSequence;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-static {v5, v4, v2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    goto :goto_2

    .line 173
    :cond_5
    :goto_3
    iput v3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->e:F

    .line 174
    .line 175
    return v3

    .line 176
    :cond_6
    invoke-static {}, Lk8;->o()V

    .line 177
    .line 178
    .line 179
    return v3
.end method

.method public final c()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->i:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->c()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
