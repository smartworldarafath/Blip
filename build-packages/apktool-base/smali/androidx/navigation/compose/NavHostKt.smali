.class public abstract Landroidx/navigation/compose/NavHostKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v11, p11

    .line 1
    move-object/from16 v4, p10

    check-cast v4, Landroidx/compose/runtime/GapComposer;

    const v0, 0x4e7658c

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v0, v11, 0x6

    const/4 v3, 0x2

    if-nez v0, :cond_1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    or-int/2addr v0, v11

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    and-int/lit8 v5, v11, 0x30

    if-nez v5, :cond_3

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v0, v5

    :cond_3
    and-int/lit16 v5, v11, 0x180

    if-nez v5, :cond_5

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v0, v6

    goto :goto_4

    :cond_5
    move-object/from16 v5, p2

    :goto_4
    and-int/lit16 v6, v11, 0xc00

    if-nez v6, :cond_7

    move-object/from16 v6, p3

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x800

    goto :goto_5

    :cond_6
    const/16 v10, 0x400

    :goto_5
    or-int/2addr v0, v10

    goto :goto_6

    :cond_7
    move-object/from16 v6, p3

    :goto_6
    and-int/lit16 v10, v11, 0x6000

    if-nez v10, :cond_9

    move-object/from16 v10, p4

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x4000

    goto :goto_7

    :cond_8
    const/16 v13, 0x2000

    :goto_7
    or-int/2addr v0, v13

    goto :goto_8

    :cond_9
    move-object/from16 v10, p4

    :goto_8
    const/high16 v13, 0x30000

    and-int/2addr v13, v11

    if-nez v13, :cond_b

    move-object/from16 v13, p5

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/high16 v15, 0x20000

    goto :goto_9

    :cond_a
    const/high16 v15, 0x10000

    :goto_9
    or-int/2addr v0, v15

    goto :goto_a

    :cond_b
    move-object/from16 v13, p5

    :goto_a
    const/high16 v15, 0x180000

    and-int v16, v11, v15

    move/from16 p10, v15

    if-nez v16, :cond_d

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/high16 v16, 0x100000

    goto :goto_b

    :cond_c
    const/high16 v16, 0x80000

    :goto_b
    or-int v0, v0, v16

    :cond_d
    const/high16 v16, 0xc00000

    and-int v17, v11, v16

    if-nez v17, :cond_f

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/high16 v17, 0x800000

    goto :goto_c

    :cond_e
    const/high16 v17, 0x400000

    :goto_c
    or-int v0, v0, v17

    :cond_f
    const/high16 v17, 0x6000000

    and-int v17, v11, v17

    move-object/from16 v9, p8

    if-nez v17, :cond_11

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x4000000

    goto :goto_d

    :cond_10
    const/high16 v18, 0x2000000

    :goto_d
    or-int v0, v0, v18

    :cond_11
    const/high16 v18, 0x30000000

    and-int v18, v11, v18

    const/high16 v19, 0x10000000

    move-object/from16 v7, p9

    if-nez v18, :cond_13

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    const/high16 v20, 0x20000000

    goto :goto_e

    :cond_12
    move/from16 v20, v19

    :goto_e
    or-int v0, v0, v20

    :cond_13
    move v7, v0

    and-int/lit8 v0, p12, 0x6

    const/4 v8, 0x0

    if-nez v0, :cond_15

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x4

    goto :goto_f

    :cond_14
    move v0, v3

    :goto_f
    or-int v0, p12, v0

    move/from16 v20, v0

    goto :goto_10

    :cond_15
    move/from16 v20, p12

    :goto_10
    const v0, 0x12492493

    and-int/2addr v0, v7

    const v12, 0x12492492

    move/from16 v21, v7

    if-ne v0, v12, :cond_17

    and-int/lit8 v0, v20, 0x3

    if-eq v0, v3, :cond_16

    goto :goto_11

    :cond_16
    const/4 v0, 0x0

    goto :goto_12

    :cond_17
    :goto_11
    const/4 v0, 0x1

    :goto_12
    and-int/lit8 v3, v21, 0x1

    invoke-virtual {v4, v3, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->S()V

    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_19

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_13

    .line 2
    :cond_18
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    :cond_19
    :goto_13
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 3
    sget-object v0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 4
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    move-object v12, v0

    check-cast v12, Landroidx/lifecycle/LifecycleOwner;

    .line 6
    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 7
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_8d

    .line 9
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->e()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v3, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 12
    iget-object v8, v3, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavViewModelStoreProvider;

    if-eqz v8, :cond_1a

    goto :goto_14

    .line 13
    :cond_1a
    iget-object v8, v3, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 14
    invoke-static {v0}, Landroidx/navigation/NavViewModelStoreProviderKt;->a(Landroidx/lifecycle/ViewModelStore;)Landroidx/navigation/NavViewModelStoreProvider;

    move-result-object v0

    iput-object v0, v3, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavViewModelStoreProvider;

    .line 15
    :goto_14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object v0, v3, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    iget-object v8, v2, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 18
    iget-object v15, v3, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_1c

    invoke-virtual {v3}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v7

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->j:Landroidx/lifecycle/Lifecycle$State;

    if-eq v7, v1, :cond_1b

    goto :goto_15

    .line 19
    :cond_1b
    const-string v0, "You cannot set a new graph on a NavController with entries on the back stack after the NavController has been destroyed. Please ensure that your NavHost has the same lifetime as your NavController."

    .line 20
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_1c
    :goto_15
    iget-object v1, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 22
    iget-object v1, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_21

    .line 23
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v3, Landroidx/navigation/internal/NavControllerImpl;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 25
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 26
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v24

    check-cast v24, Ljava/lang/Iterable;

    .line 27
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_17
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v5, v25

    check-cast v5, Landroidx/navigation/NavController$NavControllerNavigatorState;

    const/4 v6, 0x1

    .line 28
    iput-boolean v6, v5, Landroidx/navigation/NavigatorState;->d:Z

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    goto :goto_17

    :cond_1d
    const/4 v6, 0x1

    .line 29
    new-instance v5, Landroidx/navigation/NavOptionsBuilder;

    invoke-direct {v5}, Landroidx/navigation/NavOptionsBuilder;-><init>()V

    .line 30
    iput-boolean v6, v5, Landroidx/navigation/NavOptionsBuilder;->c:Z

    .line 31
    iget-boolean v6, v5, Landroidx/navigation/NavOptionsBuilder;->b:Z

    move-object/from16 v24, v7

    .line 32
    iget-object v7, v5, Landroidx/navigation/NavOptionsBuilder;->a:Landroidx/navigation/NavOptions$Builder;

    iput-boolean v6, v7, Landroidx/navigation/NavOptions$Builder;->a:Z

    const/4 v6, 0x1

    .line 33
    iput-boolean v6, v7, Landroidx/navigation/NavOptions$Builder;->b:Z

    .line 34
    iget-boolean v5, v5, Landroidx/navigation/NavOptionsBuilder;->e:Z

    const/4 v6, -0x1

    .line 35
    iput v6, v7, Landroidx/navigation/NavOptions$Builder;->c:I

    const/4 v6, 0x0

    .line 36
    iput-boolean v6, v7, Landroidx/navigation/NavOptions$Builder;->d:Z

    .line 37
    iput-boolean v5, v7, Landroidx/navigation/NavOptions$Builder;->e:Z

    .line 38
    invoke-virtual {v7}, Landroidx/navigation/NavOptions$Builder;->a()Landroidx/navigation/NavOptions;

    move-result-object v5

    const/4 v6, 0x0

    .line 39
    invoke-virtual {v3, v8, v6, v5}, Landroidx/navigation/internal/NavControllerImpl;->p(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)Z

    move-result v5

    .line 40
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 41
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/navigation/NavController$NavControllerNavigatorState;

    move/from16 v25, v5

    const/4 v5, 0x0

    .line 42
    iput-boolean v5, v7, Landroidx/navigation/NavigatorState;->d:Z

    move/from16 v5, v25

    goto :goto_18

    :cond_1e
    move/from16 v25, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v25, :cond_1f

    .line 43
    invoke-virtual {v3, v8, v6, v5}, Landroidx/navigation/internal/NavControllerImpl;->l(IZZ)Z

    move-result v7

    :cond_1f
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, v24

    goto/16 :goto_16

    :cond_20
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 44
    iget-object v1, v1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 45
    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 46
    invoke-virtual {v3, v1, v6, v5}, Landroidx/navigation/internal/NavControllerImpl;->l(IZZ)Z

    .line 47
    :cond_21
    iput-object v2, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 48
    iget-object v1, v3, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    iget-object v5, v3, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    iget-object v6, v5, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    iget-object v7, v3, Landroidx/navigation/internal/NavControllerImpl;->d:Landroid/os/Bundle;

    if-eqz v7, :cond_26

    .line 49
    const-string v8, "android-support-nav:controller:navigatorState:names"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_26

    .line 50
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    if-eqz v24, :cond_25

    .line 51
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_24

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v8

    move-object/from16 v8, v24

    check-cast v8, Ljava/lang/String;

    .line 52
    invoke-virtual {v1, v8}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 53
    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_23

    .line 54
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v24

    if-eqz v24, :cond_22

    :goto_1a
    move-object/from16 v8, v25

    goto :goto_19

    :cond_22
    invoke-static {v8}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    const/16 v22, 0x0

    throw v22

    :cond_23
    const/16 v22, 0x0

    goto :goto_1a

    :cond_24
    const/16 v22, 0x0

    goto :goto_1b

    :cond_25
    const/16 v22, 0x0

    .line 55
    invoke-static {v8}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    throw v22

    .line 56
    :cond_26
    :goto_1b
    iget-object v7, v3, Landroidx/navigation/internal/NavControllerImpl;->e:[Landroid/os/Bundle;

    const-string v8, " cannot be found from the current destination "

    if-eqz v7, :cond_2b

    .line 57
    array-length v9, v7

    move-object/from16 v24, v7

    const/4 v7, 0x0

    :goto_1c
    if-ge v7, v9, :cond_2a

    move/from16 v25, v7

    aget-object v7, v24, v25

    move/from16 v26, v9

    .line 58
    new-instance v9, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {v9, v7}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroid/os/Bundle;)V

    .line 59
    iget-object v7, v9, Landroidx/navigation/NavBackStackEntryState;->a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    iget v10, v7, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->b:I

    const/4 v11, 0x0

    .line 60
    invoke-virtual {v3, v10, v11}, Landroidx/navigation/internal/NavControllerImpl;->c(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object v10

    if-eqz v10, :cond_29

    .line 61
    invoke-virtual {v3}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v7

    iget-object v11, v3, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavViewModelStoreProvider;

    invoke-virtual {v9, v6, v10, v7, v11}, Landroidx/navigation/NavBackStackEntryState;->a(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v7

    .line 62
    iget-object v9, v10, Landroidx/navigation/NavDestination;->j:Ljava/lang/String;

    .line 63
    invoke-virtual {v1, v9}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v9

    .line 64
    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_27

    .line 65
    new-instance v10, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-direct {v10, v5, v9}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    .line 66
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_27
    check-cast v10, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 68
    invoke-virtual {v15, v7}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v10, v7}, Landroidx/navigation/NavController$NavControllerNavigatorState;->f(Landroidx/navigation/NavBackStackEntry;)V

    .line 70
    iget-object v9, v7, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 71
    iget-object v9, v9, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    if-eqz v9, :cond_28

    .line 72
    iget-object v9, v9, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 73
    iget v9, v9, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 74
    invoke-virtual {v3, v9}, Landroidx/navigation/internal/NavControllerImpl;->e(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Landroidx/navigation/internal/NavControllerImpl;->j(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    :cond_28
    add-int/lit8 v7, v25, 0x1

    move-object/from16 v10, p4

    move/from16 v11, p11

    move/from16 v9, v26

    goto :goto_1c

    .line 75
    :cond_29
    sget v0, Landroidx/navigation/NavDestination;->n:I

    .line 76
    iget v0, v7, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->b:I

    .line 77
    invoke-static {v6, v0}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v3}, Landroidx/navigation/internal/NavControllerImpl;->f()Landroidx/navigation/NavDestination;

    move-result-object v1

    const-string v2, "Restoring the Navigation back stack failed: destination "

    .line 79
    invoke-static {v2, v0, v8, v1}, Lk8;->q(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 80
    :cond_2a
    iget-object v7, v3, Landroidx/navigation/internal/NavControllerImpl;->b:Lg9;

    invoke-virtual {v7}, Lg9;->a()Ljava/lang/Object;

    const/4 v11, 0x0

    .line 81
    iput-object v11, v3, Landroidx/navigation/internal/NavControllerImpl;->e:[Landroid/os/Bundle;

    .line 82
    :cond_2b
    iget-object v1, v1, Landroidx/navigation/NavigatorProvider;->a:Ljava/util/LinkedHashMap;

    .line 83
    invoke-static {v1}, Lkotlin/collections/MapsKt;->i(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 84
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 85
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroidx/navigation/Navigator;

    .line 87
    iget-boolean v10, v10, Landroidx/navigation/Navigator;->b:Z

    if-nez v10, :cond_2c

    .line 88
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 89
    :cond_2d
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/navigation/Navigator;

    .line 90
    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2e

    .line 91
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    new-instance v9, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-direct {v9, v5, v7}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    .line 93
    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2e
    check-cast v9, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 95
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    iput-object v9, v7, Landroidx/navigation/Navigator;->a:Landroidx/navigation/NavController$NavControllerNavigatorState;

    const/4 v9, 0x1

    .line 97
    iput-boolean v9, v7, Landroidx/navigation/Navigator;->b:Z

    goto :goto_1e

    .line 98
    :cond_2f
    iget-object v0, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_52

    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 99
    iget-object v1, v5, Landroidx/navigation/NavController;->d:Landroid/app/Activity;

    .line 100
    iget-boolean v0, v5, Landroidx/navigation/NavController;->e:Z

    if-nez v0, :cond_50

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 101
    iget-object v9, v5, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    if-nez v7, :cond_30

    goto/16 :goto_33

    .line 102
    :cond_30
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 103
    const-string v0, "android-support-nav:controller:deepLinkIds"

    if-eqz v10, :cond_31

    invoke-virtual {v10, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_31

    invoke-virtual {v5, v7}, Landroidx/navigation/NavController;->e(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_31

    const/4 v11, 0x1

    goto :goto_1f

    :cond_31
    const/4 v11, 0x0

    .line 104
    :goto_1f
    const-string v15, "NavController"

    if-eqz v11, :cond_32

    .line 105
    :try_start_0
    invoke-virtual {v10, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v24, v11

    goto :goto_21

    :catch_0
    move-exception v0

    move/from16 v24, v11

    .line 106
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "handleDeepLink() could not extract deepLink from "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 107
    invoke-static {v15, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    :cond_32
    move/from16 v24, v11

    :goto_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v24, :cond_33

    .line 108
    const-string v11, "android-support-nav:controller:deepLinkArgs"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v25, v11

    :goto_22
    const/4 v13, 0x0

    goto :goto_23

    :cond_33
    const/16 v25, 0x0

    goto :goto_22

    .line 109
    :goto_23
    new-array v11, v13, [Lkotlin/Pair;

    .line 110
    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lkotlin/Pair;

    invoke-static {v11}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v11

    if-eqz v24, :cond_34

    .line 111
    const-string v13, "android-support-nav:controller:deepLinkExtras"

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    goto :goto_24

    :cond_34
    const/4 v10, 0x0

    :goto_24
    if-eqz v10, :cond_35

    .line 112
    invoke-virtual {v11, v10}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_35
    if-eqz v0, :cond_37

    .line 113
    array-length v10, v0

    if-nez v10, :cond_36

    goto :goto_25

    :cond_36
    move-object/from16 v24, v0

    move-object/from16 v27, v4

    move-object/from16 v26, v12

    goto :goto_26

    .line 114
    :cond_37
    :goto_25
    invoke-virtual {v9}, Landroidx/navigation/internal/NavControllerImpl;->i()Landroidx/navigation/NavGraph;

    move-result-object v10

    .line 115
    new-instance v13, Landroidx/navigation/NavDeepLinkRequest;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v26, v12

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v27, v4

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v0, v12, v4}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v10, v13, v10}, Landroidx/navigation/NavGraph;->e(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 117
    iget-object v4, v0, Landroidx/navigation/NavDestination$DeepLinkMatch;->j:Landroidx/navigation/NavDestination;

    const/4 v10, 0x0

    .line 118
    invoke-virtual {v4, v10}, Landroidx/navigation/NavDestination;->c(Landroidx/navigation/NavDestination;)[I

    move-result-object v12

    .line 119
    iget-object v0, v0, Landroidx/navigation/NavDestination$DeepLinkMatch;->k:Landroid/os/Bundle;

    .line 120
    invoke-virtual {v4, v0}, Landroidx/navigation/NavDestination;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 121
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_38
    move-object v0, v12

    const/4 v4, 0x0

    goto :goto_27

    :cond_39
    :goto_26
    move-object/from16 v0, v24

    move-object/from16 v4, v25

    :goto_27
    if-eqz v0, :cond_51

    .line 122
    array-length v10, v0

    if-nez v10, :cond_3a

    goto/16 :goto_34

    .line 123
    :cond_3a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    iget-object v10, v9, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 125
    array-length v12, v0

    const/4 v13, 0x0

    :goto_28
    if-ge v13, v12, :cond_40

    move/from16 v24, v12

    .line 126
    aget v12, v0, v13

    if-nez v13, :cond_3c

    move-object/from16 v25, v14

    .line 127
    iget-object v14, v9, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    iget-object v14, v14, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 129
    iget v14, v14, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    if-ne v14, v12, :cond_3b

    .line 130
    iget-object v14, v9, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    goto :goto_29

    :cond_3b
    const/4 v14, 0x0

    goto :goto_29

    :cond_3c
    move-object/from16 v25, v14

    .line 131
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    iget-object v14, v10, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    invoke-virtual {v14, v12}, Landroidx/navigation/internal/NavGraphImpl;->a(I)Landroidx/navigation/NavDestination;

    move-result-object v14

    :goto_29
    if-nez v14, :cond_3d

    .line 133
    sget v10, Landroidx/navigation/NavDestination;->n:I

    .line 134
    iget-object v10, v9, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    .line 135
    iget-object v10, v10, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    .line 136
    invoke-static {v10, v12}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2b

    .line 137
    :cond_3d
    array-length v12, v0

    const/16 v23, 0x1

    add-int/lit8 v12, v12, -0x1

    if-eq v13, v12, :cond_3f

    .line 138
    instance-of v12, v14, Landroidx/navigation/NavGraph;

    if-eqz v12, :cond_3f

    .line 139
    check-cast v14, Landroidx/navigation/NavGraph;

    .line 140
    :goto_2a
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v14, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 141
    iget v12, v10, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 142
    invoke-virtual {v10, v12}, Landroidx/navigation/internal/NavGraphImpl;->a(I)Landroidx/navigation/NavDestination;

    move-result-object v12

    .line 143
    instance-of v12, v12, Landroidx/navigation/NavGraph;

    if-eqz v12, :cond_3e

    .line 144
    iget v12, v10, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 145
    invoke-virtual {v10, v12}, Landroidx/navigation/internal/NavGraphImpl;->a(I)Landroidx/navigation/NavDestination;

    move-result-object v10

    .line 146
    move-object v14, v10

    check-cast v14, Landroidx/navigation/NavGraph;

    goto :goto_2a

    :cond_3e
    move-object v10, v14

    :cond_3f
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v24

    move-object/from16 v14, v25

    goto :goto_28

    :cond_40
    move-object/from16 v25, v14

    const/4 v10, 0x0

    :goto_2b
    if-eqz v10, :cond_41

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find destination "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in the navigation graph, ignoring the deep link from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 149
    :cond_41
    const-string v10, "android-support-nav:controller:deepLinkIntent"

    .line 150
    invoke-virtual {v11, v10, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    array-length v10, v0

    new-array v12, v10, [Landroid/os/Bundle;

    const/4 v13, 0x0

    :goto_2c
    if-ge v13, v10, :cond_43

    const/4 v14, 0x0

    .line 152
    new-array v15, v14, [Lkotlin/Pair;

    .line 153
    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lkotlin/Pair;

    invoke-static {v15}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v14

    .line 154
    invoke-virtual {v14, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    if-eqz v4, :cond_42

    .line 155
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    if-eqz v15, :cond_42

    .line 156
    invoke-virtual {v14, v15}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 157
    :cond_42
    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2c

    .line 158
    :cond_43
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int v10, v4, v19

    if-eqz v10, :cond_44

    const v11, 0x8000

    and-int/2addr v4, v11

    if-nez v4, :cond_44

    .line 159
    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    iget-object v0, v5, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 161
    new-instance v4, Landroidx/core/app/TaskStackBuilder;

    invoke-direct {v4, v0}, Landroidx/core/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {v4, v7}, Landroidx/core/app/TaskStackBuilder;->b(Landroid/content/Intent;)V

    .line 163
    invoke-virtual {v4}, Landroidx/core/app/TaskStackBuilder;->c()V

    .line 164
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const/4 v5, 0x0

    .line 165
    invoke-virtual {v1, v5, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_39

    :cond_44
    if-eqz v10, :cond_45

    const/4 v1, 0x1

    goto :goto_2d

    :cond_45
    const/4 v1, 0x0

    .line 166
    :goto_2d
    const-string v4, "Deep Linking failed: destination "

    if-eqz v1, :cond_49

    .line 167
    iget-object v1, v9, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 168
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    .line 169
    iget-object v1, v9, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    iget-object v1, v1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 172
    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    const/4 v7, 0x1

    const/4 v13, 0x0

    .line 173
    invoke-virtual {v9, v1, v7, v13}, Landroidx/navigation/internal/NavControllerImpl;->l(IZZ)Z

    :cond_46
    const/4 v1, 0x0

    .line 174
    :goto_2e
    array-length v7, v0

    if-ge v1, v7, :cond_48

    .line 175
    aget v7, v0, v1

    add-int/lit8 v10, v1, 0x1

    .line 176
    aget-object v1, v12, v1

    const/4 v11, 0x0

    .line 177
    invoke-virtual {v9, v7, v11}, Landroidx/navigation/internal/NavControllerImpl;->c(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object v13

    if-eqz v13, :cond_47

    .line 178
    new-instance v7, Lb;

    const/16 v11, 0x19

    invoke-direct {v7, v11, v13, v5}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 179
    new-instance v11, Landroidx/navigation/NavOptionsBuilder;

    invoke-direct {v11}, Landroidx/navigation/NavOptionsBuilder;-><init>()V

    invoke-virtual {v7, v11}, Lb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-boolean v7, v11, Landroidx/navigation/NavOptionsBuilder;->b:Z

    .line 181
    iget-object v14, v11, Landroidx/navigation/NavOptionsBuilder;->a:Landroidx/navigation/NavOptions$Builder;

    iput-boolean v7, v14, Landroidx/navigation/NavOptions$Builder;->a:Z

    .line 182
    iget-boolean v7, v11, Landroidx/navigation/NavOptionsBuilder;->c:Z

    .line 183
    iput-boolean v7, v14, Landroidx/navigation/NavOptions$Builder;->b:Z

    .line 184
    iget v7, v11, Landroidx/navigation/NavOptionsBuilder;->d:I

    iget-boolean v11, v11, Landroidx/navigation/NavOptionsBuilder;->e:Z

    .line 185
    iput v7, v14, Landroidx/navigation/NavOptions$Builder;->c:I

    const/4 v7, 0x0

    .line 186
    iput-boolean v7, v14, Landroidx/navigation/NavOptions$Builder;->d:Z

    .line 187
    iput-boolean v11, v14, Landroidx/navigation/NavOptions$Builder;->e:Z

    .line 188
    invoke-virtual {v14}, Landroidx/navigation/NavOptions$Builder;->a()Landroidx/navigation/NavOptions;

    move-result-object v7

    .line 189
    invoke-virtual {v9, v13, v1, v7}, Landroidx/navigation/internal/NavControllerImpl;->k(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    move v1, v10

    goto :goto_2e

    .line 190
    :cond_47
    sget v0, Landroidx/navigation/NavDestination;->n:I

    invoke-static {v6, v7}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v9}, Landroidx/navigation/internal/NavControllerImpl;->f()Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 192
    invoke-static {v4, v0, v8, v1}, Lk8;->q(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_48
    const/4 v6, 0x1

    .line 193
    iput-boolean v6, v5, Landroidx/navigation/NavController;->e:Z

    goto/16 :goto_39

    .line 194
    :cond_49
    iget-object v1, v9, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 195
    array-length v7, v0

    const/4 v8, 0x0

    :goto_2f
    if-ge v8, v7, :cond_4f

    .line 196
    aget v10, v0, v8

    .line 197
    aget-object v11, v12, v8

    if-nez v8, :cond_4a

    .line 198
    iget-object v13, v9, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    goto :goto_30

    .line 199
    :cond_4a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    iget-object v13, v1, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    invoke-virtual {v13, v10}, Landroidx/navigation/internal/NavGraphImpl;->a(I)Landroidx/navigation/NavDestination;

    move-result-object v13

    :goto_30
    if-eqz v13, :cond_4e

    .line 201
    array-length v10, v0

    const/16 v23, 0x1

    add-int/lit8 v10, v10, -0x1

    if-eq v8, v10, :cond_4c

    .line 202
    instance-of v10, v13, Landroidx/navigation/NavGraph;

    if-eqz v10, :cond_4d

    .line 203
    check-cast v13, Landroidx/navigation/NavGraph;

    .line 204
    :goto_31
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v13, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 205
    iget v10, v1, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 206
    invoke-virtual {v1, v10}, Landroidx/navigation/internal/NavGraphImpl;->a(I)Landroidx/navigation/NavDestination;

    move-result-object v10

    .line 207
    instance-of v10, v10, Landroidx/navigation/NavGraph;

    if-eqz v10, :cond_4b

    .line 208
    iget v10, v1, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 209
    invoke-virtual {v1, v10}, Landroidx/navigation/internal/NavGraphImpl;->a(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 210
    move-object v13, v1

    check-cast v13, Landroidx/navigation/NavGraph;

    goto :goto_31

    :cond_4b
    move-object v1, v13

    goto :goto_32

    .line 211
    :cond_4c
    new-instance v10, Landroidx/navigation/NavOptions$Builder;

    invoke-direct {v10}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 212
    iget-object v14, v9, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 213
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    iget-object v14, v14, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 215
    iget v14, v14, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 216
    iput v14, v10, Landroidx/navigation/NavOptions$Builder;->c:I

    const/4 v14, 0x1

    .line 217
    iput-boolean v14, v10, Landroidx/navigation/NavOptions$Builder;->d:Z

    const/4 v14, 0x0

    .line 218
    iput-boolean v14, v10, Landroidx/navigation/NavOptions$Builder;->e:Z

    .line 219
    iput v14, v10, Landroidx/navigation/NavOptions$Builder;->f:I

    .line 220
    iput v14, v10, Landroidx/navigation/NavOptions$Builder;->g:I

    .line 221
    invoke-virtual {v10}, Landroidx/navigation/NavOptions$Builder;->a()Landroidx/navigation/NavOptions;

    move-result-object v10

    .line 222
    invoke-virtual {v9, v13, v11, v10}, Landroidx/navigation/internal/NavControllerImpl;->k(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    :cond_4d
    :goto_32
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 223
    :cond_4e
    sget v0, Landroidx/navigation/NavDestination;->n:I

    invoke-static {v6, v10}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be found in graph "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4f
    const/4 v6, 0x1

    .line 227
    iput-boolean v6, v5, Landroidx/navigation/NavController;->e:Z

    goto/16 :goto_39

    :cond_50
    :goto_33
    move-object/from16 v27, v4

    move-object/from16 v26, v12

    :cond_51
    :goto_34
    move-object/from16 v25, v14

    .line 228
    :goto_35
    iget-object v0, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    invoke-virtual {v3, v0, v11, v11}, Landroidx/navigation/internal/NavControllerImpl;->k(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    goto/16 :goto_39

    :cond_52
    move-object/from16 v27, v4

    move-object/from16 v26, v12

    move-object/from16 v25, v14

    .line 229
    invoke-virtual {v3}, Landroidx/navigation/internal/NavControllerImpl;->b()Z

    goto/16 :goto_39

    :cond_53
    move-object/from16 v27, v4

    move-object/from16 v26, v12

    move-object/from16 v25, v14

    .line 230
    iget-object v0, v8, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 231
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->f()I

    move-result v0

    const/4 v1, 0x0

    :goto_36
    if-ge v1, v0, :cond_56

    .line 232
    iget-object v4, v8, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 233
    invoke-virtual {v4, v1}, Landroidx/collection/SparseArrayCompat;->g(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavDestination;

    .line 234
    iget-object v5, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    iget-object v5, v5, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 236
    iget-object v5, v5, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 237
    invoke-virtual {v5, v1}, Landroidx/collection/SparseArrayCompat;->d(I)I

    move-result v5

    .line 238
    iget-object v6, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    iget-object v6, v6, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 240
    iget-object v6, v6, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 241
    iget-boolean v7, v6, Landroidx/collection/SparseArrayCompat;->j:Z

    if-eqz v7, :cond_54

    .line 242
    invoke-static {v6}, Landroidx/collection/SparseArrayCompatKt;->a(Landroidx/collection/SparseArrayCompat;)V

    .line 243
    :cond_54
    iget-object v7, v6, Landroidx/collection/SparseArrayCompat;->k:[I

    iget v9, v6, Landroidx/collection/SparseArrayCompat;->m:I

    invoke-static {v9, v5, v7}, Landroidx/collection/internal/ContainerHelpersKt;->a(II[I)I

    move-result v5

    if-ltz v5, :cond_55

    .line 244
    iget-object v6, v6, Landroidx/collection/SparseArrayCompat;->l:[Ljava/lang/Object;

    aget-object v7, v6, v5

    .line 245
    aput-object v4, v6, v5

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 246
    :cond_56
    invoke-virtual {v15}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 247
    sget v4, Landroidx/navigation/NavDestination;->n:I

    .line 248
    iget-object v4, v1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 249
    invoke-static {v4}, Landroidx/navigation/NavDestination$Companion;->b(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/sequences/SequencesKt;->h(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 250
    iget-object v5, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_57
    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavDestination;

    .line 252
    iget-object v7, v3, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 253
    invoke-virtual {v5, v2}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    goto :goto_38

    .line 254
    :cond_58
    instance-of v7, v5, Landroidx/navigation/NavGraph;

    if-eqz v7, :cond_57

    .line 255
    check-cast v5, Landroidx/navigation/NavGraph;

    .line 256
    iget-object v6, v6, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 257
    iget v6, v6, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 258
    iget-object v5, v5, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    invoke-virtual {v5, v6}, Landroidx/navigation/internal/NavGraphImpl;->a(I)Landroidx/navigation/NavDestination;

    move-result-object v5

    .line 259
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_38

    .line 260
    :cond_59
    iput-object v5, v1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    goto :goto_37

    .line 261
    :cond_5a
    :goto_39
    const-string v0, "composable"

    move-object/from16 v9, v25

    .line 262
    invoke-virtual {v9, v0}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 263
    instance-of v1, v0, Landroidx/navigation/compose/ComposeNavigator;

    if-eqz v1, :cond_5b

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator;

    move-object v6, v0

    goto :goto_3a

    :cond_5b
    const/4 v6, 0x0

    :goto_3a
    if-nez v6, :cond_5c

    .line 264
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_8f

    new-instance v0, Lyb;

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lyb;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;III)V

    .line 265
    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_5c
    move-object/from16 v10, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 266
    invoke-virtual {v6}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    move-result-object v0

    .line 267
    iget-object v0, v0, Landroidx/navigation/NavigatorState;->e:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 v4, v27

    .line 268
    invoke-static {v0, v4}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    .line 269
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 270
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v14, 0x1

    if-le v0, v14, :cond_5d

    move v0, v14

    goto :goto_3b

    :cond_5d
    const/4 v0, 0x0

    .line 271
    :goto_3b
    sget-object v1, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 272
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    .line 273
    check-cast v1, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    if-eqz v1, :cond_8b

    .line 274
    invoke-interface {v1}, Landroidx/navigationevent/NavigationEventDispatcherOwner;->b()Landroidx/navigationevent/NavigationEventDispatcher;

    move-result-object v12

    .line 275
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v1

    .line 276
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v2

    .line 277
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_5e

    if-ne v2, v13, :cond_5f

    .line 278
    :cond_5e
    new-instance v2, Landroidx/navigation/compose/NavHostEventHandler;

    invoke-direct {v2, v6}, Landroidx/navigation/compose/NavHostEventHandler;-><init>(Landroidx/navigation/compose/ComposeNavigator;)V

    .line 279
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 280
    :cond_5f
    move-object v1, v2

    check-cast v1, Landroidx/navigation/compose/NavHostEventHandler;

    .line 281
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v15

    or-int/2addr v5, v15

    .line 282
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v15

    if-nez v5, :cond_60

    if-ne v15, v13, :cond_61

    .line 283
    :cond_60
    new-instance v15, Lub;

    invoke-direct {v15, v1, v0}, Lub;-><init>(Landroidx/navigation/compose/NavHostEventHandler;Z)V

    .line 284
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 285
    :cond_61
    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    move-object v0, v2

    const/4 v2, 0x0

    move-object/from16 v36, v15

    move-object v15, v3

    move-object/from16 v3, v36

    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/compose/LifecycleEffectKt;->a(Ljava/lang/Boolean;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v2, v1

    move-object v1, v4

    .line 286
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 287
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_62

    if-ne v3, v13, :cond_63

    .line 288
    :cond_62
    new-instance v3, Lb;

    const/16 v0, 0x1a

    invoke-direct {v3, v0, v12, v2}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 289
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 290
    :cond_63
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v2, v3, v1}, Landroidx/compose/runtime/EffectsKt;->b(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 291
    iget-object v0, v2, Landroidx/navigation/compose/NavHostEventHandler;->h:Landroidx/compose/runtime/MutableState;

    .line 292
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 293
    iget-object v3, v2, Landroidx/navigation/compose/NavHostEventHandler;->i:Landroidx/compose/runtime/MutableFloatState;

    .line 294
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    move-result v12

    .line 295
    iget-object v3, v2, Landroidx/navigation/compose/NavHostEventHandler;->j:Landroidx/compose/runtime/MutableIntState;

    .line 296
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    move-result v3

    .line 297
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v5, v26

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v19

    or-int v4, v4, v19

    .line 298
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v14

    if-nez v4, :cond_64

    if-ne v14, v13, :cond_65

    .line 299
    :cond_64
    new-instance v14, Lb;

    const/16 v4, 0x1c

    invoke-direct {v14, v4, v10, v5}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 300
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 301
    :cond_65
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v14, v1}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 302
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    .line 303
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_66

    if-ne v5, v13, :cond_67

    .line 304
    :cond_66
    new-instance v5, Lp0;

    const/16 v4, 0x17

    invoke-direct {v5, v4, v2, v11}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 305
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 306
    :cond_67
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v1}, Landroidx/compose/runtime/EffectsKt;->g(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 307
    invoke-static {v1}, Landroidx/compose/runtime/saveable/SaveableStateHolderKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/saveable/SaveableStateHolder;

    move-result-object v14

    .line 308
    iget-object v2, v15, Landroidx/navigation/internal/NavControllerImpl;->j:Lkotlinx/coroutines/flow/StateFlow;

    .line 309
    invoke-static {v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 310
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v13, :cond_68

    .line 311
    new-instance v4, Lzb;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lzb;-><init>(Landroidx/compose/runtime/State;I)V

    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 312
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 313
    :cond_68
    move-object v15, v4

    check-cast v15, Landroidx/compose/runtime/State;

    .line 314
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 315
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroidx/navigation/NavBackStackEntry;

    .line 316
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_69

    .line 317
    sget v2, Landroidx/collection/ObjectFloatMapKt;->a:I

    .line 318
    new-instance v2, Landroidx/collection/MutableObjectFloatMap;

    const/4 v4, 0x6

    .line 319
    invoke-direct {v2, v4}, Landroidx/collection/MutableObjectFloatMap;-><init>(I)V

    .line 320
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 321
    :cond_69
    move-object v4, v2

    check-cast v4, Landroidx/collection/MutableObjectFloatMap;

    if-eqz v29, :cond_88

    const v2, -0x53e247f4

    .line 322
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 323
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v2

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    or-int/2addr v2, v5

    const/high16 v5, 0xe000000

    and-int v5, v21, v5

    move/from16 v19, v2

    const/high16 v2, 0x4000000

    if-ne v5, v2, :cond_6a

    const/4 v2, 0x1

    goto :goto_3c

    :cond_6a
    const/4 v2, 0x0

    :goto_3c
    or-int v2, v19, v2

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    const/high16 v5, 0x380000

    and-int v5, v21, v5

    xor-int v5, v5, p10

    move/from16 v19, v2

    const/high16 v2, 0x100000

    if-le v5, v2, :cond_6b

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    :cond_6b
    and-int v5, v21, p10

    if-ne v5, v2, :cond_6d

    :cond_6c
    const/4 v2, 0x1

    goto :goto_3d

    :cond_6d
    const/4 v2, 0x0

    :goto_3d
    or-int v2, v19, v2

    const v5, 0xe000

    and-int v5, v21, v5

    move-object/from16 v27, v1

    const/16 v1, 0x4000

    if-ne v5, v1, :cond_6e

    const/4 v1, 0x1

    goto :goto_3e

    :cond_6e
    const/4 v1, 0x0

    :goto_3e
    or-int/2addr v1, v2

    .line 324
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_6f

    if-ne v2, v13, :cond_70

    :cond_6f
    move v1, v0

    goto :goto_3f

    :cond_70
    move v1, v0

    move-object/from16 v25, v9

    move-object/from16 p10, v14

    move-object/from16 v14, v27

    move-object/from16 v10, v29

    const/high16 v9, 0x20000000

    const/16 v23, 0x1

    move-object/from16 v29, v4

    move-object v4, v6

    goto :goto_40

    .line 325
    :goto_3f
    new-instance v0, Lvb;

    const/4 v7, 0x0

    move-object/from16 v5, p6

    move-object/from16 v2, p8

    move-object/from16 v25, v9

    move-object/from16 p10, v14

    move-object/from16 v14, v27

    move-object/from16 v10, v29

    const/high16 v9, 0x20000000

    const/16 v23, 0x1

    move-object/from16 v29, v4

    move-object v4, v6

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lvb;-><init>(ZLkotlin/jvm/functions/Function2;ILandroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 326
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    move-object v2, v0

    .line 327
    :goto_40
    move-object/from16 v32, v2

    check-cast v32, Lkotlin/jvm/functions/Function1;

    .line 328
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v0

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v2

    or-int/2addr v0, v2

    const/high16 v2, 0x70000000

    and-int v2, v21, v2

    if-ne v2, v9, :cond_71

    move/from16 v7, v23

    goto :goto_41

    :cond_71
    const/4 v7, 0x0

    :goto_41
    or-int/2addr v0, v7

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    const/high16 v2, 0x1c00000

    and-int v2, v21, v2

    xor-int v2, v2, v16

    const/high16 v5, 0x800000

    if-le v2, v5, :cond_72

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    :cond_72
    and-int v2, v21, v16

    if-ne v2, v5, :cond_74

    :cond_73
    move/from16 v7, v23

    goto :goto_42

    :cond_74
    const/4 v7, 0x0

    :goto_42
    or-int/2addr v0, v7

    const/high16 v2, 0x70000

    and-int v2, v21, v2

    const/high16 v5, 0x20000

    if-ne v2, v5, :cond_75

    move/from16 v7, v23

    goto :goto_43

    :cond_75
    const/4 v7, 0x0

    :goto_43
    or-int/2addr v0, v7

    .line 329
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_77

    if-ne v2, v13, :cond_76

    goto :goto_44

    :cond_76
    move-object/from16 v8, v32

    goto :goto_45

    .line 330
    :cond_77
    :goto_44
    new-instance v0, Lvb;

    const/4 v7, 0x1

    move-object/from16 v6, p5

    move-object/from16 v2, p9

    move-object v5, v8

    move-object/from16 v8, v32

    invoke-direct/range {v0 .. v7}, Lvb;-><init>(ZLkotlin/jvm/functions/Function2;ILandroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 331
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    move-object v2, v0

    .line 332
    :goto_45
    check-cast v2, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v20, 0xe

    const/4 v3, 0x4

    if-ne v0, v3, :cond_78

    move/from16 v7, v23

    goto :goto_46

    :cond_78
    const/4 v7, 0x0

    .line 333
    :goto_46
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v0

    if-nez v7, :cond_79

    if-ne v0, v13, :cond_7a

    .line 334
    :cond_79
    new-instance v0, Lla;

    const/16 v3, 0x11

    invoke-direct {v0, v3}, Lla;-><init>(I)V

    .line 335
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 336
    :cond_7a
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 337
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v5

    .line 338
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_7b

    if-ne v6, v13, :cond_7c

    .line 339
    :cond_7b
    new-instance v6, Lb;

    const/16 v5, 0x1b

    invoke-direct {v6, v5, v15, v4}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 340
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 341
    :cond_7c
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v6, v14}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 342
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_7d

    .line 343
    new-instance v3, Landroidx/compose/animation/core/SeekableTransitionState;

    invoke-direct {v3, v10}, Landroidx/compose/animation/core/SeekableTransitionState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    .line 344
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 345
    :cond_7d
    check-cast v3, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 346
    const-string v5, "entry"

    const/16 v6, 0x38

    invoke-static {v3, v5, v14, v6}, Landroidx/compose/animation/core/TransitionKt;->d(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    move-result-object v5

    if-eqz v1, :cond_80

    const v6, -0x53b87f04

    .line 347
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 348
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v9

    or-int/2addr v7, v9

    .line 349
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_7e

    if-ne v9, v13, :cond_7f

    .line 350
    :cond_7e
    new-instance v9, Landroidx/navigation/compose/NavHostKt$NavHost$20$1;

    const/4 v7, 0x0

    invoke-direct {v9, v3, v12, v11, v7}, Landroidx/navigation/compose/NavHostKt$NavHost$20$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;FLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 351
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 352
    :cond_7f
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v6, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v6, 0x0

    .line 353
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    const/4 v11, 0x0

    :goto_47
    move-object/from16 v6, v29

    goto :goto_4a

    :cond_80
    const v6, -0x53b21c7e

    .line 354
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 355
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    .line 356
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_82

    if-ne v7, v13, :cond_81

    goto :goto_48

    :cond_81
    const/4 v11, 0x0

    goto :goto_49

    .line 357
    :cond_82
    :goto_48
    new-instance v7, Landroidx/navigation/compose/NavHostKt$NavHost$21$1;

    const/4 v11, 0x0

    invoke-direct {v7, v3, v10, v5, v11}, Landroidx/navigation/compose/NavHostKt$NavHost$21$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    .line 358
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 359
    :goto_49
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v10, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v6, 0x0

    .line 360
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    goto :goto_47

    .line 361
    :goto_4a
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    .line 362
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_84

    if-ne v9, v13, :cond_83

    goto :goto_4b

    :cond_83
    move-object v12, v4

    move-object/from16 v32, v15

    move-object v15, v6

    goto :goto_4c

    .line 363
    :cond_84
    :goto_4b
    new-instance v28, Lwb;

    move-object/from16 v34, v0

    move/from16 v31, v1

    move-object/from16 v33, v2

    move-object/from16 v30, v4

    move-object/from16 v29, v6

    move-object/from16 v32, v8

    move-object/from16 v35, v15

    invoke-direct/range {v28 .. v35}, Lwb;-><init>(Landroidx/collection/MutableObjectFloatMap;Landroidx/navigation/compose/ComposeNavigator;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;)V

    move-object/from16 v9, v28

    move-object/from16 v15, v29

    move-object/from16 v12, v30

    move-object/from16 v32, v35

    .line 364
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 365
    :goto_4c
    move-object v2, v9

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 366
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_85

    .line 367
    new-instance v0, Lla;

    const/16 v4, 0x12

    invoke-direct {v0, v4}, Lla;-><init>(I)V

    .line 368
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 369
    :cond_85
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 370
    new-instance v27, Li1;

    move-object/from16 v31, p10

    move/from16 v30, v1

    move-object/from16 v28, v3

    move-object/from16 v29, v10

    invoke-direct/range {v27 .. v32}, Li1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;ZLandroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/State;)V

    move-object/from16 v0, v27

    const v1, -0x7b25bbc0

    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    shr-int/lit8 v1, v21, 0x3

    and-int/lit8 v1, v1, 0x70

    const v3, 0x36000

    or-int/2addr v1, v3

    move/from16 v3, v21

    and-int/lit16 v3, v3, 0x1c00

    or-int v7, v1, v3

    const/4 v8, 0x0

    move-object v1, v5

    move-object v5, v0

    move-object v0, v1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v22, v11

    move-object v6, v14

    .line 371
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/AnimatedContentKt;->a(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 372
    iget-object v1, v0, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 373
    invoke-virtual {v1}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v8

    .line 374
    iget-object v1, v0, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 375
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 376
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v2, p0

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 377
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_86

    if-ne v3, v13, :cond_87

    :cond_86
    move-object v1, v0

    .line 378
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    const/4 v7, 0x0

    move-object v3, v10

    move-object v6, v12

    move-object v4, v15

    move-object/from16 v5, v32

    invoke-direct/range {v0 .. v7}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/navigation/NavHostController;Landroidx/navigation/NavBackStackEntry;Landroidx/collection/MutableObjectFloatMap;Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/coroutines/Continuation;)V

    .line 379
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    move-object v3, v0

    .line 380
    :cond_87
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v9, v3, v14}, Landroidx/compose/runtime/EffectsKt;->f(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    const/4 v5, 0x0

    .line 381
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    goto :goto_4d

    :cond_88
    move-object v14, v1

    move-object/from16 v25, v9

    const/4 v5, 0x0

    const/16 v22, 0x0

    const v0, -0x536370aa

    .line 382
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 383
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 384
    :goto_4d
    const-string v0, "dialog"

    move-object/from16 v9, v25

    .line 385
    invoke-virtual {v9, v0}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 386
    instance-of v1, v0, Landroidx/navigation/compose/DialogNavigator;

    if-eqz v1, :cond_89

    move-object v8, v0

    check-cast v8, Landroidx/navigation/compose/DialogNavigator;

    goto :goto_4e

    :cond_89
    move-object/from16 v8, v22

    :goto_4e
    if-nez v8, :cond_8a

    .line 387
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_8f

    new-instance v0, Lyb;

    const/4 v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lyb;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;III)V

    .line 388
    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_8a
    const/4 v5, 0x0

    .line 389
    invoke-static {v8, v14, v5}, Landroidx/navigation/compose/DialogHostKt;->a(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/Composer;I)V

    goto :goto_4f

    .line 390
    :cond_8b
    const-string v0, "No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner"

    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    return-void

    .line 391
    :cond_8c
    const-string v0, "ViewModelStore should be set before setGraph call"

    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    return-void

    .line 392
    :cond_8d
    const-string v0, "NavHost requires a ViewModelStoreOwner to be provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    return-void

    :cond_8e
    move-object v14, v4

    .line 393
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 394
    :goto_4f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_8f

    new-instance v0, Lyb;

    const/4 v13, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lyb;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;III)V

    .line 395
    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_8f
    return-void
.end method

.method public static final b(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move-object/from16 v14, p10

    .line 6
    .line 7
    move-object/from16 v10, p11

    .line 8
    .line 9
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v1, 0x250e519a

    .line 12
    .line 13
    .line 14
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x2

    .line 26
    :goto_0
    or-int v1, p12, v1

    .line 27
    .line 28
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/16 v3, 0x20

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    move v2, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v2, 0x10

    .line 39
    .line 40
    :goto_1
    or-int/2addr v1, v2

    .line 41
    move-object/from16 v2, p2

    .line 42
    .line 43
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v5, 0x80

    .line 48
    .line 49
    const/16 v6, 0x100

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    move v4, v6

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move v4, v5

    .line 56
    :goto_2
    or-int/2addr v1, v4

    .line 57
    const v4, 0x32406c00

    .line 58
    .line 59
    .line 60
    or-int/2addr v1, v4

    .line 61
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    move v5, v6

    .line 68
    :cond_3
    const/16 v4, 0x36

    .line 69
    .line 70
    or-int/2addr v4, v5

    .line 71
    const v5, 0x12492493

    .line 72
    .line 73
    .line 74
    and-int/2addr v5, v1

    .line 75
    const v7, 0x12492492

    .line 76
    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x1

    .line 80
    if-ne v5, v7, :cond_5

    .line 81
    .line 82
    and-int/lit16 v5, v4, 0x93

    .line 83
    .line 84
    const/16 v7, 0x92

    .line 85
    .line 86
    if-eq v5, v7, :cond_4

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    move v5, v8

    .line 90
    goto :goto_4

    .line 91
    :cond_5
    :goto_3
    move v5, v9

    .line 92
    :goto_4
    and-int/lit8 v7, v1, 0x1

    .line 93
    .line 94
    invoke-virtual {v10, v7, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_c

    .line 99
    .line 100
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 101
    .line 102
    .line 103
    and-int/lit8 v5, p12, 0x1

    .line 104
    .line 105
    const v7, -0xfc00001

    .line 106
    .line 107
    .line 108
    if-eqz v5, :cond_7

    .line 109
    .line 110
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_6

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_6
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 118
    .line 119
    .line 120
    and-int/2addr v1, v7

    .line 121
    move-object/from16 v5, p3

    .line 122
    .line 123
    move-object/from16 v7, p7

    .line 124
    .line 125
    move v11, v1

    .line 126
    move v12, v8

    .line 127
    move v15, v9

    .line 128
    move-object/from16 v1, p6

    .line 129
    .line 130
    move-object/from16 v8, p8

    .line 131
    .line 132
    move-object/from16 v9, p9

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_7
    :goto_5
    and-int/2addr v1, v7

    .line 136
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 137
    .line 138
    sget-object v7, Landroidx/navigation/compose/DefaultNavTransitions;->a:Lz6;

    .line 139
    .line 140
    sget-object v11, Landroidx/navigation/compose/DefaultNavTransitions;->b:Lz6;

    .line 141
    .line 142
    move v12, v8

    .line 143
    move v15, v9

    .line 144
    move-object v9, v11

    .line 145
    move v11, v1

    .line 146
    move-object v8, v7

    .line 147
    move-object/from16 v1, p4

    .line 148
    .line 149
    move-object/from16 v7, p5

    .line 150
    .line 151
    :goto_6
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 152
    .line 153
    .line 154
    and-int/lit8 v12, v11, 0x70

    .line 155
    .line 156
    if-ne v12, v3, :cond_8

    .line 157
    .line 158
    move v3, v15

    .line 159
    goto :goto_7

    .line 160
    :cond_8
    const/4 v3, 0x0

    .line 161
    :goto_7
    and-int/lit16 v4, v4, 0x380

    .line 162
    .line 163
    if-ne v4, v6, :cond_9

    .line 164
    .line 165
    goto :goto_8

    .line 166
    :cond_9
    const/4 v15, 0x0

    .line 167
    :goto_8
    or-int/2addr v3, v15

    .line 168
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    if-nez v3, :cond_a

    .line 173
    .line 174
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 175
    .line 176
    if-ne v4, v3, :cond_b

    .line 177
    .line 178
    :cond_a
    iget-object v3, v0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 179
    .line 180
    iget-object v3, v3, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 181
    .line 182
    new-instance v4, Landroidx/navigation/NavGraphBuilder;

    .line 183
    .line 184
    invoke-direct {v4, v3, v13}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v14, v4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4}, Landroidx/navigation/NavGraphBuilder;->c()Landroidx/navigation/NavGraph;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :cond_b
    check-cast v4, Landroidx/navigation/NavGraph;

    .line 198
    .line 199
    and-int/lit16 v3, v11, 0x1f8e

    .line 200
    .line 201
    const v6, 0x36036000

    .line 202
    .line 203
    .line 204
    or-int v11, v3, v6

    .line 205
    .line 206
    const/4 v12, 0x6

    .line 207
    move-object v6, v1

    .line 208
    move-object v1, v4

    .line 209
    move-object v3, v5

    .line 210
    move-object/from16 v4, p4

    .line 211
    .line 212
    move-object/from16 v5, p5

    .line 213
    .line 214
    invoke-static/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt;->a(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 215
    .line 216
    .line 217
    move-object v4, v3

    .line 218
    move-object v0, v10

    .line 219
    move-object v10, v9

    .line 220
    move-object v9, v8

    .line 221
    move-object v8, v7

    .line 222
    move-object v7, v6

    .line 223
    goto :goto_9

    .line 224
    :cond_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 225
    .line 226
    .line 227
    move-object/from16 v4, p3

    .line 228
    .line 229
    move-object/from16 v7, p6

    .line 230
    .line 231
    move-object/from16 v8, p7

    .line 232
    .line 233
    move-object/from16 v9, p8

    .line 234
    .line 235
    move-object v0, v10

    .line 236
    move-object/from16 v10, p9

    .line 237
    .line 238
    :goto_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 239
    .line 240
    .line 241
    move-result-object v15

    .line 242
    if-eqz v15, :cond_d

    .line 243
    .line 244
    new-instance v0, Lxb;

    .line 245
    .line 246
    move-object/from16 v1, p0

    .line 247
    .line 248
    move-object/from16 v3, p2

    .line 249
    .line 250
    move-object/from16 v5, p4

    .line 251
    .line 252
    move-object/from16 v6, p5

    .line 253
    .line 254
    move/from16 v12, p12

    .line 255
    .line 256
    move-object v2, v13

    .line 257
    move-object v11, v14

    .line 258
    invoke-direct/range {v0 .. v12}, Lxb;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;I)V

    .line 259
    .line 260
    .line 261
    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 262
    .line 263
    :cond_d
    return-void
.end method
