.class public abstract Landroidx/compose/foundation/text/BasicTextFieldKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/high16 v0, 0x42200000    # 40.0f

    .line 2
    .line 3
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/DpKt;->a(FF)J

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, p7

    move/from16 v4, p16

    move/from16 v5, p17

    move/from16 v6, p18

    .line 1
    move-object/from16 v15, p15

    check-cast v15, Landroidx/compose/runtime/GapComposer;

    const v7, -0x39e1fa71

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v7, v4, 0x6

    if-nez v7, :cond_1

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v4

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    and-int/lit8 v10, v4, 0x30

    if-nez v10, :cond_3

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x20

    goto :goto_2

    :cond_2
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v7, v10

    :cond_3
    and-int/lit16 v10, v4, 0x180

    if-nez v10, :cond_5

    move-object/from16 v10, p2

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x100

    goto :goto_3

    :cond_4
    const/16 v13, 0x80

    :goto_3
    or-int/2addr v7, v13

    goto :goto_4

    :cond_5
    move-object/from16 v10, p2

    :goto_4
    and-int/lit8 v13, v6, 0x8

    const/16 v16, 0x800

    if-eqz v13, :cond_7

    or-int/lit16 v7, v7, 0xc00

    :cond_6
    move/from16 v8, p3

    goto :goto_6

    :cond_7
    and-int/lit16 v8, v4, 0xc00

    if-nez v8, :cond_6

    move/from16 v8, p3

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v17

    if-eqz v17, :cond_8

    move/from16 v17, v16

    goto :goto_5

    :cond_8
    const/16 v17, 0x400

    :goto_5
    or-int v7, v7, v17

    :goto_6
    and-int/lit8 v17, v6, 0x10

    const/4 v11, 0x0

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-eqz v17, :cond_9

    or-int/lit16 v7, v7, 0x6000

    goto :goto_8

    :cond_9
    and-int/lit16 v14, v4, 0x6000

    if-nez v14, :cond_b

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v14

    if-eqz v14, :cond_a

    move/from16 v14, v20

    goto :goto_7

    :cond_a
    move/from16 v14, v19

    :goto_7
    or-int/2addr v7, v14

    :cond_b
    :goto_8
    const/high16 v14, 0x30000

    and-int v21, v4, v14

    const/high16 v22, 0x10000

    const/high16 v23, 0x20000

    move-object/from16 v11, p4

    if-nez v21, :cond_d

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    move/from16 v24, v23

    goto :goto_9

    :cond_c
    move/from16 v24, v22

    :goto_9
    or-int v7, v7, v24

    :cond_d
    const/high16 v24, 0x180000

    and-int v24, v4, v24

    if-nez v24, :cond_f

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    const/high16 v24, 0x100000

    goto :goto_a

    :cond_e
    const/high16 v24, 0x80000

    :goto_a
    or-int v7, v7, v24

    :cond_f
    const/high16 v24, 0xc00000

    and-int v24, v4, v24

    if-nez v24, :cond_11

    move/from16 v24, v14

    move-object/from16 v14, p6

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    const/high16 v25, 0x800000

    goto :goto_b

    :cond_10
    const/high16 v25, 0x400000

    :goto_b
    or-int v7, v7, v25

    goto :goto_c

    :cond_11
    move/from16 v24, v14

    move-object/from16 v14, p6

    :goto_c
    const/high16 v25, 0x6000000

    and-int v25, v4, v25

    if-nez v25, :cond_13

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v25

    if-eqz v25, :cond_12

    const/high16 v25, 0x4000000

    goto :goto_d

    :cond_12
    const/high16 v25, 0x2000000

    :goto_d
    or-int v7, v7, v25

    :cond_13
    const/high16 v25, 0x30000000

    and-int v25, v4, v25

    move/from16 v12, p8

    if-nez v25, :cond_15

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v26

    if-eqz v26, :cond_14

    const/high16 v26, 0x20000000

    goto :goto_e

    :cond_14
    const/high16 v26, 0x10000000

    :goto_e
    or-int v7, v7, v26

    :cond_15
    and-int/lit8 v26, v5, 0x6

    move/from16 v9, p9

    if-nez v26, :cond_17

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v27

    if-eqz v27, :cond_16

    const/16 v27, 0x4

    goto :goto_f

    :cond_16
    const/16 v27, 0x2

    :goto_f
    or-int v27, v5, v27

    goto :goto_10

    :cond_17
    move/from16 v27, v5

    :goto_10
    and-int/lit8 v28, v5, 0x30

    move-object/from16 v4, p10

    if-nez v28, :cond_19

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_18

    const/16 v18, 0x20

    goto :goto_11

    :cond_18
    const/16 v18, 0x10

    :goto_11
    or-int v27, v27, v18

    :cond_19
    move/from16 v4, v27

    or-int/lit16 v8, v4, 0x180

    move/from16 v18, v8

    and-int/lit16 v8, v6, 0x2000

    if-eqz v8, :cond_1a

    or-int/lit16 v4, v4, 0xd80

    move/from16 v16, v4

    move-object/from16 v4, p12

    goto :goto_13

    :cond_1a
    and-int/lit16 v4, v5, 0xc00

    if-nez v4, :cond_1c

    move-object/from16 v4, p12

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1b

    goto :goto_12

    :cond_1b
    const/16 v16, 0x400

    :goto_12
    or-int v16, v18, v16

    goto :goto_13

    :cond_1c
    move-object/from16 v4, p12

    move/from16 v16, v18

    :goto_13
    and-int/lit16 v4, v5, 0x6000

    if-nez v4, :cond_1e

    move-object/from16 v4, p13

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    move/from16 v19, v20

    :cond_1d
    or-int v16, v16, v19

    goto :goto_14

    :cond_1e
    move-object/from16 v4, p13

    :goto_14
    and-int v17, v5, v24

    move-object/from16 v4, p14

    if-nez v17, :cond_20

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    move/from16 v22, v23

    :cond_1f
    or-int v16, v16, v22

    :cond_20
    const v17, 0x12492493

    and-int v4, v7, v17

    const v5, 0x12492492

    const/16 v17, 0x1

    if-ne v4, v5, :cond_22

    const v4, 0x12493

    and-int v4, v16, v4

    const v5, 0x12492

    if-eq v4, v5, :cond_21

    goto :goto_15

    :cond_21
    const/4 v4, 0x0

    goto :goto_16

    :cond_22
    :goto_15
    move/from16 v4, v17

    :goto_16
    and-int/lit8 v5, v7, 0x1

    invoke-virtual {v15, v5, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->S()V

    and-int/lit8 v4, p16, 0x1

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v4, :cond_24

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_18

    .line 2
    :cond_23
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    move-object/from16 v4, p11

    move-object/from16 v6, p12

    :goto_17
    move/from16 v13, p3

    goto :goto_1c

    :cond_24
    :goto_18
    if-eqz v13, :cond_25

    move/from16 v4, v17

    goto :goto_19

    :cond_25
    move/from16 v4, p3

    .line 3
    :goto_19
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v5, :cond_26

    .line 4
    new-instance v13, Lh;

    move/from16 p3, v4

    const/16 v4, 0x16

    invoke-direct {v13, v4}, Lh;-><init>(I)V

    .line 5
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_26
    move/from16 p3, v4

    .line 6
    :goto_1a
    move-object v4, v13

    check-cast v4, Lkotlin/jvm/functions/Function1;

    if-eqz v8, :cond_27

    const/4 v8, 0x0

    goto :goto_1b

    :cond_27
    move-object/from16 v8, p12

    :goto_1b
    move-object v6, v8

    goto :goto_17

    .line 7
    :goto_1c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 8
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/text/KeyboardOptions;->a(Z)Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v11

    xor-int/lit8 v8, v3, 0x1

    if-eqz v3, :cond_28

    move/from16 v10, v17

    goto :goto_1d

    :cond_28
    move v10, v9

    :goto_1d
    if-eqz v3, :cond_29

    move/from16 v9, v17

    goto :goto_1e

    :cond_29
    move v9, v12

    :goto_1e
    and-int/lit8 v2, v7, 0xe

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2a

    move/from16 v2, v17

    goto :goto_1f

    :cond_2a
    const/4 v2, 0x0

    :goto_1f
    and-int/lit8 v3, v7, 0x70

    move/from16 p3, v2

    const/16 v2, 0x20

    if-ne v3, v2, :cond_2b

    goto :goto_20

    :cond_2b
    const/16 v17, 0x0

    :goto_20
    or-int v2, p3, v17

    .line 9
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_2c

    if-ne v3, v5, :cond_2d

    .line 10
    :cond_2c
    new-instance v3, Lb;

    const/4 v2, 0x5

    invoke-direct {v3, v2, v0, v1}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 12
    :cond_2d
    check-cast v3, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v2, v7, 0x38e

    shr-int/lit8 v5, v7, 0x6

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v2, v5

    shl-int/lit8 v5, v16, 0x9

    const v17, 0xe000

    and-int v18, v5, v17

    or-int v2, v2, v18

    const/high16 v18, 0x70000

    and-int v19, v5, v18

    or-int v2, v2, v19

    const/high16 v19, 0x380000

    and-int v19, v5, v19

    or-int v2, v2, v19

    const/high16 v19, 0x1c00000

    and-int v5, v5, v19

    or-int/2addr v2, v5

    shr-int/lit8 v5, v7, 0xf

    and-int/lit16 v5, v5, 0x380

    and-int/lit16 v0, v7, 0x1c00

    or-int/2addr v0, v5

    and-int v5, v7, v17

    or-int/2addr v0, v5

    and-int v5, v16, v18

    or-int v17, v0, v5

    move-object/from16 v0, p0

    move-object/from16 v7, p13

    move/from16 v16, v2

    move-object v1, v3

    move-object v5, v4

    move-object v12, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p10

    move-object/from16 v14, p14

    .line 13
    invoke-static/range {v0 .. v17}, Landroidx/compose/foundation/text/CoreTextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/SolidColor;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v12, v5

    move v4, v13

    move-object v13, v6

    goto :goto_21

    .line 14
    :cond_2e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    move/from16 v4, p3

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 15
    :goto_21
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2f

    move-object v1, v0

    new-instance v0, Le4;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v29, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v18}, Le4;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;III)V

    move-object/from16 v1, v29

    .line 16
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2f
    return-void
.end method

.method public static final b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;IILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move/from16 v15, p15

    move/from16 v0, p16

    .line 1
    move-object/from16 v3, p14

    check-cast v3, Landroidx/compose/runtime/GapComposer;

    const v4, 0x78d0d0fc

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v4, v15, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v15

    goto :goto_1

    :cond_1
    move v4, v15

    :goto_1
    and-int/lit8 v8, v15, 0x30

    if-nez v8, :cond_3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    :cond_3
    and-int/lit16 v8, v15, 0x180

    if-nez v8, :cond_5

    move-object/from16 v8, p2

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x100

    goto :goto_3

    :cond_4
    const/16 v11, 0x80

    :goto_3
    or-int/2addr v4, v11

    goto :goto_4

    :cond_5
    move-object/from16 v8, p2

    :goto_4
    and-int/lit16 v11, v15, 0xc00

    if-nez v11, :cond_7

    move/from16 v11, p3

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v14

    if-eqz v14, :cond_6

    const/16 v14, 0x800

    goto :goto_5

    :cond_6
    const/16 v14, 0x400

    :goto_5
    or-int/2addr v4, v14

    goto :goto_6

    :cond_7
    move/from16 v11, p3

    :goto_6
    and-int/lit16 v14, v15, 0x6000

    const/4 v9, 0x0

    const/16 v16, 0x2000

    const/16 v17, 0x4000

    if-nez v14, :cond_9

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v14

    if-eqz v14, :cond_8

    move/from16 v14, v17

    goto :goto_7

    :cond_8
    move/from16 v14, v16

    :goto_7
    or-int/2addr v4, v14

    :cond_9
    const/high16 v14, 0x30000

    and-int v18, v15, v14

    const/high16 v19, 0x10000

    const/high16 v20, 0x20000

    move-object/from16 v12, p4

    if-nez v18, :cond_b

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    move/from16 v21, v20

    goto :goto_8

    :cond_a
    move/from16 v21, v19

    :goto_8
    or-int v4, v4, v21

    :cond_b
    const/high16 v21, 0x180000

    and-int v21, v15, v21

    if-nez v21, :cond_d

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    const/high16 v21, 0x100000

    goto :goto_9

    :cond_c
    const/high16 v21, 0x80000

    :goto_9
    or-int v4, v4, v21

    :cond_d
    const/high16 v21, 0xc00000

    and-int v21, v15, v21

    move-object/from16 v13, p6

    if-nez v21, :cond_f

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/high16 v22, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v22, 0x400000

    :goto_a
    or-int v4, v4, v22

    :cond_f
    const/high16 v22, 0x6000000

    and-int v22, v15, v22

    if-nez v22, :cond_11

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v22

    if-eqz v22, :cond_10

    const/high16 v22, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v22, 0x2000000

    :goto_b
    or-int v4, v4, v22

    :cond_11
    const/high16 v22, 0x30000000

    and-int v22, v15, v22

    if-nez v22, :cond_13

    move/from16 v22, v14

    move/from16 v14, p7

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v23

    if-eqz v23, :cond_12

    const/high16 v23, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v23, 0x10000000

    :goto_c
    or-int v4, v4, v23

    goto :goto_d

    :cond_13
    move/from16 v22, v14

    move/from16 v14, p7

    :goto_d
    and-int/lit8 v23, v0, 0x6

    move/from16 v7, p8

    if-nez v23, :cond_15

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v24

    if-eqz v24, :cond_14

    const/16 v24, 0x4

    goto :goto_e

    :cond_14
    const/16 v24, 0x2

    :goto_e
    or-int v24, v0, v24

    goto :goto_f

    :cond_15
    move/from16 v24, v0

    :goto_f
    and-int/lit8 v25, v0, 0x30

    move-object/from16 v10, p9

    if-nez v25, :cond_17

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    const/16 v26, 0x20

    goto :goto_10

    :cond_16
    const/16 v26, 0x10

    :goto_10
    or-int v24, v24, v26

    :cond_17
    move/from16 v9, v24

    or-int/lit16 v9, v9, 0x180

    and-int/lit16 v5, v0, 0xc00

    if-nez v5, :cond_19

    move-object/from16 v5, p11

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    const/16 v18, 0x800

    goto :goto_11

    :cond_18
    const/16 v18, 0x400

    :goto_11
    or-int v9, v9, v18

    goto :goto_12

    :cond_19
    move-object/from16 v5, p11

    :goto_12
    and-int/lit16 v5, v0, 0x6000

    if-nez v5, :cond_1b

    move-object/from16 v5, p12

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    move/from16 v16, v17

    :cond_1a
    or-int v9, v9, v16

    goto :goto_13

    :cond_1b
    move-object/from16 v5, p12

    :goto_13
    and-int v16, v0, v22

    move-object/from16 v0, p13

    if-nez v16, :cond_1d

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    move/from16 v19, v20

    :cond_1c
    or-int v9, v9, v19

    :cond_1d
    const v16, 0x12492493

    and-int v0, v4, v16

    const v5, 0x12492492

    const/16 v16, 0x1

    if-ne v0, v5, :cond_1f

    const v0, 0x12493

    and-int/2addr v0, v9

    const v5, 0x12492

    if-eq v0, v5, :cond_1e

    goto :goto_14

    :cond_1e
    const/4 v0, 0x0

    goto :goto_15

    :cond_1f
    :goto_14
    move/from16 v0, v16

    :goto_15
    and-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->S()V

    and-int/lit8 v0, v15, 0x1

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_21

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_16

    .line 2
    :cond_20
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    move-object/from16 v21, p10

    goto :goto_17

    .line 3
    :cond_21
    :goto_16
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_22

    .line 4
    new-instance v0, Lh;

    const/16 v7, 0x16

    invoke-direct {v0, v7}, Lh;-><init>(I)V

    .line 5
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 6
    :cond_22
    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v21, v0

    .line 7
    :goto_17
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 8
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_23

    .line 9
    new-instance v0, Landroidx/compose/ui/text/input/TextFieldValue;

    const-wide/16 v7, 0x0

    move/from16 v17, v9

    const/4 v9, 0x6

    invoke-direct {v0, v9, v7, v8, v1}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 10
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    goto :goto_18

    :cond_23
    move/from16 v17, v9

    .line 11
    :goto_18
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 12
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 13
    iget-wide v8, v7, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 14
    iget-object v7, v7, Landroidx/compose/ui/text/input/TextFieldValue;->c:Landroidx/compose/ui/text/TextRange;

    .line 15
    new-instance v10, Landroidx/compose/ui/text/input/TextFieldValue;

    new-instance v11, Landroidx/compose/ui/text/AnnotatedString;

    invoke-direct {v11, v1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11, v8, v9, v7}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;)V

    .line 16
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v7

    .line 17
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_24

    if-ne v8, v5, :cond_25

    .line 18
    :cond_24
    new-instance v8, Lp0;

    const/4 v7, 0x5

    invoke-direct {v8, v7, v10, v0}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 20
    :cond_25
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-static {v8, v3}, Landroidx/compose/runtime/EffectsKt;->g(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v7, v4, 0xe

    const/4 v8, 0x4

    if-ne v7, v8, :cond_26

    move/from16 v7, v16

    goto :goto_19

    :cond_26
    const/4 v7, 0x0

    .line 21
    :goto_19
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_27

    if-ne v8, v5, :cond_28

    .line 22
    :cond_27
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    .line 23
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 24
    :cond_28
    check-cast v8, Landroidx/compose/runtime/MutableState;

    const/4 v7, 0x0

    .line 25
    invoke-virtual {v6, v7}, Landroidx/compose/foundation/text/KeyboardOptions;->a(Z)Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v27

    .line 26
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v9

    and-int/lit8 v11, v4, 0x70

    const/16 v7, 0x20

    if-ne v11, v7, :cond_29

    goto :goto_1a

    :cond_29
    const/16 v16, 0x0

    :goto_1a
    or-int v7, v9, v16

    .line 27
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_2a

    if-ne v9, v5, :cond_2b

    .line 28
    :cond_2a
    new-instance v9, Lp2;

    const/4 v5, 0x2

    invoke-direct {v9, v2, v0, v8, v5}, Lp2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 29
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 30
    :cond_2b
    check-cast v9, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v0, v4, 0x380

    shr-int/lit8 v5, v4, 0x6

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v0, v5

    shl-int/lit8 v5, v17, 0x9

    const v7, 0xe000

    and-int v8, v5, v7

    or-int/2addr v0, v8

    const/high16 v8, 0x70000

    and-int v11, v5, v8

    or-int/2addr v0, v11

    const/high16 v11, 0x380000

    and-int/2addr v11, v5

    or-int/2addr v0, v11

    const/high16 v11, 0x1c00000

    and-int/2addr v5, v11

    or-int v32, v0, v5

    shr-int/lit8 v0, v4, 0xf

    and-int/lit16 v0, v0, 0x380

    and-int/lit16 v5, v4, 0x1c00

    or-int/2addr v0, v5

    and-int/2addr v4, v7

    or-int/2addr v0, v4

    and-int v4, v17, v8

    or-int v33, v0, v4

    const/16 v24, 0x1

    move-object/from16 v18, p2

    move/from16 v29, p3

    move/from16 v26, p8

    move-object/from16 v20, p9

    move-object/from16 v22, p11

    move-object/from16 v23, p12

    move-object/from16 v30, p13

    move-object/from16 v31, v3

    move-object/from16 v17, v9

    move-object/from16 v16, v10

    move-object/from16 v19, v12

    move-object/from16 v28, v13

    move/from16 v25, v14

    .line 31
    invoke-static/range {v16 .. v33}, Landroidx/compose/foundation/text/CoreTextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/SolidColor;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v11, v21

    goto :goto_1b

    :cond_2c
    move-object/from16 v31, v3

    .line 32
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->Q()V

    move-object/from16 v11, p10

    .line 33
    :goto_1b
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2d

    move-object v3, v0

    new-instance v0, Lf4;

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v16, p16

    move-object/from16 v34, v3

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v16}, Lf4;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;IILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    move-object/from16 v3, v34

    .line 34
    iput-object v0, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2d
    return-void
.end method
