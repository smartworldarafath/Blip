.class public abstract Landroidx/compose/foundation/lazy/LazyListKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(IILandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V
    .locals 37

    move/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v4, p4

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    move-object/from16 v7, p8

    move-object/from16 v9, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    .line 1
    move-object/from16 v14, p7

    check-cast v14, Landroidx/compose/runtime/GapComposer;

    const v0, 0x37213af3

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v0, v10, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v10

    goto :goto_1

    :cond_1
    move v0, v10

    :goto_1
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_3

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v0, v5

    :cond_3
    and-int/lit16 v5, v10, 0x180

    if-nez v5, :cond_5

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v0, v5

    :cond_5
    and-int/lit16 v5, v10, 0xc00

    const/4 v8, 0x0

    const/16 v16, 0x400

    if-nez v5, :cond_7

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x800

    goto :goto_4

    :cond_6
    move/from16 v5, v16

    :goto_4
    or-int/2addr v0, v5

    :cond_7
    and-int/lit16 v5, v10, 0x6000

    const/4 v8, 0x1

    if-nez v5, :cond_9

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x4000

    goto :goto_5

    :cond_8
    const/16 v5, 0x2000

    :goto_5
    or-int/2addr v0, v5

    :cond_9
    const/high16 v5, 0x30000

    and-int/2addr v5, v10

    if-nez v5, :cond_b

    move-object/from16 v5, p3

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/high16 v19, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v19, 0x10000

    :goto_6
    or-int v0, v0, v19

    goto :goto_7

    :cond_b
    move-object/from16 v5, p3

    :goto_7
    const/high16 v19, 0x180000

    and-int v20, v10, v19

    if-nez v20, :cond_d

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v20

    if-eqz v20, :cond_c

    const/high16 v20, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v20, 0x80000

    :goto_8
    or-int v0, v0, v20

    :cond_d
    const/high16 v20, 0xc00000

    and-int v21, v10, v20

    move-object/from16 v3, p2

    if-nez v21, :cond_f

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/high16 v22, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v22, 0x400000

    :goto_9
    or-int v0, v0, v22

    :cond_f
    const/high16 v22, 0x6000000

    and-int v23, v10, v22

    if-nez v23, :cond_10

    const/high16 v23, 0x2000000

    or-int v0, v0, v23

    :cond_10
    const/high16 v23, 0x30000000

    and-int v24, v10, v23

    if-nez v24, :cond_12

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    const/high16 v24, 0x20000000

    goto :goto_a

    :cond_11
    const/high16 v24, 0x10000000

    :goto_a
    or-int v0, v0, v24

    :cond_12
    and-int/lit8 v24, v11, 0x6

    if-nez v24, :cond_14

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    const/16 v17, 0x4

    goto :goto_b

    :cond_13
    const/16 v17, 0x2

    :goto_b
    or-int v17, v11, v17

    move/from16 v8, v17

    goto :goto_c

    :cond_14
    move v8, v11

    :goto_c
    or-int/lit16 v8, v8, 0x1b0

    and-int/lit16 v6, v11, 0xc00

    if-nez v6, :cond_16

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v16, 0x800

    :cond_15
    or-int v8, v8, v16

    :cond_16
    const v6, 0x12492493

    and-int/2addr v6, v0

    const v15, 0x12492492

    if-ne v6, v15, :cond_18

    and-int/lit16 v6, v8, 0x493

    const/16 v15, 0x492

    if-eq v6, v15, :cond_17

    goto :goto_d

    :cond_17
    const/4 v6, 0x0

    goto :goto_e

    :cond_18
    :goto_d
    const/4 v6, 0x1

    :goto_e
    and-int/lit8 v15, v0, 0x1

    invoke-virtual {v14, v15, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->S()V

    and-int/lit8 v6, v10, 0x1

    const v15, -0xe000001

    if-eqz v6, :cond_1a

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_f

    .line 2
    :cond_19
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    :cond_1a
    :goto_f
    and-int/2addr v0, v15

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->q()V

    shr-int/lit8 v15, v0, 0x3

    and-int/lit8 v6, v15, 0xe

    shr-int/lit8 v25, v8, 0x6

    and-int/lit8 v25, v25, 0x70

    or-int v25, v6, v25

    move/from16 v26, v0

    .line 3
    invoke-static {v12, v14}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    and-int/lit8 v27, v25, 0xe

    xor-int/lit8 v3, v27, 0x6

    const/4 v5, 0x4

    if-le v3, v5, :cond_1b

    .line 4
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    :cond_1b
    and-int/lit8 v3, v25, 0x6

    if-ne v3, v5, :cond_1d

    :cond_1c
    const/4 v3, 0x1

    goto :goto_10

    :cond_1d
    const/4 v3, 0x0

    .line 5
    :goto_10
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v5

    .line 6
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_1f

    if-ne v5, v10, :cond_1e

    goto :goto_11

    :cond_1e
    move/from16 v25, v6

    move/from16 v27, v8

    goto :goto_12

    .line 7
    :cond_1f
    :goto_11
    new-instance v3, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 8
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const v25, 0x7fffffff

    .line 9
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v5

    iput-object v5, v3, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->a:Landroidx/compose/runtime/MutableIntState;

    .line 10
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v5

    iput-object v5, v3, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->b:Landroidx/compose/runtime/MutableIntState;

    .line 11
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->j()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v5

    move/from16 v25, v6

    new-instance v6, Lo1;

    move/from16 v27, v8

    const/16 v8, 0x14

    invoke-direct {v6, v0, v8}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    invoke-static {v5, v6}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 12
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->j()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v5

    new-instance v6, Landroidx/compose/foundation/lazy/c;

    invoke-direct {v6, v0, v1, v3}, Landroidx/compose/foundation/lazy/c;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;)V

    invoke-static {v5, v6}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v29

    .line 13
    new-instance v28, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$1;

    .line 14
    const-string v32, "getValue()Ljava/lang/Object;"

    const/16 v33, 0x0

    .line 15
    const-class v30, Landroidx/compose/runtime/State;

    const-string v31, "value"

    invoke-direct/range {v28 .. v33}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v5, v28

    .line 16
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 17
    :goto_12
    move-object v0, v5

    check-cast v0, Lkotlin/reflect/KProperty0;

    shr-int/lit8 v28, v26, 0x9

    and-int/lit8 v3, v28, 0x70

    or-int v3, v25, v3

    and-int/lit8 v5, v3, 0xe

    xor-int/lit8 v5, v5, 0x6

    const/4 v6, 0x4

    if-le v5, v6, :cond_20

    .line 18
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    :cond_20
    and-int/lit8 v5, v3, 0x6

    if-ne v5, v6, :cond_22

    :cond_21
    const/4 v5, 0x1

    goto :goto_13

    :cond_22
    const/4 v5, 0x0

    :goto_13
    and-int/lit8 v6, v3, 0x70

    xor-int/lit8 v6, v6, 0x30

    const/16 v8, 0x20

    if-le v6, v8, :cond_23

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v24

    if-nez v24, :cond_24

    :cond_23
    and-int/lit8 v3, v3, 0x30

    if-ne v3, v8, :cond_25

    :cond_24
    const/4 v3, 0x1

    goto :goto_14

    :cond_25
    const/4 v3, 0x0

    :goto_14
    or-int/2addr v3, v5

    .line 19
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_26

    if-ne v5, v10, :cond_27

    .line 20
    :cond_26
    new-instance v5, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;

    invoke-direct {v5, v1}, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 21
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 22
    :cond_27
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    .line 23
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_28

    .line 24
    invoke-static {v14}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    .line 25
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 26
    :cond_28
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 27
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->g:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 28
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    .line 29
    check-cast v6, Landroidx/compose/ui/graphics/GraphicsContext;

    .line 30
    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->x:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 31
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    .line 32
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object/from16 v25, v0

    if-nez v8, :cond_29

    .line 33
    sget-object v8, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;->a:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;

    goto :goto_15

    :cond_29
    const/4 v8, 0x0

    :goto_15
    and-int/lit8 v0, v26, 0x70

    const v30, 0xfff0

    and-int v26, v26, v30

    const/high16 v30, 0x380000

    and-int v31, v28, v30

    or-int v26, v26, v31

    shl-int/lit8 v31, v27, 0x12

    const/high16 v32, 0x1c00000

    and-int v33, v31, v32

    or-int v26, v26, v33

    const/high16 v33, 0xe000000

    and-int v31, v31, v33

    or-int v26, v26, v31

    shl-int/lit8 v27, v27, 0x1b

    const/high16 v31, 0x70000000

    and-int v27, v27, v31

    move/from16 v34, v0

    or-int v0, v26, v27

    and-int/lit8 v26, v0, 0x70

    move-object/from16 v27, v3

    xor-int/lit8 v3, v26, 0x30

    move-object/from16 v26, v5

    const/16 v5, 0x20

    if-le v3, v5, :cond_2a

    .line 34
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    :cond_2a
    and-int/lit8 v3, v0, 0x30

    if-ne v3, v5, :cond_2c

    :cond_2b
    const/4 v3, 0x1

    goto :goto_16

    :cond_2c
    const/4 v3, 0x0

    :goto_16
    and-int/lit16 v5, v0, 0x380

    xor-int/lit16 v5, v5, 0x180

    const/16 v1, 0x100

    if-le v5, v1, :cond_2d

    .line 35
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    :cond_2d
    and-int/lit16 v5, v0, 0x180

    if-ne v5, v1, :cond_2f

    :cond_2e
    const/4 v1, 0x1

    goto :goto_17

    :cond_2f
    const/4 v1, 0x0

    :goto_17
    or-int/2addr v1, v3

    and-int/lit16 v3, v0, 0x1c00

    xor-int/lit16 v3, v3, 0xc00

    const/16 v5, 0x800

    if-le v3, v5, :cond_30

    const/4 v3, 0x0

    .line 36
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v18

    if-nez v18, :cond_31

    :cond_30
    and-int/lit16 v3, v0, 0xc00

    if-ne v3, v5, :cond_32

    :cond_31
    const/4 v3, 0x1

    goto :goto_18

    :cond_32
    const/4 v3, 0x0

    :goto_18
    or-int/2addr v1, v3

    const v3, 0xe000

    and-int/2addr v3, v0

    xor-int/lit16 v3, v3, 0x6000

    const/16 v5, 0x4000

    if-le v3, v5, :cond_33

    const/4 v3, 0x1

    .line 37
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v18

    if-nez v18, :cond_34

    goto :goto_19

    :cond_33
    const/4 v3, 0x1

    :goto_19
    and-int/lit16 v3, v0, 0x6000

    if-ne v3, v5, :cond_35

    :cond_34
    const/4 v3, 0x1

    goto :goto_1a

    :cond_35
    const/4 v3, 0x0

    :goto_1a
    or-int/2addr v1, v3

    const/4 v3, 0x0

    .line 38
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    or-int/2addr v1, v5

    and-int v5, v0, v30

    xor-int v5, v5, v19

    const/high16 v3, 0x100000

    if-le v5, v3, :cond_36

    .line 39
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    :cond_36
    and-int v5, v0, v19

    if-ne v5, v3, :cond_38

    :cond_37
    const/4 v3, 0x1

    goto :goto_1b

    :cond_38
    const/4 v3, 0x0

    :goto_1b
    or-int/2addr v1, v3

    and-int v3, v0, v32

    xor-int v3, v3, v20

    const/high16 v5, 0x800000

    if-le v3, v5, :cond_3a

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_1c

    :cond_39
    const/4 v5, 0x1

    goto :goto_1d

    :cond_3a
    const/4 v3, 0x0

    :goto_1c
    const/4 v5, 0x0

    :goto_1d
    or-int/2addr v1, v5

    and-int v5, v0, v33

    xor-int v5, v5, v22

    move/from16 p7, v0

    const/high16 v0, 0x4000000

    if-le v5, v0, :cond_3c

    .line 41
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_1e

    :cond_3b
    const/4 v0, 0x1

    goto :goto_1f

    :cond_3c
    :goto_1e
    const/4 v0, 0x0

    :goto_1f
    or-int/2addr v0, v1

    and-int v1, p7, v31

    xor-int v1, v1, v23

    const/high16 v3, 0x20000000

    if-le v1, v3, :cond_3d

    .line 42
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    :cond_3d
    and-int v1, p7, v23

    if-ne v1, v3, :cond_3f

    :cond_3e
    const/4 v1, 0x1

    goto :goto_20

    :cond_3f
    const/4 v1, 0x0

    :goto_20
    or-int/2addr v0, v1

    .line 43
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 44
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 45
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_41

    if-ne v1, v10, :cond_40

    goto :goto_21

    :cond_40
    move-object v0, v1

    move-object/from16 v8, v25

    move-object/from16 v35, v26

    move/from16 v36, v34

    const/4 v11, 0x0

    move-object/from16 v1, p6

    goto :goto_22

    .line 46
    :cond_41
    :goto_21
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object/from16 v1, p6

    move-object/from16 v3, v25

    move-object/from16 v35, v26

    move-object/from16 v5, v27

    move/from16 v36, v34

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;Landroidx/compose/ui/Alignment$Horizontal;)V

    move-object v8, v3

    .line 47
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 48
    :goto_22
    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    .line 49
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    if-eqz v13, :cond_47

    const v0, -0x7bcec0e8

    .line 50
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    and-int/lit8 v0, v15, 0xe

    xor-int/lit8 v0, v0, 0x6

    const/4 v5, 0x4

    if-le v0, v5, :cond_42

    .line 51
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    :cond_42
    and-int/lit8 v0, v15, 0x6

    if-ne v0, v5, :cond_44

    :cond_43
    const/4 v0, 0x1

    goto :goto_23

    :cond_44
    move v0, v11

    :goto_23
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 52
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_45

    if-ne v3, v10, :cond_46

    .line 53
    :cond_45
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;

    invoke-direct {v3, v1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 54
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 55
    :cond_46
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;

    .line 56
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListState;->p:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 57
    invoke-static {v3, v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 58
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    :goto_24
    move/from16 v3, v36

    const/16 v5, 0x20

    goto :goto_25

    :cond_47
    const v0, -0x7bc835d1

    .line 59
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 60
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 61
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_24

    :goto_25
    if-ne v3, v5, :cond_48

    const/4 v11, 0x1

    .line 62
    :cond_48
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v3

    if-nez v11, :cond_49

    if-ne v3, v10, :cond_4a

    .line 63
    :cond_49
    new-instance v3, Lka;

    const/4 v6, 0x1

    invoke-direct {v3, v1, v6}, Lka;-><init>(Landroidx/compose/foundation/lazy/LazyListState;I)V

    .line 64
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 65
    :cond_4a
    check-cast v3, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v4, v28, 0x7e

    invoke-static {v3, v14, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBringIntoViewSpecKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    move-result-object v7

    .line 66
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListState;->m:Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;

    .line 67
    invoke-interface {v9, v3}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 68
    iget-object v4, v1, Landroidx/compose/foundation/lazy/LazyListState;->n:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 69
    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object/from16 v5, v35

    .line 70
    invoke-static {v3, v8, v5, v2, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;Z)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 71
    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 72
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 73
    invoke-static {v0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimatorModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 74
    iget-object v6, v1, Landroidx/compose/foundation/lazy/LazyListState;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move v4, v13

    .line 75
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/ScrollableAreaKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v6, v1

    .line 76
    iget-object v2, v6, Landroidx/compose/foundation/lazy/LazyListState;->q:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v0, v8

    move-object v4, v14

    move-object/from16 v3, v17

    .line 77
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;Landroidx/compose/runtime/Composer;I)V

    goto :goto_26

    :cond_4b
    move-object v6, v1

    move-object v4, v14

    .line 78
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 79
    :goto_26
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_4c

    new-instance v0, Lca;

    move/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v4, p3

    move-object/from16 v8, p4

    move-object/from16 v3, p5

    move-object/from16 v7, p8

    move/from16 v5, p11

    move-object v2, v6

    move-object v1, v9

    move-object v9, v12

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v11}, Lca;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlin/jvm/functions/Function1;II)V

    .line 80
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4c
    return-void
.end method
