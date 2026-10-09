.class public abstract Landroidx/compose/foundation/lazy/grid/LazyGridKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move-object/from16 v4, p3

    move/from16 v0, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v12, p9

    move/from16 v13, p11

    .line 1
    move-object/from16 v14, p10

    check-cast v14, Landroidx/compose/runtime/GapComposer;

    const v2, 0x2a3e8512

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v13

    goto :goto_1

    :cond_1
    move v2, v13

    :goto_1
    and-int/lit8 v9, v13, 0x30

    if-nez v9, :cond_3

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_2

    :cond_2
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v2, v9

    :cond_3
    and-int/lit16 v9, v13, 0x180

    if-nez v9, :cond_6

    and-int/lit16 v9, v13, 0x200

    if-nez v9, :cond_4

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_3

    :cond_4
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v9

    :goto_3
    if-eqz v9, :cond_5

    const/16 v9, 0x100

    goto :goto_4

    :cond_5
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v2, v9

    :cond_6
    and-int/lit16 v9, v13, 0xc00

    if-nez v9, :cond_8

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x800

    goto :goto_5

    :cond_7
    const/16 v9, 0x400

    :goto_5
    or-int/2addr v2, v9

    :cond_8
    and-int/lit16 v9, v13, 0x6000

    const/4 v10, 0x0

    if-nez v9, :cond_a

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x4000

    goto :goto_6

    :cond_9
    const/16 v9, 0x2000

    :goto_6
    or-int/2addr v2, v9

    :cond_a
    const/high16 v9, 0x30000

    and-int v18, v13, v9

    const/4 v5, 0x1

    move/from16 v19, v9

    if-nez v18, :cond_c

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v18

    if-eqz v18, :cond_b

    const/high16 v18, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v18, 0x10000

    :goto_7
    or-int v2, v2, v18

    :cond_c
    const/high16 v18, 0x180000

    and-int v20, v13, v18

    move-object/from16 v5, p4

    if-nez v20, :cond_e

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/high16 v22, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v22, 0x80000

    :goto_8
    or-int v2, v2, v22

    :cond_e
    const/high16 v22, 0xc00000

    and-int v23, v13, v22

    if-nez v23, :cond_10

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v23

    if-eqz v23, :cond_f

    const/high16 v23, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v23, 0x400000

    :goto_9
    or-int v2, v2, v23

    :cond_10
    const/high16 v23, 0x6000000

    and-int v23, v13, v23

    move-object/from16 v9, p6

    if-nez v23, :cond_12

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    const/high16 v24, 0x4000000

    goto :goto_a

    :cond_11
    const/high16 v24, 0x2000000

    :goto_a
    or-int v2, v2, v24

    :cond_12
    const/high16 v24, 0x30000000

    and-int v24, v13, v24

    if-nez v24, :cond_14

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    const/high16 v24, 0x20000000

    goto :goto_b

    :cond_13
    const/high16 v24, 0x10000000

    :goto_b
    or-int v2, v2, v24

    :cond_14
    move/from16 v24, v2

    and-int/lit8 v2, p12, 0x6

    if-nez v2, :cond_16

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x4

    goto :goto_c

    :cond_15
    const/4 v2, 0x2

    :goto_c
    or-int v2, p12, v2

    goto :goto_d

    :cond_16
    move/from16 v2, p12

    :goto_d
    and-int/lit8 v25, p12, 0x30

    if-nez v25, :cond_18

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    const/16 v16, 0x20

    goto :goto_e

    :cond_17
    const/16 v16, 0x10

    :goto_e
    or-int v2, v2, v16

    :cond_18
    const v16, 0x12492493

    and-int v10, v24, v16

    const v11, 0x12492492

    const/16 v15, 0x12

    if-ne v10, v11, :cond_1a

    and-int/lit8 v10, v2, 0x13

    if-eq v10, v15, :cond_19

    goto :goto_f

    :cond_19
    const/4 v10, 0x0

    goto :goto_10

    :cond_1a
    :goto_f
    const/4 v10, 0x1

    :goto_10
    and-int/lit8 v11, v24, 0x1

    invoke-virtual {v14, v11, v10}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    move-result v10

    if-eqz v10, :cond_4c

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->S()V

    and-int/lit8 v10, v13, 0x1

    if-eqz v10, :cond_1c

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Z

    move-result v10

    if-eqz v10, :cond_1b

    goto :goto_11

    .line 2
    :cond_1b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    :cond_1c
    :goto_11
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->q()V

    shr-int/lit8 v26, v24, 0x3

    and-int/lit8 v27, v26, 0xe

    and-int/lit8 v10, v2, 0x70

    or-int v10, v27, v10

    .line 3
    invoke-static {v12, v14}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    and-int/lit8 v28, v10, 0xe

    xor-int/lit8 v15, v28, 0x6

    move/from16 v28, v2

    const/4 v2, 0x4

    if-le v15, v2, :cond_1d

    .line 4
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1e

    :cond_1d
    and-int/lit8 v10, v10, 0x6

    if-ne v10, v2, :cond_1f

    :cond_1e
    const/4 v2, 0x1

    goto :goto_12

    :cond_1f
    const/4 v2, 0x0

    .line 5
    :goto_12
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v10

    .line 6
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_20

    if-ne v10, v15, :cond_21

    .line 7
    :cond_20
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->j()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v2

    new-instance v10, Lo1;

    const/16 v5, 0x12

    invoke-direct {v10, v11, v5}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    invoke-static {v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 8
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->j()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v5

    new-instance v10, Landroidx/compose/foundation/lazy/grid/c;

    invoke-direct {v10, v2, v3}, Landroidx/compose/foundation/lazy/grid/c;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    invoke-static {v5, v10}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v31

    .line 9
    new-instance v30, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderKt$rememberLazyGridItemProviderLambda$1$1;

    .line 10
    const-string v34, "getValue()Ljava/lang/Object;"

    const/16 v35, 0x0

    .line 11
    const-class v32, Landroidx/compose/runtime/State;

    const-string v33, "value"

    invoke-direct/range {v30 .. v35}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v10, v30

    .line 12
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 13
    :cond_21
    move-object v5, v10

    check-cast v5, Lkotlin/reflect/KProperty0;

    shr-int/lit8 v2, v24, 0x9

    and-int/lit8 v2, v2, 0x70

    or-int v2, v27, v2

    and-int/lit8 v10, v2, 0xe

    xor-int/lit8 v10, v10, 0x6

    const/4 v11, 0x4

    if-le v10, v11, :cond_22

    .line 14
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_23

    :cond_22
    and-int/lit8 v10, v2, 0x6

    if-ne v10, v11, :cond_24

    :cond_23
    const/4 v10, 0x1

    goto :goto_13

    :cond_24
    const/4 v10, 0x0

    :goto_13
    and-int/lit8 v11, v2, 0x70

    xor-int/lit8 v11, v11, 0x30

    move/from16 v30, v2

    const/16 v2, 0x20

    if-le v11, v2, :cond_25

    const/4 v11, 0x0

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v16

    if-nez v16, :cond_26

    :cond_25
    and-int/lit8 v11, v30, 0x30

    if-ne v11, v2, :cond_27

    :cond_26
    const/4 v11, 0x1

    goto :goto_14

    :cond_27
    const/4 v11, 0x0

    :goto_14
    or-int v2, v10, v11

    .line 15
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v10

    if-nez v2, :cond_28

    if-ne v10, v15, :cond_29

    .line 16
    :cond_28
    new-instance v10, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;

    invoke-direct {v10, v3}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    .line 17
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 18
    :cond_29
    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;

    .line 19
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v15, :cond_2a

    .line 20
    invoke-static {v14}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    .line 21
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 22
    :cond_2a
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 23
    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->g:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 24
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    .line 25
    check-cast v11, Landroidx/compose/ui/graphics/GraphicsContext;

    move-object/from16 v30, v2

    .line 26
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->x:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 27
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 29
    sget-object v2, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;->a:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;

    goto :goto_15

    :cond_2b
    const/4 v2, 0x0

    :goto_15
    and-int/lit8 v12, v24, 0x70

    const v31, 0x7fff0

    and-int v31, v24, v31

    const/16 v29, 0x12

    shl-int/lit8 v28, v28, 0x12

    const/high16 v29, 0x380000

    and-int v28, v28, v29

    or-int v28, v31, v28

    shr-int/lit8 v31, v24, 0x6

    const/high16 v32, 0x1c00000

    and-int v31, v31, v32

    move-object/from16 v33, v2

    or-int v2, v28, v31

    and-int/lit8 v28, v2, 0x70

    move-object/from16 v31, v5

    xor-int/lit8 v5, v28, 0x30

    const/16 v9, 0x20

    if-le v5, v9, :cond_2c

    .line 30
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    :cond_2c
    and-int/lit8 v5, v2, 0x30

    if-ne v5, v9, :cond_2e

    :cond_2d
    const/4 v5, 0x1

    goto :goto_16

    :cond_2e
    const/4 v5, 0x0

    :goto_16
    and-int/lit16 v9, v2, 0x380

    xor-int/lit16 v9, v9, 0x180

    const/16 v3, 0x100

    if-le v9, v3, :cond_2f

    .line 31
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_30

    :cond_2f
    and-int/lit16 v9, v2, 0x180

    if-ne v9, v3, :cond_31

    :cond_30
    const/4 v3, 0x1

    goto :goto_17

    :cond_31
    const/4 v3, 0x0

    :goto_17
    or-int/2addr v3, v5

    and-int/lit16 v5, v2, 0x1c00

    xor-int/lit16 v5, v5, 0xc00

    const/16 v9, 0x800

    if-le v5, v9, :cond_32

    .line 32
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    :cond_32
    and-int/lit16 v5, v2, 0xc00

    if-ne v5, v9, :cond_34

    :cond_33
    const/4 v5, 0x1

    goto :goto_18

    :cond_34
    const/4 v5, 0x0

    :goto_18
    or-int/2addr v3, v5

    const v5, 0xe000

    and-int/2addr v5, v2

    xor-int/lit16 v5, v5, 0x6000

    const/16 v9, 0x4000

    if-le v5, v9, :cond_35

    const/4 v5, 0x0

    .line 33
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v17

    if-nez v17, :cond_36

    goto :goto_19

    :cond_35
    const/4 v5, 0x0

    :goto_19
    and-int/lit16 v5, v2, 0x6000

    if-ne v5, v9, :cond_37

    :cond_36
    const/4 v5, 0x1

    goto :goto_1a

    :cond_37
    const/4 v5, 0x0

    :goto_1a
    or-int/2addr v3, v5

    const/high16 v5, 0x70000

    and-int/2addr v5, v2

    xor-int v5, v5, v19

    const/high16 v9, 0x20000

    if-le v5, v9, :cond_38

    const/4 v5, 0x1

    .line 34
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v17

    if-nez v17, :cond_39

    :cond_38
    and-int v5, v2, v19

    if-ne v5, v9, :cond_3a

    :cond_39
    const/4 v5, 0x1

    goto :goto_1b

    :cond_3a
    const/4 v5, 0x0

    :goto_1b
    or-int/2addr v3, v5

    and-int v5, v2, v29

    xor-int v5, v5, v18

    const/high16 v9, 0x100000

    if-le v5, v9, :cond_3b

    .line 35
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    :cond_3b
    and-int v5, v2, v18

    if-ne v5, v9, :cond_3d

    :cond_3c
    const/4 v5, 0x1

    goto :goto_1c

    :cond_3d
    const/4 v5, 0x0

    :goto_1c
    or-int/2addr v3, v5

    and-int v5, v2, v32

    xor-int v5, v5, v22

    const/high16 v9, 0x800000

    if-le v5, v9, :cond_3e

    .line 36
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    :cond_3e
    and-int v2, v2, v22

    if-ne v2, v9, :cond_40

    :cond_3f
    const/4 v2, 0x1

    goto :goto_1d

    :cond_40
    const/4 v2, 0x0

    :goto_1d
    or-int/2addr v2, v3

    .line 37
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 38
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_42

    if-ne v3, v15, :cond_41

    goto :goto_1e

    :cond_41
    move-object v2, v3

    move-object/from16 v36, v10

    move-object/from16 v10, v31

    const/16 v13, 0x20

    const/16 v21, 0x1

    move-object/from16 v3, p1

    goto :goto_1f

    .line 39
    :cond_42
    :goto_1e
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;

    move-object/from16 v3, p1

    move-object/from16 v36, v10

    move-object v10, v11

    move-object/from16 v9, v30

    move-object/from16 v5, v31

    move-object/from16 v11, v33

    const/16 v13, 0x20

    const/16 v21, 0x1

    invoke-direct/range {v2 .. v11}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;)V

    move-object v10, v5

    .line 40
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 41
    :goto_1f
    move-object v11, v2

    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    if-ne v12, v13, :cond_43

    move/from16 v2, v21

    goto :goto_20

    :cond_43
    const/4 v2, 0x0

    .line 42
    :goto_20
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_44

    if-ne v4, v15, :cond_45

    .line 43
    :cond_44
    new-instance v4, Lr1;

    const/16 v2, 0x1a

    invoke-direct {v4, v2, v3}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 44
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 45
    :cond_45
    check-cast v4, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v2, v24, 0xc

    and-int/lit8 v2, v2, 0x7e

    invoke-static {v4, v14, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBringIntoViewSpecKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    move-result-object v9

    .line 46
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    if-eqz v0, :cond_4b

    const v2, 0x1a32d03

    .line 47
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    xor-int/lit8 v2, v27, 0x6

    const/4 v5, 0x4

    if-le v2, v5, :cond_46

    .line 48
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    :cond_46
    and-int/lit8 v2, v26, 0x6

    if-ne v2, v5, :cond_47

    goto :goto_21

    :cond_47
    const/16 v21, 0x0

    .line 49
    :cond_48
    :goto_21
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v2

    if-nez v21, :cond_49

    if-ne v2, v15, :cond_4a

    .line 50
    :cond_49
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;

    invoke-direct {v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    .line 51
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 52
    :cond_4a
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;

    .line 53
    iget-object v5, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->n:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 54
    invoke-static {v2, v5, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v5, 0x0

    .line 55
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    goto :goto_22

    :cond_4b
    const/4 v5, 0x0

    const v2, 0x1a7b210

    .line 56
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 57
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 58
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 59
    :goto_22
    iget-object v5, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->k:Landroidx/compose/foundation/lazy/grid/LazyGridState$remeasurementModifier$1;

    .line 60
    invoke-interface {v1, v5}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 61
    iget-object v6, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->l:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 62
    invoke-interface {v5, v6}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move-object/from16 v6, v36

    .line 63
    invoke-static {v5, v10, v6, v4, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;Z)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 64
    invoke-interface {v5, v2}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 65
    iget-object v5, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->m:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 66
    invoke-static {v2, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimatorModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 67
    iget-object v8, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->f:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v7, p4

    move-object/from16 v5, p6

    move v6, v0

    .line 68
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/ScrollableAreaKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v8, v3

    .line 69
    iget-object v4, v8, Landroidx/compose/foundation/lazy/grid/LazyGridState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/4 v7, 0x0

    move-object v3, v0

    move-object v2, v10

    move-object v5, v11

    move-object v6, v14

    .line 70
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;Landroidx/compose/runtime/Composer;I)V

    goto :goto_23

    :cond_4c
    move-object v8, v3

    move-object v6, v14

    .line 71
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 72
    :goto_23
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_4d

    new-instance v0, Lga;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move-object v2, v8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v12}, Lga;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;II)V

    .line 73
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4d
    return-void
.end method
