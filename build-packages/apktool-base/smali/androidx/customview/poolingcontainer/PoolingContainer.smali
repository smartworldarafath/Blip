.class public abstract Landroidx/customview/poolingcontainer/PoolingContainer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/platform/AbstractComposeView;Lpi;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/customview/poolingcontainer/PoolingContainer;->d(Landroid/view/View;)Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;->a:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final b(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/core/view/ViewKt;->a(Landroid/view/View;)Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object p0, p0, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;->a:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->e(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/View;

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/customview/poolingcontainer/PoolingContainer;->d(Landroid/view/View;)Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;->a:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_0
    const/4 v2, -0x1

    .line 37
    if-ge v2, v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroidx/customview/poolingcontainer/PoolingContainerListener;

    .line 44
    .line 45
    check-cast v2, Lpi;

    .line 46
    .line 47
    iget-object v2, v2, Lpi;->a:Landroidx/compose/ui/platform/AbstractComposeView;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AbstractComposeView;->e()V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public static final c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/core/view/ViewGroupKt$children$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    move-object v0, p0

    .line 11
    check-cast v0, Landroidx/core/view/ViewGroupKt$iterator$1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/core/view/ViewGroupKt$iterator$1;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/core/view/ViewGroupKt$iterator$1;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/View;

    .line 24
    .line 25
    invoke-static {v0}, Landroidx/customview/poolingcontainer/PoolingContainer;->d(Landroid/view/View;)Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;->a:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :goto_0
    const/4 v2, -0x1

    .line 36
    if-ge v2, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroidx/customview/poolingcontainer/PoolingContainerListener;

    .line 43
    .line 44
    check-cast v2, Lpi;

    .line 45
    .line 46
    iget-object v2, v2, Lpi;->a:Landroidx/compose/ui/platform/AbstractComposeView;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AbstractComposeView;->e()V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method public static final d(Landroid/view/View;)Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;
    .locals 2

    .line 1
    const v0, 0x7f0a0171

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    .line 13
    .line 14
    invoke-direct {v1}, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v1
.end method

.method public static final e(Landroid/view/View;Lpi;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/customview/poolingcontainer/PoolingContainer;->d(Landroid/view/View;)Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;->a:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
