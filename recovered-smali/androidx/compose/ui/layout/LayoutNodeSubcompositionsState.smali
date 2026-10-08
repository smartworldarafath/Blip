.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/ComposeNodeLifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$ApproachMeasureScopeImpl;,
        Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;,
        Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;
    }
.end annotation


# instance fields
.field public final j:Landroidx/compose/ui/node/LayoutNode;

.field public k:Landroidx/compose/runtime/CompositionContext;

.field public l:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

.field public m:I

.field public n:I

.field public final o:Landroidx/collection/MutableScatterMap;

.field public final p:Landroidx/collection/MutableScatterMap;

.field public final q:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

.field public final r:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$ApproachMeasureScopeImpl;

.field public final s:Landroidx/collection/MutableScatterMap;

.field public final t:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

.field public final u:Landroidx/collection/MutableScatterMap;

.field public final v:Landroidx/compose/runtime/collection/MutableVector;

.field public w:I

.field public x:I

.field public final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->l:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    .line 7
    .line 8
    sget-object p1, Landroidx/collection/ScatterMapKt;->a:[J

    .line 9
    .line 10
    new-instance p1, Landroidx/collection/MutableScatterMap;

    .line 11
    .line 12
    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:Landroidx/collection/MutableScatterMap;

    .line 16
    .line 17
    new-instance p1, Landroidx/collection/MutableScatterMap;

    .line 18
    .line 19
    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->p:Landroidx/collection/MutableScatterMap;

    .line 23
    .line 24
    new-instance p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->q:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    .line 30
    .line 31
    new-instance p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$ApproachMeasureScopeImpl;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$ApproachMeasureScopeImpl;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->r:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$ApproachMeasureScopeImpl;

    .line 37
    .line 38
    new-instance p1, Landroidx/collection/MutableScatterMap;

    .line 39
    .line 40
    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->s:Landroidx/collection/MutableScatterMap;

    .line 44
    .line 45
    new-instance p1, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    .line 46
    .line 47
    invoke-direct {p1}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->t:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    .line 51
    .line 52
    new-instance p1, Landroidx/collection/MutableScatterMap;

    .line 53
    .line 54
    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->u:Landroidx/collection/MutableScatterMap;

    .line 58
    .line 59
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 60
    .line 61
    const/16 p2, 0x10

    .line 62
    .line 63
    new-array p2, p2, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-direct {p1, p2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->v:Landroidx/compose/runtime/collection/MutableVector;

    .line 69
    .line 70
    const-string p1, "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve \'match parent\' sizing, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement."

    .line 71
    .line 72
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->y:Ljava/lang/String;

    .line 73
    .line 74
    return-void
.end method

.method public static final c(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->s:Landroidx/collection/MutableScatterMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 18
    .line 19
    if-lez v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v3, "No pre-composed items to dispose"

    .line 23
    .line 24
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->o()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->o()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iget v5, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 44
    .line 45
    sub-int/2addr v4, v5

    .line 46
    if-lt v3, v4, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string v4, "Item is not in pre-composed item range"

    .line 50
    .line 51
    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    iget v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 55
    .line 56
    add-int/2addr v4, v2

    .line 57
    iput v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 58
    .line 59
    iget v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 60
    .line 61
    add-int/lit8 v4, v4, -0x1

    .line 62
    .line 63
    iput v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 64
    .line 65
    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:Landroidx/collection/MutableScatterMap;

    .line 66
    .line 67
    invoke-virtual {v4, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->e(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->o()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iget v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 87
    .line 88
    sub-int/2addr v1, v4

    .line 89
    iget v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 90
    .line 91
    sub-int/2addr v1, v4

    .line 92
    invoke-virtual {p0, v3, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j(II)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->g(I)V

    .line 96
    .line 97
    .line 98
    :cond_3
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->v:Landroidx/compose/runtime/collection/MutableVector;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->h(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_4

    .line 105
    .line 106
    const/4 p0, 0x6

    .line 107
    invoke-static {v0, v2, p0}, Landroidx/compose/ui/node/LayoutNode;->Z(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 108
    .line 109
    .line 110
    :cond_4
    return-void
.end method

.method public static e(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->f:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/compose/runtime/PausedCompositionImpl;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    sget-object v2, Landroidx/compose/runtime/PausedCompositionState;->k:Landroidx/compose/runtime/PausedCompositionState;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Landroidx/compose/runtime/PausedCompositionImpl;->k:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 13
    .line 14
    iget-object v2, v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->d:Landroidx/collection/MutableScatterSet;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/collection/ScatterSet;->c()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v2, v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->d:Landroidx/collection/MutableScatterSet;

    .line 24
    .line 25
    sget-object v4, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 26
    .line 27
    new-instance v4, Landroidx/collection/MutableScatterSet;

    .line 28
    .line 29
    invoke-direct {v4}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v4, v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->d:Landroidx/collection/MutableScatterSet;

    .line 33
    .line 34
    iget-object v4, v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->c:Landroidx/compose/runtime/collection/MutableVector;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v2, v3

    .line 41
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b()V

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, Landroidx/compose/runtime/PausedCompositionImpl;->a:Landroidx/compose/runtime/CompositionImpl;

    .line 45
    .line 46
    iput-object v3, v0, Landroidx/compose/runtime/CompositionImpl;->z:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 51
    .line 52
    iput-object v2, v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->k:Landroidx/collection/ScatterSet;

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    iput v1, v0, Landroidx/compose/runtime/CompositionImpl;->F:I

    .line 56
    .line 57
    :cond_1
    iput-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->f:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->c:Landroidx/compose/runtime/ReusableComposition;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl;->a()V

    .line 66
    .line 67
    .line 68
    :cond_2
    iput-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->c:Landroidx/compose/runtime/ReusableComposition;

    .line 69
    .line 70
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    iput-boolean v1, v2, Landroidx/compose/ui/node/LayoutNode;->z:Z

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:Landroidx/collection/MutableScatterMap;

    .line 9
    .line 10
    iget-object v3, v1, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v4, v1, Landroidx/collection/ScatterMap;->a:[J

    .line 13
    .line 14
    array-length v5, v4

    .line 15
    add-int/lit8 v5, v5, -0x2

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    if-ltz v5, :cond_3

    .line 19
    .line 20
    move v7, v6

    .line 21
    :goto_0
    aget-wide v8, v4, v7

    .line 22
    .line 23
    not-long v10, v8

    .line 24
    const/4 v12, 0x7

    .line 25
    shl-long/2addr v10, v12

    .line 26
    and-long/2addr v10, v8

    .line 27
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    and-long/2addr v10, v12

    .line 33
    cmp-long v10, v10, v12

    .line 34
    .line 35
    if-eqz v10, :cond_2

    .line 36
    .line 37
    sub-int v10, v7, v5

    .line 38
    .line 39
    not-int v10, v10

    .line 40
    ushr-int/lit8 v10, v10, 0x1f

    .line 41
    .line 42
    const/16 v11, 0x8

    .line 43
    .line 44
    rsub-int/lit8 v10, v10, 0x8

    .line 45
    .line 46
    move v12, v6

    .line 47
    :goto_1
    if-ge v12, v10, :cond_1

    .line 48
    .line 49
    const-wide/16 v13, 0xff

    .line 50
    .line 51
    and-long/2addr v13, v8

    .line 52
    const-wide/16 v15, 0x80

    .line 53
    .line 54
    cmp-long v13, v13, v15

    .line 55
    .line 56
    if-gez v13, :cond_0

    .line 57
    .line 58
    shl-int/lit8 v13, v7, 0x3

    .line 59
    .line 60
    add-int/2addr v13, v12

    .line 61
    aget-object v13, v3, v13

    .line 62
    .line 63
    check-cast v13, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 64
    .line 65
    iget-object v13, v13, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->c:Landroidx/compose/runtime/ReusableComposition;

    .line 66
    .line 67
    if-eqz v13, :cond_0

    .line 68
    .line 69
    check-cast v13, Landroidx/compose/runtime/CompositionImpl;

    .line 70
    .line 71
    invoke-virtual {v13}, Landroidx/compose/runtime/CompositionImpl;->a()V

    .line 72
    .line 73
    .line 74
    :cond_0
    shr-long/2addr v8, v11

    .line 75
    add-int/lit8 v12, v12, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    if-ne v10, v11, :cond_3

    .line 79
    .line 80
    :cond_2
    if-eq v7, v5, :cond_3

    .line 81
    .line 82
    add-int/lit8 v7, v7, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->T()V

    .line 86
    .line 87
    .line 88
    iput-boolean v6, v2, Landroidx/compose/ui/node/LayoutNode;->z:Z

    .line 89
    .line 90
    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->h()V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->p:Landroidx/collection/MutableScatterMap;

    .line 94
    .line 95
    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->h()V

    .line 96
    .line 97
    .line 98
    iput v6, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 99
    .line 100
    iput v6, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 101
    .line 102
    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->s:Landroidx/collection/MutableScatterMap;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->h()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->h()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final d(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;Z)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->f:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, v2

    .line 18
    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    :try_start_0
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    iput-boolean v5, p0, Landroidx/compose/ui/node/LayoutNode;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/runtime/PausedCompositionImpl;->c()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    new-instance p2, Lk8;

    .line 36
    .line 37
    const/16 v5, 0xd

    .line 38
    .line 39
    invoke-direct {p2, v5}, Lk8;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/PausedCompositionImpl;->e(Landroidx/compose/runtime/ShouldPauseCallback;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/PausedCompositionImpl;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    :try_start_2
    iput-object v2, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->f:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->z:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    .line 56
    invoke-static {v1, v4, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    goto :goto_3

    .line 62
    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :goto_3
    invoke-static {v1, v4, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_2
    return-void
.end method

.method public final f(Ljava/lang/Object;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createPrecomposedSlotHandle$1;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createPrecomposedSlotHandle$2;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createPrecomposedSlotHandle$2;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final g(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 9
    .line 10
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->o()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    iget v6, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 19
    .line 20
    sub-int/2addr v5, v6

    .line 21
    const/4 v6, 0x1

    .line 22
    sub-int/2addr v5, v6

    .line 23
    if-gt v1, v5, :cond_8

    .line 24
    .line 25
    iget-object v7, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->t:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    .line 26
    .line 27
    invoke-virtual {v7}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->clear()V

    .line 28
    .line 29
    .line 30
    iget-object v8, v7, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->j:Landroidx/collection/MutableOrderedScatterSet;

    .line 31
    .line 32
    iget-object v9, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:Landroidx/collection/MutableScatterMap;

    .line 33
    .line 34
    if-gt v1, v5, :cond_0

    .line 35
    .line 36
    move v10, v1

    .line 37
    :goto_0
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v11

    .line 41
    check-cast v11, Landroidx/compose/ui/node/LayoutNode;

    .line 42
    .line 43
    invoke-virtual {v9, v11}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    check-cast v11, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 51
    .line 52
    iget-object v11, v11, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->a:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {v8, v11}, Landroidx/collection/MutableOrderedScatterSet;->b(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    if-eq v10, v5, :cond_0

    .line 58
    .line 59
    add-int/lit8 v10, v10, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v10, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->l:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    .line 63
    .line 64
    invoke-interface {v10, v7}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;->a(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    if-eqz v7, :cond_1

    .line 72
    .line 73
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/4 v10, 0x0

    .line 79
    :goto_1
    invoke-static {v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    move v12, v2

    .line 84
    :goto_2
    if-lt v5, v1, :cond_7

    .line 85
    .line 86
    :try_start_0
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    check-cast v13, Landroidx/compose/ui/node/LayoutNode;

    .line 91
    .line 92
    invoke-virtual {v9, v13}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    check-cast v14, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 100
    .line 101
    iget-object v15, v14, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->a:Ljava/lang/Object;

    .line 102
    .line 103
    invoke-virtual {v8, v15}, Landroidx/collection/OrderedScatterSet;->a(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v16

    .line 107
    if-eqz v16, :cond_5

    .line 108
    .line 109
    move/from16 v16, v6

    .line 110
    .line 111
    iget v6, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 112
    .line 113
    add-int/lit8 v6, v6, 0x1

    .line 114
    .line 115
    iput v6, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 116
    .line 117
    iget-object v6, v14, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->g:Landroidx/compose/runtime/MutableState;

    .line 118
    .line 119
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 120
    .line 121
    invoke-virtual {v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    check-cast v6, Ljava/lang/Boolean;

    .line 126
    .line 127
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_4

    .line 132
    .line 133
    iget-object v6, v13, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 134
    .line 135
    iget-object v13, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 136
    .line 137
    sget-object v2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 138
    .line 139
    iput-object v2, v13, Landroidx/compose/ui/node/MeasurePassDelegate;->u:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 140
    .line 141
    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 142
    .line 143
    if-eqz v6, :cond_2

    .line 144
    .line 145
    iput-object v2, v6, Landroidx/compose/ui/node/LookaheadPassDelegate;->s:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 146
    .line 147
    :cond_2
    const/4 v2, 0x0

    .line 148
    invoke-virtual {v0, v14, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->l(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;Z)V

    .line 149
    .line 150
    .line 151
    iget-boolean v2, v14, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->h:Z

    .line 152
    .line 153
    if-eqz v2, :cond_3

    .line 154
    .line 155
    move/from16 v2, v16

    .line 156
    .line 157
    move v12, v2

    .line 158
    :goto_3
    const/4 v6, 0x0

    .line 159
    goto :goto_4

    .line 160
    :cond_3
    move/from16 v2, v16

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    goto :goto_5

    .line 165
    :cond_4
    move v6, v2

    .line 166
    move/from16 v2, v16

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_5
    move v2, v6

    .line 170
    iput-boolean v2, v3, Landroidx/compose/ui/node/LayoutNode;->z:Z

    .line 171
    .line 172
    invoke-virtual {v9, v13}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    iget-object v2, v14, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->c:Landroidx/compose/runtime/ReusableComposition;

    .line 176
    .line 177
    if-eqz v2, :cond_6

    .line 178
    .line 179
    check-cast v2, Landroidx/compose/runtime/CompositionImpl;

    .line 180
    .line 181
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionImpl;->a()V

    .line 182
    .line 183
    .line 184
    :cond_6
    const/4 v2, 0x1

    .line 185
    invoke-virtual {v3, v5, v2}, Landroidx/compose/ui/node/LayoutNode;->U(II)V

    .line 186
    .line 187
    .line 188
    const/4 v6, 0x0

    .line 189
    iput-boolean v6, v3, Landroidx/compose/ui/node/LayoutNode;->z:Z

    .line 190
    .line 191
    :goto_4
    iget-object v13, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->p:Landroidx/collection/MutableScatterMap;

    .line 192
    .line 193
    invoke-virtual {v13, v15}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .line 195
    .line 196
    add-int/lit8 v5, v5, -0x1

    .line 197
    .line 198
    move/from16 v17, v6

    .line 199
    .line 200
    move v6, v2

    .line 201
    move/from16 v2, v17

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :goto_5
    invoke-static {v7, v11, v10}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 205
    .line 206
    .line 207
    throw v0

    .line 208
    :cond_7
    invoke-static {v7, v11, v10}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 209
    .line 210
    .line 211
    move v2, v12

    .line 212
    goto :goto_6

    .line 213
    :cond_8
    move v6, v2

    .line 214
    :goto_6
    if-eqz v2, :cond_9

    .line 215
    .line 216
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->f()V

    .line 217
    .line 218
    .line 219
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->h()V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public final h()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->o()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:Landroidx/collection/MutableScatterMap;

    .line 12
    .line 13
    iget v1, v1, Landroidx/collection/ScatterMap;->e:I

    .line 14
    .line 15
    if-ne v1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "Inconsistency between the count of nodes tracked by the state ("

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ") and the children count on the SubcomposeLayout ("

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "). Are you trying to use the state of the disposed SubcomposeLayout?"

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 49
    .line 50
    sub-int v2, v0, v1

    .line 51
    .line 52
    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 53
    .line 54
    sub-int/2addr v2, v3

    .line 55
    if-ltz v2, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string v2, ". Reusable children "

    .line 59
    .line 60
    const-string v4, ". Precomposed children "

    .line 61
    .line 62
    const-string v5, "Incorrect state. Total children "

    .line 63
    .line 64
    invoke-static {v5, v0, v2, v1, v4}, Ljb;->k(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->s:Landroidx/collection/MutableScatterMap;

    .line 79
    .line 80
    iget v0, v0, Landroidx/collection/ScatterMap;->e:I

    .line 81
    .line 82
    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 83
    .line 84
    if-ne v0, p0, :cond_2

    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v2, "Incorrect state. Precomposed children "

    .line 90
    .line 91
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p0, ". Map size "

    .line 98
    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final i(Z)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->s:Landroidx/collection/MutableScatterMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->h()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->o()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 20
    .line 21
    if-eq v3, v2, :cond_4

    .line 22
    .line 23
    iput v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 24
    .line 25
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v4, 0x0

    .line 37
    :goto_0
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    :goto_1
    if-ge v0, v2, :cond_3

    .line 42
    .line 43
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    .line 48
    .line 49
    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:Landroidx/collection/MutableScatterMap;

    .line 50
    .line 51
    invoke-virtual {v7, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 56
    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    iget-object v8, v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->g:Landroidx/compose/runtime/MutableState;

    .line 60
    .line 61
    check-cast v8, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 62
    .line 63
    invoke-virtual {v8}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    check-cast v8, Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_2

    .line 74
    .line 75
    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 76
    .line 77
    iget-object v8, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 78
    .line 79
    sget-object v9, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 80
    .line 81
    iput-object v9, v8, Landroidx/compose/ui/node/MeasurePassDelegate;->u:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 82
    .line 83
    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 84
    .line 85
    if-eqz v6, :cond_1

    .line 86
    .line 87
    iput-object v9, v6, Landroidx/compose/ui/node/LookaheadPassDelegate;->s:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 88
    .line 89
    :cond_1
    invoke-virtual {p0, v7, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->l(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;Z)V

    .line 90
    .line 91
    .line 92
    sget-object v6, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->a:Landroidx/compose/ui/layout/SubcomposeLayoutKt$ReusedSlotId$1;

    .line 93
    .line 94
    iput-object v6, v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_3

    .line 99
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :goto_3
    invoke-static {v3, v5, v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_3
    invoke-static {v3, v5, v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->p:Landroidx/collection/MutableScatterMap;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroidx/collection/MutableScatterMap;->h()V

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->h()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final j(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->z:Z

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, v0}, Landroidx/compose/ui/node/LayoutNode;->P(III)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->z:Z

    .line 11
    .line 12
    return-void
.end method

.method public final k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->h()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->p:Landroidx/collection/MutableScatterMap;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->u:Landroidx/collection/MutableScatterMap;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->s:Landroidx/collection/MutableScatterMap;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x1

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->o()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->o()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0, v4, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j(II)V

    .line 58
    .line 59
    .line 60
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 61
    .line 62
    add-int/2addr v0, v3

    .line 63
    iput v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->o()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    new-instance v4, Landroidx/compose/ui/node/LayoutNode;

    .line 75
    .line 76
    const/4 v5, 0x2

    .line 77
    invoke-direct {v4, v5}, Landroidx/compose/ui/node/LayoutNode;-><init>(I)V

    .line 78
    .line 79
    .line 80
    iput-boolean v3, v0, Landroidx/compose/ui/node/LayoutNode;->z:Z

    .line 81
    .line 82
    invoke-virtual {v0, v2, v4}, Landroidx/compose/ui/node/LayoutNode;->F(ILandroidx/compose/ui/node/LayoutNode;)V

    .line 83
    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    iput-boolean v2, v0, Landroidx/compose/ui/node/LayoutNode;->z:Z

    .line 87
    .line 88
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 89
    .line 90
    add-int/2addr v0, v3

    .line 91
    iput v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 92
    .line 93
    move-object v2, v4

    .line 94
    :goto_0
    invoke-virtual {v1, p1, v2}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 98
    .line 99
    invoke-virtual {p0, v2, p1, p3, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->m(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;ZLkotlin/jvm/functions/Function2;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    return-void
.end method

.method public final l(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->h:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->g:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->g:Landroidx/compose/runtime/MutableState;

    .line 24
    .line 25
    :goto_0
    iget-object v0, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->f:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->e(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    if-eqz p2, :cond_2

    .line 34
    .line 35
    iget-object p0, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->c:Landroidx/compose/runtime/ReusableComposition;

    .line 36
    .line 37
    if-eqz p0, :cond_4

    .line 38
    .line 39
    check-cast p0, Landroidx/compose/runtime/CompositionImpl;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->p()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 46
    .line 47
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getOutOfFrameExecutor()Landroidx/compose/ui/node/OutOfFrameExecutor;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    new-instance p2, Landroidx/compose/ui/layout/a;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-direct {p2, v0, p1}, Landroidx/compose/ui/layout/a;-><init>(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 64
    .line 65
    invoke-virtual {p0, p2}, Landroidx/compose/ui/platform/AndroidComposeView;->E(Lkotlin/jvm/functions/Function0;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    iget-boolean p0, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->h:Z

    .line 70
    .line 71
    if-nez p0, :cond_4

    .line 72
    .line 73
    iget-object p0, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->c:Landroidx/compose/runtime/ReusableComposition;

    .line 74
    .line 75
    if-eqz p0, :cond_4

    .line 76
    .line 77
    check-cast p0, Landroidx/compose/runtime/CompositionImpl;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->p()V

    .line 80
    .line 81
    .line 82
    :cond_4
    return-void
.end method

.method public final m(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;ZLkotlin/jvm/functions/Function2;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 11
    .line 12
    sget-object v3, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->a:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v3, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->b:Lkotlin/jvm/functions/Function2;

    .line 20
    .line 21
    iput-object v2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->c:Landroidx/compose/runtime/ReusableComposition;

    .line 22
    .line 23
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->g:Landroidx/compose/runtime/MutableState;

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    check-cast v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 35
    .line 36
    iget-object p2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->b:Lkotlin/jvm/functions/Function2;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eq p2, p4, :cond_1

    .line 41
    .line 42
    move p2, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move p2, v0

    .line 45
    :goto_0
    iget-object v4, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->f:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 46
    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->e(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    if-eqz p3, :cond_3

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_3
    invoke-virtual {p0, v1, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->d(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;Z)V

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_1
    iget-object v4, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->c:Landroidx/compose/runtime/ReusableComposition;

    .line 62
    .line 63
    if-eqz v4, :cond_6

    .line 64
    .line 65
    check-cast v4, Landroidx/compose/runtime/CompositionImpl;

    .line 66
    .line 67
    iget-object v5, v4, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter v5

    .line 70
    :try_start_0
    iget-object v4, v4, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;

    .line 71
    .line 72
    iget v4, v4, Landroidx/collection/ScatterMap;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    if-lez v4, :cond_5

    .line 75
    .line 76
    move v4, v3

    .line 77
    goto :goto_2

    .line 78
    :cond_5
    move v4, v0

    .line 79
    :goto_2
    monitor-exit v5

    .line 80
    goto :goto_3

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    monitor-exit v5

    .line 83
    throw p0

    .line 84
    :cond_6
    move v4, v3

    .line 85
    :goto_3
    if-nez p2, :cond_8

    .line 86
    .line 87
    if-nez v4, :cond_8

    .line 88
    .line 89
    iget-boolean p2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->d:Z

    .line 90
    .line 91
    if-eqz p2, :cond_7

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_7
    :goto_4
    return-void

    .line 95
    :cond_8
    :goto_5
    iput-object p4, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->b:Lkotlin/jvm/functions/Function2;

    .line 96
    .line 97
    iget-object p2, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->f:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 98
    .line 99
    if-nez p2, :cond_9

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_9
    const-string p2, "new subcompose call while paused composition is still active"

    .line 103
    .line 104
    invoke-static {p2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    if-eqz p2, :cond_a

    .line 112
    .line 113
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    :cond_a
    invoke-static {p2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 118
    .line 119
    .line 120
    move-result-object p4

    .line 121
    :try_start_1
    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 122
    .line 123
    iput-boolean v3, v4, Landroidx/compose/ui/node/LayoutNode;->z:Z

    .line 124
    .line 125
    iget-object v5, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->c:Landroidx/compose/runtime/ReusableComposition;

    .line 126
    .line 127
    iget-object v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->k:Landroidx/compose/runtime/CompositionContext;

    .line 128
    .line 129
    if-eqz v6, :cond_14

    .line 130
    .line 131
    if-eqz v5, :cond_c

    .line 132
    .line 133
    move-object v7, v5

    .line 134
    check-cast v7, Landroidx/compose/runtime/CompositionImpl;

    .line 135
    .line 136
    iget v7, v7, Landroidx/compose/runtime/CompositionImpl;->F:I

    .line 137
    .line 138
    const/4 v8, 0x3

    .line 139
    if-ne v7, v8, :cond_b

    .line 140
    .line 141
    move v7, v3

    .line 142
    goto :goto_7

    .line 143
    :cond_b
    move v7, v0

    .line 144
    :goto_7
    if-eqz v7, :cond_e

    .line 145
    .line 146
    :cond_c
    if-eqz p3, :cond_d

    .line 147
    .line 148
    sget-object v5, Landroidx/compose/ui/platform/Wrapper_androidKt;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 149
    .line 150
    new-instance v5, Landroidx/compose/ui/node/UiApplier;

    .line 151
    .line 152
    invoke-direct {v5, p1}, Landroidx/compose/runtime/AbstractApplier;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 153
    .line 154
    .line 155
    new-instance p1, Landroidx/compose/runtime/CompositionImpl;

    .line 156
    .line 157
    invoke-direct {p1, v6, v5}, Landroidx/compose/runtime/CompositionImpl;-><init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/ui/node/UiApplier;)V

    .line 158
    .line 159
    .line 160
    :goto_8
    move-object v5, p1

    .line 161
    goto :goto_9

    .line 162
    :cond_d
    sget-object v5, Landroidx/compose/ui/platform/Wrapper_androidKt;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 163
    .line 164
    new-instance v5, Landroidx/compose/ui/node/UiApplier;

    .line 165
    .line 166
    invoke-direct {v5, p1}, Landroidx/compose/runtime/AbstractApplier;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 167
    .line 168
    .line 169
    new-instance p1, Landroidx/compose/runtime/CompositionImpl;

    .line 170
    .line 171
    invoke-direct {p1, v6, v5}, Landroidx/compose/runtime/CompositionImpl;-><init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/ui/node/UiApplier;)V

    .line 172
    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_e
    :goto_9
    iput-object v5, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->c:Landroidx/compose/runtime/ReusableComposition;

    .line 176
    .line 177
    iget-object p1, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->b:Lkotlin/jvm/functions/Function2;

    .line 178
    .line 179
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 180
    .line 181
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getOutOfFrameExecutor()Landroidx/compose/ui/node/OutOfFrameExecutor;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    if-eqz p0, :cond_f

    .line 190
    .line 191
    iput-boolean v0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->h:Z

    .line 192
    .line 193
    goto :goto_a

    .line 194
    :catchall_1
    move-exception p0

    .line 195
    goto/16 :goto_d

    .line 196
    .line 197
    :cond_f
    iput-boolean v3, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->h:Z

    .line 198
    .line 199
    new-instance p0, Landroidx/compose/ui/layout/b;

    .line 200
    .line 201
    invoke-direct {p0, v1, p1}, Landroidx/compose/ui/layout/b;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;Lkotlin/jvm/functions/Function2;)V

    .line 202
    .line 203
    .line 204
    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 205
    .line 206
    const v6, 0x5ad8c84e

    .line 207
    .line 208
    .line 209
    invoke-direct {p1, v6, v3, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 210
    .line 211
    .line 212
    :goto_a
    if-eqz p3, :cond_11

    .line 213
    .line 214
    move-object p0, v5

    .line 215
    check-cast p0, Landroidx/compose/runtime/PausableComposition;

    .line 216
    .line 217
    iget-boolean p0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->e:Z

    .line 218
    .line 219
    if-eqz p0, :cond_10

    .line 220
    .line 221
    check-cast v5, Landroidx/compose/runtime/PausableComposition;

    .line 222
    .line 223
    check-cast v5, Landroidx/compose/runtime/CompositionImpl;

    .line 224
    .line 225
    invoke-virtual {v5}, Landroidx/compose/runtime/CompositionImpl;->m()Z

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5}, Landroidx/compose/runtime/CompositionImpl;->t()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5, v3, p1}, Landroidx/compose/runtime/CompositionImpl;->o(ZLkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/PausedCompositionImpl;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    iput-object p0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->f:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 236
    .line 237
    goto :goto_c

    .line 238
    :cond_10
    check-cast v5, Landroidx/compose/runtime/PausableComposition;

    .line 239
    .line 240
    check-cast v5, Landroidx/compose/runtime/CompositionImpl;

    .line 241
    .line 242
    invoke-virtual {v5}, Landroidx/compose/runtime/CompositionImpl;->m()Z

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    invoke-virtual {v5, p0, p1}, Landroidx/compose/runtime/CompositionImpl;->o(ZLkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/PausedCompositionImpl;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    iput-object p0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->f:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 251
    .line 252
    goto :goto_c

    .line 253
    :cond_11
    iget-boolean p0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->e:Z

    .line 254
    .line 255
    if-eqz p0, :cond_13

    .line 256
    .line 257
    check-cast v5, Landroidx/compose/runtime/CompositionImpl;

    .line 258
    .line 259
    invoke-virtual {v5}, Landroidx/compose/runtime/CompositionImpl;->m()Z

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5}, Landroidx/compose/runtime/CompositionImpl;->t()V

    .line 263
    .line 264
    .line 265
    iget-object p0, v5, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 266
    .line 267
    iput v0, p0, Landroidx/compose/runtime/GapComposer;->z:I

    .line 268
    .line 269
    iput-boolean v3, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 270
    .line 271
    iget-object p3, v5, Landroidx/compose/runtime/CompositionImpl;->j:Landroidx/compose/runtime/CompositionContext;

    .line 272
    .line 273
    invoke-virtual {p3, v5, p1}, Landroidx/compose/runtime/CompositionContext;->a(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V

    .line 274
    .line 275
    .line 276
    iget-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 277
    .line 278
    if-nez p1, :cond_12

    .line 279
    .line 280
    iget p1, p0, Landroidx/compose/runtime/GapComposer;->z:I

    .line 281
    .line 282
    if-nez p1, :cond_12

    .line 283
    .line 284
    goto :goto_b

    .line 285
    :cond_12
    const-string p1, "Cannot disable reuse from root if it was caused by other groups"

    .line 286
    .line 287
    invoke-static {p1}, Landroidx/compose/runtime/PreconditionsKt;->a(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :goto_b
    const/4 p1, -0x1

    .line 291
    iput p1, p0, Landroidx/compose/runtime/GapComposer;->z:I

    .line 292
    .line 293
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 294
    .line 295
    goto :goto_c

    .line 296
    :cond_13
    check-cast v5, Landroidx/compose/runtime/CompositionImpl;

    .line 297
    .line 298
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/CompositionImpl;->B(Lkotlin/jvm/functions/Function2;)V

    .line 299
    .line 300
    .line 301
    :goto_c
    iput-boolean v0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->e:Z

    .line 302
    .line 303
    iput-boolean v0, v4, Landroidx/compose/ui/node/LayoutNode;->z:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 304
    .line 305
    invoke-static {p2, p4, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 306
    .line 307
    .line 308
    iput-boolean v0, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->d:Z

    .line 309
    .line 310
    return-void

    .line 311
    :cond_14
    :try_start_2
    const-string p0, "parent composition reference not set"

    .line 312
    .line 313
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 314
    .line 315
    .line 316
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 317
    .line 318
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 319
    .line 320
    .line 321
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 322
    :goto_d
    invoke-static {p2, p4, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 323
    .line 324
    .line 325
    throw p0
.end method

.method public final n(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->o()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x:I

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 21
    .line 22
    sub-int v2, v1, v2

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    sub-int/2addr v1, v3

    .line 26
    move v4, v1

    .line 27
    :goto_0
    iget-object v5, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:Landroidx/collection/MutableScatterMap;

    .line 28
    .line 29
    const/4 v6, -0x1

    .line 30
    if-lt v4, v2, :cond_2

    .line 31
    .line 32
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 37
    .line 38
    invoke-virtual {v5, v7}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    check-cast v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 46
    .line 47
    iget-object v7, v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->a:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_1

    .line 54
    .line 55
    move v7, v4

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v7, v6

    .line 61
    :goto_1
    if-ne v7, v6, :cond_6

    .line 62
    .line 63
    :goto_2
    if-lt v1, v2, :cond_5

    .line 64
    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 70
    .line 71
    invoke-virtual {v5, v4}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    check-cast v4, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 79
    .line 80
    iget-object v8, v4, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->a:Ljava/lang/Object;

    .line 81
    .line 82
    sget-object v9, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->a:Landroidx/compose/ui/layout/SubcomposeLayoutKt$ReusedSlotId$1;

    .line 83
    .line 84
    if-eq v8, v9, :cond_4

    .line 85
    .line 86
    iget-object v9, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->l:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    .line 87
    .line 88
    invoke-interface {v9, p1, v8}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-eqz v8, :cond_3

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    :goto_3
    iput-object p1, v4, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->a:Ljava/lang/Object;

    .line 99
    .line 100
    move v4, v1

    .line 101
    move v7, v4

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    move v4, v1

    .line 104
    :cond_6
    :goto_4
    if-ne v7, v6, :cond_7

    .line 105
    .line 106
    :goto_5
    const/4 p0, 0x0

    .line 107
    return-object p0

    .line 108
    :cond_7
    if-eq v4, v2, :cond_8

    .line 109
    .line 110
    invoke-virtual {p0, v4, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j(II)V

    .line 111
    .line 112
    .line 113
    :cond_8
    iget p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 114
    .line 115
    add-int/2addr p1, v6

    .line 116
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 117
    .line 118
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    .line 123
    .line 124
    invoke-virtual {v5, p0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    check-cast p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 132
    .line 133
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 134
    .line 135
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iput-object v0, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->g:Landroidx/compose/runtime/MutableState;

    .line 140
    .line 141
    iput-boolean v3, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->e:Z

    .line 142
    .line 143
    iput-boolean v3, p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->d:Z

    .line 144
    .line 145
    return-object p0
.end method
