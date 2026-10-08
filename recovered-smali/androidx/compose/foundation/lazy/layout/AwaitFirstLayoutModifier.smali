.class public final Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;

.field public c:Lkotlinx/coroutines/CompletableDeferred;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    return p0
.end method

.method public final g()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;-><init>(Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const/16 p0, 0xea

    .line 2
    .line 3
    return p0
.end method

.method public final bridge synthetic i(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;

    .line 2
    .line 3
    return-void
.end method

.method public final k(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->c:Lkotlinx/coroutines/CompletableDeferred;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lkotlinx/coroutines/CompletableDeferredKt;->a(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableDeferred;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->c:Lkotlinx/coroutines/CompletableDeferred;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->b:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;

    .line 13
    .line 14
    if-eqz p0, :cond_4

    .line 15
    .line 16
    iget-boolean v1, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 17
    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->y:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 21
    .line 22
    new-instance v2, Lb;

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    invoke-direct {v2, v3, p0, v1}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget v3, v1, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 33
    .line 34
    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v4, v1, Landroidx/compose/ui/spatial/RectManager;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v5, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks;->a:Landroidx/collection/MutableIntObjectMap;

    .line 48
    .line 49
    new-instance v6, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 50
    .line 51
    invoke-direct {v6, v4, v3, p0, v2}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;-><init>(Landroidx/compose/ui/spatial/ThrottledCallbacks;ILandroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;Lb;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v3}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_0

    .line 59
    .line 60
    invoke-virtual {v5, v3, v6}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    move-object v2, v6

    .line 64
    :cond_0
    check-cast v2, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 65
    .line 66
    if-eq v2, v6, :cond_2

    .line 67
    .line 68
    :goto_0
    iget-object v3, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 69
    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    move-object v2, v3

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iput-object v6, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 75
    .line 76
    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 77
    .line 78
    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2}, Landroidx/compose/ui/spatial/RectManager;->d(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    iget-object v3, v1, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/RectList;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroidx/compose/ui/spatial/RectManager;->e(Landroidx/compose/ui/node/LayoutNode;)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    iget-object v3, v3, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 95
    .line 96
    add-int/lit8 v2, v2, 0x2

    .line 97
    .line 98
    aget-wide v4, v3, v2

    .line 99
    .line 100
    const-wide v7, 0x6fffffffffffffffL    # 3.1050361846014175E231

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    and-long/2addr v4, v7

    .line 106
    const-wide/high16 v7, -0x7000000000000000L

    .line 107
    .line 108
    or-long/2addr v4, v7

    .line 109
    aput-wide v4, v3, v2

    .line 110
    .line 111
    :cond_3
    const/4 v2, 0x1

    .line 112
    iput-boolean v2, v1, Landroidx/compose/ui/spatial/RectManager;->f:Z

    .line 113
    .line 114
    invoke-virtual {v1}, Landroidx/compose/ui/spatial/RectManager;->k()V

    .line 115
    .line 116
    .line 117
    iput-object v6, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->x:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 118
    .line 119
    :cond_4
    invoke-interface {v0, p1}, Lkotlinx/coroutines/Deferred;->Z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 124
    .line 125
    if-ne p0, p1, :cond_5

    .line 126
    .line 127
    return-object p0

    .line 128
    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    return-object p0
.end method
