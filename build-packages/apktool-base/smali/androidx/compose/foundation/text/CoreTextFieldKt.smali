.class public abstract Landroidx/compose/foundation/text/CoreTextFieldKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/SolidColor;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 67

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v14, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move/from16 v15, p8

    move/from16 v4, p9

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move/from16 v7, p13

    move/from16 v8, p16

    move/from16 v9, p17

    .line 1
    move-object/from16 v12, p15

    check-cast v12, Landroidx/compose/runtime/GapComposer;

    const v13, 0x1d9f981

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v13, v8, 0x6

    const/16 v16, 0x2

    move/from16 p15, v13

    if-nez p15, :cond_1

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x4

    goto :goto_0

    :cond_0
    move/from16 v17, v16

    :goto_0
    or-int v17, v8, v17

    goto :goto_1

    :cond_1
    move/from16 v17, v8

    :goto_1
    and-int/lit8 v18, v8, 0x30

    const/16 v19, 0x10

    if-nez v18, :cond_3

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x20

    goto :goto_2

    :cond_2
    move/from16 v18, v19

    :goto_2
    or-int v17, v17, v18

    :cond_3
    const/16 v18, 0x20

    and-int/lit16 v13, v8, 0x180

    const/16 v20, 0x80

    const/16 v21, 0x100

    if-nez v13, :cond_5

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move/from16 v13, v21

    goto :goto_3

    :cond_4
    move/from16 v13, v20

    :goto_3
    or-int v17, v17, v13

    :cond_5
    and-int/lit16 v13, v8, 0xc00

    const/16 v22, 0x400

    if-nez v13, :cond_7

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x800

    goto :goto_4

    :cond_6
    move/from16 v13, v22

    :goto_4
    or-int v17, v17, v13

    :cond_7
    and-int/lit16 v13, v8, 0x6000

    const/16 v23, 0x2000

    if-nez v13, :cond_9

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x4000

    goto :goto_5

    :cond_8
    move/from16 v13, v23

    :goto_5
    or-int v17, v17, v13

    :cond_9
    const/high16 v13, 0x30000

    and-int v25, v8, v13

    const/high16 v26, 0x20000

    const/high16 v27, 0x10000

    move-object/from16 v11, p5

    if-nez v25, :cond_b

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    move/from16 v28, v26

    goto :goto_6

    :cond_a
    move/from16 v28, v27

    :goto_6
    or-int v17, v17, v28

    :cond_b
    const/high16 v28, 0x180000

    and-int v29, v8, v28

    if-nez v29, :cond_d

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    const/high16 v29, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v29, 0x80000

    :goto_7
    or-int v17, v17, v29

    :cond_d
    const/high16 v29, 0xc00000

    and-int v29, v8, v29

    if-nez v29, :cond_f

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    const/high16 v29, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v29, 0x400000

    :goto_8
    or-int v17, v17, v29

    :cond_f
    const/high16 v29, 0x6000000

    and-int v29, v8, v29

    if-nez v29, :cond_11

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v29

    if-eqz v29, :cond_10

    const/high16 v29, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v29, 0x2000000

    :goto_9
    or-int v17, v17, v29

    :cond_11
    const/high16 v29, 0x30000000

    and-int v29, v8, v29

    if-nez v29, :cond_13

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v29

    if-eqz v29, :cond_12

    const/high16 v29, 0x20000000

    goto :goto_a

    :cond_12
    const/high16 v29, 0x10000000

    :goto_a
    or-int v17, v17, v29

    :cond_13
    and-int/lit8 v29, v9, 0x6

    move/from16 v11, p10

    if-nez v29, :cond_15

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v29

    if-eqz v29, :cond_14

    const/16 v16, 0x4

    :cond_14
    or-int v16, v9, v16

    goto :goto_b

    :cond_15
    move/from16 v16, v9

    :goto_b
    and-int/lit8 v29, v9, 0x30

    if-nez v29, :cond_17

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    move/from16 v19, v18

    :cond_16
    or-int v16, v16, v19

    :cond_17
    move/from16 v19, v13

    and-int/lit16 v13, v9, 0x180

    if-nez v13, :cond_19

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    move/from16 v20, v21

    :cond_18
    or-int v16, v16, v20

    :cond_19
    and-int/lit16 v13, v9, 0xc00

    if-nez v13, :cond_1b

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v13

    if-eqz v13, :cond_1a

    const/16 v22, 0x800

    :cond_1a
    or-int v16, v16, v22

    :cond_1b
    and-int/lit16 v13, v9, 0x6000

    const/4 v11, 0x0

    if-nez v13, :cond_1d

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v13

    if-eqz v13, :cond_1c

    const/16 v23, 0x4000

    :cond_1c
    or-int v16, v16, v23

    :cond_1d
    and-int v13, v9, v19

    if-nez v13, :cond_1f

    move-object/from16 v13, p14

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    goto :goto_c

    :cond_1e
    move/from16 v26, v27

    :goto_c
    or-int v16, v16, v26

    goto :goto_d

    :cond_1f
    move-object/from16 v13, p14

    :goto_d
    or-int v11, v16, v28

    const v16, 0x12492493

    and-int v1, v17, v16

    const v2, 0x12492492

    if-ne v1, v2, :cond_21

    const v1, 0x92493

    and-int/2addr v1, v11

    const v2, 0x92492

    if-eq v1, v2, :cond_20

    goto :goto_e

    :cond_20
    const/4 v1, 0x0

    goto :goto_f

    :cond_21
    :goto_e
    const/4 v1, 0x1

    :goto_f
    and-int/lit8 v2, v17, 0x1

    invoke-virtual {v12, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->S()V

    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_23

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_10

    .line 2
    :cond_22
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    :cond_23
    :goto_10
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 3
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v1

    .line 4
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_24

    .line 5
    new-instance v1, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 6
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 7
    :cond_24
    check-cast v1, Landroidx/compose/ui/focus/FocusRequester;

    .line 8
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_25

    .line 9
    sget-object v7, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt;->a:Lkotlin/jvm/functions/Function1;

    .line 10
    new-instance v7, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 11
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 13
    :cond_25
    check-cast v7, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;

    .line 14
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v2, :cond_26

    .line 15
    new-instance v8, Landroidx/compose/ui/text/input/TextInputService;

    invoke-direct {v8, v7}, Landroidx/compose/ui/text/input/TextInputService;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    .line 16
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 17
    :cond_26
    check-cast v8, Landroidx/compose/ui/text/input/TextInputService;

    move-object/from16 v21, v7

    .line 18
    sget-object v7, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 19
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    .line 20
    move-object/from16 v16, v7

    check-cast v16, Landroidx/compose/ui/unit/Density;

    .line 21
    sget-object v7, Landroidx/compose/ui/platform/CompositionLocalsKt;->k:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 22
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    .line 23
    check-cast v7, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-object/from16 v22, v7

    .line 24
    sget-object v7, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 25
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-object/from16 v23, v8

    .line 26
    iget-wide v7, v7, Landroidx/compose/foundation/text/selection/TextSelectionColors;->b:J

    .line 27
    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->i:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 28
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    .line 29
    check-cast v9, Landroidx/compose/ui/focus/FocusManager;

    .line 30
    sget-object v13, Landroidx/compose/ui/platform/CompositionLocalsKt;->u:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 31
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    .line 32
    check-cast v13, Landroidx/compose/ui/platform/WindowInfo;

    move-object/from16 v26, v13

    .line 33
    sget-object v13, Landroidx/compose/ui/platform/CompositionLocalsKt;->q:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 34
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    .line 35
    check-cast v13, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    const/4 v14, 0x1

    if-ne v4, v14, :cond_27

    if-nez v15, :cond_27

    .line 36
    iget-boolean v14, v5, Landroidx/compose/ui/text/input/ImeOptions;->a:Z

    if-eqz v14, :cond_27

    .line 37
    sget-object v14, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_11

    :cond_27
    sget-object v14, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    :goto_11
    const v4, -0xcbd7bf2

    .line 38
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v4

    .line 39
    sget-object v15, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->g:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 40
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    move/from16 v27, v5

    .line 41
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v5

    if-nez v27, :cond_29

    if-ne v5, v2, :cond_28

    goto :goto_12

    :cond_28
    move/from16 v27, v11

    goto :goto_13

    .line 42
    :cond_29
    :goto_12
    new-instance v5, Lr1;

    move/from16 v27, v11

    const/16 v11, 0xc

    invoke-direct {v5, v11, v14}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 43
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 44
    :goto_13
    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x0

    invoke-static {v4, v15, v5, v12, v11}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 45
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 46
    iget-object v5, v4, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->f:Landroidx/compose/runtime/MutableState;

    .line 47
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/gestures/Orientation;

    if-eq v5, v14, :cond_2b

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 49
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v14, v1, :cond_2a

    .line 50
    const-string v1, "only single-line, non-wrap text fields can scroll horizontally"

    goto :goto_14

    .line 51
    :cond_2a
    const-string v1, "single-line, non-wrap text fields can only scroll horizontally"

    :goto_14
    const-string v2, "Mismatching scroller orientation; "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    and-int/lit8 v11, v17, 0xe

    const/4 v5, 0x4

    if-ne v11, v5, :cond_2c

    const/4 v14, 0x1

    goto :goto_15

    :cond_2c
    const/4 v14, 0x0

    :goto_15
    const v28, 0xe000

    and-int v15, v17, v28

    const/16 v5, 0x4000

    if-ne v15, v5, :cond_2d

    const/4 v5, 0x1

    goto :goto_16

    :cond_2d
    const/4 v5, 0x0

    :goto_16
    or-int/2addr v5, v14

    .line 53
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v14

    if-nez v5, :cond_2f

    if-ne v14, v2, :cond_2e

    goto :goto_17

    :cond_2e
    move-object/from16 v29, v1

    move-wide/from16 v34, v7

    goto/16 :goto_19

    .line 54
    :cond_2f
    :goto_17
    iget-object v5, v3, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 55
    invoke-static {v0, v5}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->a(Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v5

    iget-object v14, v5, Landroidx/compose/ui/text/input/TransformedText;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 56
    iget-object v15, v3, Landroidx/compose/ui/text/input/TextFieldValue;->c:Landroidx/compose/ui/text/TextRange;

    if-eqz v15, :cond_30

    move-object/from16 v29, v1

    .line 57
    iget-wide v0, v15, Landroidx/compose/ui/text/TextRange;->a:J

    .line 58
    sget v15, Landroidx/compose/ui/text/TextRange;->c:I

    move-wide/from16 v30, v0

    shr-long v0, v30, v18

    long-to-int v0, v0

    invoke-interface {v14, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result v0

    const-wide v32, 0xffffffffL

    move-wide/from16 v34, v7

    and-long v6, v30, v32

    long-to-int v1, v6

    .line 59
    invoke-interface {v14, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result v1

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 62
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 63
    iget-object v5, v5, Landroidx/compose/ui/text/input/TransformedText;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 64
    invoke-direct {v1, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 65
    new-instance v36, Landroidx/compose/ui/text/SpanStyle;

    const/16 v54, 0x0

    const v55, 0xefff

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    sget-object v53, Landroidx/compose/ui/text/style/TextDecoration;->c:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-direct/range {v36 .. v55}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    move-object/from16 v5, v36

    .line 66
    invoke-virtual {v1, v5, v6, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->a(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 67
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->e()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    .line 68
    new-instance v1, Landroidx/compose/ui/text/input/TransformedText;

    invoke-direct {v1, v0, v14}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    move-object v14, v1

    goto :goto_18

    :cond_30
    move-object/from16 v29, v1

    move-wide/from16 v34, v7

    move-object v14, v5

    .line 69
    :goto_18
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 70
    :goto_19
    move-object v0, v14

    check-cast v0, Landroidx/compose/ui/text/input/TransformedText;

    .line 71
    iget-object v1, v0, Landroidx/compose/ui/text/input/TransformedText;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 72
    iget-object v6, v0, Landroidx/compose/ui/text/input/TransformedText;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 73
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->w()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v5

    if-eqz v5, :cond_6e

    .line 74
    iget v7, v5, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    const/16 v20, 0x1

    or-int/lit8 v7, v7, 0x1

    .line 75
    iput v7, v5, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 76
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v7

    .line 77
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_32

    if-ne v8, v2, :cond_31

    goto :goto_1a

    :cond_31
    move-object/from16 v14, p3

    move/from16 v15, p8

    move-object/from16 p15, v0

    move-object v0, v1

    move-object/from16 v30, v4

    move-object v1, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v22

    goto :goto_1b

    .line 78
    :cond_32
    :goto_1a
    new-instance v8, Landroidx/compose/foundation/text/LegacyTextFieldState;

    move-object v7, v12

    .line 79
    new-instance v12, Landroidx/compose/foundation/text/TextDelegate;

    move/from16 v14, v18

    const/16 v18, 0x0

    move-object/from16 p15, v13

    move-object v13, v1

    move-object v1, v7

    move-object/from16 v7, p15

    move-object/from16 v14, p3

    move/from16 v15, p8

    move-object/from16 p15, v0

    move-object/from16 v17, v22

    const/4 v0, 0x4

    .line 80
    invoke-direct/range {v12 .. v18}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;I)V

    move-object/from16 v30, v4

    move-object v4, v12

    move-object v0, v13

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    .line 81
    invoke-direct {v8, v4, v5, v7}, Landroidx/compose/foundation/text/LegacyTextFieldState;-><init>(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V

    .line 82
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 83
    :goto_1b
    check-cast v8, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 84
    iget-object v4, v3, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    move-object v7, v6

    iget-wide v5, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 85
    iput-object v10, v8, Landroidx/compose/foundation/text/LegacyTextFieldState;->u:Lkotlin/jvm/functions/Function1;

    move/from16 v31, v11

    move-wide/from16 v10, v34

    .line 86
    iput-wide v10, v8, Landroidx/compose/foundation/text/LegacyTextFieldState;->z:J

    .line 87
    iget-object v10, v8, Landroidx/compose/foundation/text/LegacyTextFieldState;->r:Landroidx/compose/foundation/text/KeyboardActionRunner;

    move-object/from16 v11, p12

    .line 88
    iput-object v11, v10, Landroidx/compose/foundation/text/KeyboardActionRunner;->b:Landroidx/compose/foundation/text/KeyboardActions;

    .line 89
    iput-object v9, v10, Landroidx/compose/foundation/text/KeyboardActionRunner;->c:Landroidx/compose/ui/focus/FocusManager;

    .line 90
    iput-object v4, v8, Landroidx/compose/foundation/text/LegacyTextFieldState;->j:Landroidx/compose/ui/text/AnnotatedString;

    .line 91
    iget-object v4, v8, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    .line 92
    iget-object v10, v4, Landroidx/compose/foundation/text/TextDelegate;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 93
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    .line 94
    iget-object v10, v4, Landroidx/compose/foundation/text/TextDelegate;->b:Landroidx/compose/ui/text/TextStyle;

    .line 95
    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    .line 96
    iget-boolean v10, v4, Landroidx/compose/foundation/text/TextDelegate;->e:Z

    if-ne v10, v15, :cond_34

    .line 97
    iget v10, v4, Landroidx/compose/foundation/text/TextDelegate;->f:I

    move-object/from16 v16, v0

    const/4 v0, 0x1

    if-ne v10, v0, :cond_33

    .line 98
    iget v10, v4, Landroidx/compose/foundation/text/TextDelegate;->c:I

    const v0, 0x7fffffff

    if-ne v10, v0, :cond_33

    .line 99
    iget v0, v4, Landroidx/compose/foundation/text/TextDelegate;->d:I

    const/4 v10, 0x1

    if-ne v0, v10, :cond_33

    .line 100
    iget-object v0, v4, Landroidx/compose/foundation/text/TextDelegate;->g:Landroidx/compose/ui/unit/Density;

    .line 101
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 102
    iget-object v0, v4, Landroidx/compose/foundation/text/TextDelegate;->i:Ljava/util/List;

    .line 103
    sget-object v10, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 104
    iget-object v0, v4, Landroidx/compose/foundation/text/TextDelegate;->h:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    if-eq v0, v13, :cond_35

    :cond_33
    move-object/from16 v0, v16

    :cond_34
    move-object/from16 v16, v12

    goto :goto_1c

    :cond_35
    move-object/from16 v16, v12

    goto :goto_1d

    .line 105
    :goto_1c
    new-instance v12, Landroidx/compose/foundation/text/TextDelegate;

    const/16 v18, 0x0

    move-object/from16 v17, v13

    move-object v13, v0

    invoke-direct/range {v12 .. v18}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;I)V

    move-object v4, v12

    .line 106
    :goto_1d
    iget-object v0, v8, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    if-eq v0, v4, :cond_36

    const/4 v0, 0x1

    iput-boolean v0, v8, Landroidx/compose/foundation/text/LegacyTextFieldState;->p:Z

    goto :goto_1e

    :cond_36
    const/4 v0, 0x1

    .line 107
    :goto_1e
    iput-object v4, v8, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    .line 108
    iget-object v4, v8, Landroidx/compose/foundation/text/LegacyTextFieldState;->d:Landroidx/compose/ui/text/input/EditProcessor;

    .line 109
    iget-object v10, v8, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;

    .line 110
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    iget-object v12, v3, Landroidx/compose/ui/text/input/TextFieldValue;->c:Landroidx/compose/ui/text/TextRange;

    .line 112
    iget-object v13, v4, Landroidx/compose/ui/text/input/EditProcessor;->b:Landroidx/compose/ui/text/input/EditingBuffer;

    invoke-virtual {v13}, Landroidx/compose/ui/text/input/EditingBuffer;->c()Landroidx/compose/ui/text/TextRange;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    .line 113
    iget-object v15, v4, Landroidx/compose/ui/text/input/EditProcessor;->a:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 114
    iget-object v15, v15, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 115
    iget-object v15, v15, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 116
    iget-object v0, v3, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    move-object/from16 v17, v7

    .line 117
    iget-object v7, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 118
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_37

    .line 119
    new-instance v7, Landroidx/compose/ui/text/input/EditingBuffer;

    invoke-direct {v7, v0, v5, v6}, Landroidx/compose/ui/text/input/EditingBuffer;-><init>(Landroidx/compose/ui/text/AnnotatedString;J)V

    iput-object v7, v4, Landroidx/compose/ui/text/input/EditProcessor;->b:Landroidx/compose/ui/text/input/EditingBuffer;

    move v7, v13

    const/4 v0, 0x1

    :goto_1f
    const/4 v13, 0x0

    goto :goto_20

    .line 120
    :cond_37
    iget-object v0, v4, Landroidx/compose/ui/text/input/EditProcessor;->a:Landroidx/compose/ui/text/input/TextFieldValue;

    move v7, v13

    .line 121
    iget-wide v13, v0, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 122
    invoke-static {v13, v14, v5, v6}, Landroidx/compose/ui/text/TextRange;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_38

    .line 123
    iget-object v0, v4, Landroidx/compose/ui/text/input/EditProcessor;->b:Landroidx/compose/ui/text/input/EditingBuffer;

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->f(J)I

    move-result v13

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->e(J)I

    move-result v14

    invoke-virtual {v0, v13, v14}, Landroidx/compose/ui/text/input/EditingBuffer;->f(II)V

    const/4 v0, 0x0

    const/4 v13, 0x1

    goto :goto_20

    :cond_38
    const/4 v0, 0x0

    goto :goto_1f

    :goto_20
    const/4 v14, -0x1

    if-nez v12, :cond_3a

    .line 124
    iget-object v12, v4, Landroidx/compose/ui/text/input/EditProcessor;->b:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 125
    iput v14, v12, Landroidx/compose/ui/text/input/EditingBuffer;->d:I

    .line 126
    iput v14, v12, Landroidx/compose/ui/text/input/EditingBuffer;->e:I

    :cond_39
    move/from16 v32, v0

    goto :goto_21

    .line 127
    :cond_3a
    iget-wide v14, v12, Landroidx/compose/ui/text/TextRange;->a:J

    .line 128
    invoke-static {v14, v15}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v12

    if-nez v12, :cond_39

    .line 129
    iget-object v12, v4, Landroidx/compose/ui/text/input/EditProcessor;->b:Landroidx/compose/ui/text/input/EditingBuffer;

    move/from16 v32, v0

    invoke-static {v14, v15}, Landroidx/compose/ui/text/TextRange;->f(J)I

    move-result v0

    invoke-static {v14, v15}, Landroidx/compose/ui/text/TextRange;->e(J)I

    move-result v14

    invoke-virtual {v12, v0, v14}, Landroidx/compose/ui/text/input/EditingBuffer;->e(II)V

    :goto_21
    const-wide/16 v14, 0x0

    if-nez v32, :cond_3c

    if-nez v13, :cond_3b

    if-nez v7, :cond_3b

    goto :goto_22

    :cond_3b
    move-object v0, v3

    goto :goto_23

    .line 130
    :cond_3c
    :goto_22
    iget-object v0, v4, Landroidx/compose/ui/text/input/EditProcessor;->b:Landroidx/compose/ui/text/input/EditingBuffer;

    const/4 v7, -0x1

    .line 131
    iput v7, v0, Landroidx/compose/ui/text/input/EditingBuffer;->d:I

    .line 132
    iput v7, v0, Landroidx/compose/ui/text/input/EditingBuffer;->e:I

    const/4 v0, 0x0

    const/4 v7, 0x3

    .line 133
    invoke-static {v3, v0, v14, v15, v7}, Landroidx/compose/ui/text/input/TextFieldValue;->a(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v0

    .line 134
    :goto_23
    iget-object v7, v4, Landroidx/compose/ui/text/input/EditProcessor;->a:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 135
    iput-object v0, v4, Landroidx/compose/ui/text/input/EditProcessor;->a:Landroidx/compose/ui/text/input/TextFieldValue;

    if-eqz v10, :cond_3d

    .line 136
    iget-object v4, v10, Landroidx/compose/ui/text/input/TextInputSession;->a:Landroidx/compose/ui/text/input/TextInputService;

    .line 137
    iget-object v4, v4, Landroidx/compose/ui/text/input/TextInputService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 138
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/input/TextInputSession;

    .line 139
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 140
    iget-object v4, v10, Landroidx/compose/ui/text/input/TextInputSession;->b:Landroidx/compose/ui/text/input/PlatformTextInputService;

    invoke-interface {v4, v7, v0}, Landroidx/compose/ui/text/input/PlatformTextInputService;->f(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 141
    :cond_3d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3e

    .line 142
    new-instance v0, Landroidx/compose/foundation/text/UndoManager;

    .line 143
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 145
    :cond_3e
    move-object v10, v0

    check-cast v10, Landroidx/compose/foundation/text/UndoManager;

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 147
    iget-boolean v0, v10, Landroidx/compose/foundation/text/UndoManager;->e:Z

    if-nez v0, :cond_40

    .line 148
    iget-object v0, v10, Landroidx/compose/foundation/text/UndoManager;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    :cond_3f
    const-wide/16 v32, 0x1388

    add-long v14, v14, v32

    cmp-long v0, v12, v14

    if-lez v0, :cond_41

    .line 149
    :cond_40
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v10, Landroidx/compose/foundation/text/UndoManager;->d:Ljava/lang/Long;

    .line 150
    invoke-virtual {v10, v3}, Landroidx/compose/foundation/text/UndoManager;->a(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 151
    :cond_41
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_42

    .line 152
    invoke-static {v1}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 153
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 154
    :cond_42
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 155
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_43

    .line 156
    invoke-static {}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt;->a()Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    move-result-object v4

    .line 157
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 158
    :cond_43
    move-object v14, v4

    check-cast v14, Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 159
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_44

    .line 160
    new-instance v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-direct {v4, v10}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;-><init>(Landroidx/compose/foundation/text/UndoManager;)V

    .line 161
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 162
    :cond_44
    check-cast v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    move-object/from16 v7, v17

    .line 163
    iput-object v7, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 164
    iget-object v12, v8, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Lt6;

    .line 165
    iput-object v12, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->c:Lkotlin/jvm/functions/Function1;

    .line 166
    iput-object v8, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 167
    iget-object v12, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->e:Landroidx/compose/runtime/MutableState;

    check-cast v12, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 168
    new-instance v12, Landroidx/compose/ui/text/TextRange;

    invoke-direct {v12, v5, v6}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 169
    iput-object v12, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->v:Landroidx/compose/ui/text/TextRange;

    .line 170
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 171
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/platform/Clipboard;

    .line 172
    iput-object v5, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->g:Landroidx/compose/ui/platform/Clipboard;

    .line 173
    iput-object v0, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h:Lkotlinx/coroutines/CoroutineScope;

    .line 174
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->r:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 175
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/platform/TextToolbar;

    .line 176
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 177
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 178
    iput-object v5, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    move-object/from16 v5, v29

    .line 179
    iput-object v5, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->k:Landroidx/compose/ui/focus/FocusRequester;

    .line 180
    iget-object v6, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->l:Landroidx/compose/runtime/MutableState;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 181
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 182
    iget-object v6, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->m:Landroidx/compose/runtime/MutableState;

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 183
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    const v6, 0x753a5109

    .line 184
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 185
    sget-object v6, Landroidx/compose/foundation/text/selection/SelectedTextType;->j:Landroidx/compose/foundation/text/selection/SelectedTextType;

    move-object/from16 v13, p3

    .line 186
    iget-object v15, v13, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 187
    iget-object v15, v15, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    .line 188
    sget-object v17, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    const v12, 0x19a9604b

    .line 189
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 190
    sget-object v12, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 191
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    .line 192
    check-cast v12, Landroid/content/Context;

    .line 193
    sget-object v3, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 194
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    .line 195
    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    .line 196
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v18

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v29

    or-int v18, v18, v29

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v29

    or-int v18, v18, v29

    move-object/from16 v29, v5

    .line 197
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v5

    if-nez v18, :cond_45

    if-ne v5, v2, :cond_46

    .line 198
    :cond_45
    sget-object v5, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->b:Lt5;

    invoke-virtual {v5, v3, v12, v6, v15}, Lt5;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 199
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 200
    :cond_46
    check-cast v5, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    const/4 v3, 0x0

    .line 201
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 202
    iput-object v5, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->i:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 203
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 204
    invoke-virtual {v8}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    .line 205
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v12, v27

    and-int/lit16 v15, v12, 0x1c00

    const/16 v5, 0x800

    if-ne v15, v5, :cond_47

    const/4 v5, 0x1

    goto :goto_24

    :cond_47
    const/4 v5, 0x0

    :goto_24
    or-int/2addr v3, v5

    and-int v5, v12, v28

    const/16 v6, 0x4000

    if-ne v5, v6, :cond_48

    const/4 v5, 0x1

    goto :goto_25

    :cond_48
    const/4 v5, 0x0

    :goto_25
    or-int/2addr v3, v5

    move-object/from16 v5, v23

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    move/from16 v18, v3

    move/from16 v6, v31

    const/4 v3, 0x4

    if-ne v6, v3, :cond_49

    const/16 v22, 0x1

    goto :goto_26

    :cond_49
    const/16 v22, 0x0

    :goto_26
    or-int v18, v18, v22

    and-int/lit8 v22, v12, 0x70

    move-object/from16 v23, v10

    xor-int/lit8 v10, v22, 0x30

    const/16 v11, 0x20

    move-object/from16 v3, p11

    if-le v10, v11, :cond_4a

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4b

    :cond_4a
    and-int/lit8 v3, v12, 0x30

    if-ne v3, v11, :cond_4c

    :cond_4b
    const/4 v3, 0x1

    goto :goto_27

    :cond_4c
    const/4 v3, 0x0

    :goto_27
    or-int v3, v18, v3

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v18

    or-int v3, v3, v18

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v18

    or-int v3, v3, v18

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v18

    or-int v3, v3, v18

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v18

    or-int v3, v3, v18

    .line 206
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v11

    if-nez v3, :cond_4d

    if-ne v11, v2, :cond_4e

    :cond_4d
    move-object v3, v8

    move-object v8, v0

    goto :goto_28

    :cond_4e
    move-object v13, v1

    move-object v3, v5

    move/from16 v59, v6

    move-object v1, v8

    move-object/from16 v57, v9

    move/from16 v27, v12

    move-object/from16 v22, v14

    move-object/from16 v56, v21

    move-object/from16 v12, v29

    move-object/from16 v58, v30

    move-object/from16 v8, p0

    move-object/from16 v5, p11

    move-object/from16 v21, p15

    move-object v14, v2

    move-object v9, v7

    move/from16 v7, p13

    move-object v2, v0

    move-object v0, v11

    move-object/from16 v11, p6

    goto :goto_29

    .line 207
    :goto_28
    new-instance v0, Landroidx/compose/foundation/text/c;

    move-object/from16 v11, p6

    move-object v13, v1

    move-object v1, v3

    move-object v3, v5

    move/from16 v59, v6

    move-object v6, v7

    move-object/from16 v57, v9

    move/from16 v27, v12

    move-object v9, v14

    move-object/from16 v56, v21

    move-object/from16 v12, v29

    move-object/from16 v58, v30

    move-object/from16 v5, p11

    move-object/from16 v21, p15

    move-object v14, v2

    move-object v7, v4

    move-object/from16 v4, p0

    move/from16 v2, p13

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/c;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;ZLandroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V

    move-object/from16 v22, v7

    move v7, v2

    move-object v2, v8

    move-object v8, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v9

    move-object v9, v6

    .line 208
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 209
    :goto_29
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 210
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v25, v2

    invoke-static {v6, v12}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 211
    invoke-static {v2, v0}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 212
    invoke-static {v0, v7, v11}, Landroidx/compose/foundation/FocusableKt;->a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 213
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v13}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 214
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v28

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v29

    or-int v28, v28, v29

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v29

    or-int v28, v28, v29

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v29

    or-int v28, v28, v29

    move-object/from16 v29, v0

    const/16 v0, 0x20

    if-le v10, v0, :cond_50

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4f

    goto :goto_2a

    :cond_4f
    move-object/from16 v30, v1

    goto :goto_2b

    :cond_50
    :goto_2a
    move-object/from16 v30, v1

    and-int/lit8 v1, v27, 0x30

    if-ne v1, v0, :cond_51

    :goto_2b
    const/4 v0, 0x1

    goto :goto_2c

    :cond_51
    const/4 v0, 0x0

    :goto_2c
    or-int v0, v28, v0

    .line 215
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_53

    if-ne v1, v14, :cond_52

    goto :goto_2d

    :cond_52
    move-object v0, v1

    move-object/from16 v28, v12

    move-object/from16 v60, v25

    move-object/from16 v61, v29

    move-object/from16 v1, v30

    move-object/from16 v25, v2

    move-object v12, v6

    move-object v6, v3

    goto :goto_2e

    .line 216
    :cond_53
    :goto_2d
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;

    move-object v1, v6

    const/4 v6, 0x0

    move-object/from16 v28, v12

    move-object/from16 v60, v25

    move-object/from16 v61, v29

    move-object v12, v1

    move-object/from16 v1, v30

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v25, v2

    move-object v6, v3

    .line 217
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 218
    :goto_2e
    check-cast v0, Lkotlin/jvm/functions/Function2;

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v13, v2, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 219
    new-instance v0, Lt6;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Lt6;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;I)V

    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->f(Lt6;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v2, v0

    .line 220
    new-instance v0, Lpb;

    move v3, v7

    move-object v5, v9

    move-object v7, v2

    move-object/from16 v2, v28

    invoke-direct/range {v0 .. v5}, Lpb;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/focus/FocusRequester;ZLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;)V

    move-object/from16 v29, v2

    if-eqz p13, :cond_54

    .line 221
    new-instance v2, Landroidx/compose/foundation/text/k;

    invoke-direct {v2, v0, v11}, Landroidx/compose/foundation/text/k;-><init>(Lpb;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 222
    invoke-static {v7, v2}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_2f

    :cond_54
    move-object v0, v7

    .line 223
    :goto_2f
    iget-object v2, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->z:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;

    .line 224
    iget-object v3, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->y:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;

    .line 225
    new-instance v7, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$defaultTextFieldPointer$3;

    invoke-direct {v7, v4}, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$defaultTextFieldPointer$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    .line 226
    new-instance v30, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/16 v33, 0x0

    const/16 v35, 0x4

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v7

    invoke-direct/range {v30 .. v35}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    move-object/from16 v2, v30

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 227
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerIcon;->a:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->b:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    invoke-static {v0, v2}, Landroidx/compose/ui/input/pointer/PointerIconKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/AndroidPointerIconType;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 228
    new-instance v0, Lp2;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v8, v5, v3}, Lp2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v12, v0}, Landroidx/compose/ui/draw/DrawModifierKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v28

    .line 229
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x800

    if-ne v15, v2, :cond_55

    const/4 v2, 0x1

    goto :goto_30

    :cond_55
    const/4 v2, 0x0

    :goto_30
    or-int/2addr v0, v2

    move-object/from16 v2, v26

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v0, v7

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v0, v7

    move/from16 v15, v59

    if-ne v15, v3, :cond_56

    const/4 v3, 0x1

    goto :goto_31

    :cond_56
    const/4 v3, 0x0

    :goto_31
    or-int/2addr v0, v3

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 230
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_58

    if-ne v3, v14, :cond_57

    goto :goto_32

    :cond_57
    move-object/from16 v26, v2

    move-object v8, v6

    goto :goto_33

    .line 231
    :cond_58
    :goto_32
    new-instance v0, Landroidx/compose/foundation/text/d;

    move-object v3, v6

    move-object v6, v5

    move-object v5, v8

    move-object v8, v3

    move-object v3, v2

    move/from16 v2, p13

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/d;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;ZLandroidx/compose/ui/platform/WindowInfo;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    move-object/from16 v26, v3

    move-object v5, v6

    .line 232
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    move-object v3, v0

    .line 233
    :goto_33
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v3}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    .line 234
    new-instance v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifier;

    move-object/from16 v2, p0

    move-object/from16 v7, p11

    move-object v3, v1

    move-object v6, v4

    move-object/from16 v30, v9

    move-object/from16 v1, v21

    move/from16 v4, p13

    move-object v9, v8

    move-object/from16 v8, v29

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifier;-><init>(Landroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;ZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/focus/FocusRequester;)V

    move-object v8, v0

    move-object v1, v3

    move-object v7, v6

    move-object v3, v2

    move-object v6, v5

    if-eqz p13, :cond_5a

    .line 235
    move-object/from16 v0, v26

    check-cast v0, Landroidx/compose/ui/platform/LazyWindowInfo;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/LazyWindowInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 236
    iget-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->A:Landroidx/compose/runtime/MutableState;

    .line 237
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 238
    iget-wide v4, v0, Landroidx/compose/ui/text/TextRange;->a:J

    .line 239
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 240
    iget-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->B:Landroidx/compose/runtime/MutableState;

    .line 241
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 242
    iget-wide v4, v0, Landroidx/compose/ui/text/TextRange;->a:J

    .line 243
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_34

    :cond_59
    const/4 v0, 0x1

    goto :goto_35

    :cond_5a
    :goto_34
    const/4 v0, 0x0

    :goto_35
    if-eqz v0, :cond_5b

    .line 244
    new-instance v0, Landroidx/compose/foundation/text/h;

    move-object/from16 v2, p7

    invoke-direct {v0, v2, v1, v3, v6}, Landroidx/compose/foundation/text/h;-><init>(Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 245
    invoke-static {v12, v0}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_36

    :cond_5b
    move-object/from16 v2, p7

    move-object/from16 v21, v12

    .line 246
    :goto_36
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v0

    .line 247
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_5c

    if-ne v4, v14, :cond_5d

    .line 248
    :cond_5c
    new-instance v4, Lw6;

    const/4 v0, 0x0

    invoke-direct {v4, v7, v0}, Lw6;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 249
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 250
    :cond_5d
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v4, v13}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 251
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    const/4 v5, 0x4

    if-ne v15, v5, :cond_5e

    const/4 v4, 0x1

    goto :goto_37

    :cond_5e
    const/4 v4, 0x0

    :goto_37
    or-int/2addr v0, v4

    const/16 v4, 0x20

    move-object/from16 v5, p11

    if-le v10, v4, :cond_5f

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_60

    :cond_5f
    and-int/lit8 v10, v27, 0x30

    if-ne v10, v4, :cond_61

    :cond_60
    const/4 v4, 0x1

    goto :goto_38

    :cond_61
    const/4 v4, 0x0

    :goto_38
    or-int/2addr v0, v4

    .line 252
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_63

    if-ne v4, v14, :cond_62

    goto :goto_39

    :cond_62
    move-object v10, v5

    goto :goto_3a

    .line 253
    :cond_63
    :goto_39
    new-instance v0, Ls2;

    const/4 v5, 0x2

    move-object/from16 v4, p11

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Ls2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v10, v4

    .line 254
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    move-object v4, v0

    .line 255
    :goto_3a
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v4, v13}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    move-object v0, v8

    .line 256
    iget-object v8, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Lt6;

    move/from16 v15, p9

    const/4 v2, 0x1

    if-ne v15, v2, :cond_64

    const/4 v5, 0x1

    goto :goto_3b

    :cond_64
    const/4 v5, 0x0

    .line 257
    :goto_3b
    iget v9, v10, Landroidx/compose/ui/text/input/ImeOptions;->e:I

    move-object v2, v0

    .line 258
    new-instance v0, Landroidx/compose/foundation/text/j;

    move-object/from16 v3, p0

    move/from16 v15, p13

    move-object/from16 v63, v2

    move-object v2, v7

    move-object/from16 v7, v23

    move-object/from16 v62, v30

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/j;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;Lkotlin/jvm/functions/Function1;I)V

    move-object v4, v2

    move-object v5, v6

    .line 259
    invoke-static {v12, v0}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 260
    iget v2, v10, Landroidx/compose/ui/text/input/ImeOptions;->d:I

    const/4 v3, 0x7

    const/16 v6, 0x8

    if-ne v2, v3, :cond_65

    goto :goto_3c

    :cond_65
    if-ne v2, v6, :cond_66

    :goto_3c
    const/4 v7, 0x0

    goto :goto_3d

    :cond_66
    const/4 v7, 0x1

    .line 261
    :goto_3d
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 262
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v3

    move-object/from16 v8, v56

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v3, v9

    .line 263
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_68

    if-ne v9, v14, :cond_67

    goto :goto_3e

    :cond_67
    const/4 v3, 0x1

    goto :goto_3f

    .line 264
    :cond_68
    :goto_3e
    new-instance v9, Lq6;

    const/4 v3, 0x1

    invoke-direct {v9, v3, v8, v7}, Lq6;-><init>(ILjava/lang/Object;Z)V

    .line 265
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 266
    :goto_3f
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v7, v9}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->a(ZZLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 267
    sget-object v7, Landroidx/compose/foundation/text/AutofillHighlightKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 268
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Brush;

    .line 269
    sget-object v9, Landroidx/compose/foundation/text/AutofillHighlightKt;->b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 270
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/Color;

    move-object/from16 v17, v7

    .line 271
    iget-wide v6, v9, Landroidx/compose/ui/graphics/Color;->a:J

    const v9, 0x4dffeb3b    # 5.36700768E8f

    move-object/from16 v18, v4

    .line 272
    invoke-static {v9}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v3

    .line 273
    invoke-static {v6, v7, v3, v4}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v3

    if-nez v3, :cond_69

    .line 274
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    invoke-direct {v3, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    move-object v7, v3

    goto :goto_40

    :cond_69
    move-object/from16 v7, v17

    .line 275
    :goto_40
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 276
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_6a

    if-ne v4, v14, :cond_6b

    .line 277
    :cond_6a
    new-instance v4, Lb;

    const/16 v3, 0xa

    invoke-direct {v4, v3, v1, v7}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 278
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 279
    :cond_6b
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v4}, Landroidx/compose/ui/draw/DrawModifierKt;->d(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object/from16 v4, p2

    .line 280
    invoke-interface {v4, v3}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object/from16 v7, v18

    .line 281
    invoke-static {v3, v8, v1, v7}, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNodeKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 282
    invoke-interface {v3, v2}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object/from16 v3, v61

    .line 283
    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 284
    new-instance v3, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1;

    move-object/from16 v9, v57

    invoke-direct {v3, v9, v1}, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1;-><init>(Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/foundation/text/LegacyTextFieldState;)V

    invoke-static {v2, v3}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 285
    new-instance v3, Landroidx/compose/foundation/text/CoreTextFieldKt$previewKeyEventToDeselectOnBack$1;

    invoke-direct {v3, v1, v7}, Landroidx/compose/foundation/text/CoreTextFieldKt$previewKeyEventToDeselectOnBack$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    invoke-static {v2, v3}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 286
    invoke-interface {v2, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 287
    new-instance v2, Ldh;

    move-object/from16 v3, v58

    invoke-direct {v2, v3, v15, v11}, Ldh;-><init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V

    invoke-static {v0, v2}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v2, v62

    .line 288
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v2, v63

    .line 289
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 290
    new-instance v2, Lt6;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Lt6;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;I)V

    invoke-static {v0, v2}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 291
    new-instance v2, Lzc;

    move-object/from16 v8, v60

    const/16 v9, 0x8

    invoke-direct {v2, v9, v7, v8}, Lzc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifier_androidKt;->a(Landroidx/compose/ui/Modifier;Lzc;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v15, :cond_6c

    .line 292
    invoke-virtual {v1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 293
    iget-object v2, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->q:Landroidx/compose/runtime/MutableState;

    .line 294
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 295
    move-object/from16 v2, v26

    check-cast v2, Landroidx/compose/ui/platform/LazyWindowInfo;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/LazyWindowInfo;->a()Z

    move-result v2

    if-eqz v2, :cond_6c

    const/16 v20, 0x1

    goto :goto_41

    :cond_6c
    move/from16 v20, v6

    :goto_41
    if-eqz v20, :cond_6d

    .line 296
    sget-object v2, Landroidx/compose/foundation/Magnifier_androidKt;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 297
    new-instance v2, Lb0;

    const/16 v6, 0x9

    invoke-direct {v2, v6, v7}, Lb0;-><init>(ILjava/lang/Object;)V

    .line 298
    invoke-static {v12, v2}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    :goto_42
    move-object v2, v0

    goto :goto_43

    :cond_6d
    move-object v6, v12

    goto :goto_42

    .line 299
    :goto_43
    new-instance v0, Lu6;

    move-object/from16 v9, p4

    move-object/from16 v19, p5

    move/from16 v4, p10

    move-object/from16 v65, v2

    move-object v15, v7

    move-object/from16 v18, v8

    move-object/from16 v64, v13

    move-object/from16 v10, v21

    move-object/from16 v14, v22

    move-object/from16 v12, v24

    move-object/from16 v17, v26

    move-object/from16 v11, v28

    move-object/from16 v8, p0

    move-object/from16 v2, p3

    move-object v7, v3

    move-object v13, v6

    move-object/from16 v21, v16

    move/from16 v16, v20

    move/from16 v6, p8

    move-object v3, v1

    move-object/from16 v20, v5

    move/from16 v5, p9

    move-object/from16 v1, p14

    invoke-direct/range {v0 .. v21}, Lu6;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/LegacyTextFieldState;IIZLandroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/ui/platform/WindowInfo;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;)V

    move-object v4, v15

    const v1, -0x308d4209

    move-object/from16 v7, v64

    invoke-static {v1, v0, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0x180

    move-object/from16 v2, v65

    invoke-static {v2, v4, v0, v7, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_44

    .line 300
    :cond_6e
    const-string v0, "no recompose scope found"

    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    return-void

    :cond_6f
    move-object v7, v12

    .line 301
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 302
    :goto_44
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_70

    move-object v1, v0

    new-instance v0, Lv6;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v66, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v17}, Lv6;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/SolidColor;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    move-object/from16 v1, v66

    .line 303
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_70
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x795d8dec

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p4

    .line 19
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v1, 0x10

    .line 29
    .line 30
    :goto_1
    or-int/2addr v0, v1

    .line 31
    and-int/lit16 v1, v0, 0x93

    .line 32
    .line 33
    const/16 v2, 0x92

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    if-eq v1, v2, :cond_2

    .line 37
    .line 38
    move v1, v3

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    :goto_2
    and-int/lit8 v2, v0, 0x1

    .line 42
    .line 43
    invoke-virtual {p3, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 50
    .line 51
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-wide v4, p3, Landroidx/compose/runtime/GapComposer;->T:J

    .line 56
    .line 57
    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {p3, p0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 75
    .line 76
    .line 77
    iget-boolean v6, p3, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 78
    .line 79
    if-eqz v6, :cond_3

    .line 80
    .line 81
    sget-object v6, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 82
    .line 83
    invoke-virtual {p3, v6}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 88
    .line 89
    .line 90
    :goto_3
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 91
    .line 92
    invoke-static {p3, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 93
    .line 94
    .line 95
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 96
    .line 97
    invoke-static {p3, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 105
    .line 106
    invoke-static {p3, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 113
    .line 114
    invoke-static {p3, v5, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 115
    .line 116
    .line 117
    shr-int/lit8 v0, v0, 0x3

    .line 118
    .line 119
    and-int/lit8 v0, v0, 0x7e

    .line 120
    .line 121
    invoke-static {p1, p2, p3, v0}, Landroidx/compose/foundation/text/ContextMenu_androidKt;->a(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_4
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 129
    .line 130
    .line 131
    :goto_4
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    if-eqz p3, :cond_5

    .line 136
    .line 137
    new-instance v0, Lu;

    .line 138
    .line 139
    const/4 v5, 0x7

    .line 140
    move-object v1, p0

    .line 141
    move-object v2, p1

    .line 142
    move-object v3, p2

    .line 143
    move v4, p4

    .line 144
    invoke-direct/range {v0 .. v5}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 145
    .line 146
    .line 147
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 148
    .line 149
    :cond_5
    return-void
.end method

.method public static final c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x25552d88

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p3

    .line 19
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x20

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v1, 0x10

    .line 30
    .line 31
    :goto_1
    or-int/2addr v0, v1

    .line 32
    and-int/lit8 v1, v0, 0x13

    .line 33
    .line 34
    const/16 v3, 0x12

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eq v1, v3, :cond_2

    .line 39
    .line 40
    move v1, v4

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move v1, v5

    .line 43
    :goto_2
    and-int/lit8 v3, v0, 0x1

    .line 44
    .line 45
    invoke-virtual {p2, v3, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_d

    .line 50
    .line 51
    if-eqz p1, :cond_c

    .line 52
    .line 53
    const v1, 0x5b336eec

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {v3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    iget-object v3, v3, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 71
    .line 72
    iget-object v7, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 73
    .line 74
    if-eqz v7, :cond_3

    .line 75
    .line 76
    iget-boolean v7, v7, Landroidx/compose/foundation/text/LegacyTextFieldState;->p:Z

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    move v7, v4

    .line 80
    :goto_3
    if-nez v7, :cond_4

    .line 81
    .line 82
    move-object v6, v3

    .line 83
    :cond_4
    if-nez v6, :cond_5

    .line 84
    .line 85
    const v0, 0x5b336eeb

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_8

    .line 95
    .line 96
    :cond_5
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-wide v7, v1, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 104
    .line 105
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_8

    .line 110
    .line 111
    const v1, 0x7dc11ac6

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iget-wide v7, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 124
    .line 125
    shr-long v2, v7, v2

    .line 126
    .line 127
    long-to-int v2, v2

    .line 128
    invoke-interface {v1, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 133
    .line 134
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    iget-wide v7, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 139
    .line 140
    const-wide v9, 0xffffffffL

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    and-long/2addr v7, v9

    .line 146
    long-to-int v3, v7

    .line 147
    invoke-interface {v2, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-virtual {v6, v1}, Landroidx/compose/ui/text/TextLayoutResult;->a(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    sub-int/2addr v2, v4

    .line 156
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-virtual {v6, v2}, Landroidx/compose/ui/text/TextLayoutResult;->a(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 165
    .line 166
    if-eqz v3, :cond_6

    .line 167
    .line 168
    iget-object v3, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->m:Landroidx/compose/runtime/MutableState;

    .line 169
    .line 170
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 171
    .line 172
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Ljava/lang/Boolean;

    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-ne v3, v4, :cond_6

    .line 183
    .line 184
    const v3, 0x7dc77b9a

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 188
    .line 189
    .line 190
    shl-int/lit8 v3, v0, 0x6

    .line 191
    .line 192
    and-int/lit16 v3, v3, 0x380

    .line 193
    .line 194
    or-int/lit8 v3, v3, 0x6

    .line 195
    .line 196
    invoke-static {v4, v1, p0, p2, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->a(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_6
    const v1, 0x7dcb87ae

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 210
    .line 211
    .line 212
    :goto_4
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 213
    .line 214
    if-eqz v1, :cond_7

    .line 215
    .line 216
    iget-object v1, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->n:Landroidx/compose/runtime/MutableState;

    .line 217
    .line 218
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 219
    .line 220
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    check-cast v1, Ljava/lang/Boolean;

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-ne v1, v4, :cond_7

    .line 231
    .line 232
    const v1, 0x7dcccf7b

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 236
    .line 237
    .line 238
    shl-int/lit8 v0, v0, 0x6

    .line 239
    .line 240
    and-int/lit16 v0, v0, 0x380

    .line 241
    .line 242
    or-int/lit8 v0, v0, 0x6

    .line 243
    .line 244
    invoke-static {v5, v2, p0, p2, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->a(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 248
    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_7
    const v0, 0x7dd0d7ce    # 3.4699993E37f

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 258
    .line 259
    .line 260
    :goto_5
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 261
    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_8
    const v0, 0x7dd12d0e

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 271
    .line 272
    .line 273
    :goto_6
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 274
    .line 275
    if-eqz v0, :cond_b

    .line 276
    .line 277
    iget-object v1, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->l:Landroidx/compose/runtime/MutableState;

    .line 278
    .line 279
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->t:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 280
    .line 281
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 282
    .line 283
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    iget-object v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 290
    .line 291
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 292
    .line 293
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-nez v2, :cond_9

    .line 298
    .line 299
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 300
    .line 301
    move-object v3, v1

    .line 302
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 303
    .line 304
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_b

    .line 312
    .line 313
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 314
    .line 315
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    check-cast v0, Ljava/lang/Boolean;

    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_a

    .line 326
    .line 327
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->s()V

    .line 328
    .line 329
    .line 330
    goto :goto_7

    .line 331
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p()V

    .line 332
    .line 333
    .line 334
    :cond_b
    :goto_7
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 335
    .line 336
    .line 337
    :goto_8
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 338
    .line 339
    .line 340
    goto :goto_9

    .line 341
    :cond_c
    const v0, 0x768ee72a

    .line 342
    .line 343
    .line 344
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p()V

    .line 351
    .line 352
    .line 353
    goto :goto_9

    .line 354
    :cond_d
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 355
    .line 356
    .line 357
    :goto_9
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    if-eqz p2, :cond_e

    .line 362
    .line 363
    new-instance v0, Lt;

    .line 364
    .line 365
    invoke-direct {v0, p0, p1, p3, v4}, Lt;-><init>(Ljava/lang/Object;ZII)V

    .line 366
    .line 367
    .line 368
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 369
    .line 370
    :cond_e
    return-void
.end method

.method public static final d(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p1, -0x5597ad88

    .line 5
    .line 6
    .line 7
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x2

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p1, v0

    .line 20
    :goto_0
    or-int/2addr p1, p2

    .line 21
    and-int/lit8 v1, p1, 0x3

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v6, 0x0

    .line 25
    if-eq v1, v0, :cond_1

    .line 26
    .line 27
    move v0, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, v6

    .line 30
    :goto_1
    and-int/2addr p1, v2

    .line 31
    invoke-virtual {v4, p1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_c

    .line 36
    .line 37
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 38
    .line 39
    if-eqz p1, :cond_b

    .line 40
    .line 41
    iget-object p1, p1, Landroidx/compose/foundation/text/LegacyTextFieldState;->o:Landroidx/compose/runtime/MutableState;

    .line 42
    .line 43
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ne p1, v2, :cond_b

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->n()Landroidx/compose/ui/text/AnnotatedString;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_b

    .line 62
    .line 63
    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-lez p1, :cond_b

    .line 70
    .line 71
    const p1, -0x7de7ecc8

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 86
    .line 87
    if-nez p1, :cond_2

    .line 88
    .line 89
    if-ne v0, v1, :cond_3

    .line 90
    .line 91
    :cond_2
    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    check-cast v0, Landroidx/compose/foundation/text/TextDragObserver;

    .line 100
    .line 101
    sget-object p1, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 102
    .line 103
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroidx/compose/ui/unit/Density;

    .line 108
    .line 109
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    iget-wide v7, v5, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 116
    .line 117
    sget v5, Landroidx/compose/ui/text/TextRange;->c:I

    .line 118
    .line 119
    const/16 v5, 0x20

    .line 120
    .line 121
    shr-long/2addr v7, v5

    .line 122
    long-to-int v7, v7

    .line 123
    invoke-interface {v3, v7}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    iget-object v7, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 128
    .line 129
    if-eqz v7, :cond_4

    .line 130
    .line 131
    invoke-virtual {v7}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    goto :goto_2

    .line 136
    :cond_4
    const/4 v7, 0x0

    .line 137
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    iget-object v7, v7, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 141
    .line 142
    iget-object v8, v7, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 143
    .line 144
    iget-object v8, v8, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 145
    .line 146
    iget-object v8, v8, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    invoke-static {v3, v6, v8}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-virtual {v7, v3}, Landroidx/compose/ui/text/TextLayoutResult;->c(I)Landroidx/compose/ui/geometry/Rect;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    iget v7, v3, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 161
    .line 162
    const/high16 v8, 0x40000000    # 2.0f

    .line 163
    .line 164
    invoke-interface {p1, v8}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    div-float/2addr p1, v8

    .line 169
    add-float/2addr p1, v7

    .line 170
    iget v3, v3, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 171
    .line 172
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    int-to-long v7, p1

    .line 177
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    int-to-long v9, p1

    .line 182
    shl-long/2addr v7, v5

    .line 183
    const-wide v11, 0xffffffffL

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    and-long/2addr v9, v11

    .line 189
    or-long/2addr v7, v9

    .line 190
    invoke-virtual {v4, v7, v8}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    if-nez p1, :cond_5

    .line 199
    .line 200
    if-ne v3, v1, :cond_6

    .line 201
    .line 202
    :cond_5
    new-instance v3, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1$1;

    .line 203
    .line 204
    invoke-direct {v3, v7, v8}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1$1;-><init>(J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_6
    check-cast v3, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 211
    .line 212
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    or-int/2addr p1, v5

    .line 221
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    if-nez p1, :cond_7

    .line 226
    .line 227
    if-ne v5, v1, :cond_8

    .line 228
    .line 229
    :cond_7
    new-instance v5, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;

    .line 230
    .line 231
    invoke-direct {v5, v0, p0}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_8
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 238
    .line 239
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 240
    .line 241
    invoke-static {p1, v0, v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {v4, v7, v8}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    if-nez v0, :cond_9

    .line 254
    .line 255
    if-ne v5, v1, :cond_a

    .line 256
    .line 257
    :cond_9
    new-instance v5, Ly0;

    .line 258
    .line 259
    invoke-direct {v5, v2, v7, v8}, Ly0;-><init>(IJ)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :cond_a
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 266
    .line 267
    invoke-static {p1, v6, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    move-object v0, v3

    .line 272
    const-wide/16 v2, 0x0

    .line 273
    .line 274
    const/4 v5, 0x0

    .line 275
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->a(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_b
    const p1, -0x7dd3f3f6

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_c
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 293
    .line 294
    .line 295
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    if-eqz p1, :cond_d

    .line 300
    .line 301
    new-instance v0, Ld;

    .line 302
    .line 303
    const/4 v1, 0x6

    .line 304
    invoke-direct {v0, p2, v1, p0}, Ld;-><init>(IILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 308
    .line 309
    :cond_d
    return-void
.end method

.method public static final e(Landroidx/compose/foundation/text/LegacyTextFieldState;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->d:Landroidx/compose/ui/text/input/EditProcessor;

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Lt6;

    .line 9
    .line 10
    iget-object v2, v2, Landroidx/compose/ui/text/input/EditProcessor;->a:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    const/4 v6, 0x3

    .line 15
    invoke-static {v2, v1, v4, v5, v6}, Landroidx/compose/ui/text/input/TextFieldValue;->a(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v3, v2}, Lt6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Landroidx/compose/ui/text/input/TextInputSession;->a:Landroidx/compose/ui/text/input/TextInputService;

    .line 23
    .line 24
    iget-object v3, v2, Landroidx/compose/ui/text/input/TextInputService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    :cond_0
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    iget-object v0, v2, Landroidx/compose/ui/text/input/TextInputService;->a:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 33
    .line 34
    invoke-interface {v0}, Landroidx/compose/ui/text/input/PlatformTextInputService;->d()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eq v4, v0, :cond_0

    .line 43
    .line 44
    :cond_2
    :goto_0
    iput-object v1, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;

    .line 45
    .line 46
    return-void
.end method

.method public static final f(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 11

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    move-object v2, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_1
    iget-object v8, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    if-nez v8, :cond_2

    .line 32
    .line 33
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 38
    .line 39
    .line 40
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    if-nez v7, :cond_3

    .line 42
    .line 43
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    :try_start_3
    iget-object v5, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    .line 48
    .line 49
    iget-object v6, v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    move-object v4, p1

    .line 56
    move-object v10, p2

    .line 57
    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->b(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/text/input/TextInputSession;ZLandroidx/compose/ui/text/input/OffsetMapping;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p0, v0

    .line 66
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method
