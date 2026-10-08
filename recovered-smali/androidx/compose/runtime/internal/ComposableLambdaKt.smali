.class public abstract Landroidx/compose/runtime/internal/ComposableLambdaKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(II)I
    .locals 0

    .line 1
    rem-int/lit8 p1, p1, 0xa

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x3

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    shl-int/2addr p0, p1

    .line 8
    return p0
.end method

.method public static final b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;
    .locals 4

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p0, v1, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 21
    .line 22
    iget-object p0, v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->l:Lkotlin/Function;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_5

    .line 29
    .line 30
    iput-object p1, v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->l:Lkotlin/Function;

    .line 31
    .line 32
    iget-boolean p0, v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->k:Z

    .line 33
    .line 34
    if-eqz p0, :cond_5

    .line 35
    .line 36
    iget-object p0, v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->m:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->a:Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-interface {p2, p0, p1}, Landroidx/compose/runtime/RecomposeScopeOwner;->c(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 46
    .line 47
    .line 48
    :cond_1
    iput-object p1, v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->m:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 49
    .line 50
    :cond_2
    iget-object p0, v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n:Ljava/util/ArrayList;

    .line 51
    .line 52
    if-eqz p0, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    const/4 v1, 0x0

    .line 59
    :goto_0
    if-ge v1, p2, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroidx/compose/runtime/RecomposeScope;

    .line 66
    .line 67
    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 68
    .line 69
    iget-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->a:Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    invoke-interface {v3, v2, p1}, Landroidx/compose/runtime/RecomposeScopeOwner;->c(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 74
    .line 75
    .line 76
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 80
    .line 81
    .line 82
    :cond_5
    return-object v0
.end method

.method public static final c(Landroidx/compose/runtime/RecomposeScope;Landroidx/compose/runtime/RecomposeScopeImpl;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    instance-of v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->b()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eq p0, p1, :cond_1

    .line 17
    .line 18
    iget-object p0, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->c:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->c:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 21
    .line 22
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 32
    return p0
.end method
