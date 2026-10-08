.class public final Landroidx/compose/runtime/CompositionImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/ControlledComposition;
.implements Landroidx/compose/runtime/ReusableComposition;
.implements Landroidx/compose/runtime/RecomposeScopeOwner;
.implements Landroidx/compose/runtime/PausableComposition;


# instance fields
.field public A:Landroidx/compose/runtime/CompositionImpl;

.field public B:I

.field public final C:Landroidx/compose/runtime/CompositionObserverHolder;

.field public final D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

.field public final E:Landroidx/compose/runtime/GapComposer;

.field public F:I

.field public final j:Landroidx/compose/runtime/CompositionContext;

.field public final k:Landroidx/compose/ui/node/UiApplier;

.field public final l:Ljava/util/concurrent/atomic/AtomicReference;

.field public final m:Ljava/lang/Object;

.field public final n:Ljava/util/Set;

.field public final o:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

.field public final p:Landroidx/collection/MutableScatterMap;

.field public final q:Landroidx/collection/MutableScatterSet;

.field public final r:Landroidx/collection/MutableScatterSet;

.field public final s:Landroidx/collection/MutableScatterMap;

.field public final t:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

.field public final u:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

.field public final v:Landroidx/collection/MutableScatterMap;

.field public w:Landroidx/collection/MutableScatterMap;

.field public x:Z

.field public y:Landroidx/compose/runtime/ShouldPauseCallback;

.field public z:Landroidx/compose/runtime/PausedCompositionImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/ui/node/UiApplier;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->j:Landroidx/compose/runtime/CompositionContext;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/CompositionImpl;->k:Landroidx/compose/ui/node/UiApplier;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 24
    .line 25
    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->e()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iput-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 33
    .line 34
    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 35
    .line 36
    invoke-direct {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionContext;->d()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    new-instance v1, Landroidx/collection/MutableIntObjectMap;

    .line 46
    .line 47
    invoke-direct {v1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->t:Landroidx/collection/MutableIntObjectMap;

    .line 51
    .line 52
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionContext;->f()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->c()V

    .line 59
    .line 60
    .line 61
    :cond_1
    iput-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->o:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 62
    .line 63
    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->b()Landroidx/collection/MutableScatterMap;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->p:Landroidx/collection/MutableScatterMap;

    .line 68
    .line 69
    new-instance v1, Landroidx/collection/MutableScatterSet;

    .line 70
    .line 71
    invoke-direct {v1}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->q:Landroidx/collection/MutableScatterSet;

    .line 75
    .line 76
    new-instance v1, Landroidx/collection/MutableScatterSet;

    .line 77
    .line 78
    invoke-direct {v1}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->r:Landroidx/collection/MutableScatterSet;

    .line 82
    .line 83
    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->b()Landroidx/collection/MutableScatterMap;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->s:Landroidx/collection/MutableScatterMap;

    .line 88
    .line 89
    new-instance v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 90
    .line 91
    invoke-direct {v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->t:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 95
    .line 96
    new-instance v7, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 97
    .line 98
    invoke-direct {v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v7, p0, Landroidx/compose/runtime/CompositionImpl;->u:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 102
    .line 103
    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->b()Landroidx/collection/MutableScatterMap;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->v:Landroidx/collection/MutableScatterMap;

    .line 108
    .line 109
    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->b()Landroidx/collection/MutableScatterMap;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;

    .line 114
    .line 115
    new-instance v8, Landroidx/compose/runtime/CompositionObserverHolder;

    .line 116
    .line 117
    invoke-direct {v8, p1}, Landroidx/compose/runtime/CompositionObserverHolder;-><init>(Landroidx/compose/runtime/CompositionContext;)V

    .line 118
    .line 119
    .line 120
    iput-object v8, p0, Landroidx/compose/runtime/CompositionImpl;->C:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 121
    .line 122
    new-instance v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 123
    .line 124
    invoke-direct {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>()V

    .line 125
    .line 126
    .line 127
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 128
    .line 129
    invoke-static {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->d(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    new-instance v1, Landroidx/compose/runtime/GapComposer;

    .line 134
    .line 135
    move-object v9, p0

    .line 136
    move-object v3, p1

    .line 137
    move-object v2, p2

    .line 138
    invoke-direct/range {v1 .. v9}, Landroidx/compose/runtime/GapComposer;-><init>(Landroidx/compose/ui/node/UiApplier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/composer/gapbuffer/SlotTable;Ljava/util/Set;Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;Landroidx/compose/runtime/CompositionObserverHolder;Landroidx/compose/runtime/CompositionImpl;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/CompositionContext;->p(Landroidx/compose/runtime/GapComposer;)V

    .line 142
    .line 143
    .line 144
    iput-object v1, v9, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 145
    .line 146
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->w(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->s:Landroidx/collection/MutableScatterMap;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    instance-of v1, p1, Landroidx/collection/MutableScatterSet;

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    check-cast p1, Landroidx/collection/MutableScatterSet;

    .line 20
    .line 21
    iget-object v1, p1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/collection/ScatterSet;->a:[J

    .line 24
    .line 25
    array-length v2, p1

    .line 26
    add-int/lit8 v2, v2, -0x2

    .line 27
    .line 28
    if-ltz v2, :cond_4

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    move v4, v3

    .line 32
    :goto_0
    aget-wide v5, p1, v4

    .line 33
    .line 34
    not-long v7, v5

    .line 35
    const/4 v9, 0x7

    .line 36
    shl-long/2addr v7, v9

    .line 37
    and-long/2addr v7, v5

    .line 38
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    and-long/2addr v7, v9

    .line 44
    cmp-long v7, v7, v9

    .line 45
    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    sub-int v7, v4, v2

    .line 49
    .line 50
    not-int v7, v7

    .line 51
    ushr-int/lit8 v7, v7, 0x1f

    .line 52
    .line 53
    const/16 v8, 0x8

    .line 54
    .line 55
    rsub-int/lit8 v7, v7, 0x8

    .line 56
    .line 57
    move v9, v3

    .line 58
    :goto_1
    if-ge v9, v7, :cond_1

    .line 59
    .line 60
    const-wide/16 v10, 0xff

    .line 61
    .line 62
    and-long/2addr v10, v5

    .line 63
    const-wide/16 v12, 0x80

    .line 64
    .line 65
    cmp-long v10, v10, v12

    .line 66
    .line 67
    if-gez v10, :cond_0

    .line 68
    .line 69
    shl-int/lit8 v10, v4, 0x3

    .line 70
    .line 71
    add-int/2addr v10, v9

    .line 72
    aget-object v10, v1, v10

    .line 73
    .line 74
    check-cast v10, Landroidx/compose/runtime/DerivedState;

    .line 75
    .line 76
    invoke-virtual {p0, v10}, Landroidx/compose/runtime/CompositionImpl;->w(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_3

    .line 82
    :cond_0
    :goto_2
    shr-long/2addr v5, v8

    .line 83
    add-int/lit8 v9, v9, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    if-ne v7, v8, :cond_4

    .line 87
    .line 88
    :cond_2
    if-eq v4, v2, :cond_4

    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    check-cast p1, Landroidx/compose/runtime/DerivedState;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->w(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_4
    monitor-exit v0

    .line 99
    return-void

    .line 100
    :goto_3
    monitor-exit v0

    .line 101
    throw p0
.end method

.method public final B(Lkotlin/jvm/functions/Function2;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->t()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->j:Landroidx/compose/runtime/CompositionContext;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput v2, v0, Landroidx/compose/runtime/GapComposer;->z:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    iput-boolean v3, v0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 19
    .line 20
    invoke-virtual {v1, p0, p1}, Landroidx/compose/runtime/CompositionContext;->a(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V

    .line 21
    .line 22
    .line 23
    iget-boolean p0, v0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    iget p0, v0, Landroidx/compose/runtime/GapComposer;->z:I

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p0, "Cannot disable reuse from root if it was caused by other groups"

    .line 33
    .line 34
    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    const/4 p0, -0x1

    .line 38
    iput p0, v0, Landroidx/compose/runtime/GapComposer;->z:I

    .line 39
    .line 40
    iput-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual {v1, p0, p1}, Landroidx/compose/runtime/CompositionContext;->a(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    iget-boolean v1, v1, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block."

    .line 11
    .line 12
    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    :goto_0
    iget v1, p0, Landroidx/compose/runtime/CompositionImpl;->F:I

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-eq v1, v2, :cond_6

    .line 23
    .line 24
    iput v2, p0, Landroidx/compose/runtime/CompositionImpl;->F:I

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    iget-object v1, v1, Landroidx/compose/runtime/GapComposer;->L:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/CompositionImpl;->i(Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->o:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 36
    .line 37
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->k:I

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    move v1, v3

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v1, v2

    .line 46
    :goto_1
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_5

    .line 55
    .line 56
    :cond_3
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 57
    .line 58
    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 59
    .line 60
    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 61
    .line 62
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 63
    .line 64
    .line 65
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    invoke-virtual {v4, v5, v6}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->g(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;)V

    .line 67
    .line 68
    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->o:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 72
    .line 73
    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->e()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 76
    .line 77
    .line 78
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    :try_start_2
    iget v6, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    .line 80
    .line 81
    new-instance v7, Ld;

    .line 82
    .line 83
    const/4 v8, 0x4

    .line 84
    invoke-direct {v7, v8, v5}, Ld;-><init>(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v6, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->n(ILkotlin/jvm/functions/Function2;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->H()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    .line 92
    .line 93
    :try_start_3
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e(Z)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->k:Landroidx/compose/ui/node/UiApplier;

    .line 97
    .line 98
    invoke-virtual {v1}, Landroidx/compose/runtime/AbstractApplier;->k()V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->k:Landroidx/compose/ui/node/UiApplier;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroidx/compose/ui/node/UiApplier;->j()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->c()V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catchall_1
    move-exception p0

    .line 111
    goto :goto_3

    .line 112
    :catchall_2
    move-exception p0

    .line 113
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e(Z)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    .line 119
    .line 120
    :try_start_4
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 121
    .line 122
    .line 123
    :cond_5
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->v:Landroidx/collection/MutableScatterMap;

    .line 124
    .line 125
    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->h()V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    const-string v2, "Compose:Composer.dispose"

    .line 134
    .line 135
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    .line 137
    .line 138
    :try_start_5
    iget-object v2, v1, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    .line 139
    .line 140
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/CompositionContext;->u(Landroidx/compose/runtime/GapComposer;)V

    .line 141
    .line 142
    .line 143
    iget-object v2, v1, Landroidx/compose/runtime/GapComposer;->E:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 146
    .line 147
    .line 148
    iget-object v2, v1, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 151
    .line 152
    .line 153
    iget-object v2, v1, Landroidx/compose/runtime/GapComposer;->e:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 154
    .line 155
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 156
    .line 157
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a()V

    .line 158
    .line 159
    .line 160
    const/4 v2, 0x0

    .line 161
    iput-object v2, v1, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    .line 162
    .line 163
    iget-object v1, v1, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/ui/node/UiApplier;

    .line 164
    .line 165
    invoke-virtual {v1}, Landroidx/compose/runtime/AbstractApplier;->k()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 166
    .line 167
    .line 168
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :catchall_3
    move-exception p0

    .line 173
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 178
    .line 179
    .line 180
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 181
    :cond_6
    :goto_4
    monitor-exit v0

    .line 182
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->j:Landroidx/compose/runtime/CompositionContext;

    .line 183
    .line 184
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/CompositionContext;->v(Landroidx/compose/runtime/CompositionImpl;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :goto_5
    monitor-exit v0

    .line 189
    throw p0
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/runtime/CompositionImpl;->x:Z

    .line 3
    .line 4
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->C:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionObserverHolder;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final c(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 3

    .line 1
    iget v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    or-int/lit8 v0, v0, 0x4

    .line 8
    .line 9
    iput v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 10
    .line 11
    :cond_0
    iget-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->c:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 12
    .line 13
    if-eqz v0, :cond_6

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->o:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v2, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->c:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 28
    .line 29
    if-eqz v2, :cond_4

    .line 30
    .line 31
    invoke-static {v2}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->f(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    if-ne v1, v2, :cond_4

    .line 41
    .line 42
    iget-object v1, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/runtime/CompositionImpl;->v(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sget-object p2, Landroidx/compose/runtime/InvalidationResult;->j:Landroidx/compose/runtime/InvalidationResult;

    .line 51
    .line 52
    if-eq p1, p2, :cond_2

    .line 53
    .line 54
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->C:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionObserverHolder;->a()V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-object p1

    .line 60
    :cond_3
    sget-object p0, Landroidx/compose/runtime/InvalidationResult;->j:Landroidx/compose/runtime/InvalidationResult;

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_4
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v0

    .line 66
    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->A:Landroidx/compose/runtime/CompositionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    monitor-exit v0

    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 72
    .line 73
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/GapComposer;->b0(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_5

    .line 82
    .line 83
    sget-object p0, Landroidx/compose/runtime/InvalidationResult;->m:Landroidx/compose/runtime/InvalidationResult;

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_5
    sget-object p0, Landroidx/compose/runtime/InvalidationResult;->j:Landroidx/compose/runtime/InvalidationResult;

    .line 87
    .line 88
    return-object p0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    monitor-exit v0

    .line 91
    throw p0

    .line 92
    :cond_6
    :goto_0
    sget-object p0, Landroidx/compose/runtime/InvalidationResult;->j:Landroidx/compose/runtime/InvalidationResult;

    .line 93
    .line 94
    return-object p0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    iget v3, v2, Landroidx/compose/runtime/GapComposer;->A:I

    .line 8
    .line 9
    if-lez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->w()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_c

    .line 18
    .line 19
    iget v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    or-int/2addr v3, v4

    .line 23
    iput v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 24
    .line 25
    and-int/lit8 v3, v3, 0x20

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    :cond_1
    const/4 v3, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->f:Landroidx/collection/MutableObjectIntMap;

    .line 32
    .line 33
    if-nez v3, :cond_3

    .line 34
    .line 35
    new-instance v3, Landroidx/collection/MutableObjectIntMap;

    .line 36
    .line 37
    invoke-direct {v3}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->f:Landroidx/collection/MutableObjectIntMap;

    .line 41
    .line 42
    :cond_3
    iget v6, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->e:I

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Landroidx/collection/MutableObjectIntMap;->d(Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-gez v7, :cond_4

    .line 49
    .line 50
    not-int v7, v7

    .line 51
    const/4 v8, -0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    iget-object v8, v3, Landroidx/collection/ObjectIntMap;->c:[I

    .line 54
    .line 55
    aget v8, v8, v7

    .line 56
    .line 57
    :goto_0
    iget-object v9, v3, Landroidx/collection/ObjectIntMap;->b:[Ljava/lang/Object;

    .line 58
    .line 59
    aput-object v1, v9, v7

    .line 60
    .line 61
    iget-object v3, v3, Landroidx/collection/ObjectIntMap;->c:[I

    .line 62
    .line 63
    aput v6, v3, v7

    .line 64
    .line 65
    iget v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->e:I

    .line 66
    .line 67
    if-ne v8, v3, :cond_1

    .line 68
    .line 69
    move v3, v4

    .line 70
    :goto_1
    iget-object v6, v0, Landroidx/compose/runtime/CompositionImpl;->C:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 71
    .line 72
    invoke-virtual {v6}, Landroidx/compose/runtime/CompositionObserverHolder;->a()V

    .line 73
    .line 74
    .line 75
    if-nez v3, :cond_c

    .line 76
    .line 77
    instance-of v3, v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 78
    .line 79
    if-eqz v3, :cond_5

    .line 80
    .line 81
    move-object v3, v1

    .line 82
    check-cast v3, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->i(I)V

    .line 85
    .line 86
    .line 87
    :cond_5
    iget-object v3, v0, Landroidx/compose/runtime/CompositionImpl;->p:Landroidx/collection/MutableScatterMap;

    .line 88
    .line 89
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->a(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    instance-of v3, v1, Landroidx/compose/runtime/DerivedState;

    .line 93
    .line 94
    if-eqz v3, :cond_c

    .line 95
    .line 96
    move-object v3, v1

    .line 97
    check-cast v3, Landroidx/compose/runtime/DerivedState;

    .line 98
    .line 99
    move-object v6, v3

    .line 100
    check-cast v6, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 101
    .line 102
    invoke-virtual {v6}, Landroidx/compose/runtime/DerivedSnapshotState;->g()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->s:Landroidx/collection/MutableScatterMap;

    .line 107
    .line 108
    invoke-static {v0, v1}, Landroidx/compose/runtime/collection/ScopeMap;->d(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object v7, v6, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->e:Landroidx/collection/ObjectIntMap;

    .line 112
    .line 113
    iget-object v8, v7, Landroidx/collection/ObjectIntMap;->b:[Ljava/lang/Object;

    .line 114
    .line 115
    iget-object v7, v7, Landroidx/collection/ObjectIntMap;->a:[J

    .line 116
    .line 117
    array-length v9, v7

    .line 118
    add-int/lit8 v9, v9, -0x2

    .line 119
    .line 120
    if-ltz v9, :cond_a

    .line 121
    .line 122
    const/4 v10, 0x0

    .line 123
    :goto_2
    aget-wide v11, v7, v10

    .line 124
    .line 125
    not-long v13, v11

    .line 126
    const/4 v15, 0x7

    .line 127
    shl-long/2addr v13, v15

    .line 128
    and-long/2addr v13, v11

    .line 129
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    and-long/2addr v13, v15

    .line 135
    cmp-long v13, v13, v15

    .line 136
    .line 137
    if-eqz v13, :cond_9

    .line 138
    .line 139
    sub-int v13, v10, v9

    .line 140
    .line 141
    not-int v13, v13

    .line 142
    ushr-int/lit8 v13, v13, 0x1f

    .line 143
    .line 144
    const/16 v14, 0x8

    .line 145
    .line 146
    rsub-int/lit8 v13, v13, 0x8

    .line 147
    .line 148
    const/4 v15, 0x0

    .line 149
    :goto_3
    if-ge v15, v13, :cond_8

    .line 150
    .line 151
    const-wide/16 v16, 0xff

    .line 152
    .line 153
    and-long v16, v11, v16

    .line 154
    .line 155
    const-wide/16 v18, 0x80

    .line 156
    .line 157
    cmp-long v16, v16, v18

    .line 158
    .line 159
    if-gez v16, :cond_7

    .line 160
    .line 161
    shl-int/lit8 v16, v10, 0x3

    .line 162
    .line 163
    add-int v16, v16, v15

    .line 164
    .line 165
    aget-object v16, v8, v16

    .line 166
    .line 167
    move-object/from16 v5, v16

    .line 168
    .line 169
    check-cast v5, Landroidx/compose/runtime/snapshots/StateObject;

    .line 170
    .line 171
    move/from16 p0, v14

    .line 172
    .line 173
    instance-of v14, v5, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 174
    .line 175
    if-eqz v14, :cond_6

    .line 176
    .line 177
    move-object v14, v5

    .line 178
    check-cast v14, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 179
    .line 180
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->i(I)V

    .line 181
    .line 182
    .line 183
    :cond_6
    invoke-static {v0, v5, v1}, Landroidx/compose/runtime/collection/ScopeMap;->a(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_7
    move/from16 p0, v14

    .line 188
    .line 189
    :goto_4
    shr-long v11, v11, p0

    .line 190
    .line 191
    add-int/lit8 v15, v15, 0x1

    .line 192
    .line 193
    move/from16 v14, p0

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_8
    move v5, v14

    .line 197
    if-ne v13, v5, :cond_a

    .line 198
    .line 199
    :cond_9
    if-eq v10, v9, :cond_a

    .line 200
    .line 201
    add-int/lit8 v10, v10, 0x1

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_a
    iget-object v0, v6, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->f:Ljava/lang/Object;

    .line 205
    .line 206
    iget-object v1, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->g:Landroidx/collection/MutableScatterMap;

    .line 207
    .line 208
    if-nez v1, :cond_b

    .line 209
    .line 210
    new-instance v1, Landroidx/collection/MutableScatterMap;

    .line 211
    .line 212
    invoke-direct {v1}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 213
    .line 214
    .line 215
    iput-object v1, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->g:Landroidx/collection/MutableScatterMap;

    .line 216
    .line 217
    :cond_b
    invoke-virtual {v1, v3, v0}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_c
    :goto_5
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->t:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->u:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :try_start_0
    invoke-virtual {v1, v0, p0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->g(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->p:Landroidx/collection/MutableScatterMap;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_6

    .line 12
    .line 13
    instance-of v3, v2, Landroidx/collection/MutableScatterSet;

    .line 14
    .line 15
    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->q:Landroidx/collection/MutableScatterSet;

    .line 16
    .line 17
    iget-object v5, v0, Landroidx/compose/runtime/CompositionImpl;->r:Landroidx/collection/MutableScatterSet;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->v:Landroidx/collection/MutableScatterMap;

    .line 20
    .line 21
    if-eqz v3, :cond_4

    .line 22
    .line 23
    check-cast v2, Landroidx/collection/MutableScatterSet;

    .line 24
    .line 25
    iget-object v3, v2, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/collection/ScatterSet;->a:[J

    .line 28
    .line 29
    array-length v6, v2

    .line 30
    add-int/lit8 v6, v6, -0x2

    .line 31
    .line 32
    if-ltz v6, :cond_6

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    :goto_0
    aget-wide v9, v2, v8

    .line 36
    .line 37
    not-long v11, v9

    .line 38
    const/4 v13, 0x7

    .line 39
    shl-long/2addr v11, v13

    .line 40
    and-long/2addr v11, v9

    .line 41
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long/2addr v11, v13

    .line 47
    cmp-long v11, v11, v13

    .line 48
    .line 49
    if-eqz v11, :cond_3

    .line 50
    .line 51
    sub-int v11, v8, v6

    .line 52
    .line 53
    not-int v11, v11

    .line 54
    ushr-int/lit8 v11, v11, 0x1f

    .line 55
    .line 56
    const/16 v12, 0x8

    .line 57
    .line 58
    rsub-int/lit8 v11, v11, 0x8

    .line 59
    .line 60
    const/4 v13, 0x0

    .line 61
    :goto_1
    if-ge v13, v11, :cond_2

    .line 62
    .line 63
    const-wide/16 v14, 0xff

    .line 64
    .line 65
    and-long/2addr v14, v9

    .line 66
    const-wide/16 v16, 0x80

    .line 67
    .line 68
    cmp-long v14, v14, v16

    .line 69
    .line 70
    if-gez v14, :cond_1

    .line 71
    .line 72
    shl-int/lit8 v14, v8, 0x3

    .line 73
    .line 74
    add-int/2addr v14, v13

    .line 75
    aget-object v14, v3, v14

    .line 76
    .line 77
    check-cast v14, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 78
    .line 79
    invoke-static {v0, v1, v14}, Landroidx/compose/runtime/collection/ScopeMap;->c(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v15

    .line 83
    if-nez v15, :cond_1

    .line 84
    .line 85
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->c(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    sget-object v7, Landroidx/compose/runtime/InvalidationResult;->j:Landroidx/compose/runtime/InvalidationResult;

    .line 90
    .line 91
    if-eq v15, v7, :cond_1

    .line 92
    .line 93
    iget-object v7, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->g:Landroidx/collection/MutableScatterMap;

    .line 94
    .line 95
    if-eqz v7, :cond_0

    .line 96
    .line 97
    if-nez p2, :cond_0

    .line 98
    .line 99
    invoke-virtual {v5, v14}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_0
    invoke-virtual {v4, v14}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_2
    shr-long/2addr v9, v12

    .line 107
    add-int/lit8 v13, v13, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    if-ne v11, v12, :cond_6

    .line 111
    .line 112
    :cond_3
    if-eq v8, v6, :cond_6

    .line 113
    .line 114
    add-int/lit8 v8, v8, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 118
    .line 119
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->c(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->c(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sget-object v1, Landroidx/compose/runtime/InvalidationResult;->j:Landroidx/compose/runtime/InvalidationResult;

    .line 130
    .line 131
    if-eq v0, v1, :cond_6

    .line 132
    .line 133
    iget-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->g:Landroidx/collection/MutableScatterMap;

    .line 134
    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    if-nez p2, :cond_5

    .line 138
    .line 139
    invoke-virtual {v5, v2}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_5
    invoke-virtual {v4, v2}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :cond_6
    return-void
.end method

.method public final g(Ljava/util/Set;Z)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->s:Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/16 v14, 0x8

    .line 13
    .line 14
    if-eqz v3, :cond_b

    .line 15
    .line 16
    check-cast v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 17
    .line 18
    iget-object v1, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;->j:Landroidx/collection/ScatterSet;

    .line 19
    .line 20
    iget-object v3, v1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/collection/ScatterSet;->a:[J

    .line 23
    .line 24
    array-length v15, v1

    .line 25
    add-int/lit8 v15, v15, -0x2

    .line 26
    .line 27
    if-ltz v15, :cond_a

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const-wide/16 v16, 0x80

    .line 31
    .line 32
    const-wide/16 v18, 0xff

    .line 33
    .line 34
    :goto_0
    aget-wide v8, v1, v6

    .line 35
    .line 36
    const/4 v7, 0x7

    .line 37
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    not-long v10, v8

    .line 43
    shl-long/2addr v10, v7

    .line 44
    and-long/2addr v10, v8

    .line 45
    and-long v10, v10, v20

    .line 46
    .line 47
    cmp-long v10, v10, v20

    .line 48
    .line 49
    if-eqz v10, :cond_9

    .line 50
    .line 51
    sub-int v10, v6, v15

    .line 52
    .line 53
    not-int v10, v10

    .line 54
    ushr-int/lit8 v10, v10, 0x1f

    .line 55
    .line 56
    rsub-int/lit8 v10, v10, 0x8

    .line 57
    .line 58
    const/4 v11, 0x0

    .line 59
    :goto_1
    if-ge v11, v10, :cond_8

    .line 60
    .line 61
    and-long v22, v8, v18

    .line 62
    .line 63
    cmp-long v12, v22, v16

    .line 64
    .line 65
    if-gez v12, :cond_7

    .line 66
    .line 67
    shl-int/lit8 v12, v6, 0x3

    .line 68
    .line 69
    add-int/2addr v12, v11

    .line 70
    aget-object v12, v3, v12

    .line 71
    .line 72
    move/from16 v22, v7

    .line 73
    .line 74
    instance-of v7, v12, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 75
    .line 76
    if-eqz v7, :cond_1

    .line 77
    .line 78
    check-cast v12, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 79
    .line 80
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/RecomposeScopeImpl;->c(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 81
    .line 82
    .line 83
    :cond_0
    move-object/from16 v29, v1

    .line 84
    .line 85
    move-wide/from16 v26, v8

    .line 86
    .line 87
    move/from16 p1, v15

    .line 88
    .line 89
    goto/16 :goto_6

    .line 90
    .line 91
    :cond_1
    invoke-virtual {v0, v12, v2}, Landroidx/compose/runtime/CompositionImpl;->f(Ljava/lang/Object;Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v12}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    if-eqz v7, :cond_0

    .line 99
    .line 100
    instance-of v12, v7, Landroidx/collection/MutableScatterSet;

    .line 101
    .line 102
    if-eqz v12, :cond_5

    .line 103
    .line 104
    check-cast v7, Landroidx/collection/MutableScatterSet;

    .line 105
    .line 106
    iget-object v12, v7, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 107
    .line 108
    iget-object v7, v7, Landroidx/collection/ScatterSet;->a:[J

    .line 109
    .line 110
    array-length v13, v7

    .line 111
    add-int/lit8 v13, v13, -0x2

    .line 112
    .line 113
    if-ltz v13, :cond_0

    .line 114
    .line 115
    move/from16 v25, v14

    .line 116
    .line 117
    move/from16 p1, v15

    .line 118
    .line 119
    const/4 v5, 0x0

    .line 120
    :goto_2
    aget-wide v14, v7, v5

    .line 121
    .line 122
    move-wide/from16 v26, v8

    .line 123
    .line 124
    move-object v9, v7

    .line 125
    not-long v7, v14

    .line 126
    shl-long v7, v7, v22

    .line 127
    .line 128
    and-long/2addr v7, v14

    .line 129
    and-long v7, v7, v20

    .line 130
    .line 131
    cmp-long v7, v7, v20

    .line 132
    .line 133
    if-eqz v7, :cond_4

    .line 134
    .line 135
    sub-int v7, v5, v13

    .line 136
    .line 137
    not-int v7, v7

    .line 138
    ushr-int/lit8 v7, v7, 0x1f

    .line 139
    .line 140
    rsub-int/lit8 v7, v7, 0x8

    .line 141
    .line 142
    const/4 v8, 0x0

    .line 143
    :goto_3
    if-ge v8, v7, :cond_3

    .line 144
    .line 145
    and-long v28, v14, v18

    .line 146
    .line 147
    cmp-long v28, v28, v16

    .line 148
    .line 149
    if-gez v28, :cond_2

    .line 150
    .line 151
    shl-int/lit8 v28, v5, 0x3

    .line 152
    .line 153
    add-int v28, v28, v8

    .line 154
    .line 155
    aget-object v28, v12, v28

    .line 156
    .line 157
    move-object/from16 v29, v1

    .line 158
    .line 159
    move-object/from16 v1, v28

    .line 160
    .line 161
    check-cast v1, Landroidx/compose/runtime/DerivedState;

    .line 162
    .line 163
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/CompositionImpl;->f(Ljava/lang/Object;Z)V

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_2
    move-object/from16 v29, v1

    .line 168
    .line 169
    :goto_4
    shr-long v14, v14, v25

    .line 170
    .line 171
    add-int/lit8 v8, v8, 0x1

    .line 172
    .line 173
    move-object/from16 v1, v29

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_3
    move-object/from16 v29, v1

    .line 177
    .line 178
    move/from16 v1, v25

    .line 179
    .line 180
    if-ne v7, v1, :cond_6

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_4
    move-object/from16 v29, v1

    .line 184
    .line 185
    :goto_5
    if-eq v5, v13, :cond_6

    .line 186
    .line 187
    add-int/lit8 v5, v5, 0x1

    .line 188
    .line 189
    move-object v7, v9

    .line 190
    move-wide/from16 v8, v26

    .line 191
    .line 192
    move-object/from16 v1, v29

    .line 193
    .line 194
    const/16 v25, 0x8

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_5
    move-object/from16 v29, v1

    .line 198
    .line 199
    move-wide/from16 v26, v8

    .line 200
    .line 201
    move/from16 p1, v15

    .line 202
    .line 203
    check-cast v7, Landroidx/compose/runtime/DerivedState;

    .line 204
    .line 205
    invoke-virtual {v0, v7, v2}, Landroidx/compose/runtime/CompositionImpl;->f(Ljava/lang/Object;Z)V

    .line 206
    .line 207
    .line 208
    :cond_6
    :goto_6
    const/16 v1, 0x8

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_7
    move-object/from16 v29, v1

    .line 212
    .line 213
    move/from16 v22, v7

    .line 214
    .line 215
    move-wide/from16 v26, v8

    .line 216
    .line 217
    move/from16 p1, v15

    .line 218
    .line 219
    move v1, v14

    .line 220
    :goto_7
    shr-long v8, v26, v1

    .line 221
    .line 222
    add-int/lit8 v11, v11, 0x1

    .line 223
    .line 224
    move/from16 v15, p1

    .line 225
    .line 226
    move v14, v1

    .line 227
    move/from16 v7, v22

    .line 228
    .line 229
    move-object/from16 v1, v29

    .line 230
    .line 231
    const/4 v5, 0x0

    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :cond_8
    move-object/from16 v29, v1

    .line 235
    .line 236
    move/from16 v22, v7

    .line 237
    .line 238
    move v1, v14

    .line 239
    move/from16 p1, v15

    .line 240
    .line 241
    if-ne v10, v1, :cond_12

    .line 242
    .line 243
    move/from16 v15, p1

    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_9
    move-object/from16 v29, v1

    .line 247
    .line 248
    move/from16 v22, v7

    .line 249
    .line 250
    :goto_8
    if-eq v6, v15, :cond_12

    .line 251
    .line 252
    add-int/lit8 v6, v6, 0x1

    .line 253
    .line 254
    move-object/from16 v1, v29

    .line 255
    .line 256
    const/4 v5, 0x0

    .line 257
    const/16 v14, 0x8

    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :cond_a
    const-wide/16 v16, 0x80

    .line 262
    .line 263
    const-wide/16 v18, 0xff

    .line 264
    .line 265
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    const/16 v22, 0x7

    .line 271
    .line 272
    goto/16 :goto_c

    .line 273
    .line 274
    :cond_b
    const-wide/16 v16, 0x80

    .line 275
    .line 276
    const-wide/16 v18, 0xff

    .line 277
    .line 278
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    const/16 v22, 0x7

    .line 284
    .line 285
    check-cast v1, Ljava/lang/Iterable;

    .line 286
    .line 287
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    :cond_c
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-eqz v3, :cond_12

    .line 296
    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    instance-of v5, v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 302
    .line 303
    if-eqz v5, :cond_d

    .line 304
    .line 305
    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 306
    .line 307
    const/4 v5, 0x0

    .line 308
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/RecomposeScopeImpl;->c(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 309
    .line 310
    .line 311
    goto :goto_9

    .line 312
    :cond_d
    const/4 v5, 0x0

    .line 313
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/CompositionImpl;->f(Ljava/lang/Object;Z)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4, v3}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    if-eqz v3, :cond_c

    .line 321
    .line 322
    instance-of v6, v3, Landroidx/collection/MutableScatterSet;

    .line 323
    .line 324
    if-eqz v6, :cond_11

    .line 325
    .line 326
    check-cast v3, Landroidx/collection/MutableScatterSet;

    .line 327
    .line 328
    iget-object v6, v3, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 329
    .line 330
    iget-object v3, v3, Landroidx/collection/ScatterSet;->a:[J

    .line 331
    .line 332
    array-length v7, v3

    .line 333
    add-int/lit8 v7, v7, -0x2

    .line 334
    .line 335
    if-ltz v7, :cond_c

    .line 336
    .line 337
    const/4 v8, 0x0

    .line 338
    :goto_a
    aget-wide v9, v3, v8

    .line 339
    .line 340
    not-long v11, v9

    .line 341
    shl-long v11, v11, v22

    .line 342
    .line 343
    and-long/2addr v11, v9

    .line 344
    and-long v11, v11, v20

    .line 345
    .line 346
    cmp-long v11, v11, v20

    .line 347
    .line 348
    if-eqz v11, :cond_10

    .line 349
    .line 350
    sub-int v11, v8, v7

    .line 351
    .line 352
    not-int v11, v11

    .line 353
    ushr-int/lit8 v11, v11, 0x1f

    .line 354
    .line 355
    const/16 v25, 0x8

    .line 356
    .line 357
    rsub-int/lit8 v14, v11, 0x8

    .line 358
    .line 359
    const/4 v11, 0x0

    .line 360
    :goto_b
    if-ge v11, v14, :cond_f

    .line 361
    .line 362
    and-long v12, v9, v18

    .line 363
    .line 364
    cmp-long v12, v12, v16

    .line 365
    .line 366
    if-gez v12, :cond_e

    .line 367
    .line 368
    shl-int/lit8 v12, v8, 0x3

    .line 369
    .line 370
    add-int/2addr v12, v11

    .line 371
    aget-object v12, v6, v12

    .line 372
    .line 373
    check-cast v12, Landroidx/compose/runtime/DerivedState;

    .line 374
    .line 375
    invoke-virtual {v0, v12, v2}, Landroidx/compose/runtime/CompositionImpl;->f(Ljava/lang/Object;Z)V

    .line 376
    .line 377
    .line 378
    :cond_e
    const/16 v12, 0x8

    .line 379
    .line 380
    shr-long/2addr v9, v12

    .line 381
    add-int/lit8 v11, v11, 0x1

    .line 382
    .line 383
    goto :goto_b

    .line 384
    :cond_f
    const/16 v12, 0x8

    .line 385
    .line 386
    if-ne v14, v12, :cond_c

    .line 387
    .line 388
    :cond_10
    if-eq v8, v7, :cond_c

    .line 389
    .line 390
    add-int/lit8 v8, v8, 0x1

    .line 391
    .line 392
    goto :goto_a

    .line 393
    :cond_11
    check-cast v3, Landroidx/compose/runtime/DerivedState;

    .line 394
    .line 395
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/CompositionImpl;->f(Ljava/lang/Object;Z)V

    .line 396
    .line 397
    .line 398
    goto :goto_9

    .line 399
    :cond_12
    :goto_c
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->p:Landroidx/collection/MutableScatterMap;

    .line 400
    .line 401
    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->q:Landroidx/collection/MutableScatterSet;

    .line 402
    .line 403
    if-eqz v2, :cond_22

    .line 404
    .line 405
    iget-object v2, v0, Landroidx/compose/runtime/CompositionImpl;->r:Landroidx/collection/MutableScatterSet;

    .line 406
    .line 407
    invoke-virtual {v2}, Landroidx/collection/ScatterSet;->c()Z

    .line 408
    .line 409
    .line 410
    move-result v5

    .line 411
    if-eqz v5, :cond_22

    .line 412
    .line 413
    iget-object v5, v1, Landroidx/collection/ScatterMap;->a:[J

    .line 414
    .line 415
    array-length v6, v5

    .line 416
    add-int/lit8 v6, v6, -0x2

    .line 417
    .line 418
    if-ltz v6, :cond_21

    .line 419
    .line 420
    const/4 v7, 0x0

    .line 421
    :goto_d
    aget-wide v8, v5, v7

    .line 422
    .line 423
    not-long v10, v8

    .line 424
    shl-long v10, v10, v22

    .line 425
    .line 426
    and-long/2addr v10, v8

    .line 427
    and-long v10, v10, v20

    .line 428
    .line 429
    cmp-long v10, v10, v20

    .line 430
    .line 431
    if-eqz v10, :cond_20

    .line 432
    .line 433
    sub-int v10, v7, v6

    .line 434
    .line 435
    not-int v10, v10

    .line 436
    ushr-int/lit8 v10, v10, 0x1f

    .line 437
    .line 438
    const/16 v25, 0x8

    .line 439
    .line 440
    rsub-int/lit8 v14, v10, 0x8

    .line 441
    .line 442
    const/4 v10, 0x0

    .line 443
    :goto_e
    if-ge v10, v14, :cond_1f

    .line 444
    .line 445
    and-long v11, v8, v18

    .line 446
    .line 447
    cmp-long v11, v11, v16

    .line 448
    .line 449
    if-gez v11, :cond_1e

    .line 450
    .line 451
    shl-int/lit8 v11, v7, 0x3

    .line 452
    .line 453
    add-int/2addr v11, v10

    .line 454
    iget-object v12, v1, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 455
    .line 456
    aget-object v12, v12, v11

    .line 457
    .line 458
    iget-object v12, v1, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 459
    .line 460
    aget-object v12, v12, v11

    .line 461
    .line 462
    instance-of v13, v12, Landroidx/collection/MutableScatterSet;

    .line 463
    .line 464
    if-eqz v13, :cond_1a

    .line 465
    .line 466
    check-cast v12, Landroidx/collection/MutableScatterSet;

    .line 467
    .line 468
    iget-object v13, v12, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 469
    .line 470
    iget-object v15, v12, Landroidx/collection/ScatterSet;->a:[J

    .line 471
    .line 472
    array-length v3, v15

    .line 473
    add-int/lit8 v3, v3, -0x2

    .line 474
    .line 475
    if-ltz v3, :cond_18

    .line 476
    .line 477
    move-wide/from16 v26, v8

    .line 478
    .line 479
    const/4 v0, 0x0

    .line 480
    :goto_f
    aget-wide v8, v15, v0

    .line 481
    .line 482
    move-object/from16 v24, v5

    .line 483
    .line 484
    move/from16 p2, v6

    .line 485
    .line 486
    not-long v5, v8

    .line 487
    shl-long v5, v5, v22

    .line 488
    .line 489
    and-long/2addr v5, v8

    .line 490
    and-long v5, v5, v20

    .line 491
    .line 492
    cmp-long v5, v5, v20

    .line 493
    .line 494
    if-eqz v5, :cond_17

    .line 495
    .line 496
    sub-int v5, v0, v3

    .line 497
    .line 498
    not-int v5, v5

    .line 499
    ushr-int/lit8 v5, v5, 0x1f

    .line 500
    .line 501
    const/16 v25, 0x8

    .line 502
    .line 503
    rsub-int/lit8 v5, v5, 0x8

    .line 504
    .line 505
    const/4 v6, 0x0

    .line 506
    :goto_10
    if-ge v6, v5, :cond_16

    .line 507
    .line 508
    and-long v28, v8, v18

    .line 509
    .line 510
    cmp-long v28, v28, v16

    .line 511
    .line 512
    if-gez v28, :cond_15

    .line 513
    .line 514
    shl-int/lit8 v28, v0, 0x3

    .line 515
    .line 516
    move/from16 v29, v6

    .line 517
    .line 518
    add-int v6, v28, v29

    .line 519
    .line 520
    aget-object v28, v13, v6

    .line 521
    .line 522
    move-wide/from16 v30, v8

    .line 523
    .line 524
    move-object/from16 v8, v28

    .line 525
    .line 526
    check-cast v8, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 527
    .line 528
    invoke-virtual {v2, v8}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    if-nez v9, :cond_13

    .line 533
    .line 534
    invoke-virtual {v4, v8}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    move-result v8

    .line 538
    if-eqz v8, :cond_14

    .line 539
    .line 540
    :cond_13
    invoke-virtual {v12, v6}, Landroidx/collection/MutableScatterSet;->n(I)V

    .line 541
    .line 542
    .line 543
    :cond_14
    :goto_11
    const/16 v6, 0x8

    .line 544
    .line 545
    goto :goto_12

    .line 546
    :cond_15
    move/from16 v29, v6

    .line 547
    .line 548
    move-wide/from16 v30, v8

    .line 549
    .line 550
    goto :goto_11

    .line 551
    :goto_12
    shr-long v8, v30, v6

    .line 552
    .line 553
    add-int/lit8 v25, v29, 0x1

    .line 554
    .line 555
    move/from16 v6, v25

    .line 556
    .line 557
    goto :goto_10

    .line 558
    :cond_16
    const/16 v6, 0x8

    .line 559
    .line 560
    if-ne v5, v6, :cond_19

    .line 561
    .line 562
    :cond_17
    if-eq v0, v3, :cond_19

    .line 563
    .line 564
    add-int/lit8 v0, v0, 0x1

    .line 565
    .line 566
    move/from16 v6, p2

    .line 567
    .line 568
    move-object/from16 v5, v24

    .line 569
    .line 570
    goto :goto_f

    .line 571
    :cond_18
    move-object/from16 v24, v5

    .line 572
    .line 573
    move/from16 p2, v6

    .line 574
    .line 575
    move-wide/from16 v26, v8

    .line 576
    .line 577
    :cond_19
    invoke-virtual {v12}, Landroidx/collection/ScatterSet;->b()Z

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    goto :goto_14

    .line 582
    :cond_1a
    move-object/from16 v24, v5

    .line 583
    .line 584
    move/from16 p2, v6

    .line 585
    .line 586
    move-wide/from16 v26, v8

    .line 587
    .line 588
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    .line 590
    .line 591
    check-cast v12, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 592
    .line 593
    invoke-virtual {v2, v12}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    if-nez v0, :cond_1c

    .line 598
    .line 599
    invoke-virtual {v4, v12}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    if-eqz v0, :cond_1b

    .line 604
    .line 605
    goto :goto_13

    .line 606
    :cond_1b
    const/4 v0, 0x0

    .line 607
    goto :goto_14

    .line 608
    :cond_1c
    :goto_13
    const/4 v0, 0x1

    .line 609
    :goto_14
    if-eqz v0, :cond_1d

    .line 610
    .line 611
    invoke-virtual {v1, v11}, Landroidx/collection/MutableScatterMap;->n(I)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    :cond_1d
    :goto_15
    const/16 v6, 0x8

    .line 615
    .line 616
    goto :goto_16

    .line 617
    :cond_1e
    move-object/from16 v24, v5

    .line 618
    .line 619
    move/from16 p2, v6

    .line 620
    .line 621
    move-wide/from16 v26, v8

    .line 622
    .line 623
    goto :goto_15

    .line 624
    :goto_16
    shr-long v8, v26, v6

    .line 625
    .line 626
    add-int/lit8 v10, v10, 0x1

    .line 627
    .line 628
    move-object/from16 v0, p0

    .line 629
    .line 630
    move/from16 v6, p2

    .line 631
    .line 632
    move-object/from16 v5, v24

    .line 633
    .line 634
    goto/16 :goto_e

    .line 635
    .line 636
    :cond_1f
    move-object/from16 v24, v5

    .line 637
    .line 638
    move/from16 p2, v6

    .line 639
    .line 640
    const/16 v6, 0x8

    .line 641
    .line 642
    if-ne v14, v6, :cond_21

    .line 643
    .line 644
    move/from16 v6, p2

    .line 645
    .line 646
    goto :goto_17

    .line 647
    :cond_20
    move-object/from16 v24, v5

    .line 648
    .line 649
    :goto_17
    if-eq v7, v6, :cond_21

    .line 650
    .line 651
    add-int/lit8 v7, v7, 0x1

    .line 652
    .line 653
    move-object/from16 v0, p0

    .line 654
    .line 655
    move-object/from16 v5, v24

    .line 656
    .line 657
    goto/16 :goto_d

    .line 658
    .line 659
    :cond_21
    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->f()V

    .line 660
    .line 661
    .line 662
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->l()V

    .line 663
    .line 664
    .line 665
    return-void

    .line 666
    :cond_22
    invoke-virtual {v4}, Landroidx/collection/ScatterSet;->c()Z

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    if-eqz v0, :cond_31

    .line 671
    .line 672
    iget-object v0, v1, Landroidx/collection/ScatterMap;->a:[J

    .line 673
    .line 674
    array-length v2, v0

    .line 675
    add-int/lit8 v2, v2, -0x2

    .line 676
    .line 677
    if-ltz v2, :cond_30

    .line 678
    .line 679
    const/4 v3, 0x0

    .line 680
    :goto_18
    aget-wide v5, v0, v3

    .line 681
    .line 682
    not-long v7, v5

    .line 683
    shl-long v7, v7, v22

    .line 684
    .line 685
    and-long/2addr v7, v5

    .line 686
    and-long v7, v7, v20

    .line 687
    .line 688
    cmp-long v7, v7, v20

    .line 689
    .line 690
    if-eqz v7, :cond_2f

    .line 691
    .line 692
    sub-int v7, v3, v2

    .line 693
    .line 694
    not-int v7, v7

    .line 695
    ushr-int/lit8 v7, v7, 0x1f

    .line 696
    .line 697
    const/16 v25, 0x8

    .line 698
    .line 699
    rsub-int/lit8 v14, v7, 0x8

    .line 700
    .line 701
    const/4 v7, 0x0

    .line 702
    :goto_19
    if-ge v7, v14, :cond_2e

    .line 703
    .line 704
    and-long v8, v5, v18

    .line 705
    .line 706
    cmp-long v8, v8, v16

    .line 707
    .line 708
    if-gez v8, :cond_23

    .line 709
    .line 710
    const/4 v8, 0x1

    .line 711
    goto :goto_1a

    .line 712
    :cond_23
    const/4 v8, 0x0

    .line 713
    :goto_1a
    if-eqz v8, :cond_2d

    .line 714
    .line 715
    shl-int/lit8 v8, v3, 0x3

    .line 716
    .line 717
    add-int/2addr v8, v7

    .line 718
    iget-object v9, v1, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 719
    .line 720
    aget-object v9, v9, v8

    .line 721
    .line 722
    iget-object v9, v1, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 723
    .line 724
    aget-object v9, v9, v8

    .line 725
    .line 726
    instance-of v10, v9, Landroidx/collection/MutableScatterSet;

    .line 727
    .line 728
    if-eqz v10, :cond_2b

    .line 729
    .line 730
    check-cast v9, Landroidx/collection/MutableScatterSet;

    .line 731
    .line 732
    iget-object v10, v9, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 733
    .line 734
    iget-object v11, v9, Landroidx/collection/ScatterSet;->a:[J

    .line 735
    .line 736
    array-length v12, v11

    .line 737
    add-int/lit8 v12, v12, -0x2

    .line 738
    .line 739
    if-ltz v12, :cond_29

    .line 740
    .line 741
    move-wide/from16 v26, v5

    .line 742
    .line 743
    const/4 v13, 0x0

    .line 744
    :goto_1b
    aget-wide v5, v11, v13

    .line 745
    .line 746
    move-object v15, v10

    .line 747
    move-object/from16 v24, v11

    .line 748
    .line 749
    not-long v10, v5

    .line 750
    shl-long v10, v10, v22

    .line 751
    .line 752
    and-long/2addr v10, v5

    .line 753
    and-long v10, v10, v20

    .line 754
    .line 755
    cmp-long v10, v10, v20

    .line 756
    .line 757
    if-eqz v10, :cond_28

    .line 758
    .line 759
    sub-int v10, v13, v12

    .line 760
    .line 761
    not-int v10, v10

    .line 762
    ushr-int/lit8 v10, v10, 0x1f

    .line 763
    .line 764
    const/16 v25, 0x8

    .line 765
    .line 766
    rsub-int/lit8 v10, v10, 0x8

    .line 767
    .line 768
    const/4 v11, 0x0

    .line 769
    :goto_1c
    if-ge v11, v10, :cond_27

    .line 770
    .line 771
    and-long v28, v5, v18

    .line 772
    .line 773
    cmp-long v28, v28, v16

    .line 774
    .line 775
    if-gez v28, :cond_24

    .line 776
    .line 777
    const/16 v28, 0x1

    .line 778
    .line 779
    goto :goto_1d

    .line 780
    :cond_24
    const/16 v28, 0x0

    .line 781
    .line 782
    :goto_1d
    if-eqz v28, :cond_26

    .line 783
    .line 784
    shl-int/lit8 v28, v13, 0x3

    .line 785
    .line 786
    move-object/from16 v29, v0

    .line 787
    .line 788
    add-int v0, v28, v11

    .line 789
    .line 790
    aget-object v28, v15, v0

    .line 791
    .line 792
    move-wide/from16 v30, v5

    .line 793
    .line 794
    move-object/from16 v5, v28

    .line 795
    .line 796
    check-cast v5, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 797
    .line 798
    invoke-virtual {v4, v5}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    move-result v5

    .line 802
    if-eqz v5, :cond_25

    .line 803
    .line 804
    invoke-virtual {v9, v0}, Landroidx/collection/MutableScatterSet;->n(I)V

    .line 805
    .line 806
    .line 807
    :cond_25
    :goto_1e
    const/16 v6, 0x8

    .line 808
    .line 809
    goto :goto_1f

    .line 810
    :cond_26
    move-object/from16 v29, v0

    .line 811
    .line 812
    move-wide/from16 v30, v5

    .line 813
    .line 814
    goto :goto_1e

    .line 815
    :goto_1f
    shr-long v30, v30, v6

    .line 816
    .line 817
    add-int/lit8 v11, v11, 0x1

    .line 818
    .line 819
    move-object/from16 v0, v29

    .line 820
    .line 821
    move-wide/from16 v5, v30

    .line 822
    .line 823
    goto :goto_1c

    .line 824
    :cond_27
    move-object/from16 v29, v0

    .line 825
    .line 826
    const/16 v6, 0x8

    .line 827
    .line 828
    if-ne v10, v6, :cond_2a

    .line 829
    .line 830
    goto :goto_20

    .line 831
    :cond_28
    move-object/from16 v29, v0

    .line 832
    .line 833
    :goto_20
    if-eq v13, v12, :cond_2a

    .line 834
    .line 835
    add-int/lit8 v13, v13, 0x1

    .line 836
    .line 837
    move-object v10, v15

    .line 838
    move-object/from16 v11, v24

    .line 839
    .line 840
    move-object/from16 v0, v29

    .line 841
    .line 842
    goto :goto_1b

    .line 843
    :cond_29
    move-object/from16 v29, v0

    .line 844
    .line 845
    move-wide/from16 v26, v5

    .line 846
    .line 847
    :cond_2a
    invoke-virtual {v9}, Landroidx/collection/ScatterSet;->b()Z

    .line 848
    .line 849
    .line 850
    move-result v0

    .line 851
    goto :goto_21

    .line 852
    :cond_2b
    move-object/from16 v29, v0

    .line 853
    .line 854
    move-wide/from16 v26, v5

    .line 855
    .line 856
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    .line 858
    .line 859
    check-cast v9, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 860
    .line 861
    invoke-virtual {v4, v9}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    move-result v0

    .line 865
    :goto_21
    if-eqz v0, :cond_2c

    .line 866
    .line 867
    invoke-virtual {v1, v8}, Landroidx/collection/MutableScatterMap;->n(I)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    :cond_2c
    :goto_22
    const/16 v6, 0x8

    .line 871
    .line 872
    goto :goto_23

    .line 873
    :cond_2d
    move-object/from16 v29, v0

    .line 874
    .line 875
    move-wide/from16 v26, v5

    .line 876
    .line 877
    goto :goto_22

    .line 878
    :goto_23
    shr-long v8, v26, v6

    .line 879
    .line 880
    add-int/lit8 v7, v7, 0x1

    .line 881
    .line 882
    move-wide v5, v8

    .line 883
    move-object/from16 v0, v29

    .line 884
    .line 885
    goto/16 :goto_19

    .line 886
    .line 887
    :cond_2e
    move-object/from16 v29, v0

    .line 888
    .line 889
    const/16 v6, 0x8

    .line 890
    .line 891
    if-ne v14, v6, :cond_30

    .line 892
    .line 893
    goto :goto_24

    .line 894
    :cond_2f
    move-object/from16 v29, v0

    .line 895
    .line 896
    const/16 v6, 0x8

    .line 897
    .line 898
    :goto_24
    if-eq v3, v2, :cond_30

    .line 899
    .line 900
    add-int/lit8 v3, v3, 0x1

    .line 901
    .line 902
    move-object/from16 v0, v29

    .line 903
    .line 904
    goto/16 :goto_18

    .line 905
    .line 906
    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/CompositionImpl;->l()V

    .line 907
    .line 908
    .line 909
    invoke-virtual {v4}, Landroidx/collection/MutableScatterSet;->f()V

    .line 910
    .line 911
    .line 912
    :cond_31
    return-void
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->t:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/CompositionImpl;->i(Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 26
    .line 27
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 28
    .line 29
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 30
    .line 31
    .line 32
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->g(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 37
    .line 38
    .line 39
    :try_start_3
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_1
    move-exception v1

    .line 44
    goto :goto_1

    .line 45
    :catchall_2
    move-exception v1

    .line 46
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :cond_0
    :goto_0
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->e()V

    .line 52
    .line 53
    .line 54
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 55
    :catchall_3
    move-exception p0

    .line 56
    monitor-exit v0

    .line 57
    throw p0
.end method

.method public final i(Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;)V
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/runtime/CompositionImpl;->u:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-object v5, v1, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 14
    .line 15
    iget-object v6, v1, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 16
    .line 17
    invoke-virtual {v5, v6, v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->g(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v4, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 21
    .line 22
    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c()Z

    .line 23
    .line 24
    .line 25
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    :try_start_1
    iget-object v0, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->z:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v5}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {v5}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_1
    invoke-virtual {v5}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :try_start_2
    iget-object v4, v1, Landroidx/compose/runtime/CompositionImpl;->z:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    iget-object v6, v4, Landroidx/compose/runtime/PausedCompositionImpl;->l:Landroidx/compose/runtime/RecordingApplier;

    .line 59
    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    move-object/from16 v26, v5

    .line 65
    .line 66
    goto/16 :goto_13

    .line 67
    .line 68
    :cond_2
    iget-object v6, v1, Landroidx/compose/runtime/CompositionImpl;->k:Landroidx/compose/ui/node/UiApplier;

    .line 69
    .line 70
    :goto_2
    if-eqz v4, :cond_3

    .line 71
    .line 72
    iget-object v4, v4, Landroidx/compose/runtime/PausedCompositionImpl;->l:Landroidx/compose/runtime/RecordingApplier;

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    const/4 v4, 0x0

    .line 76
    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_4

    .line 81
    .line 82
    const-string v4, "Compose:recordChanges"

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_4
    const-string v4, "Compose:applyChanges"

    .line 86
    .line 87
    :goto_4
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    .line 89
    .line 90
    :try_start_3
    iget-object v4, v1, Landroidx/compose/runtime/CompositionImpl;->z:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 91
    .line 92
    if-eqz v4, :cond_5

    .line 93
    .line 94
    iget-object v4, v4, Landroidx/compose/runtime/PausedCompositionImpl;->k:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 95
    .line 96
    if-nez v4, :cond_6

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :catchall_2
    move-exception v0

    .line 100
    move-object/from16 v26, v5

    .line 101
    .line 102
    goto/16 :goto_12

    .line 103
    .line 104
    :cond_5
    :goto_5
    move-object v4, v5

    .line 105
    :cond_6
    iget-object v7, v1, Landroidx/compose/runtime/CompositionImpl;->o:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 106
    .line 107
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-static {v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->d(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->e()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 116
    .line 117
    .line 118
    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 119
    const/4 v8, 0x0

    .line 120
    :try_start_4
    invoke-virtual {v0, v6, v7, v4, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 121
    .line 122
    .line 123
    const/4 v0, 0x1

    .line 124
    :try_start_5
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e(Z)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v6}, Landroidx/compose/runtime/Applier;->j()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 128
    .line 129
    .line 130
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->c()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->d()V

    .line 137
    .line 138
    .line 139
    iget-boolean v3, v1, Landroidx/compose/runtime/CompositionImpl;->x:Z

    .line 140
    .line 141
    if-eqz v3, :cond_15

    .line 142
    .line 143
    const-string v3, "Compose:unobserve"

    .line 144
    .line 145
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 146
    .line 147
    .line 148
    :try_start_7
    iput-boolean v8, v1, Landroidx/compose/runtime/CompositionImpl;->x:Z

    .line 149
    .line 150
    iget-object v3, v1, Landroidx/compose/runtime/CompositionImpl;->p:Landroidx/collection/MutableScatterMap;

    .line 151
    .line 152
    iget-object v4, v3, Landroidx/collection/ScatterMap;->a:[J

    .line 153
    .line 154
    array-length v6, v4

    .line 155
    add-int/lit8 v6, v6, -0x2

    .line 156
    .line 157
    if-ltz v6, :cond_13

    .line 158
    .line 159
    move v7, v8

    .line 160
    :goto_6
    aget-wide v9, v4, v7

    .line 161
    .line 162
    not-long v11, v9

    .line 163
    const/4 v13, 0x7

    .line 164
    shl-long/2addr v11, v13

    .line 165
    and-long/2addr v11, v9

    .line 166
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    and-long/2addr v11, v14

    .line 172
    cmp-long v11, v11, v14

    .line 173
    .line 174
    if-eqz v11, :cond_12

    .line 175
    .line 176
    sub-int v11, v7, v6

    .line 177
    .line 178
    not-int v11, v11

    .line 179
    ushr-int/lit8 v11, v11, 0x1f

    .line 180
    .line 181
    const/16 v12, 0x8

    .line 182
    .line 183
    rsub-int/lit8 v11, v11, 0x8

    .line 184
    .line 185
    move v0, v8

    .line 186
    :goto_7
    if-ge v0, v11, :cond_11

    .line 187
    .line 188
    const-wide/16 v16, 0xff

    .line 189
    .line 190
    and-long v18, v9, v16

    .line 191
    .line 192
    const-wide/16 v20, 0x80

    .line 193
    .line 194
    cmp-long v18, v18, v20

    .line 195
    .line 196
    if-gez v18, :cond_10

    .line 197
    .line 198
    shl-int/lit8 v18, v7, 0x3

    .line 199
    .line 200
    move/from16 v19, v13

    .line 201
    .line 202
    add-int v13, v18, v0

    .line 203
    .line 204
    move-wide/from16 v22, v14

    .line 205
    .line 206
    iget-object v14, v3, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 207
    .line 208
    aget-object v14, v14, v13

    .line 209
    .line 210
    iget-object v14, v3, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 211
    .line 212
    aget-object v14, v14, v13

    .line 213
    .line 214
    instance-of v15, v14, Landroidx/collection/MutableScatterSet;

    .line 215
    .line 216
    if-eqz v15, :cond_d

    .line 217
    .line 218
    check-cast v14, Landroidx/collection/MutableScatterSet;

    .line 219
    .line 220
    iget-object v15, v14, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 221
    .line 222
    iget-object v8, v14, Landroidx/collection/ScatterSet;->a:[J

    .line 223
    .line 224
    move/from16 v24, v12

    .line 225
    .line 226
    array-length v12, v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 227
    add-int/lit8 v12, v12, -0x2

    .line 228
    .line 229
    move/from16 v25, v0

    .line 230
    .line 231
    move-object/from16 v27, v4

    .line 232
    .line 233
    move-object/from16 v26, v5

    .line 234
    .line 235
    if-ltz v12, :cond_b

    .line 236
    .line 237
    const/4 v0, 0x0

    .line 238
    :goto_8
    :try_start_8
    aget-wide v4, v8, v0

    .line 239
    .line 240
    move-wide/from16 v28, v9

    .line 241
    .line 242
    move-object v10, v8

    .line 243
    not-long v8, v4

    .line 244
    shl-long v8, v8, v19

    .line 245
    .line 246
    and-long/2addr v8, v4

    .line 247
    and-long v8, v8, v22

    .line 248
    .line 249
    cmp-long v8, v8, v22

    .line 250
    .line 251
    if-eqz v8, :cond_a

    .line 252
    .line 253
    sub-int v8, v0, v12

    .line 254
    .line 255
    not-int v8, v8

    .line 256
    ushr-int/lit8 v8, v8, 0x1f

    .line 257
    .line 258
    rsub-int/lit8 v8, v8, 0x8

    .line 259
    .line 260
    const/4 v9, 0x0

    .line 261
    :goto_9
    if-ge v9, v8, :cond_9

    .line 262
    .line 263
    and-long v30, v4, v16

    .line 264
    .line 265
    cmp-long v30, v30, v20

    .line 266
    .line 267
    if-gez v30, :cond_7

    .line 268
    .line 269
    shl-int/lit8 v30, v0, 0x3

    .line 270
    .line 271
    move-wide/from16 v31, v4

    .line 272
    .line 273
    add-int v4, v30, v9

    .line 274
    .line 275
    aget-object v5, v15, v4

    .line 276
    .line 277
    check-cast v5, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 278
    .line 279
    invoke-virtual {v5}, Landroidx/compose/runtime/RecomposeScopeImpl;->b()Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-nez v5, :cond_8

    .line 284
    .line 285
    invoke-virtual {v14, v4}, Landroidx/collection/MutableScatterSet;->n(I)V

    .line 286
    .line 287
    .line 288
    goto :goto_a

    .line 289
    :catchall_3
    move-exception v0

    .line 290
    goto/16 :goto_e

    .line 291
    .line 292
    :cond_7
    move-wide/from16 v31, v4

    .line 293
    .line 294
    :cond_8
    :goto_a
    shr-long v4, v31, v24

    .line 295
    .line 296
    add-int/lit8 v9, v9, 0x1

    .line 297
    .line 298
    goto :goto_9

    .line 299
    :cond_9
    move/from16 v4, v24

    .line 300
    .line 301
    if-ne v8, v4, :cond_c

    .line 302
    .line 303
    :cond_a
    if-eq v0, v12, :cond_c

    .line 304
    .line 305
    add-int/lit8 v0, v0, 0x1

    .line 306
    .line 307
    move-object v8, v10

    .line 308
    move-wide/from16 v9, v28

    .line 309
    .line 310
    const/16 v24, 0x8

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_b
    move-wide/from16 v28, v9

    .line 314
    .line 315
    :cond_c
    invoke-virtual {v14}, Landroidx/collection/ScatterSet;->b()Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    goto :goto_b

    .line 320
    :catchall_4
    move-exception v0

    .line 321
    move-object/from16 v26, v5

    .line 322
    .line 323
    goto/16 :goto_e

    .line 324
    .line 325
    :cond_d
    move/from16 v25, v0

    .line 326
    .line 327
    move-object/from16 v27, v4

    .line 328
    .line 329
    move-object/from16 v26, v5

    .line 330
    .line 331
    move-wide/from16 v28, v9

    .line 332
    .line 333
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    check-cast v14, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 337
    .line 338
    invoke-virtual {v14}, Landroidx/compose/runtime/RecomposeScopeImpl;->b()Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-nez v0, :cond_e

    .line 343
    .line 344
    const/4 v0, 0x1

    .line 345
    goto :goto_b

    .line 346
    :cond_e
    const/4 v0, 0x0

    .line 347
    :goto_b
    if-eqz v0, :cond_f

    .line 348
    .line 349
    invoke-virtual {v3, v13}, Landroidx/collection/MutableScatterMap;->n(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    :cond_f
    const/16 v4, 0x8

    .line 353
    .line 354
    goto :goto_c

    .line 355
    :cond_10
    move/from16 v25, v0

    .line 356
    .line 357
    move-object/from16 v27, v4

    .line 358
    .line 359
    move-object/from16 v26, v5

    .line 360
    .line 361
    move-wide/from16 v28, v9

    .line 362
    .line 363
    move/from16 v19, v13

    .line 364
    .line 365
    move-wide/from16 v22, v14

    .line 366
    .line 367
    move v4, v12

    .line 368
    :goto_c
    shr-long v9, v28, v4

    .line 369
    .line 370
    add-int/lit8 v0, v25, 0x1

    .line 371
    .line 372
    move v12, v4

    .line 373
    move/from16 v13, v19

    .line 374
    .line 375
    move-wide/from16 v14, v22

    .line 376
    .line 377
    move-object/from16 v5, v26

    .line 378
    .line 379
    move-object/from16 v4, v27

    .line 380
    .line 381
    const/4 v8, 0x0

    .line 382
    goto/16 :goto_7

    .line 383
    .line 384
    :cond_11
    move-object/from16 v27, v4

    .line 385
    .line 386
    move-object/from16 v26, v5

    .line 387
    .line 388
    move v4, v12

    .line 389
    if-ne v11, v4, :cond_14

    .line 390
    .line 391
    goto :goto_d

    .line 392
    :cond_12
    move-object/from16 v27, v4

    .line 393
    .line 394
    move-object/from16 v26, v5

    .line 395
    .line 396
    :goto_d
    if-eq v7, v6, :cond_14

    .line 397
    .line 398
    add-int/lit8 v7, v7, 0x1

    .line 399
    .line 400
    move-object/from16 v5, v26

    .line 401
    .line 402
    move-object/from16 v4, v27

    .line 403
    .line 404
    const/4 v0, 0x1

    .line 405
    const/4 v8, 0x0

    .line 406
    goto/16 :goto_6

    .line 407
    .line 408
    :cond_13
    move-object/from16 v26, v5

    .line 409
    .line 410
    :cond_14
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionImpl;->l()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 411
    .line 412
    .line 413
    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 414
    .line 415
    .line 416
    goto :goto_f

    .line 417
    :catchall_5
    move-exception v0

    .line 418
    goto :goto_13

    .line 419
    :goto_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 420
    .line 421
    .line 422
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 423
    :cond_15
    move-object/from16 v26, v5

    .line 424
    .line 425
    :goto_f
    :try_start_a
    iget-object v0, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 426
    .line 427
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c()Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_16

    .line 432
    .line 433
    iget-object v0, v1, Landroidx/compose/runtime/CompositionImpl;->z:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 434
    .line 435
    if-nez v0, :cond_16

    .line 436
    .line 437
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 438
    .line 439
    .line 440
    goto :goto_10

    .line 441
    :catchall_6
    move-exception v0

    .line 442
    goto :goto_11

    .line 443
    :cond_16
    :goto_10
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :goto_11
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 448
    .line 449
    .line 450
    throw v0

    .line 451
    :catchall_7
    move-exception v0

    .line 452
    move-object/from16 v26, v5

    .line 453
    .line 454
    const/4 v3, 0x0

    .line 455
    :try_start_b
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e(Z)V

    .line 456
    .line 457
    .line 458
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 459
    :catchall_8
    move-exception v0

    .line 460
    :goto_12
    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 461
    .line 462
    .line 463
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 464
    :goto_13
    :try_start_d
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 465
    .line 466
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c()Z

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    if-eqz v2, :cond_17

    .line 471
    .line 472
    iget-object v1, v1, Landroidx/compose/runtime/CompositionImpl;->z:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 473
    .line 474
    if-nez v1, :cond_17

    .line 475
    .line 476
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 477
    .line 478
    .line 479
    goto :goto_14

    .line 480
    :catchall_9
    move-exception v0

    .line 481
    goto :goto_15

    .line 482
    :cond_17
    :goto_14
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 483
    .line 484
    .line 485
    throw v0

    .line 486
    :goto_15
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 487
    .line 488
    .line 489
    throw v0
.end method

.method public final j()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->u:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->u:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/CompositionImpl;->i(Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 38
    .line 39
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 40
    .line 41
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 42
    .line 43
    .line 44
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :try_start_2
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->g(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    .line 50
    .line 51
    :try_start_3
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :catchall_1
    move-exception v1

    .line 56
    goto :goto_3

    .line 57
    :catchall_2
    move-exception v1

    .line 58
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_1
    :goto_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->e()V

    .line 64
    .line 65
    .line 66
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 67
    :catchall_3
    move-exception p0

    .line 68
    monitor-exit v0

    .line 69
    throw p0
.end method

.method public final k()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 24
    .line 25
    .line 26
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->g(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_2
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_1

    .line 39
    :catchall_1
    move-exception v2

    .line 40
    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 41
    .line 42
    .line 43
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :cond_0
    :goto_0
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    :try_start_3
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 55
    .line 56
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 57
    .line 58
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 59
    .line 60
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 61
    .line 62
    .line 63
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 64
    :try_start_4
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->g(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 68
    .line 69
    .line 70
    :try_start_5
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catchall_2
    move-exception v1

    .line 75
    goto :goto_3

    .line 76
    :catchall_3
    move-exception v1

    .line 77
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :cond_1
    :goto_2
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 82
    :goto_3
    :try_start_6
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->e()V

    .line 83
    .line 84
    .line 85
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 86
    :catchall_4
    move-exception p0

    .line 87
    monitor-exit v0

    .line 88
    throw p0
.end method

.method public final l()V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->s:Landroidx/collection/MutableScatterMap;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/collection/ScatterMap;->a:[J

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    add-int/lit8 v3, v3, -0x2

    .line 9
    .line 10
    const/4 v8, 0x7

    .line 11
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const/16 v12, 0x8

    .line 17
    .line 18
    if-ltz v3, :cond_c

    .line 19
    .line 20
    const/4 v14, 0x0

    .line 21
    const-wide/16 v15, 0x80

    .line 22
    .line 23
    :goto_0
    aget-wide v4, v2, v14

    .line 24
    .line 25
    const-wide/16 v17, 0xff

    .line 26
    .line 27
    not-long v6, v4

    .line 28
    shl-long/2addr v6, v8

    .line 29
    and-long/2addr v6, v4

    .line 30
    and-long/2addr v6, v9

    .line 31
    cmp-long v6, v6, v9

    .line 32
    .line 33
    if-eqz v6, :cond_b

    .line 34
    .line 35
    sub-int v6, v14, v3

    .line 36
    .line 37
    not-int v6, v6

    .line 38
    ushr-int/lit8 v6, v6, 0x1f

    .line 39
    .line 40
    rsub-int/lit8 v6, v6, 0x8

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    :goto_1
    if-ge v7, v6, :cond_a

    .line 44
    .line 45
    and-long v19, v4, v17

    .line 46
    .line 47
    cmp-long v19, v19, v15

    .line 48
    .line 49
    if-gez v19, :cond_9

    .line 50
    .line 51
    shl-int/lit8 v19, v14, 0x3

    .line 52
    .line 53
    move/from16 v20, v8

    .line 54
    .line 55
    add-int v8, v19, v7

    .line 56
    .line 57
    move-wide/from16 v21, v9

    .line 58
    .line 59
    iget-object v9, v1, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 60
    .line 61
    aget-object v9, v9, v8

    .line 62
    .line 63
    iget-object v9, v1, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 64
    .line 65
    aget-object v9, v9, v8

    .line 66
    .line 67
    instance-of v10, v9, Landroidx/collection/MutableScatterSet;

    .line 68
    .line 69
    iget-object v11, v0, Landroidx/compose/runtime/CompositionImpl;->p:Landroidx/collection/MutableScatterMap;

    .line 70
    .line 71
    if-eqz v10, :cond_6

    .line 72
    .line 73
    check-cast v9, Landroidx/collection/MutableScatterSet;

    .line 74
    .line 75
    iget-object v10, v9, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 76
    .line 77
    iget-object v13, v9, Landroidx/collection/ScatterSet;->a:[J

    .line 78
    .line 79
    move-wide/from16 v23, v15

    .line 80
    .line 81
    array-length v15, v13

    .line 82
    add-int/lit8 v15, v15, -0x2

    .line 83
    .line 84
    if-ltz v15, :cond_4

    .line 85
    .line 86
    move-wide/from16 v25, v4

    .line 87
    .line 88
    move/from16 v16, v12

    .line 89
    .line 90
    const/4 v12, 0x0

    .line 91
    :goto_2
    aget-wide v4, v13, v12

    .line 92
    .line 93
    move-object/from16 v27, v2

    .line 94
    .line 95
    move/from16 v28, v3

    .line 96
    .line 97
    not-long v2, v4

    .line 98
    shl-long v2, v2, v20

    .line 99
    .line 100
    and-long/2addr v2, v4

    .line 101
    and-long v2, v2, v21

    .line 102
    .line 103
    cmp-long v2, v2, v21

    .line 104
    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    sub-int v2, v12, v15

    .line 108
    .line 109
    not-int v2, v2

    .line 110
    ushr-int/lit8 v2, v2, 0x1f

    .line 111
    .line 112
    rsub-int/lit8 v2, v2, 0x8

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    :goto_3
    if-ge v3, v2, :cond_2

    .line 116
    .line 117
    and-long v29, v4, v17

    .line 118
    .line 119
    cmp-long v29, v29, v23

    .line 120
    .line 121
    if-gez v29, :cond_0

    .line 122
    .line 123
    shl-int/lit8 v29, v12, 0x3

    .line 124
    .line 125
    move/from16 v30, v3

    .line 126
    .line 127
    add-int v3, v29, v30

    .line 128
    .line 129
    aget-object v29, v10, v3

    .line 130
    .line 131
    move-wide/from16 v31, v4

    .line 132
    .line 133
    move-object/from16 v4, v29

    .line 134
    .line 135
    check-cast v4, Landroidx/compose/runtime/DerivedState;

    .line 136
    .line 137
    invoke-virtual {v11, v4}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-nez v4, :cond_1

    .line 142
    .line 143
    invoke-virtual {v9, v3}, Landroidx/collection/MutableScatterSet;->n(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_0
    move/from16 v30, v3

    .line 148
    .line 149
    move-wide/from16 v31, v4

    .line 150
    .line 151
    :cond_1
    :goto_4
    shr-long v4, v31, v16

    .line 152
    .line 153
    add-int/lit8 v3, v30, 0x1

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_2
    move/from16 v3, v16

    .line 157
    .line 158
    if-ne v2, v3, :cond_5

    .line 159
    .line 160
    :cond_3
    if-eq v12, v15, :cond_5

    .line 161
    .line 162
    add-int/lit8 v12, v12, 0x1

    .line 163
    .line 164
    move-object/from16 v2, v27

    .line 165
    .line 166
    move/from16 v3, v28

    .line 167
    .line 168
    const/16 v16, 0x8

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_4
    move-object/from16 v27, v2

    .line 172
    .line 173
    move/from16 v28, v3

    .line 174
    .line 175
    move-wide/from16 v25, v4

    .line 176
    .line 177
    :cond_5
    invoke-virtual {v9}, Landroidx/collection/ScatterSet;->b()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    goto :goto_5

    .line 182
    :cond_6
    move-object/from16 v27, v2

    .line 183
    .line 184
    move/from16 v28, v3

    .line 185
    .line 186
    move-wide/from16 v25, v4

    .line 187
    .line 188
    move-wide/from16 v23, v15

    .line 189
    .line 190
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    check-cast v9, Landroidx/compose/runtime/DerivedState;

    .line 194
    .line 195
    invoke-virtual {v11, v9}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-nez v2, :cond_7

    .line 200
    .line 201
    const/4 v2, 0x1

    .line 202
    goto :goto_5

    .line 203
    :cond_7
    const/4 v2, 0x0

    .line 204
    :goto_5
    if-eqz v2, :cond_8

    .line 205
    .line 206
    invoke-virtual {v1, v8}, Landroidx/collection/MutableScatterMap;->n(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    :cond_8
    const/16 v3, 0x8

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_9
    move-object/from16 v27, v2

    .line 213
    .line 214
    move/from16 v28, v3

    .line 215
    .line 216
    move-wide/from16 v25, v4

    .line 217
    .line 218
    move/from16 v20, v8

    .line 219
    .line 220
    move-wide/from16 v21, v9

    .line 221
    .line 222
    move-wide/from16 v23, v15

    .line 223
    .line 224
    move v3, v12

    .line 225
    :goto_6
    shr-long v4, v25, v3

    .line 226
    .line 227
    add-int/lit8 v7, v7, 0x1

    .line 228
    .line 229
    move v12, v3

    .line 230
    move/from16 v8, v20

    .line 231
    .line 232
    move-wide/from16 v9, v21

    .line 233
    .line 234
    move-wide/from16 v15, v23

    .line 235
    .line 236
    move-object/from16 v2, v27

    .line 237
    .line 238
    move/from16 v3, v28

    .line 239
    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :cond_a
    move-object/from16 v27, v2

    .line 243
    .line 244
    move/from16 v28, v3

    .line 245
    .line 246
    move/from16 v20, v8

    .line 247
    .line 248
    move-wide/from16 v21, v9

    .line 249
    .line 250
    move v3, v12

    .line 251
    move-wide/from16 v23, v15

    .line 252
    .line 253
    if-ne v6, v3, :cond_d

    .line 254
    .line 255
    move/from16 v3, v28

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_b
    move-object/from16 v27, v2

    .line 259
    .line 260
    move/from16 v20, v8

    .line 261
    .line 262
    move-wide/from16 v21, v9

    .line 263
    .line 264
    move-wide/from16 v23, v15

    .line 265
    .line 266
    :goto_7
    if-eq v14, v3, :cond_d

    .line 267
    .line 268
    add-int/lit8 v14, v14, 0x1

    .line 269
    .line 270
    move/from16 v8, v20

    .line 271
    .line 272
    move-wide/from16 v9, v21

    .line 273
    .line 274
    move-wide/from16 v15, v23

    .line 275
    .line 276
    move-object/from16 v2, v27

    .line 277
    .line 278
    const/16 v12, 0x8

    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :cond_c
    move/from16 v20, v8

    .line 283
    .line 284
    move-wide/from16 v21, v9

    .line 285
    .line 286
    const-wide/16 v17, 0xff

    .line 287
    .line 288
    const-wide/16 v23, 0x80

    .line 289
    .line 290
    :cond_d
    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->r:Landroidx/collection/MutableScatterSet;

    .line 291
    .line 292
    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->c()Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_13

    .line 297
    .line 298
    iget-object v1, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 299
    .line 300
    iget-object v2, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 301
    .line 302
    array-length v3, v2

    .line 303
    add-int/lit8 v3, v3, -0x2

    .line 304
    .line 305
    if-ltz v3, :cond_13

    .line 306
    .line 307
    const/4 v4, 0x0

    .line 308
    :goto_8
    aget-wide v5, v2, v4

    .line 309
    .line 310
    not-long v7, v5

    .line 311
    shl-long v7, v7, v20

    .line 312
    .line 313
    and-long/2addr v7, v5

    .line 314
    and-long v7, v7, v21

    .line 315
    .line 316
    cmp-long v7, v7, v21

    .line 317
    .line 318
    if-eqz v7, :cond_12

    .line 319
    .line 320
    sub-int v7, v4, v3

    .line 321
    .line 322
    not-int v7, v7

    .line 323
    ushr-int/lit8 v7, v7, 0x1f

    .line 324
    .line 325
    const/16 v16, 0x8

    .line 326
    .line 327
    rsub-int/lit8 v12, v7, 0x8

    .line 328
    .line 329
    const/4 v7, 0x0

    .line 330
    :goto_9
    if-ge v7, v12, :cond_11

    .line 331
    .line 332
    and-long v8, v5, v17

    .line 333
    .line 334
    cmp-long v8, v8, v23

    .line 335
    .line 336
    if-gez v8, :cond_e

    .line 337
    .line 338
    const/4 v8, 0x1

    .line 339
    goto :goto_a

    .line 340
    :cond_e
    const/4 v8, 0x0

    .line 341
    :goto_a
    if-eqz v8, :cond_10

    .line 342
    .line 343
    shl-int/lit8 v8, v4, 0x3

    .line 344
    .line 345
    add-int/2addr v8, v7

    .line 346
    aget-object v9, v1, v8

    .line 347
    .line 348
    check-cast v9, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 349
    .line 350
    iget-object v9, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->g:Landroidx/collection/MutableScatterMap;

    .line 351
    .line 352
    if-eqz v9, :cond_f

    .line 353
    .line 354
    const/4 v9, 0x1

    .line 355
    goto :goto_b

    .line 356
    :cond_f
    const/4 v9, 0x0

    .line 357
    :goto_b
    if-nez v9, :cond_10

    .line 358
    .line 359
    invoke-virtual {v0, v8}, Landroidx/collection/MutableScatterSet;->n(I)V

    .line 360
    .line 361
    .line 362
    :cond_10
    const/16 v8, 0x8

    .line 363
    .line 364
    shr-long/2addr v5, v8

    .line 365
    add-int/lit8 v7, v7, 0x1

    .line 366
    .line 367
    goto :goto_9

    .line 368
    :cond_11
    const/16 v8, 0x8

    .line 369
    .line 370
    if-ne v12, v8, :cond_13

    .line 371
    .line 372
    goto :goto_c

    .line 373
    :cond_12
    const/16 v8, 0x8

    .line 374
    .line 375
    :goto_c
    if-eq v4, v3, :cond_13

    .line 376
    .line 377
    add-int/lit8 v4, v4, 0x1

    .line 378
    .line 379
    goto :goto_8

    .line 380
    :cond_13
    return-void
.end method

.method public final m()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroidx/compose/runtime/CompositionImpl;->F:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v1, v3, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v2

    .line 12
    :goto_0
    if-eqz v3, :cond_1

    .line 13
    .line 14
    iput v2, p0, Landroidx/compose/runtime/CompositionImpl;->F:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_1
    monitor-exit v0

    .line 20
    return v3

    .line 21
    :goto_2
    monitor-exit v0

    .line 22
    throw p0
.end method

.method public final n(Lkotlin/jvm/functions/Function2;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->q()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;

    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->b()Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 14
    .line 15
    :try_start_2
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->y:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 18
    .line 19
    iget-object v4, v2, Landroidx/compose/runtime/GapComposer;->e:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 20
    .line 21
    iget-object v4, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    const-string v4, "Expected applyChanges() to have been called"

    .line 30
    .line 31
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iput-object v3, v2, Landroidx/compose/runtime/GapComposer;->P:Landroidx/compose/runtime/ShouldPauseCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    :try_start_3
    invoke-virtual {v2, v1, p1}, Landroidx/compose/runtime/GapComposer;->n(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function2;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_4
    iput-object v3, v2, Landroidx/compose/runtime/GapComposer;->P:Landroidx/compose/runtime/ShouldPauseCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 41
    .line 42
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception p1

    .line 47
    :try_start_6
    iput-object v3, v2, Landroidx/compose/runtime/GapComposer;->P:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 48
    .line 49
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 50
    :catchall_2
    move-exception p1

    .line 51
    :try_start_7
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;

    .line 52
    .line 53
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 54
    :catchall_3
    move-exception p1

    .line 55
    :try_start_8
    monitor-exit v0

    .line 56
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 57
    :goto_0
    :try_start_9
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 68
    .line 69
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 72
    .line 73
    .line 74
    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 75
    :try_start_a
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->g(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 79
    .line 80
    .line 81
    :try_start_b
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catchall_4
    move-exception p1

    .line 86
    goto :goto_2

    .line 87
    :catchall_5
    move-exception p1

    .line 88
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_1
    :goto_1
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 93
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->e()V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public final o(ZLkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/PausedCompositionImpl;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->z:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "A pausable composition is in progress"

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->b(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    new-instance v1, Landroidx/compose/runtime/PausedCompositionImpl;

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->j:Landroidx/compose/runtime/CompositionContext;

    .line 14
    .line 15
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 18
    .line 19
    iget-object v8, p0, Landroidx/compose/runtime/CompositionImpl;->k:Landroidx/compose/ui/node/UiApplier;

    .line 20
    .line 21
    iget-object v9, p0, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v2, p0

    .line 24
    move v7, p1

    .line 25
    move-object v6, p2

    .line 26
    invoke-direct/range {v1 .. v9}, Landroidx/compose/runtime/PausedCompositionImpl;-><init>(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/GapComposer;Ljava/util/Set;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/node/UiApplier;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v2, Landroidx/compose/runtime/CompositionImpl;->z:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 30
    .line 31
    return-object v1
.end method

.method public final p()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->z:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v1, "Deactivate is not supported while pausable composition is in progress"

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->o:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 15
    .line 16
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->k:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    move v1, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v1, v2

    .line 25
    :goto_1
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_4

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :cond_2
    :goto_2
    const-string v4, "Compose:deactivate"

    .line 40
    .line 41
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_1
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 45
    .line 46
    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 47
    .line 48
    iget-object v6, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 49
    .line 50
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 51
    .line 52
    .line 53
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 54
    :try_start_2
    invoke-virtual {v4, v5, v6}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->g(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;)V

    .line 55
    .line 56
    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->o:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 60
    .line 61
    iget-object v5, p0, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->e()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 64
    .line 65
    .line 66
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :try_start_3
    iget v6, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    .line 68
    .line 69
    new-instance v7, La0;

    .line 70
    .line 71
    const/16 v8, 0xd

    .line 72
    .line 73
    invoke-direct {v7, v8, v5, v1}, La0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v6, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->n(ILkotlin/jvm/functions/Function2;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 77
    .line 78
    .line 79
    :try_start_4
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e(Z)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->k:Landroidx/compose/ui/node/UiApplier;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroidx/compose/ui/node/UiApplier;->j()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->c()V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :catchall_1
    move-exception p0

    .line 92
    goto :goto_4

    .line 93
    :catchall_2
    move-exception p0

    .line 94
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e(Z)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_3
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 99
    .line 100
    .line 101
    :try_start_5
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 102
    .line 103
    .line 104
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->p:Landroidx/collection/MutableScatterMap;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->h()V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->s:Landroidx/collection/MutableScatterMap;

    .line 113
    .line 114
    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->h()V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->h()V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->t:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 123
    .line 124
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 125
    .line 126
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a()V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->u:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 130
    .line 131
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a()V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 137
    .line 138
    iget-object v2, v1, Landroidx/compose/runtime/GapComposer;->E:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 141
    .line 142
    .line 143
    iget-object v2, v1, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 146
    .line 147
    .line 148
    iget-object v2, v1, Landroidx/compose/runtime/GapComposer;->e:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 149
    .line 150
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 151
    .line 152
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a()V

    .line 153
    .line 154
    .line 155
    const/4 v2, 0x0

    .line 156
    iput-object v2, v1, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    .line 157
    .line 158
    iput v3, p0, Landroidx/compose/runtime/CompositionImpl;->F:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 159
    .line 160
    monitor-exit v0

    .line 161
    return-void

    .line 162
    :catchall_3
    move-exception p0

    .line 163
    goto :goto_5

    .line 164
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 165
    .line 166
    .line 167
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 168
    :goto_5
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 169
    .line 170
    .line 171
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 172
    :goto_6
    monitor-exit v0

    .line 173
    throw p0
.end method

.method public final q()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/CompositionKt;->a:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    instance-of v1, v2, Ljava/util/Set;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v2, Ljava/util/Set;

    .line 23
    .line 24
    invoke-virtual {p0, v2, v3}, Landroidx/compose/runtime/CompositionImpl;->g(Ljava/util/Set;Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    instance-of v1, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    check-cast v2, [Ljava/util/Set;

    .line 33
    .line 34
    array-length v0, v2

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-ge v1, v0, :cond_3

    .line 37
    .line 38
    aget-object v4, v2, v1

    .line 39
    .line 40
    invoke-virtual {p0, v4, v3}, Landroidx/compose/runtime/CompositionImpl;->g(Ljava/util/Set;Z)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "corrupt pendingModifications drain: "

    .line 49
    .line 50
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lf7;->h()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    const-string p0, "pending composition has not been applied"

    .line 68
    .line 69
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lf7;->h()V

    .line 73
    .line 74
    .line 75
    :cond_3
    return-void
.end method

.method public final r()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v2, Landroidx/compose/runtime/CompositionKt;->a:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_3

    .line 15
    .line 16
    instance-of v2, v0, Ljava/util/Set;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    check-cast v0, Ljava/util/Set;

    .line 22
    .line 23
    invoke-virtual {p0, v0, v3}, Landroidx/compose/runtime/CompositionImpl;->g(Ljava/util/Set;Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    instance-of v2, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    check-cast v0, [Ljava/util/Set;

    .line 32
    .line 33
    array-length v1, v0

    .line 34
    move v2, v3

    .line 35
    :goto_0
    if-ge v2, v1, :cond_3

    .line 36
    .line 37
    aget-object v4, v0, v2

    .line 38
    .line 39
    invoke-virtual {p0, v4, v3}, Landroidx/compose/runtime/CompositionImpl;->g(Ljava/util/Set;Z)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-nez v0, :cond_2

    .line 46
    .line 47
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->z:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 48
    .line 49
    if-nez p0, :cond_3

    .line 50
    .line 51
    const-string p0, "calling recordModificationsOf and applyChanges concurrently is not supported"

    .line 52
    .line 53
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "corrupt pendingModifications drain: "

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lf7;->h()V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public final s()V
    .locals 5

    .line 1
    sget-object v0, Lkotlin/collections/EmptySet;->j:Lkotlin/collections/EmptySet;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v2, Landroidx/compose/runtime/CompositionKt;->a:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_3

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    instance-of v2, v0, Ljava/util/Set;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    check-cast v0, Ljava/util/Set;

    .line 26
    .line 27
    invoke-virtual {p0, v0, v3}, Landroidx/compose/runtime/CompositionImpl;->g(Ljava/util/Set;Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    instance-of v2, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    check-cast v0, [Ljava/util/Set;

    .line 36
    .line 37
    array-length v1, v0

    .line 38
    move v2, v3

    .line 39
    :goto_0
    if-ge v2, v1, :cond_3

    .line 40
    .line 41
    aget-object v4, v0, v2

    .line 42
    .line 43
    invoke-virtual {p0, v4, v3}, Landroidx/compose/runtime/CompositionImpl;->g(Ljava/util/Set;Z)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "corrupt pendingModifications drain: "

    .line 52
    .line 53
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lf7;->h()V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/CompositionImpl;->F:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string v0, "The composition is disposed"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const-string v0, "A previous pausable composition for this composition was cancelled. This composition must be disposed."

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    const-string v0, "The composition should be activated before setting content."

    .line 25
    .line 26
    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_1
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->z:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 30
    .line 31
    if-nez p0, :cond_4

    .line 32
    .line 33
    return-void

    .line 34
    :cond_4
    const-string p0, "A pausable composition is in progress"

    .line 35
    .line 36
    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->b(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final u(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-gtz v2, :cond_1

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v2, "Compose:insertMovableContent"

    .line 15
    .line 16
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 17
    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/GapComposer;->A(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    :try_start_2
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception p1

    .line 32
    :try_start_4
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->a()V

    .line 33
    .line 34
    .line 35
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 36
    :goto_0
    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 37
    .line 38
    .line 39
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 40
    :catchall_2
    move-exception p1

    .line 41
    :try_start_6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 50
    .line 51
    .line 52
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 53
    :try_start_7
    invoke-virtual {v2, v0, v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->g(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 57
    .line 58
    .line 59
    :try_start_8
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_3
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :catchall_4
    move-exception p1

    .line 66
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_0
    :goto_1
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 71
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->e()V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_1
    const/4 p0, 0x0

    .line 76
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Lkotlin/Pair;

    .line 81
    .line 82
    iget-object p0, p0, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Landroidx/compose/runtime/MovableContentStateReference;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x0

    .line 90
    throw p0
.end method

.method public final v(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->A:Landroidx/compose/runtime/CompositionImpl;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v4, :cond_3

    .line 14
    .line 15
    iget-object v6, v0, Landroidx/compose/runtime/CompositionImpl;->o:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 16
    .line 17
    iget v7, v0, Landroidx/compose/runtime/CompositionImpl;->B:I

    .line 18
    .line 19
    iget-boolean v8, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->p:Z

    .line 20
    .line 21
    if-eqz v8, :cond_0

    .line 22
    .line 23
    const-string v8, "Writer is active"

    .line 24
    .line 25
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    if-ltz v7, :cond_1

    .line 29
    .line 30
    iget v8, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->k:I

    .line 31
    .line 32
    if-ge v7, v8, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v8, "Invalid group index"

    .line 36
    .line 37
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->f(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Z

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    if-eqz v9, :cond_2

    .line 49
    .line 50
    iget-object v6, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->j:[I

    .line 51
    .line 52
    mul-int/lit8 v9, v7, 0x5

    .line 53
    .line 54
    add-int/lit8 v9, v9, 0x3

    .line 55
    .line 56
    aget v6, v6, v9

    .line 57
    .line 58
    add-int/2addr v6, v7

    .line 59
    iget v8, v8, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->a:I

    .line 60
    .line 61
    if-gt v7, v8, :cond_2

    .line 62
    .line 63
    if-ge v8, v6, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v4, v5

    .line 67
    :goto_1
    move-object v5, v4

    .line 68
    goto :goto_2

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto/16 :goto_7

    .line 71
    .line 72
    :cond_3
    :goto_2
    if-nez v5, :cond_d

    .line 73
    .line 74
    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 75
    .line 76
    iget-boolean v6, v4, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 77
    .line 78
    if-eqz v6, :cond_4

    .line 79
    .line 80
    invoke-virtual {v4, v1, v2}, Landroidx/compose/runtime/GapComposer;->b0(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_4

    .line 85
    .line 86
    const/4 v4, 0x1

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    const/4 v4, 0x0

    .line 89
    :goto_3
    if-eqz v4, :cond_5

    .line 90
    .line 91
    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->m:Landroidx/compose/runtime/InvalidationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    monitor-exit v3

    .line 94
    return-object v0

    .line 95
    :cond_5
    if-nez v2, :cond_6

    .line 96
    .line 97
    :try_start_1
    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;

    .line 98
    .line 99
    sget-object v6, Landroidx/compose/runtime/ScopeInvalidated;->a:Landroidx/compose/runtime/ScopeInvalidated;

    .line 100
    .line 101
    invoke-virtual {v4, v1, v6}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_6
    instance-of v4, v2, Landroidx/compose/runtime/DerivedState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    iget-object v6, v0, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;

    .line 108
    .line 109
    if-nez v4, :cond_7

    .line 110
    .line 111
    :try_start_2
    sget-object v4, Landroidx/compose/runtime/ScopeInvalidated;->a:Landroidx/compose/runtime/ScopeInvalidated;

    .line 112
    .line 113
    invoke-virtual {v6, v1, v4}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_7
    invoke-virtual {v6, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    if-eqz v4, :cond_c

    .line 122
    .line 123
    instance-of v6, v4, Landroidx/collection/MutableScatterSet;

    .line 124
    .line 125
    if-eqz v6, :cond_b

    .line 126
    .line 127
    check-cast v4, Landroidx/collection/MutableScatterSet;

    .line 128
    .line 129
    iget-object v6, v4, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 130
    .line 131
    iget-object v4, v4, Landroidx/collection/ScatterSet;->a:[J

    .line 132
    .line 133
    array-length v8, v4

    .line 134
    add-int/lit8 v8, v8, -0x2

    .line 135
    .line 136
    if-ltz v8, :cond_c

    .line 137
    .line 138
    const/4 v9, 0x0

    .line 139
    :goto_4
    aget-wide v10, v4, v9

    .line 140
    .line 141
    not-long v12, v10

    .line 142
    const/4 v14, 0x7

    .line 143
    shl-long/2addr v12, v14

    .line 144
    and-long/2addr v12, v10

    .line 145
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    and-long/2addr v12, v14

    .line 151
    cmp-long v12, v12, v14

    .line 152
    .line 153
    if-eqz v12, :cond_a

    .line 154
    .line 155
    sub-int v12, v9, v8

    .line 156
    .line 157
    not-int v12, v12

    .line 158
    ushr-int/lit8 v12, v12, 0x1f

    .line 159
    .line 160
    const/16 v13, 0x8

    .line 161
    .line 162
    rsub-int/lit8 v12, v12, 0x8

    .line 163
    .line 164
    const/4 v14, 0x0

    .line 165
    :goto_5
    if-ge v14, v12, :cond_9

    .line 166
    .line 167
    const-wide/16 v15, 0xff

    .line 168
    .line 169
    and-long/2addr v15, v10

    .line 170
    const-wide/16 v17, 0x80

    .line 171
    .line 172
    cmp-long v15, v15, v17

    .line 173
    .line 174
    if-gez v15, :cond_8

    .line 175
    .line 176
    shl-int/lit8 v15, v9, 0x3

    .line 177
    .line 178
    add-int/2addr v15, v14

    .line 179
    aget-object v15, v6, v15

    .line 180
    .line 181
    sget-object v7, Landroidx/compose/runtime/ScopeInvalidated;->a:Landroidx/compose/runtime/ScopeInvalidated;

    .line 182
    .line 183
    if-ne v15, v7, :cond_8

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_8
    shr-long/2addr v10, v13

    .line 187
    add-int/lit8 v14, v14, 0x1

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_9
    if-ne v12, v13, :cond_c

    .line 191
    .line 192
    :cond_a
    if-eq v9, v8, :cond_c

    .line 193
    .line 194
    add-int/lit8 v9, v9, 0x1

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_b
    sget-object v6, Landroidx/compose/runtime/ScopeInvalidated;->a:Landroidx/compose/runtime/ScopeInvalidated;

    .line 198
    .line 199
    if-ne v4, v6, :cond_c

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_c
    iget-object v4, v0, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;

    .line 203
    .line 204
    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->a(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    .line 206
    .line 207
    :cond_d
    :goto_6
    monitor-exit v3

    .line 208
    if-eqz v5, :cond_e

    .line 209
    .line 210
    move-object/from16 v3, p2

    .line 211
    .line 212
    invoke-virtual {v5, v1, v3, v2}, Landroidx/compose/runtime/CompositionImpl;->v(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    return-object v0

    .line 217
    :cond_e
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->j:Landroidx/compose/runtime/CompositionContext;

    .line 218
    .line 219
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/CompositionContext;->l(Landroidx/compose/runtime/ControlledComposition;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 223
    .line 224
    iget-boolean v0, v0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 225
    .line 226
    if-eqz v0, :cond_f

    .line 227
    .line 228
    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->l:Landroidx/compose/runtime/InvalidationResult;

    .line 229
    .line 230
    return-object v0

    .line 231
    :cond_f
    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->k:Landroidx/compose/runtime/InvalidationResult;

    .line 232
    .line 233
    return-object v0

    .line 234
    :goto_7
    monitor-exit v3

    .line 235
    throw v0
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->p:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    instance-of v1, v0, Landroidx/collection/MutableScatterSet;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->v:Landroidx/collection/MutableScatterMap;

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 20
    .line 21
    array-length v2, v0

    .line 22
    add-int/lit8 v2, v2, -0x2

    .line 23
    .line 24
    if-ltz v2, :cond_4

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    move v4, v3

    .line 28
    :goto_0
    aget-wide v5, v0, v4

    .line 29
    .line 30
    not-long v7, v5

    .line 31
    const/4 v9, 0x7

    .line 32
    shl-long/2addr v7, v9

    .line 33
    and-long/2addr v7, v5

    .line 34
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr v7, v9

    .line 40
    cmp-long v7, v7, v9

    .line 41
    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    sub-int v7, v4, v2

    .line 45
    .line 46
    not-int v7, v7

    .line 47
    ushr-int/lit8 v7, v7, 0x1f

    .line 48
    .line 49
    const/16 v8, 0x8

    .line 50
    .line 51
    rsub-int/lit8 v7, v7, 0x8

    .line 52
    .line 53
    move v9, v3

    .line 54
    :goto_1
    if-ge v9, v7, :cond_1

    .line 55
    .line 56
    const-wide/16 v10, 0xff

    .line 57
    .line 58
    and-long/2addr v10, v5

    .line 59
    const-wide/16 v12, 0x80

    .line 60
    .line 61
    cmp-long v10, v10, v12

    .line 62
    .line 63
    if-gez v10, :cond_0

    .line 64
    .line 65
    shl-int/lit8 v10, v4, 0x3

    .line 66
    .line 67
    add-int/2addr v10, v9

    .line 68
    aget-object v10, v1, v10

    .line 69
    .line 70
    check-cast v10, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 71
    .line 72
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->c(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    sget-object v12, Landroidx/compose/runtime/InvalidationResult;->m:Landroidx/compose/runtime/InvalidationResult;

    .line 77
    .line 78
    if-ne v11, v12, :cond_0

    .line 79
    .line 80
    instance-of v11, p1, Landroidx/compose/runtime/DerivedState;

    .line 81
    .line 82
    if-nez v11, :cond_0

    .line 83
    .line 84
    invoke-static {p0, p1, v10}, Landroidx/compose/runtime/collection/ScopeMap;->a(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    shr-long/2addr v5, v8

    .line 88
    add-int/lit8 v9, v9, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    if-ne v7, v8, :cond_4

    .line 92
    .line 93
    :cond_2
    if-eq v4, v2, :cond_4

    .line 94
    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->c(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sget-object v2, Landroidx/compose/runtime/InvalidationResult;->m:Landroidx/compose/runtime/InvalidationResult;

    .line 105
    .line 106
    if-ne v1, v2, :cond_4

    .line 107
    .line 108
    instance-of v1, p1, Landroidx/compose/runtime/DerivedState;

    .line 109
    .line 110
    if-nez v1, :cond_4

    .line 111
    .line 112
    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/collection/ScopeMap;->a(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    return-void
.end method

.method public final x(Ljava/util/Set;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/runtime/CompositionImpl;->s:Landroidx/collection/MutableScatterMap;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->p:Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    check-cast v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;->j:Landroidx/collection/ScatterSet;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/collection/ScatterSet;->a:[J

    .line 22
    .line 23
    array-length v6, v1

    .line 24
    add-int/lit8 v6, v6, -0x2

    .line 25
    .line 26
    if-ltz v6, :cond_7

    .line 27
    .line 28
    move v7, v4

    .line 29
    :goto_0
    aget-wide v8, v1, v7

    .line 30
    .line 31
    not-long v10, v8

    .line 32
    const/4 v12, 0x7

    .line 33
    shl-long/2addr v10, v12

    .line 34
    and-long/2addr v10, v8

    .line 35
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr v10, v12

    .line 41
    cmp-long v10, v10, v12

    .line 42
    .line 43
    if-eqz v10, :cond_3

    .line 44
    .line 45
    sub-int v10, v7, v6

    .line 46
    .line 47
    not-int v10, v10

    .line 48
    ushr-int/lit8 v10, v10, 0x1f

    .line 49
    .line 50
    const/16 v11, 0x8

    .line 51
    .line 52
    rsub-int/lit8 v10, v10, 0x8

    .line 53
    .line 54
    move v12, v4

    .line 55
    :goto_1
    if-ge v12, v10, :cond_2

    .line 56
    .line 57
    const-wide/16 v13, 0xff

    .line 58
    .line 59
    and-long/2addr v13, v8

    .line 60
    const-wide/16 v15, 0x80

    .line 61
    .line 62
    cmp-long v13, v13, v15

    .line 63
    .line 64
    if-gez v13, :cond_1

    .line 65
    .line 66
    shl-int/lit8 v13, v7, 0x3

    .line 67
    .line 68
    add-int/2addr v13, v12

    .line 69
    aget-object v13, v2, v13

    .line 70
    .line 71
    invoke-virtual {v0, v13}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v14

    .line 75
    if-nez v14, :cond_0

    .line 76
    .line 77
    invoke-virtual {v3, v13}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    if-eqz v13, :cond_1

    .line 82
    .line 83
    :cond_0
    return v5

    .line 84
    :cond_1
    shr-long/2addr v8, v11

    .line 85
    add-int/lit8 v12, v12, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    if-ne v10, v11, :cond_7

    .line 89
    .line 90
    :cond_3
    if-eq v7, v6, :cond_7

    .line 91
    .line 92
    add-int/lit8 v7, v7, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    check-cast v1, Ljava/lang/Iterable;

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_7

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v2}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-nez v6, :cond_6

    .line 116
    .line 117
    invoke-virtual {v3, v2}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_5

    .line 122
    .line 123
    :cond_6
    return v5

    .line 124
    :cond_7
    return v4
.end method

.method public final y()Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->z:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v3, v1, Landroidx/compose/runtime/PausedCompositionImpl;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    sget-object v4, Landroidx/compose/runtime/PausedCompositionState;->n:Landroidx/compose/runtime/PausedCompositionState;

    .line 16
    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    iget-wide v3, v1, Landroidx/compose/runtime/PausedCompositionImpl;->i:J

    .line 20
    .line 21
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->a()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    cmp-long v3, v3, v5

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p0, v1, Landroidx/compose/runtime/PausedCompositionImpl;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    .line 32
    sget-object v3, Landroidx/compose/runtime/PausedCompositionState;->o:Landroidx/compose/runtime/PausedCompositionState;

    .line 33
    .line 34
    sget-object v4, Landroidx/compose/runtime/PausedCompositionState;->m:Landroidx/compose/runtime/PausedCompositionState;

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-eq v5, v3, :cond_1

    .line 48
    .line 49
    :goto_0
    iget-object p0, v1, Landroidx/compose/runtime/PausedCompositionImpl;->l:Landroidx/compose/runtime/RecordingApplier;

    .line 50
    .line 51
    iget-object p0, p0, Landroidx/compose/runtime/RecordingApplier;->a:Landroidx/collection/MutableIntList;

    .line 52
    .line 53
    const/16 v1, 0x9

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroidx/collection/MutableIntList;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return v2

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    :try_start_2
    iget-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;

    .line 67
    .line 68
    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->b()Landroidx/collection/MutableScatterMap;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iput-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 73
    .line 74
    :try_start_3
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 75
    .line 76
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->y:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 77
    .line 78
    iget-object v5, v3, Landroidx/compose/runtime/GapComposer;->e:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 79
    .line 80
    iget-object v5, v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 81
    .line 82
    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c()Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-nez v6, :cond_4

    .line 87
    .line 88
    const-string v6, "Expected applyChanges() to have been called"

    .line 89
    .line 90
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    iget v6, v1, Landroidx/collection/ScatterMap;->e:I

    .line 94
    .line 95
    if-gtz v6, :cond_5

    .line 96
    .line 97
    iget-object v6, v3, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_5

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    iput-object v4, v3, Landroidx/compose/runtime/GapComposer;->P:Landroidx/compose/runtime/ShouldPauseCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    :try_start_4
    invoke-virtual {v3, v1, v2}, Landroidx/compose/runtime/GapComposer;->n(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function2;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 110
    .line 111
    .line 112
    :try_start_5
    iput-object v2, v3, Landroidx/compose/runtime/GapComposer;->P:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 113
    .line 114
    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    xor-int/lit8 v2, v2, 0x1

    .line 119
    .line 120
    :goto_2
    if-nez v2, :cond_6

    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->r()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :catchall_1
    move-exception v2

    .line 127
    goto :goto_4

    .line 128
    :cond_6
    :goto_3
    monitor-exit v0

    .line 129
    return v2

    .line 130
    :catchall_2
    move-exception v4

    .line 131
    :try_start_6
    iput-object v2, v3, Landroidx/compose/runtime/GapComposer;->P:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 132
    .line 133
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 134
    :goto_4
    :try_start_7
    iput-object v1, p0, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;

    .line 135
    .line 136
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 137
    :catchall_3
    move-exception v1

    .line 138
    :try_start_8
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 139
    .line 140
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_7

    .line 145
    .line 146
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->D:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 147
    .line 148
    iget-object v3, p0, Landroidx/compose/runtime/CompositionImpl;->n:Ljava/util/Set;

    .line 149
    .line 150
    iget-object v4, p0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 151
    .line 152
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 153
    .line 154
    .line 155
    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 156
    :try_start_9
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->g(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 160
    .line 161
    .line 162
    :try_start_a
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :catchall_4
    move-exception v1

    .line 167
    goto :goto_6

    .line 168
    :catchall_5
    move-exception v1

    .line 169
    invoke-virtual {v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 170
    .line 171
    .line 172
    throw v1

    .line 173
    :cond_7
    :goto_5
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 174
    :goto_6
    :try_start_b
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->e()V

    .line 175
    .line 176
    .line 177
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 178
    :goto_7
    monitor-exit v0

    .line 179
    throw p0
.end method

.method public final z(Landroidx/compose/runtime/collection/ScatterSetWrapper;)V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionImpl;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    sget-object v1, Landroidx/compose/runtime/CompositionKt;->a:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    instance-of v1, v0, Ljava/util/Set;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [Ljava/util/Set;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object v0, v1, v2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object p1, v1, v2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    instance-of v1, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    check-cast v1, [Ljava/util/Set;

    .line 38
    .line 39
    array-length v2, v1

    .line 40
    add-int/lit8 v3, v2, 0x1

    .line 41
    .line 42
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    aput-object p1, v1, v2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    iget-object p0, p0, Landroidx/compose/runtime/CompositionImpl;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "corrupt pendingModifications: "

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_3
    :goto_1
    move-object v1, p1

    .line 76
    :goto_2
    iget-object v2, p0, Landroidx/compose/runtime/CompositionImpl;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 77
    .line 78
    :cond_4
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_6

    .line 83
    .line 84
    if-nez v0, :cond_5

    .line 85
    .line 86
    iget-object p1, p0, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter p1

    .line 89
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    monitor-exit p1

    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    monitor-exit p1

    .line 96
    throw p0

    .line 97
    :cond_5
    return-void

    .line 98
    :cond_6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eq v3, v0, :cond_4

    .line 103
    .line 104
    goto :goto_0
.end method
