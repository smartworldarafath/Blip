.class public final Landroidx/compose/runtime/GapComposer;
.super Landroidx/compose/runtime/InternalComposer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/GapComposer$CompositionContextHolder;,
        Landroidx/compose/runtime/GapComposer$CompositionContextImpl;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public final D:Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;

.field public final E:Ljava/util/ArrayList;

.field public F:Z

.field public G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

.field public H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

.field public I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

.field public J:Z

.field public K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field public L:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

.field public final M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

.field public N:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

.field public O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

.field public P:Landroidx/compose/runtime/ShouldPauseCallback;

.field public final Q:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

.field public final R:Lkotlin/coroutines/CoroutineContext;

.field public S:Z

.field public T:J

.field public U:Landroidx/compose/runtime/GapCompositionDataImpl;

.field public final a:Landroidx/compose/ui/node/UiApplier;

.field public final b:Landroidx/compose/runtime/CompositionContext;

.field public final c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

.field public final d:Ljava/util/Set;

.field public final e:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

.field public final f:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

.field public final g:Landroidx/compose/runtime/CompositionObserverHolder;

.field public final h:Landroidx/compose/runtime/CompositionImpl;

.field public final i:Ljava/util/ArrayList;

.field public j:Landroidx/compose/runtime/GapPending;

.field public k:I

.field public l:I

.field public m:I

.field public final n:Landroidx/compose/runtime/IntStack;

.field public o:[I

.field public p:Landroidx/collection/MutableIntIntMap;

.field public q:Z

.field public r:Z

.field public final s:Ljava/util/ArrayList;

.field public final t:Landroidx/compose/runtime/IntStack;

.field public u:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field public v:Landroidx/collection/MutableIntObjectMap;

.field public w:Z

.field public final x:Landroidx/compose/runtime/IntStack;

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/UiApplier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/composer/gapbuffer/SlotTable;Ljava/util/Set;Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;Landroidx/compose/runtime/CompositionObserverHolder;Landroidx/compose/runtime/CompositionImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/ui/node/UiApplier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/runtime/GapComposer;->d:Ljava/util/Set;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/runtime/GapComposer;->e:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/runtime/GapComposer;->f:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/runtime/GapComposer;->g:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->i:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 28
    .line 29
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->n:Landroidx/compose/runtime/IntStack;

    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 42
    .line 43
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->t:Landroidx/compose/runtime/IntStack;

    .line 47
    .line 48
    sget-object p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->m:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 49
    .line 50
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->u:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 51
    .line 52
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 53
    .line 54
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->x:Landroidx/compose/runtime/IntStack;

    .line 58
    .line 59
    const/4 p1, -0x1

    .line 60
    iput p1, p0, Landroidx/compose/runtime/GapComposer;->z:I

    .line 61
    .line 62
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->f()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/4 p4, 0x0

    .line 67
    const/4 p6, 0x1

    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->d()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move p1, p4

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    move p1, p6

    .line 80
    :goto_1
    iput-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    .line 81
    .line 82
    new-instance p1, Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;

    .line 83
    .line 84
    invoke-direct {p1, p0}, Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;-><init>(Landroidx/compose/runtime/GapComposer;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->D:Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;

    .line 88
    .line 89
    new-instance p1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->E:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->d()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 104
    .line 105
    new-instance p1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 106
    .line 107
    invoke-direct {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->f()Z

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    if-eqz p3, :cond_2

    .line 115
    .line 116
    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->c()V

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->d()Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_3

    .line 124
    .line 125
    new-instance p3, Landroidx/collection/MutableIntObjectMap;

    .line 126
    .line 127
    invoke-direct {p3}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object p3, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->t:Landroidx/collection/MutableIntObjectMap;

    .line 131
    .line 132
    :cond_3
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->e()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1, p6}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e(Z)V

    .line 139
    .line 140
    .line 141
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 142
    .line 143
    new-instance p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 144
    .line 145
    invoke-direct {p1, p0, p5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;-><init>(Landroidx/compose/runtime/GapComposer;Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;)V

    .line 146
    .line 147
    .line 148
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 149
    .line 150
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->d()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    :try_start_0
    invoke-virtual {p1, p4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 157
    .line 158
    .line 159
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 161
    .line 162
    .line 163
    iput-object p3, p0, Landroidx/compose/runtime/GapComposer;->N:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 164
    .line 165
    new-instance p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 166
    .line 167
    invoke-direct {p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 171
    .line 172
    new-instance p1, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 173
    .line 174
    invoke-direct {p1, p0}, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;-><init>(Landroidx/compose/runtime/GapComposer;)V

    .line 175
    .line 176
    .line 177
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->Q:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 178
    .line 179
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->j()Lkotlin/coroutines/CoroutineContext;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    if-eqz p2, :cond_4

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_4
    sget-object p2, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 191
    .line 192
    :goto_2
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->A(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->R:Lkotlin/coroutines/CoroutineContext;

    .line 197
    .line 198
    return-void

    .line 199
    :catchall_0
    move-exception p0

    .line 200
    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 201
    .line 202
    .line 203
    throw p0
.end method

.method public static final M(Landroidx/compose/runtime/GapComposer;IZI)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->j(I)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_c

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget-object v6, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 19
    .line 20
    invoke-virtual {v2, v6, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p([II)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const/16 v7, 0xce

    .line 25
    .line 26
    if-ne v3, v7, :cond_a

    .line 27
    .line 28
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->e:Landroidx/compose/runtime/OpaqueKey;

    .line 29
    .line 30
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_a

    .line 35
    .line 36
    invoke-virtual {v2, v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h(II)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    instance-of v6, v3, Landroidx/compose/runtime/RememberObserverHolder;

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    check-cast v3, Landroidx/compose/runtime/RememberObserverHolder;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-object v3, v7

    .line 49
    :goto_0
    if-eqz v3, :cond_1

    .line 50
    .line 51
    check-cast v3, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 52
    .line 53
    iget-object v3, v3, Landroidx/compose/runtime/GapRememberObserverHolder;->a:Landroidx/compose/runtime/RememberObserver;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move-object v3, v7

    .line 57
    :goto_1
    instance-of v6, v3, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;

    .line 58
    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    move-object v7, v3

    .line 62
    check-cast v7, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;

    .line 63
    .line 64
    :cond_2
    if-eqz v7, :cond_9

    .line 65
    .line 66
    iget-object v3, v7, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;->j:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 67
    .line 68
    iget-object v3, v3, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->e:Landroidx/collection/MutableScatterSet;

    .line 69
    .line 70
    iget-object v6, v3, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 71
    .line 72
    iget-object v3, v3, Landroidx/collection/ScatterSet;->a:[J

    .line 73
    .line 74
    array-length v7, v3

    .line 75
    add-int/lit8 v7, v7, -0x2

    .line 76
    .line 77
    if-ltz v7, :cond_9

    .line 78
    .line 79
    move v8, v4

    .line 80
    :goto_2
    aget-wide v9, v3, v8

    .line 81
    .line 82
    not-long v11, v9

    .line 83
    const/4 v13, 0x7

    .line 84
    shl-long/2addr v11, v13

    .line 85
    and-long/2addr v11, v9

    .line 86
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    and-long/2addr v11, v13

    .line 92
    cmp-long v11, v11, v13

    .line 93
    .line 94
    if-eqz v11, :cond_8

    .line 95
    .line 96
    sub-int v11, v8, v7

    .line 97
    .line 98
    not-int v11, v11

    .line 99
    ushr-int/lit8 v11, v11, 0x1f

    .line 100
    .line 101
    const/16 v12, 0x8

    .line 102
    .line 103
    rsub-int/lit8 v11, v11, 0x8

    .line 104
    .line 105
    move v13, v4

    .line 106
    :goto_3
    if-ge v13, v11, :cond_7

    .line 107
    .line 108
    const-wide/16 v14, 0xff

    .line 109
    .line 110
    and-long/2addr v14, v9

    .line 111
    const-wide/16 v16, 0x80

    .line 112
    .line 113
    cmp-long v14, v14, v16

    .line 114
    .line 115
    if-gez v14, :cond_6

    .line 116
    .line 117
    shl-int/lit8 v14, v8, 0x3

    .line 118
    .line 119
    add-int/2addr v14, v13

    .line 120
    aget-object v14, v6, v14

    .line 121
    .line 122
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 123
    .line 124
    iget-object v15, v14, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 125
    .line 126
    const/16 v16, 0x1

    .line 127
    .line 128
    iget v5, v15, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->k:I

    .line 129
    .line 130
    if-lez v5, :cond_5

    .line 131
    .line 132
    iget-object v5, v15, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->j:[I

    .line 133
    .line 134
    aget v5, v5, v16

    .line 135
    .line 136
    const/high16 v15, 0x4000000

    .line 137
    .line 138
    and-int/2addr v5, v15

    .line 139
    if-eqz v5, :cond_5

    .line 140
    .line 141
    iget-object v5, v14, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    .line 142
    .line 143
    iget-object v15, v5, Landroidx/compose/runtime/CompositionImpl;->m:Ljava/lang/Object;

    .line 144
    .line 145
    monitor-enter v15

    .line 146
    :try_start_0
    invoke-virtual {v5}, Landroidx/compose/runtime/CompositionImpl;->s()V

    .line 147
    .line 148
    .line 149
    move/from16 p2, v12

    .line 150
    .line 151
    iget-object v12, v5, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;

    .line 152
    .line 153
    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->b()Landroidx/collection/MutableScatterMap;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    iput-object v4, v5, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 158
    .line 159
    :try_start_1
    iget-object v4, v5, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 160
    .line 161
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->c0(Landroidx/collection/MutableScatterMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 162
    .line 163
    .line 164
    monitor-exit v15

    .line 165
    new-instance v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 166
    .line 167
    invoke-direct {v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object v4, v14, Landroidx/compose/runtime/GapComposer;->L:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 171
    .line 172
    iget-object v5, v14, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 173
    .line 174
    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->d()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    :try_start_2
    iput-object v5, v14, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 179
    .line 180
    iget-object v12, v14, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 181
    .line 182
    iget-object v15, v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 183
    .line 184
    :try_start_3
    iput-object v4, v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 185
    .line 186
    const/4 v4, 0x0

    .line 187
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    .line 188
    .line 189
    .line 190
    iget-object v4, v14, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 191
    .line 192
    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    .line 193
    .line 194
    .line 195
    move-object/from16 p3, v3

    .line 196
    .line 197
    iget-boolean v3, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 198
    .line 199
    if-eqz v3, :cond_3

    .line 200
    .line 201
    iget-object v3, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 202
    .line 203
    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 204
    .line 205
    move-object/from16 v18, v5

    .line 206
    .line 207
    :try_start_4
    sget-object v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;

    .line 208
    .line 209
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 210
    .line 211
    .line 212
    iget-boolean v3, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 213
    .line 214
    if-eqz v3, :cond_4

    .line 215
    .line 216
    const/4 v3, 0x0

    .line 217
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 221
    .line 222
    .line 223
    iget-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 224
    .line 225
    iget-object v5, v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 226
    .line 227
    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;

    .line 228
    .line 229
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 230
    .line 231
    .line 232
    const/4 v3, 0x0

    .line 233
    iput-boolean v3, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :catchall_0
    move-exception v0

    .line 237
    goto :goto_5

    .line 238
    :cond_3
    move-object/from16 v18, v5

    .line 239
    .line 240
    :cond_4
    const/4 v3, 0x0

    .line 241
    :goto_4
    :try_start_5
    iput-object v15, v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 242
    .line 243
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 244
    .line 245
    .line 246
    goto :goto_7

    .line 247
    :catchall_1
    move-exception v0

    .line 248
    goto :goto_6

    .line 249
    :catchall_2
    move-exception v0

    .line 250
    move-object/from16 v18, v5

    .line 251
    .line 252
    :goto_5
    :try_start_6
    iput-object v15, v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 253
    .line 254
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 255
    :catchall_3
    move-exception v0

    .line 256
    move-object/from16 v18, v5

    .line 257
    .line 258
    :goto_6
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 259
    .line 260
    .line 261
    throw v0

    .line 262
    :catchall_4
    move-exception v0

    .line 263
    :try_start_7
    iput-object v12, v5, Landroidx/compose/runtime/CompositionImpl;->w:Landroidx/collection/MutableScatterMap;

    .line 264
    .line 265
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 266
    :catchall_5
    move-exception v0

    .line 267
    monitor-exit v15

    .line 268
    throw v0

    .line 269
    :cond_5
    move-object/from16 p3, v3

    .line 270
    .line 271
    move v3, v4

    .line 272
    move/from16 p2, v12

    .line 273
    .line 274
    :goto_7
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    .line 275
    .line 276
    iget-object v5, v14, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    .line 277
    .line 278
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/CompositionContext;->r(Landroidx/compose/runtime/CompositionImpl;)V

    .line 279
    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_6
    move-object/from16 p3, v3

    .line 283
    .line 284
    move v3, v4

    .line 285
    move/from16 p2, v12

    .line 286
    .line 287
    const/16 v16, 0x1

    .line 288
    .line 289
    :goto_8
    shr-long v9, v9, p2

    .line 290
    .line 291
    add-int/lit8 v13, v13, 0x1

    .line 292
    .line 293
    move/from16 v12, p2

    .line 294
    .line 295
    move v4, v3

    .line 296
    move-object/from16 v3, p3

    .line 297
    .line 298
    goto/16 :goto_3

    .line 299
    .line 300
    :cond_7
    move-object/from16 p3, v3

    .line 301
    .line 302
    move v3, v4

    .line 303
    move v4, v12

    .line 304
    const/16 v16, 0x1

    .line 305
    .line 306
    if-ne v11, v4, :cond_9

    .line 307
    .line 308
    goto :goto_9

    .line 309
    :cond_8
    move-object/from16 p3, v3

    .line 310
    .line 311
    move v3, v4

    .line 312
    const/16 v16, 0x1

    .line 313
    .line 314
    :goto_9
    if-eq v8, v7, :cond_9

    .line 315
    .line 316
    add-int/lit8 v8, v8, 0x1

    .line 317
    .line 318
    move v4, v3

    .line 319
    move-object/from16 v3, p3

    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :cond_9
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->o(I)I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    return v0

    .line 328
    :cond_a
    const/16 v16, 0x1

    .line 329
    .line 330
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_b

    .line 335
    .line 336
    goto/16 :goto_e

    .line 337
    .line 338
    :cond_b
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->o(I)I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    return v0

    .line 343
    :cond_c
    move v3, v4

    .line 344
    const/16 v16, 0x1

    .line 345
    .line 346
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->d(I)Z

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    if-eqz v4, :cond_14

    .line 351
    .line 352
    iget-object v4, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 353
    .line 354
    mul-int/lit8 v5, v1, 0x5

    .line 355
    .line 356
    add-int/lit8 v5, v5, 0x3

    .line 357
    .line 358
    aget v4, v4, v5

    .line 359
    .line 360
    add-int/2addr v4, v1

    .line 361
    add-int/lit8 v5, v1, 0x1

    .line 362
    .line 363
    move v6, v5

    .line 364
    move v5, v3

    .line 365
    :goto_a
    if-ge v6, v4, :cond_12

    .line 366
    .line 367
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    if-eqz v7, :cond_d

    .line 372
    .line 373
    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 374
    .line 375
    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    .line 376
    .line 377
    .line 378
    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 379
    .line 380
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->n(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v9

    .line 384
    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    .line 385
    .line 386
    .line 387
    iget-object v8, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->h:Ljava/util/ArrayList;

    .line 388
    .line 389
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    :cond_d
    if-nez v7, :cond_f

    .line 393
    .line 394
    if-eqz p2, :cond_e

    .line 395
    .line 396
    goto :goto_b

    .line 397
    :cond_e
    move v8, v3

    .line 398
    goto :goto_c

    .line 399
    :cond_f
    :goto_b
    move/from16 v8, v16

    .line 400
    .line 401
    :goto_c
    if-eqz v7, :cond_10

    .line 402
    .line 403
    move v9, v3

    .line 404
    goto :goto_d

    .line 405
    :cond_10
    add-int v9, p3, v5

    .line 406
    .line 407
    :goto_d
    invoke-static {v0, v6, v8, v9}, Landroidx/compose/runtime/GapComposer;->M(Landroidx/compose/runtime/GapComposer;IZI)I

    .line 408
    .line 409
    .line 410
    move-result v8

    .line 411
    add-int/2addr v5, v8

    .line 412
    if-eqz v7, :cond_11

    .line 413
    .line 414
    iget-object v7, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 415
    .line 416
    invoke-virtual {v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    .line 417
    .line 418
    .line 419
    iget-object v7, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 420
    .line 421
    invoke-virtual {v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a()V

    .line 422
    .line 423
    .line 424
    :cond_11
    iget-object v7, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 425
    .line 426
    mul-int/lit8 v8, v6, 0x5

    .line 427
    .line 428
    add-int/lit8 v8, v8, 0x3

    .line 429
    .line 430
    aget v7, v7, v8

    .line 431
    .line 432
    add-int/2addr v6, v7

    .line 433
    goto :goto_a

    .line 434
    :cond_12
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-eqz v0, :cond_13

    .line 439
    .line 440
    goto :goto_e

    .line 441
    :cond_13
    return v5

    .line 442
    :cond_14
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_15

    .line 447
    .line 448
    :goto_e
    return v16

    .line 449
    :cond_15
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->o(I)I

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    return v0
.end method


# virtual methods
.method public final A(Ljava/util/ArrayList;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->f:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 4
    .line 5
    iget-object v6, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 6
    .line 7
    iget-object v7, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 8
    .line 9
    :try_start_0
    iput-object v1, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 12
    .line 13
    sget-object v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 16
    .line 17
    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    const/4 v9, 0x0

    .line 23
    move v10, v9

    .line 24
    :goto_0
    if-ge v10, v8, :cond_3

    .line 25
    .line 26
    move-object/from16 v11, p1

    .line 27
    .line 28
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lkotlin/Pair;

    .line 33
    .line 34
    iget-object v2, v1, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Landroidx/compose/runtime/MovableContentStateReference;

    .line 37
    .line 38
    iget-object v1, v1, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Landroidx/compose/runtime/MovableContentStateReference;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-static {v1}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->d(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->b(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    new-instance v12, Landroidx/compose/runtime/internal/IntRef;

    .line 59
    .line 60
    invoke-direct {v12}, Landroidx/compose/runtime/internal/IntRef;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    .line 64
    .line 65
    .line 66
    iget-object v5, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 67
    .line 68
    iget-object v5, v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 69
    .line 70
    sget-object v13, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DetermineMovableContentNodeIndex;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DetermineMovableContentNodeIndex;

    .line 71
    .line 72
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 73
    .line 74
    .line 75
    const/4 v13, 0x1

    .line 76
    invoke-static {v5, v9, v12, v13, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 80
    .line 81
    if-eq v1, v3, :cond_0

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_0
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 85
    .line 86
    iget-boolean v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->w:Z

    .line 87
    .line 88
    if-nez v3, :cond_1

    .line 89
    .line 90
    const-string v3, "Check failed"

    .line 91
    .line 92
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->u()V

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->d()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 99
    .line 100
    .line 101
    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->r(I)V

    .line 103
    .line 104
    .line 105
    iput v4, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    .line 106
    .line 107
    new-instance v15, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 108
    .line 109
    invoke-direct {v15}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;-><init>()V

    .line 110
    .line 111
    .line 112
    new-instance v5, Ln1;

    .line 113
    .line 114
    invoke-direct {v5, v0, v15, v14, v2}, Ln1;-><init>(Landroidx/compose/runtime/GapComposer;Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;Landroidx/compose/runtime/composer/gapbuffer/SlotReader;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 115
    .line 116
    .line 117
    sget-object v4, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 118
    .line 119
    const/4 v3, 0x0

    .line 120
    const/4 v2, 0x0

    .line 121
    const/4 v1, 0x0

    .line 122
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/runtime/GapComposer;->F(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    iget-object v0, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object v1, v15, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_2

    .line 137
    .line 138
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 139
    .line 140
    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ApplyChangeList;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ApplyChangeList;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v9, v15, v13, v12}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    .line 147
    .line 148
    :cond_2
    :try_start_2
    invoke-virtual {v14}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 149
    .line 150
    .line 151
    iget-object v0, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 152
    .line 153
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 154
    .line 155
    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v10, v10, 0x1

    .line 161
    .line 162
    move-object/from16 v0, p0

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :catchall_0
    move-exception v0

    .line 167
    goto :goto_2

    .line 168
    :catchall_1
    move-exception v0

    .line 169
    invoke-virtual {v14}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 170
    .line 171
    .line 172
    throw v0

    .line 173
    :cond_3
    invoke-virtual {v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    .line 174
    .line 175
    .line 176
    iget-object v0, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 177
    .line 178
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 179
    .line 180
    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndMovableContentPlacement;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndMovableContentPlacement;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 183
    .line 184
    .line 185
    iput v9, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    .line 187
    iput-object v7, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 188
    .line 189
    return-void

    .line 190
    :goto_2
    iput-object v7, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 191
    .line 192
    throw v0
.end method

.method public final B(Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;)V
    .locals 8

    .line 1
    const v0, 0x78cc281

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/GapComposer;->U(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->C()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/GapComposer;->h0(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-wide v2, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 15
    .line 16
    const-wide/32 v4, 0x78cc281

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :try_start_0
    iput-wide v4, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 21
    .line 22
    iget-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget-object v4, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 27
    .line 28
    invoke-static {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->z(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    :goto_0
    iget-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    :cond_1
    move v4, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget-object v4, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->f()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    move v4, v5

    .line 54
    :goto_1
    if-eqz v4, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->I(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    sget-object v6, Landroidx/compose/runtime/ComposerKt;->c:Landroidx/compose/runtime/OpaqueKey;

    .line 60
    .line 61
    const/16 v7, 0xca

    .line 62
    .line 63
    invoke-virtual {p0, v7, v0, v6, p1}, Landroidx/compose/runtime/GapComposer;->R(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 67
    .line 68
    iget-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 69
    .line 70
    iput-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 71
    .line 72
    new-instance v4, Ld;

    .line 73
    .line 74
    const/16 v6, 0x9

    .line 75
    .line 76
    invoke-direct {v4, v6, p2}, Ld;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    new-instance p2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 80
    .line 81
    const v6, -0x3873acb

    .line 82
    .line 83
    .line 84
    invoke-direct {p2, v6, v5, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p0, p2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->a(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;)V

    .line 88
    .line 89
    .line 90
    iput-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 96
    .line 97
    iput-wide v2, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :goto_2
    :try_start_1
    new-instance p2, Lx8;

    .line 104
    .line 105
    const/4 v4, 0x2

    .line 106
    invoke-direct {p2, v4, p0}, Lx8;-><init>(ILandroidx/compose/runtime/GapComposer;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1, p2}, Landroidx/compose/runtime/tooling/ComposeStackTraceKt;->a(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z

    .line 110
    .line 111
    .line 112
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    :catchall_1
    move-exception p1

    .line 114
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 115
    .line 116
    .line 117
    iput-object v1, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 118
    .line 119
    iput-wide v2, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 122
    .line 123
    .line 124
    throw p1
.end method

.method public final C()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->m()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    instance-of p0, v0, Landroidx/compose/runtime/ReusableRememberObserverHolder;

    .line 28
    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    :cond_1
    return-object v1

    .line 32
    :cond_2
    return-object v0
.end method

.method public final D()Ljava/util/List;
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->h()Landroidx/compose/runtime/Composition;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->o:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->d(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->d()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :try_start_0
    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static {v2, p0, v4, v3}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;->b(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;Landroidx/compose/runtime/CompositionContext;II)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 34
    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    invoke-static {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->d(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->d()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1, p0, v2}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;->c(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;ILjava/lang/Integer;)Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 78
    .line 79
    return-object p0

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public final E(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v0, p1, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 23
    .line 24
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 25
    .line 26
    mul-int/lit8 v3, v0, 0x5

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x3

    .line 29
    .line 30
    aget v2, v2, v3

    .line 31
    .line 32
    add-int/2addr v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v1
.end method

.method public final F(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    iput-boolean v2, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, p0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 10
    .line 11
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    move v4, v2

    .line 16
    :goto_0
    const/4 v5, 0x0

    .line 17
    if-ge v4, v3, :cond_1

    .line 18
    .line 19
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Lkotlin/Pair;

    .line 24
    .line 25
    iget-object v7, v6, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v7, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 28
    .line 29
    iget-object v6, v6, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 30
    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v7, v6}, Landroidx/compose/runtime/GapComposer;->b0(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_4

    .line 39
    :cond_0
    invoke-virtual {p0, v7, v5}, Landroidx/compose/runtime/GapComposer;->b0(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-eqz p1, :cond_4

    .line 46
    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/4 p3, -0x1

    .line 55
    :goto_2
    check-cast p1, Landroidx/compose/runtime/CompositionImpl;

    .line 56
    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p4

    .line 63
    if-nez p4, :cond_3

    .line 64
    .line 65
    if-ltz p3, :cond_3

    .line 66
    .line 67
    check-cast p2, Landroidx/compose/runtime/CompositionImpl;

    .line 68
    .line 69
    iput-object p2, p1, Landroidx/compose/runtime/CompositionImpl;->A:Landroidx/compose/runtime/CompositionImpl;

    .line 70
    .line 71
    iput p3, p1, Landroidx/compose/runtime/CompositionImpl;->B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    :try_start_1
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :try_start_2
    iput-object v5, p1, Landroidx/compose/runtime/CompositionImpl;->A:Landroidx/compose/runtime/CompositionImpl;

    .line 78
    .line 79
    iput v2, p1, Landroidx/compose/runtime/CompositionImpl;->B:I

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :catchall_1
    move-exception p2

    .line 83
    iput-object v5, p1, Landroidx/compose/runtime/CompositionImpl;->A:Landroidx/compose/runtime/CompositionImpl;

    .line 84
    .line 85
    iput v2, p1, Landroidx/compose/runtime/CompositionImpl;->B:I

    .line 86
    .line 87
    throw p2

    .line 88
    :cond_3
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    :goto_3
    if-nez p2, :cond_5

    .line 93
    .line 94
    :cond_4
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :cond_5
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 99
    .line 100
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 101
    .line 102
    return-object p2

    .line 103
    :goto_4
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 104
    .line 105
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 106
    .line 107
    throw p1
.end method

.method public final G()V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 9
    .line 10
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 11
    .line 12
    iget-object v5, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 13
    .line 14
    mul-int/lit8 v6, v4, 0x5

    .line 15
    .line 16
    const/4 v7, 0x3

    .line 17
    add-int/2addr v6, v7

    .line 18
    aget v5, v5, v6

    .line 19
    .line 20
    add-int/2addr v5, v4

    .line 21
    iget v8, v0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 22
    .line 23
    iget-wide v9, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 24
    .line 25
    iget v11, v0, Landroidx/compose/runtime/GapComposer;->l:I

    .line 26
    .line 27
    iget v12, v0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 28
    .line 29
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 30
    .line 31
    iget-object v13, v0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {v3, v13}, Landroidx/compose/runtime/GapComposerKt;->c(ILjava/util/List;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-gez v3, :cond_0

    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    neg-int v3, v3

    .line 42
    :cond_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v14

    .line 46
    if-ge v3, v14, :cond_1

    .line 47
    .line 48
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroidx/compose/runtime/Invalidation;

    .line 53
    .line 54
    iget v14, v3, Landroidx/compose/runtime/Invalidation;->b:I

    .line 55
    .line 56
    if-ge v14, v5, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v3, 0x0

    .line 60
    :goto_0
    move/from16 v17, v7

    .line 61
    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    move v7, v4

    .line 65
    :goto_1
    if-eqz v3, :cond_28

    .line 66
    .line 67
    move/from16 v18, v2

    .line 68
    .line 69
    iget-object v2, v3, Landroidx/compose/runtime/Invalidation;->a:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 70
    .line 71
    iget v14, v3, Landroidx/compose/runtime/Invalidation;->b:I

    .line 72
    .line 73
    invoke-static {v14, v13}, Landroidx/compose/runtime/GapComposerKt;->c(ILjava/util/List;)I

    .line 74
    .line 75
    .line 76
    move-result v15

    .line 77
    if-ltz v15, :cond_2

    .line 78
    .line 79
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v15

    .line 83
    check-cast v15, Landroidx/compose/runtime/Invalidation;

    .line 84
    .line 85
    :cond_2
    iget-object v3, v3, Landroidx/compose/runtime/Invalidation;->c:Ljava/lang/Object;

    .line 86
    .line 87
    const-wide/16 v19, 0x80

    .line 88
    .line 89
    const-wide/16 v21, 0xff

    .line 90
    .line 91
    const/16 v23, 0x7

    .line 92
    .line 93
    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    if-nez v3, :cond_4

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move/from16 v32, v1

    .line 104
    .line 105
    move-object/from16 v33, v2

    .line 106
    .line 107
    move/from16 v27, v6

    .line 108
    .line 109
    :goto_2
    move/from16 v34, v8

    .line 110
    .line 111
    move/from16 v30, v11

    .line 112
    .line 113
    move/from16 v31, v12

    .line 114
    .line 115
    :cond_3
    :goto_3
    move/from16 v3, v18

    .line 116
    .line 117
    goto/16 :goto_7

    .line 118
    .line 119
    :cond_4
    const/16 v26, 0x8

    .line 120
    .line 121
    iget-object v15, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->g:Landroidx/collection/MutableScatterMap;

    .line 122
    .line 123
    if-nez v15, :cond_5

    .line 124
    .line 125
    move/from16 v32, v1

    .line 126
    .line 127
    move-object/from16 v33, v2

    .line 128
    .line 129
    move/from16 v27, v6

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    move/from16 v27, v6

    .line 133
    .line 134
    instance-of v6, v3, Landroidx/compose/runtime/DerivedState;

    .line 135
    .line 136
    if-eqz v6, :cond_6

    .line 137
    .line 138
    check-cast v3, Landroidx/compose/runtime/DerivedState;

    .line 139
    .line 140
    invoke-static {v3, v15}, Landroidx/compose/runtime/RecomposeScopeImpl;->a(Landroidx/compose/runtime/DerivedState;Landroidx/collection/MutableScatterMap;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    move/from16 v32, v1

    .line 145
    .line 146
    move-object/from16 v33, v2

    .line 147
    .line 148
    move/from16 v34, v8

    .line 149
    .line 150
    move/from16 v30, v11

    .line 151
    .line 152
    move/from16 v31, v12

    .line 153
    .line 154
    goto/16 :goto_7

    .line 155
    .line 156
    :cond_6
    instance-of v6, v3, Landroidx/collection/ScatterSet;

    .line 157
    .line 158
    if-eqz v6, :cond_d

    .line 159
    .line 160
    check-cast v3, Landroidx/collection/ScatterSet;

    .line 161
    .line 162
    invoke-virtual {v3}, Landroidx/collection/ScatterSet;->c()Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_b

    .line 167
    .line 168
    iget-object v6, v3, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 169
    .line 170
    iget-object v3, v3, Landroidx/collection/ScatterSet;->a:[J

    .line 171
    .line 172
    move-object/from16 v28, v6

    .line 173
    .line 174
    array-length v6, v3

    .line 175
    add-int/lit8 v6, v6, -0x2

    .line 176
    .line 177
    if-ltz v6, :cond_b

    .line 178
    .line 179
    move-object/from16 v29, v3

    .line 180
    .line 181
    move/from16 v30, v11

    .line 182
    .line 183
    move/from16 v31, v12

    .line 184
    .line 185
    const/4 v3, 0x0

    .line 186
    :goto_4
    aget-wide v11, v29, v3

    .line 187
    .line 188
    move/from16 v32, v1

    .line 189
    .line 190
    move-object/from16 v33, v2

    .line 191
    .line 192
    not-long v1, v11

    .line 193
    shl-long v1, v1, v23

    .line 194
    .line 195
    and-long/2addr v1, v11

    .line 196
    and-long v1, v1, v24

    .line 197
    .line 198
    cmp-long v1, v1, v24

    .line 199
    .line 200
    if-eqz v1, :cond_a

    .line 201
    .line 202
    sub-int v1, v3, v6

    .line 203
    .line 204
    not-int v1, v1

    .line 205
    ushr-int/lit8 v1, v1, 0x1f

    .line 206
    .line 207
    rsub-int/lit8 v1, v1, 0x8

    .line 208
    .line 209
    const/4 v2, 0x0

    .line 210
    :goto_5
    if-ge v2, v1, :cond_9

    .line 211
    .line 212
    and-long v34, v11, v21

    .line 213
    .line 214
    cmp-long v34, v34, v19

    .line 215
    .line 216
    if-gez v34, :cond_7

    .line 217
    .line 218
    shl-int/lit8 v34, v3, 0x3

    .line 219
    .line 220
    add-int v34, v34, v2

    .line 221
    .line 222
    move/from16 v35, v2

    .line 223
    .line 224
    aget-object v2, v28, v34

    .line 225
    .line 226
    move/from16 v34, v8

    .line 227
    .line 228
    instance-of v8, v2, Landroidx/compose/runtime/DerivedState;

    .line 229
    .line 230
    if-eqz v8, :cond_3

    .line 231
    .line 232
    check-cast v2, Landroidx/compose/runtime/DerivedState;

    .line 233
    .line 234
    invoke-static {v2, v15}, Landroidx/compose/runtime/RecomposeScopeImpl;->a(Landroidx/compose/runtime/DerivedState;Landroidx/collection/MutableScatterMap;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_8

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_7
    move/from16 v35, v2

    .line 242
    .line 243
    move/from16 v34, v8

    .line 244
    .line 245
    :cond_8
    shr-long v11, v11, v26

    .line 246
    .line 247
    add-int/lit8 v2, v35, 0x1

    .line 248
    .line 249
    move/from16 v8, v34

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_9
    move/from16 v34, v8

    .line 253
    .line 254
    move/from16 v2, v26

    .line 255
    .line 256
    if-ne v1, v2, :cond_c

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_a
    move/from16 v34, v8

    .line 260
    .line 261
    :goto_6
    if-eq v3, v6, :cond_c

    .line 262
    .line 263
    add-int/lit8 v3, v3, 0x1

    .line 264
    .line 265
    move/from16 v1, v32

    .line 266
    .line 267
    move-object/from16 v2, v33

    .line 268
    .line 269
    move/from16 v8, v34

    .line 270
    .line 271
    const/16 v26, 0x8

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_b
    move/from16 v32, v1

    .line 275
    .line 276
    move-object/from16 v33, v2

    .line 277
    .line 278
    move/from16 v34, v8

    .line 279
    .line 280
    move/from16 v30, v11

    .line 281
    .line 282
    move/from16 v31, v12

    .line 283
    .line 284
    :cond_c
    const/4 v3, 0x0

    .line 285
    goto :goto_7

    .line 286
    :cond_d
    move/from16 v32, v1

    .line 287
    .line 288
    move-object/from16 v33, v2

    .line 289
    .line 290
    goto/16 :goto_2

    .line 291
    .line 292
    :goto_7
    if-eqz v3, :cond_20

    .line 293
    .line 294
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 295
    .line 296
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->r(I)V

    .line 297
    .line 298
    .line 299
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 300
    .line 301
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 302
    .line 303
    invoke-virtual {v0, v7, v1, v4}, Landroidx/compose/runtime/GapComposer;->J(III)V

    .line 304
    .line 305
    .line 306
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 307
    .line 308
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    :goto_8
    if-eq v2, v4, :cond_e

    .line 313
    .line 314
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 315
    .line 316
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-nez v3, :cond_e

    .line 321
    .line 322
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 323
    .line 324
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    goto :goto_8

    .line 329
    :cond_e
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 330
    .line 331
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-eqz v3, :cond_f

    .line 336
    .line 337
    const/4 v3, 0x0

    .line 338
    goto :goto_9

    .line 339
    :cond_f
    move/from16 v3, v34

    .line 340
    .line 341
    :goto_9
    if-ne v2, v1, :cond_10

    .line 342
    .line 343
    goto :goto_c

    .line 344
    :cond_10
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->i0(I)I

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    iget-object v7, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 349
    .line 350
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->o(I)I

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    sub-int/2addr v6, v7

    .line 355
    add-int/2addr v6, v3

    .line 356
    :cond_11
    if-ge v3, v6, :cond_13

    .line 357
    .line 358
    if-eq v2, v14, :cond_13

    .line 359
    .line 360
    add-int/lit8 v2, v2, 0x1

    .line 361
    .line 362
    :goto_a
    if-ge v2, v14, :cond_13

    .line 363
    .line 364
    iget-object v7, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 365
    .line 366
    iget-object v8, v7, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 367
    .line 368
    mul-int/lit8 v11, v2, 0x5

    .line 369
    .line 370
    add-int/lit8 v11, v11, 0x3

    .line 371
    .line 372
    aget v8, v8, v11

    .line 373
    .line 374
    add-int/2addr v8, v2

    .line 375
    if-lt v14, v8, :cond_11

    .line 376
    .line 377
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    .line 378
    .line 379
    .line 380
    move-result v7

    .line 381
    if-eqz v7, :cond_12

    .line 382
    .line 383
    move/from16 v2, v18

    .line 384
    .line 385
    goto :goto_b

    .line 386
    :cond_12
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->i0(I)I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    :goto_b
    add-int/2addr v3, v2

    .line 391
    move v2, v8

    .line 392
    goto :goto_a

    .line 393
    :cond_13
    :goto_c
    iput v3, v0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 394
    .line 395
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->E(I)I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    iput v2, v0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 400
    .line 401
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 402
    .line 403
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    const-wide/16 v6, 0x0

    .line 408
    .line 409
    move/from16 v8, v17

    .line 410
    .line 411
    const/4 v3, 0x0

    .line 412
    :goto_d
    if-ltz v2, :cond_1c

    .line 413
    .line 414
    if-ne v2, v4, :cond_14

    .line 415
    .line 416
    invoke-static {v9, v10, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 417
    .line 418
    .line 419
    move-result-wide v2

    .line 420
    :goto_e
    xor-long/2addr v6, v2

    .line 421
    goto/16 :goto_12

    .line 422
    .line 423
    :cond_14
    iget-object v11, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 424
    .line 425
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k(I)Z

    .line 426
    .line 427
    .line 428
    move-result v12

    .line 429
    iget-object v14, v11, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 430
    .line 431
    if-eqz v12, :cond_17

    .line 432
    .line 433
    invoke-virtual {v11, v14, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p([II)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v11

    .line 437
    if-eqz v11, :cond_16

    .line 438
    .line 439
    instance-of v12, v11, Ljava/lang/Enum;

    .line 440
    .line 441
    if-eqz v12, :cond_15

    .line 442
    .line 443
    check-cast v11, Ljava/lang/Enum;

    .line 444
    .line 445
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 446
    .line 447
    .line 448
    move-result v11

    .line 449
    goto :goto_10

    .line 450
    :cond_15
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    .line 451
    .line 452
    .line 453
    move-result v11

    .line 454
    goto :goto_10

    .line 455
    :cond_16
    const/4 v11, 0x0

    .line 456
    goto :goto_10

    .line 457
    :cond_17
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i(I)I

    .line 458
    .line 459
    .line 460
    move-result v12

    .line 461
    const/16 v15, 0xcf

    .line 462
    .line 463
    if-ne v12, v15, :cond_19

    .line 464
    .line 465
    invoke-virtual {v11, v14, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b([II)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v11

    .line 469
    if-eqz v11, :cond_19

    .line 470
    .line 471
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 472
    .line 473
    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v14

    .line 477
    if-eqz v14, :cond_18

    .line 478
    .line 479
    goto :goto_f

    .line 480
    :cond_18
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    .line 481
    .line 482
    .line 483
    move-result v11

    .line 484
    goto :goto_10

    .line 485
    :cond_19
    :goto_f
    move v11, v12

    .line 486
    :goto_10
    const v12, 0x78cc281

    .line 487
    .line 488
    .line 489
    if-ne v11, v12, :cond_1a

    .line 490
    .line 491
    int-to-long v11, v11

    .line 492
    invoke-static {v11, v12, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 493
    .line 494
    .line 495
    move-result-wide v2

    .line 496
    goto :goto_e

    .line 497
    :cond_1a
    iget-object v12, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 498
    .line 499
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k(I)Z

    .line 500
    .line 501
    .line 502
    move-result v12

    .line 503
    if-eqz v12, :cond_1b

    .line 504
    .line 505
    const/4 v12, 0x0

    .line 506
    goto :goto_11

    .line 507
    :cond_1b
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->E(I)I

    .line 508
    .line 509
    .line 510
    move-result v12

    .line 511
    :goto_11
    int-to-long v14, v11

    .line 512
    invoke-static {v14, v15, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 513
    .line 514
    .line 515
    move-result-wide v14

    .line 516
    xor-long/2addr v6, v14

    .line 517
    int-to-long v11, v12

    .line 518
    invoke-static {v11, v12, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 519
    .line 520
    .line 521
    move-result-wide v11

    .line 522
    xor-long/2addr v6, v11

    .line 523
    add-int/lit8 v8, v8, 0x6

    .line 524
    .line 525
    rem-int/lit8 v8, v8, 0x40

    .line 526
    .line 527
    add-int/lit8 v3, v3, 0x6

    .line 528
    .line 529
    rem-int/lit8 v3, v3, 0x40

    .line 530
    .line 531
    iget-object v11, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 532
    .line 533
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    goto :goto_d

    .line 538
    :cond_1c
    :goto_12
    iput-wide v6, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 539
    .line 540
    const/4 v2, 0x0

    .line 541
    iput-object v2, v0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 542
    .line 543
    move-object/from16 v3, v33

    .line 544
    .line 545
    iget-object v3, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 546
    .line 547
    if-eqz v3, :cond_1f

    .line 548
    .line 549
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    invoke-interface {v3, v0, v6}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    iput-object v2, v0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 557
    .line 558
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 559
    .line 560
    iget-object v6, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 561
    .line 562
    aget v6, v6, v27

    .line 563
    .line 564
    add-int/2addr v6, v4

    .line 565
    iget v7, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 566
    .line 567
    if-lt v7, v4, :cond_1d

    .line 568
    .line 569
    if-gt v7, v6, :cond_1d

    .line 570
    .line 571
    move/from16 v8, v18

    .line 572
    .line 573
    goto :goto_13

    .line 574
    :cond_1d
    const/4 v8, 0x0

    .line 575
    :goto_13
    if-nez v8, :cond_1e

    .line 576
    .line 577
    new-instance v8, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    const-string v11, "Index "

    .line 580
    .line 581
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    const-string v11, " is not a parent of "

    .line 588
    .line 589
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v7

    .line 599
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    :cond_1e
    iput v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 603
    .line 604
    iput v6, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    .line 605
    .line 606
    const/4 v6, 0x0

    .line 607
    iput v6, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l:I

    .line 608
    .line 609
    iput v6, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->m:I

    .line 610
    .line 611
    move v7, v1

    .line 612
    move/from16 v16, v18

    .line 613
    .line 614
    goto/16 :goto_1d

    .line 615
    .line 616
    :cond_1f
    const-string v0, "Invalid restart scope"

    .line 617
    .line 618
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    return-void

    .line 622
    :cond_20
    move-object/from16 v3, v33

    .line 623
    .line 624
    const/4 v2, 0x0

    .line 625
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->E:Ljava/util/ArrayList;

    .line 626
    .line 627
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    iget-object v6, v0, Landroidx/compose/runtime/GapComposer;->g:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 631
    .line 632
    invoke-virtual {v6}, Landroidx/compose/runtime/CompositionObserverHolder;->a()V

    .line 633
    .line 634
    .line 635
    iget-object v6, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->a:Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 636
    .line 637
    if-eqz v6, :cond_25

    .line 638
    .line 639
    iget-object v8, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->f:Landroidx/collection/MutableObjectIntMap;

    .line 640
    .line 641
    if-eqz v8, :cond_25

    .line 642
    .line 643
    move/from16 v11, v18

    .line 644
    .line 645
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/RecomposeScopeImpl;->e(Z)V

    .line 646
    .line 647
    .line 648
    :try_start_0
    iget-object v11, v8, Landroidx/collection/ObjectIntMap;->b:[Ljava/lang/Object;

    .line 649
    .line 650
    iget-object v12, v8, Landroidx/collection/ObjectIntMap;->c:[I

    .line 651
    .line 652
    iget-object v8, v8, Landroidx/collection/ObjectIntMap;->a:[J

    .line 653
    .line 654
    array-length v14, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 655
    add-int/lit8 v14, v14, -0x2

    .line 656
    .line 657
    move-object/from16 v33, v3

    .line 658
    .line 659
    if-ltz v14, :cond_23

    .line 660
    .line 661
    const/4 v15, 0x0

    .line 662
    :goto_14
    :try_start_1
    aget-wide v2, v8, v15

    .line 663
    .line 664
    move-object/from16 v28, v11

    .line 665
    .line 666
    move-object/from16 v29, v12

    .line 667
    .line 668
    not-long v11, v2

    .line 669
    shl-long v11, v11, v23

    .line 670
    .line 671
    and-long/2addr v11, v2

    .line 672
    and-long v11, v11, v24

    .line 673
    .line 674
    cmp-long v11, v11, v24

    .line 675
    .line 676
    if-eqz v11, :cond_24

    .line 677
    .line 678
    sub-int v11, v15, v14

    .line 679
    .line 680
    not-int v11, v11

    .line 681
    ushr-int/lit8 v11, v11, 0x1f

    .line 682
    .line 683
    const/16 v26, 0x8

    .line 684
    .line 685
    rsub-int/lit8 v11, v11, 0x8

    .line 686
    .line 687
    const/4 v12, 0x0

    .line 688
    :goto_15
    if-ge v12, v11, :cond_22

    .line 689
    .line 690
    and-long v35, v2, v21

    .line 691
    .line 692
    cmp-long v35, v35, v19

    .line 693
    .line 694
    if-gez v35, :cond_21

    .line 695
    .line 696
    shl-int/lit8 v35, v15, 0x3

    .line 697
    .line 698
    add-int v35, v35, v12

    .line 699
    .line 700
    move-wide/from16 v36, v2

    .line 701
    .line 702
    aget-object v2, v28, v35

    .line 703
    .line 704
    aget v3, v29, v35

    .line 705
    .line 706
    invoke-interface {v6, v2}, Landroidx/compose/runtime/RecomposeScopeOwner;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    .line 708
    .line 709
    :goto_16
    const/16 v2, 0x8

    .line 710
    .line 711
    goto :goto_18

    .line 712
    :catchall_0
    move-exception v0

    .line 713
    move-object/from16 v3, v33

    .line 714
    .line 715
    :goto_17
    const/4 v6, 0x0

    .line 716
    goto :goto_1b

    .line 717
    :cond_21
    move-wide/from16 v36, v2

    .line 718
    .line 719
    goto :goto_16

    .line 720
    :goto_18
    shr-long v35, v36, v2

    .line 721
    .line 722
    add-int/lit8 v12, v12, 0x1

    .line 723
    .line 724
    move-wide/from16 v2, v35

    .line 725
    .line 726
    goto :goto_15

    .line 727
    :cond_22
    const/16 v2, 0x8

    .line 728
    .line 729
    if-ne v11, v2, :cond_23

    .line 730
    .line 731
    goto :goto_19

    .line 732
    :cond_23
    move-object/from16 v3, v33

    .line 733
    .line 734
    const/4 v6, 0x0

    .line 735
    goto :goto_1a

    .line 736
    :cond_24
    const/16 v2, 0x8

    .line 737
    .line 738
    :goto_19
    if-eq v15, v14, :cond_23

    .line 739
    .line 740
    add-int/lit8 v15, v15, 0x1

    .line 741
    .line 742
    move-object/from16 v11, v28

    .line 743
    .line 744
    move-object/from16 v12, v29

    .line 745
    .line 746
    goto :goto_14

    .line 747
    :goto_1a
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/RecomposeScopeImpl;->e(Z)V

    .line 748
    .line 749
    .line 750
    goto :goto_1c

    .line 751
    :catchall_1
    move-exception v0

    .line 752
    goto :goto_17

    .line 753
    :goto_1b
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/RecomposeScopeImpl;->e(Z)V

    .line 754
    .line 755
    .line 756
    throw v0

    .line 757
    :cond_25
    const/4 v6, 0x0

    .line 758
    :goto_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 759
    .line 760
    .line 761
    move-result v2

    .line 762
    const/16 v18, 0x1

    .line 763
    .line 764
    add-int/lit8 v2, v2, -0x1

    .line 765
    .line 766
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    :goto_1d
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 770
    .line 771
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 772
    .line 773
    invoke-static {v1, v13}, Landroidx/compose/runtime/GapComposerKt;->c(ILjava/util/List;)I

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    if-gez v1, :cond_26

    .line 778
    .line 779
    add-int/lit8 v1, v1, 0x1

    .line 780
    .line 781
    neg-int v1, v1

    .line 782
    :cond_26
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 783
    .line 784
    .line 785
    move-result v2

    .line 786
    if-ge v1, v2, :cond_27

    .line 787
    .line 788
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v1

    .line 792
    check-cast v1, Landroidx/compose/runtime/Invalidation;

    .line 793
    .line 794
    iget v2, v1, Landroidx/compose/runtime/Invalidation;->b:I

    .line 795
    .line 796
    if-ge v2, v5, :cond_27

    .line 797
    .line 798
    move-object v3, v1

    .line 799
    goto :goto_1e

    .line 800
    :cond_27
    const/4 v3, 0x0

    .line 801
    :goto_1e
    move/from16 v2, v18

    .line 802
    .line 803
    move/from16 v6, v27

    .line 804
    .line 805
    move/from16 v11, v30

    .line 806
    .line 807
    move/from16 v12, v31

    .line 808
    .line 809
    move/from16 v1, v32

    .line 810
    .line 811
    move/from16 v8, v34

    .line 812
    .line 813
    goto/16 :goto_1

    .line 814
    .line 815
    :cond_28
    move/from16 v32, v1

    .line 816
    .line 817
    move/from16 v34, v8

    .line 818
    .line 819
    move/from16 v30, v11

    .line 820
    .line 821
    move/from16 v31, v12

    .line 822
    .line 823
    if-eqz v16, :cond_29

    .line 824
    .line 825
    invoke-virtual {v0, v7, v4, v4}, Landroidx/compose/runtime/GapComposer;->J(III)V

    .line 826
    .line 827
    .line 828
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 829
    .line 830
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->t()V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->i0(I)I

    .line 834
    .line 835
    .line 836
    move-result v1

    .line 837
    add-int v8, v34, v1

    .line 838
    .line 839
    iput v8, v0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 840
    .line 841
    add-int v11, v30, v1

    .line 842
    .line 843
    iput v11, v0, Landroidx/compose/runtime/GapComposer;->l:I

    .line 844
    .line 845
    move/from16 v1, v31

    .line 846
    .line 847
    iput v1, v0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 848
    .line 849
    goto :goto_1f

    .line 850
    :cond_29
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->P()V

    .line 851
    .line 852
    .line 853
    :goto_1f
    iput-wide v9, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 854
    .line 855
    move/from16 v1, v32

    .line 856
    .line 857
    iput-boolean v1, v0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 858
    .line 859
    return-void
.end method

.method public final H()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 2
    .line 3
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d:Landroidx/compose/runtime/IntStack;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    iget-object v3, v2, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 19
    .line 20
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    .line 21
    .line 22
    if-lez v4, :cond_1

    .line 23
    .line 24
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 25
    .line 26
    const/4 v5, -0x2

    .line 27
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/IntStack;->a(I)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eq v5, v4, :cond_1

    .line 32
    .line 33
    iget-boolean v5, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    if-nez v5, :cond_0

    .line 37
    .line 38
    iget-boolean v5, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 46
    .line 47
    iget-object v5, v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 48
    .line 49
    sget-object v7, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureRootGroupStarted;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureRootGroupStarted;

    .line 50
    .line 51
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 52
    .line 53
    .line 54
    iput-boolean v6, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 55
    .line 56
    :cond_0
    if-lez v4, :cond_1

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/IntStack;->c(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 69
    .line 70
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 71
    .line 72
    sget-object v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureGroupStarted;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureGroupStarted;

    .line 73
    .line 74
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v0, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iput-boolean v6, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 81
    .line 82
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 83
    .line 84
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 85
    .line 86
    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveCurrentGroup;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 89
    .line 90
    .line 91
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    .line 92
    .line 93
    iget-object v1, v2, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 94
    .line 95
    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 96
    .line 97
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 98
    .line 99
    mul-int/lit8 v1, v1, 0x5

    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x3

    .line 102
    .line 103
    aget v1, v2, v1

    .line 104
    .line 105
    add-int/2addr v1, v0

    .line 106
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    .line 107
    .line 108
    return-void
.end method

.method public final I(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 13
    .line 14
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 15
    .line 16
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final J(III)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eq p1, p3, :cond_9

    .line 7
    .line 8
    if-ne p2, p3, :cond_1

    .line 9
    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v1, p2, :cond_2

    .line 17
    .line 18
    move p3, p2

    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_2
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v1, p1, :cond_3

    .line 26
    .line 27
    :goto_0
    move p3, p1

    .line 28
    goto :goto_6

    .line 29
    :cond_3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ne v1, v2, :cond_4

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    goto :goto_6

    .line 44
    :cond_4
    const/4 v1, 0x0

    .line 45
    move v2, p1

    .line 46
    move v3, v1

    .line 47
    :goto_1
    if-lez v2, :cond_5

    .line 48
    .line 49
    if-eq v2, p3, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    move v2, p2

    .line 59
    move v4, v1

    .line 60
    :goto_2
    if-lez v2, :cond_6

    .line 61
    .line 62
    if-eq v2, p3, :cond_6

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_6
    sub-int p3, v3, v4

    .line 72
    .line 73
    move v5, p1

    .line 74
    move v2, v1

    .line 75
    :goto_3
    if-ge v2, p3, :cond_7

    .line 76
    .line 77
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_7
    sub-int/2addr v4, v3

    .line 85
    move p3, p2

    .line 86
    :goto_4
    if-ge v1, v4, :cond_8

    .line 87
    .line 88
    invoke-virtual {v0, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_8
    move v1, p3

    .line 96
    move p3, v5

    .line 97
    :goto_5
    if-eq p3, v1, :cond_9

    .line 98
    .line 99
    invoke-virtual {v0, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    goto :goto_5

    .line 108
    :cond_9
    :goto_6
    if-lez p1, :cond_b

    .line 109
    .line 110
    if-eq p1, p3, :cond_b

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_a

    .line 117
    .line 118
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a()V

    .line 121
    .line 122
    .line 123
    :cond_a
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    goto :goto_6

    .line 128
    :cond_b
    invoke-virtual {p0, p2, p3}, Landroidx/compose/runtime/GapComposer;->o(II)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final K()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->m()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    instance-of p0, v0, Landroidx/compose/runtime/ReusableRememberObserverHolder;

    .line 28
    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    :cond_1
    return-object v1

    .line 32
    :cond_2
    instance-of p0, v0, Landroidx/compose/runtime/RememberObserverHolder;

    .line 33
    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    check-cast v0, Landroidx/compose/runtime/RememberObserverHolder;

    .line 37
    .line 38
    check-cast v0, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 39
    .line 40
    iget-object p0, v0, Landroidx/compose/runtime/GapRememberObserverHolder;->a:Landroidx/compose/runtime/RememberObserver;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_3
    return-object v0
.end method

.method public final L(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->n(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    .line 21
    .line 22
    .line 23
    iget-object v3, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->h:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    invoke-static {p0, p1, v0, v2}, Landroidx/compose/runtime/GapComposer;->M(Landroidx/compose/runtime/GapComposer;IZI)I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    .line 33
    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final N(IZ)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p1, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_5

    .line 5
    .line 6
    iget-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 11
    .line 12
    if-eqz p1, :cond_5

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->P:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->w()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/ShouldPauseCallback;->a()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_7

    .line 31
    .line 32
    iget p1, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 33
    .line 34
    and-int/lit16 v2, p1, 0x200

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    return v0

    .line 39
    :cond_3
    or-int/lit8 v0, p1, 0x1

    .line 40
    .line 41
    iput v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 42
    .line 43
    iget-boolean v2, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 44
    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    or-int/lit16 p1, p1, 0x81

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    and-int/lit16 p1, v0, -0x81

    .line 51
    .line 52
    :goto_0
    or-int/lit16 p1, p1, 0x100

    .line 53
    .line 54
    iput p1, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 55
    .line 56
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 57
    .line 58
    iget-object p1, p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 59
    .line 60
    iget-object p1, p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 61
    .line 62
    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RememberPausingScope;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RememberPausingScope;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v1, p2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    .line 71
    .line 72
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/CompositionContext;->q(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    .line 73
    .line 74
    .line 75
    return v1

    .line 76
    :cond_5
    if-nez p2, :cond_7

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->z()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-nez p0, :cond_6

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_6
    return v1

    .line 86
    :cond_7
    :goto_1
    return v0
.end method

.method public final O()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/runtime/GapComposer;->l:I

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->s()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->l:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 28
    .line 29
    iget v3, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 30
    .line 31
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    if-ge v3, v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p([II)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v3, v5

    .line 42
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->f()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget v6, p0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 47
    .line 48
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 49
    .line 50
    const/16 v8, 0xcf

    .line 51
    .line 52
    const/4 v9, 0x3

    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    if-ne v1, v8, :cond_2

    .line 58
    .line 59
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-nez v10, :cond_2

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    iget-wide v11, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 70
    .line 71
    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 72
    .line 73
    .line 74
    move-result-wide v11

    .line 75
    int-to-long v13, v10

    .line 76
    xor-long v10, v11, v13

    .line 77
    .line 78
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 79
    .line 80
    .line 81
    move-result-wide v10

    .line 82
    int-to-long v12, v6

    .line 83
    xor-long/2addr v10, v12

    .line 84
    iput-wide v10, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_2
    iget-wide v10, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 88
    .line 89
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 90
    .line 91
    .line 92
    move-result-wide v10

    .line 93
    int-to-long v12, v1

    .line 94
    xor-long/2addr v10, v12

    .line 95
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 96
    .line 97
    .line 98
    move-result-wide v10

    .line 99
    int-to-long v12, v6

    .line 100
    xor-long/2addr v10, v12

    .line 101
    :goto_1
    iput-wide v10, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_3
    instance-of v10, v3, Ljava/lang/Enum;

    .line 105
    .line 106
    if-eqz v10, :cond_4

    .line 107
    .line 108
    move-object v10, v3

    .line 109
    check-cast v10, Ljava/lang/Enum;

    .line 110
    .line 111
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    :goto_2
    iget-wide v11, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 116
    .line 117
    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 118
    .line 119
    .line 120
    move-result-wide v11

    .line 121
    int-to-long v13, v10

    .line 122
    xor-long v10, v11, v13

    .line 123
    .line 124
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 125
    .line 126
    .line 127
    move-result-wide v10

    .line 128
    goto :goto_1

    .line 129
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    goto :goto_2

    .line 134
    :goto_3
    iget v10, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 135
    .line 136
    mul-int/lit8 v10, v10, 0x5

    .line 137
    .line 138
    const/4 v11, 0x1

    .line 139
    add-int/2addr v10, v11

    .line 140
    aget v2, v2, v10

    .line 141
    .line 142
    const/high16 v10, 0x40000000    # 2.0f

    .line 143
    .line 144
    and-int/2addr v2, v10

    .line 145
    if-eqz v2, :cond_5

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_5
    const/4 v11, 0x0

    .line 149
    :goto_4
    invoke-virtual {p0, v5, v11}, Landroidx/compose/runtime/GapComposer;->V(Ljava/lang/Object;Z)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->G()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->e()V

    .line 156
    .line 157
    .line 158
    if-nez v3, :cond_7

    .line 159
    .line 160
    if-eqz v4, :cond_6

    .line 161
    .line 162
    if-ne v1, v8, :cond_6

    .line 163
    .line 164
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_6

    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    iget-wide v1, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 175
    .line 176
    int-to-long v3, v6

    .line 177
    xor-long/2addr v1, v3

    .line 178
    invoke-static {v1, v2, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 179
    .line 180
    .line 181
    move-result-wide v1

    .line 182
    int-to-long v3, v0

    .line 183
    xor-long v0, v1, v3

    .line 184
    .line 185
    invoke-static {v0, v1, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 186
    .line 187
    .line 188
    move-result-wide v0

    .line 189
    iput-wide v0, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 190
    .line 191
    return-void

    .line 192
    :cond_6
    iget-wide v2, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 193
    .line 194
    int-to-long v4, v6

    .line 195
    xor-long/2addr v2, v4

    .line 196
    invoke-static {v2, v3, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 197
    .line 198
    .line 199
    move-result-wide v2

    .line 200
    int-to-long v0, v1

    .line 201
    xor-long/2addr v0, v2

    .line 202
    invoke-static {v0, v1, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 203
    .line 204
    .line 205
    move-result-wide v0

    .line 206
    iput-wide v0, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 207
    .line 208
    return-void

    .line 209
    :cond_7
    instance-of v0, v3, Ljava/lang/Enum;

    .line 210
    .line 211
    if-eqz v0, :cond_8

    .line 212
    .line 213
    check-cast v3, Ljava/lang/Enum;

    .line 214
    .line 215
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    iget-wide v1, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 220
    .line 221
    invoke-static {v1, v2, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 222
    .line 223
    .line 224
    move-result-wide v1

    .line 225
    int-to-long v3, v0

    .line 226
    xor-long v0, v1, v3

    .line 227
    .line 228
    invoke-static {v0, v1, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 229
    .line 230
    .line 231
    move-result-wide v0

    .line 232
    iput-wide v0, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 233
    .line 234
    return-void

    .line 235
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    iget-wide v1, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 240
    .line 241
    invoke-static {v1, v2, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 242
    .line 243
    .line 244
    move-result-wide v1

    .line 245
    int-to-long v3, v0

    .line 246
    xor-long v0, v1, v3

    .line 247
    .line 248
    invoke-static {v0, v1, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 249
    .line 250
    .line 251
    move-result-wide v0

    .line 252
    iput-wide v0, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 253
    .line 254
    return-void
.end method

.method public final P()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 4
    .line 5
    if-ltz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 8
    .line 9
    mul-int/lit8 v1, v1, 0x5

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    aget v1, v2, v1

    .line 14
    .line 15
    const v2, 0x3ffffff

    .line 16
    .line 17
    .line 18
    and-int/2addr v1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->l:I

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->t()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final Q()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/runtime/GapComposer;->l:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "No nodes can be emitted before calling skipAndEndGroup"

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 12
    .line 13
    if-nez v0, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->w()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 22
    .line 23
    and-int/lit16 v2, v1, 0x80

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    or-int/lit8 v1, v1, 0x10

    .line 29
    .line 30
    iput v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 31
    .line 32
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->P()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->G()V

    .line 45
    .line 46
    .line 47
    :cond_4
    return-void
.end method

.method public final R(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    iget-boolean v7, v0, Landroidx/compose/runtime/GapComposer;->r:Z

    .line 17
    .line 18
    if-eqz v7, :cond_0

    .line 19
    .line 20
    const-string v7, "A call to createNode(), emitNode() or useNode() expected"

    .line 21
    .line 22
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget v7, v0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 26
    .line 27
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 28
    .line 29
    const/4 v9, 0x3

    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    const/16 v10, 0xcf

    .line 35
    .line 36
    if-ne v1, v10, :cond_1

    .line 37
    .line 38
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    if-nez v10, :cond_1

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    iget-wide v11, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 49
    .line 50
    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 51
    .line 52
    .line 53
    move-result-wide v11

    .line 54
    int-to-long v13, v10

    .line 55
    xor-long v10, v11, v13

    .line 56
    .line 57
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 58
    .line 59
    .line 60
    move-result-wide v9

    .line 61
    int-to-long v11, v7

    .line 62
    xor-long/2addr v9, v11

    .line 63
    iput-wide v9, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    iget-wide v10, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 67
    .line 68
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 69
    .line 70
    .line 71
    move-result-wide v10

    .line 72
    int-to-long v12, v1

    .line 73
    xor-long/2addr v10, v12

    .line 74
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 75
    .line 76
    .line 77
    move-result-wide v9

    .line 78
    int-to-long v11, v7

    .line 79
    xor-long/2addr v9, v11

    .line 80
    :goto_0
    iput-wide v9, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    instance-of v7, v3, Ljava/lang/Enum;

    .line 84
    .line 85
    if-eqz v7, :cond_3

    .line 86
    .line 87
    move-object v7, v3

    .line 88
    check-cast v7, Ljava/lang/Enum;

    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    :goto_1
    iget-wide v10, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 95
    .line 96
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 97
    .line 98
    .line 99
    move-result-wide v10

    .line 100
    int-to-long v12, v7

    .line 101
    xor-long/2addr v10, v12

    .line 102
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 103
    .line 104
    .line 105
    move-result-wide v9

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    goto :goto_1

    .line 112
    :goto_2
    const/4 v7, 0x1

    .line 113
    if-nez v3, :cond_4

    .line 114
    .line 115
    iget v9, v0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 116
    .line 117
    add-int/2addr v9, v7

    .line 118
    iput v9, v0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 119
    .line 120
    :cond_4
    const/4 v9, 0x0

    .line 121
    if-eqz v2, :cond_5

    .line 122
    .line 123
    move v10, v7

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    move v10, v9

    .line 126
    :goto_3
    iget-boolean v11, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 127
    .line 128
    const/4 v12, -0x2

    .line 129
    const/4 v13, 0x0

    .line 130
    if-eqz v11, :cond_b

    .line 131
    .line 132
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 133
    .line 134
    iget v11, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 135
    .line 136
    add-int/2addr v11, v7

    .line 137
    iput v11, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 138
    .line 139
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 140
    .line 141
    iget v11, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    .line 142
    .line 143
    if-eqz v10, :cond_6

    .line 144
    .line 145
    invoke-virtual {v2, v1, v8, v8, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_6
    if-eqz v4, :cond_8

    .line 150
    .line 151
    if-nez v3, :cond_7

    .line 152
    .line 153
    move-object v3, v8

    .line 154
    :cond_7
    invoke-virtual {v2, v1, v3, v4, v9}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_8
    if-nez v3, :cond_9

    .line 159
    .line 160
    move-object v3, v8

    .line 161
    :cond_9
    invoke-virtual {v2, v1, v3, v8, v9}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 162
    .line 163
    .line 164
    :goto_4
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    .line 165
    .line 166
    if-eqz v2, :cond_a

    .line 167
    .line 168
    new-instance v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 169
    .line 170
    sub-int/2addr v12, v11

    .line 171
    invoke-direct {v3, v6, v1, v12, v5}, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;-><init>(Ljava/lang/Object;III)V

    .line 172
    .line 173
    .line 174
    iget v1, v0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 175
    .line 176
    iget v4, v2, Landroidx/compose/runtime/GapPending;->b:I

    .line 177
    .line 178
    sub-int/2addr v1, v4

    .line 179
    iget-object v4, v2, Landroidx/compose/runtime/GapPending;->e:Landroidx/collection/MutableIntObjectMap;

    .line 180
    .line 181
    new-instance v6, Landroidx/compose/runtime/composer/GroupInfo;

    .line 182
    .line 183
    invoke-direct {v6, v5, v1, v9}, Landroidx/compose/runtime/composer/GroupInfo;-><init>(III)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v12, v6}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v2, Landroidx/compose/runtime/GapPending;->d:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    :cond_a
    invoke-virtual {v0, v10, v13}, Landroidx/compose/runtime/GapComposer;->t(ZLandroidx/compose/runtime/GapPending;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_b
    if-eq v2, v7, :cond_c

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_c
    iget-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 202
    .line 203
    if-eqz v2, :cond_d

    .line 204
    .line 205
    move v2, v7

    .line 206
    goto :goto_6

    .line 207
    :cond_d
    :goto_5
    move v2, v9

    .line 208
    :goto_6
    iget-object v11, v0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    .line 209
    .line 210
    if-nez v11, :cond_f

    .line 211
    .line 212
    iget-object v11, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 213
    .line 214
    invoke-virtual {v11}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g()I

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    if-nez v2, :cond_10

    .line 219
    .line 220
    if-ne v11, v1, :cond_10

    .line 221
    .line 222
    iget-object v11, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 223
    .line 224
    iget v14, v11, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 225
    .line 226
    iget v15, v11, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    .line 227
    .line 228
    if-ge v14, v15, :cond_e

    .line 229
    .line 230
    iget-object v15, v11, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 231
    .line 232
    invoke-virtual {v11, v15, v14}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p([II)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    goto :goto_7

    .line 237
    :cond_e
    move-object v11, v13

    .line 238
    :goto_7
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v11

    .line 242
    if-eqz v11, :cond_10

    .line 243
    .line 244
    invoke-virtual {v0, v4, v10}, Landroidx/compose/runtime/GapComposer;->V(Ljava/lang/Object;Z)V

    .line 245
    .line 246
    .line 247
    :cond_f
    move/from16 p2, v2

    .line 248
    .line 249
    goto :goto_b

    .line 250
    :cond_10
    new-instance v11, Landroidx/compose/runtime/GapPending;

    .line 251
    .line 252
    iget-object v14, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 253
    .line 254
    iget-object v15, v14, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 255
    .line 256
    new-instance v5, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .line 260
    .line 261
    iget v13, v14, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 262
    .line 263
    if-lez v13, :cond_12

    .line 264
    .line 265
    :cond_11
    move/from16 p2, v2

    .line 266
    .line 267
    goto :goto_a

    .line 268
    :cond_12
    iget v13, v14, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 269
    .line 270
    :goto_8
    iget v12, v14, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    .line 271
    .line 272
    if-ge v13, v12, :cond_11

    .line 273
    .line 274
    new-instance v12, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 275
    .line 276
    mul-int/lit8 v18, v13, 0x5

    .line 277
    .line 278
    aget v7, v15, v18

    .line 279
    .line 280
    invoke-virtual {v14, v15, v13}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p([II)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    add-int/lit8 v20, v18, 0x1

    .line 285
    .line 286
    aget v20, v15, v20

    .line 287
    .line 288
    const/high16 v21, 0x40000000    # 2.0f

    .line 289
    .line 290
    and-int v21, v20, v21

    .line 291
    .line 292
    if-eqz v21, :cond_13

    .line 293
    .line 294
    move/from16 p2, v2

    .line 295
    .line 296
    const/4 v2, 0x1

    .line 297
    goto :goto_9

    .line 298
    :cond_13
    const v21, 0x3ffffff

    .line 299
    .line 300
    .line 301
    and-int v20, v20, v21

    .line 302
    .line 303
    move/from16 p2, v2

    .line 304
    .line 305
    move/from16 v2, v20

    .line 306
    .line 307
    :goto_9
    invoke-direct {v12, v9, v7, v13, v2}, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;-><init>(Ljava/lang/Object;III)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    add-int/lit8 v18, v18, 0x3

    .line 314
    .line 315
    aget v2, v15, v18

    .line 316
    .line 317
    add-int/2addr v13, v2

    .line 318
    move/from16 v2, p2

    .line 319
    .line 320
    const/4 v7, 0x1

    .line 321
    const/4 v9, 0x0

    .line 322
    goto :goto_8

    .line 323
    :goto_a
    iget v2, v0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 324
    .line 325
    invoke-direct {v11, v2, v5}, Landroidx/compose/runtime/GapPending;-><init>(ILjava/util/ArrayList;)V

    .line 326
    .line 327
    .line 328
    iput-object v11, v0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    .line 329
    .line 330
    :goto_b
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    .line 331
    .line 332
    if-eqz v2, :cond_2b

    .line 333
    .line 334
    iget-object v5, v2, Landroidx/compose/runtime/GapPending;->d:Ljava/util/ArrayList;

    .line 335
    .line 336
    iget-object v7, v2, Landroidx/compose/runtime/GapPending;->e:Landroidx/collection/MutableIntObjectMap;

    .line 337
    .line 338
    iget v9, v2, Landroidx/compose/runtime/GapPending;->b:I

    .line 339
    .line 340
    if-eqz v3, :cond_14

    .line 341
    .line 342
    new-instance v11, Landroidx/compose/runtime/JoinedKey;

    .line 343
    .line 344
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v12

    .line 348
    invoke-direct {v11, v12, v3}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Integer;Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    :goto_c
    iget-object v12, v2, Landroidx/compose/runtime/GapPending;->f:Lkotlin/Lazy;

    .line 357
    .line 358
    invoke-interface {v12}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v12

    .line 362
    check-cast v12, Landroidx/compose/runtime/collection/MultiValueMap;

    .line 363
    .line 364
    iget-object v12, v12, Landroidx/compose/runtime/collection/MultiValueMap;->a:Landroidx/collection/MutableScatterMap;

    .line 365
    .line 366
    invoke-virtual {v12, v11}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v13

    .line 370
    if-nez v13, :cond_15

    .line 371
    .line 372
    const/4 v13, 0x0

    .line 373
    goto :goto_d

    .line 374
    :cond_15
    instance-of v14, v13, Landroidx/collection/MutableObjectList;

    .line 375
    .line 376
    if-eqz v14, :cond_18

    .line 377
    .line 378
    check-cast v13, Landroidx/collection/MutableObjectList;

    .line 379
    .line 380
    const/4 v14, 0x0

    .line 381
    invoke-virtual {v13, v14}, Landroidx/collection/MutableObjectList;->m(I)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v15

    .line 385
    invoke-virtual {v13}, Landroidx/collection/ObjectList;->d()Z

    .line 386
    .line 387
    .line 388
    move-result v14

    .line 389
    if-eqz v14, :cond_16

    .line 390
    .line 391
    invoke-virtual {v12, v11}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    :cond_16
    iget v14, v13, Landroidx/collection/ObjectList;->b:I

    .line 395
    .line 396
    const/4 v3, 0x1

    .line 397
    if-ne v14, v3, :cond_17

    .line 398
    .line 399
    invoke-virtual {v13}, Landroidx/collection/ObjectList;->a()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    invoke-virtual {v12, v11, v3}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    :cond_17
    move-object v13, v15

    .line 407
    goto :goto_d

    .line 408
    :cond_18
    invoke-virtual {v12, v11}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    :goto_d
    check-cast v13, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 412
    .line 413
    if-nez p2, :cond_2c

    .line 414
    .line 415
    if-eqz v13, :cond_2c

    .line 416
    .line 417
    iget v1, v13, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    .line 418
    .line 419
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    invoke-virtual {v7, v1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    check-cast v3, Landroidx/compose/runtime/composer/GroupInfo;

    .line 427
    .line 428
    if-eqz v3, :cond_19

    .line 429
    .line 430
    iget v3, v3, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    .line 431
    .line 432
    goto :goto_e

    .line 433
    :cond_19
    const/4 v3, -0x1

    .line 434
    :goto_e
    add-int/2addr v3, v9

    .line 435
    iput v3, v0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 436
    .line 437
    invoke-virtual {v7, v1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    check-cast v3, Landroidx/compose/runtime/composer/GroupInfo;

    .line 442
    .line 443
    if-eqz v3, :cond_1a

    .line 444
    .line 445
    iget v5, v3, Landroidx/compose/runtime/composer/GroupInfo;->a:I

    .line 446
    .line 447
    goto :goto_f

    .line 448
    :cond_1a
    const/4 v5, -0x1

    .line 449
    :goto_f
    iget v2, v2, Landroidx/compose/runtime/GapPending;->c:I

    .line 450
    .line 451
    sub-int v3, v5, v2

    .line 452
    .line 453
    const/16 v15, 0x8

    .line 454
    .line 455
    if-le v5, v2, :cond_21

    .line 456
    .line 457
    const/16 p1, 0x7

    .line 458
    .line 459
    iget-object v6, v7, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    .line 460
    .line 461
    iget-object v7, v7, Landroidx/collection/IntObjectMap;->a:[J

    .line 462
    .line 463
    const-wide/16 p2, 0x80

    .line 464
    .line 465
    array-length v8, v7

    .line 466
    add-int/lit8 v8, v8, -0x2

    .line 467
    .line 468
    if-ltz v8, :cond_20

    .line 469
    .line 470
    const/4 v9, 0x0

    .line 471
    const-wide/16 v20, 0xff

    .line 472
    .line 473
    :goto_10
    aget-wide v11, v7, v9

    .line 474
    .line 475
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    not-long v13, v11

    .line 481
    shl-long v13, v13, p1

    .line 482
    .line 483
    and-long/2addr v13, v11

    .line 484
    and-long v13, v13, v22

    .line 485
    .line 486
    cmp-long v13, v13, v22

    .line 487
    .line 488
    if-eqz v13, :cond_1f

    .line 489
    .line 490
    sub-int v13, v9, v8

    .line 491
    .line 492
    not-int v13, v13

    .line 493
    ushr-int/lit8 v13, v13, 0x1f

    .line 494
    .line 495
    rsub-int/lit8 v13, v13, 0x8

    .line 496
    .line 497
    const/4 v14, 0x0

    .line 498
    :goto_11
    if-ge v14, v13, :cond_1e

    .line 499
    .line 500
    and-long v24, v11, v20

    .line 501
    .line 502
    cmp-long v16, v24, p2

    .line 503
    .line 504
    if-gez v16, :cond_1c

    .line 505
    .line 506
    shl-int/lit8 v16, v9, 0x3

    .line 507
    .line 508
    add-int v16, v16, v14

    .line 509
    .line 510
    aget-object v16, v6, v16

    .line 511
    .line 512
    move/from16 v18, v15

    .line 513
    .line 514
    move-object/from16 v15, v16

    .line 515
    .line 516
    check-cast v15, Landroidx/compose/runtime/composer/GroupInfo;

    .line 517
    .line 518
    move/from16 v16, v3

    .line 519
    .line 520
    iget v3, v15, Landroidx/compose/runtime/composer/GroupInfo;->a:I

    .line 521
    .line 522
    if-ne v3, v5, :cond_1b

    .line 523
    .line 524
    iput v2, v15, Landroidx/compose/runtime/composer/GroupInfo;->a:I

    .line 525
    .line 526
    goto :goto_12

    .line 527
    :cond_1b
    if-gt v2, v3, :cond_1d

    .line 528
    .line 529
    if-ge v3, v5, :cond_1d

    .line 530
    .line 531
    add-int/lit8 v3, v3, 0x1

    .line 532
    .line 533
    iput v3, v15, Landroidx/compose/runtime/composer/GroupInfo;->a:I

    .line 534
    .line 535
    goto :goto_12

    .line 536
    :cond_1c
    move/from16 v16, v3

    .line 537
    .line 538
    move/from16 v18, v15

    .line 539
    .line 540
    :cond_1d
    :goto_12
    shr-long v11, v11, v18

    .line 541
    .line 542
    add-int/lit8 v14, v14, 0x1

    .line 543
    .line 544
    move/from16 v3, v16

    .line 545
    .line 546
    move/from16 v15, v18

    .line 547
    .line 548
    goto :goto_11

    .line 549
    :cond_1e
    move/from16 v16, v3

    .line 550
    .line 551
    move v3, v15

    .line 552
    if-ne v13, v3, :cond_27

    .line 553
    .line 554
    goto :goto_13

    .line 555
    :cond_1f
    move/from16 v16, v3

    .line 556
    .line 557
    :goto_13
    if-eq v9, v8, :cond_27

    .line 558
    .line 559
    add-int/lit8 v9, v9, 0x1

    .line 560
    .line 561
    move/from16 v3, v16

    .line 562
    .line 563
    const/16 v15, 0x8

    .line 564
    .line 565
    goto :goto_10

    .line 566
    :cond_20
    move/from16 v16, v3

    .line 567
    .line 568
    goto/16 :goto_1a

    .line 569
    .line 570
    :cond_21
    move/from16 v16, v3

    .line 571
    .line 572
    const/16 p1, 0x7

    .line 573
    .line 574
    const-wide/16 p2, 0x80

    .line 575
    .line 576
    const-wide/16 v20, 0xff

    .line 577
    .line 578
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    if-le v2, v5, :cond_27

    .line 584
    .line 585
    iget-object v3, v7, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    .line 586
    .line 587
    iget-object v6, v7, Landroidx/collection/IntObjectMap;->a:[J

    .line 588
    .line 589
    array-length v7, v6

    .line 590
    add-int/lit8 v7, v7, -0x2

    .line 591
    .line 592
    if-ltz v7, :cond_27

    .line 593
    .line 594
    const/4 v8, 0x0

    .line 595
    :goto_14
    aget-wide v11, v6, v8

    .line 596
    .line 597
    not-long v13, v11

    .line 598
    shl-long v13, v13, p1

    .line 599
    .line 600
    and-long/2addr v13, v11

    .line 601
    and-long v13, v13, v22

    .line 602
    .line 603
    cmp-long v9, v13, v22

    .line 604
    .line 605
    if-eqz v9, :cond_26

    .line 606
    .line 607
    sub-int v9, v8, v7

    .line 608
    .line 609
    not-int v9, v9

    .line 610
    ushr-int/lit8 v9, v9, 0x1f

    .line 611
    .line 612
    const/16 v18, 0x8

    .line 613
    .line 614
    rsub-int/lit8 v15, v9, 0x8

    .line 615
    .line 616
    const/4 v9, 0x0

    .line 617
    :goto_15
    if-ge v9, v15, :cond_25

    .line 618
    .line 619
    and-long v13, v11, v20

    .line 620
    .line 621
    cmp-long v13, v13, p2

    .line 622
    .line 623
    if-gez v13, :cond_24

    .line 624
    .line 625
    shl-int/lit8 v13, v8, 0x3

    .line 626
    .line 627
    add-int/2addr v13, v9

    .line 628
    aget-object v13, v3, v13

    .line 629
    .line 630
    check-cast v13, Landroidx/compose/runtime/composer/GroupInfo;

    .line 631
    .line 632
    iget v14, v13, Landroidx/compose/runtime/composer/GroupInfo;->a:I

    .line 633
    .line 634
    if-ne v14, v5, :cond_22

    .line 635
    .line 636
    iput v2, v13, Landroidx/compose/runtime/composer/GroupInfo;->a:I

    .line 637
    .line 638
    goto :goto_17

    .line 639
    :cond_22
    move-object/from16 v24, v3

    .line 640
    .line 641
    add-int/lit8 v3, v5, 0x1

    .line 642
    .line 643
    if-gt v3, v14, :cond_23

    .line 644
    .line 645
    if-ge v14, v2, :cond_23

    .line 646
    .line 647
    add-int/lit8 v14, v14, -0x1

    .line 648
    .line 649
    iput v14, v13, Landroidx/compose/runtime/composer/GroupInfo;->a:I

    .line 650
    .line 651
    :cond_23
    :goto_16
    const/16 v3, 0x8

    .line 652
    .line 653
    goto :goto_18

    .line 654
    :cond_24
    :goto_17
    move-object/from16 v24, v3

    .line 655
    .line 656
    goto :goto_16

    .line 657
    :goto_18
    shr-long/2addr v11, v3

    .line 658
    add-int/lit8 v9, v9, 0x1

    .line 659
    .line 660
    move-object/from16 v3, v24

    .line 661
    .line 662
    goto :goto_15

    .line 663
    :cond_25
    move-object/from16 v24, v3

    .line 664
    .line 665
    const/16 v3, 0x8

    .line 666
    .line 667
    if-ne v15, v3, :cond_27

    .line 668
    .line 669
    goto :goto_19

    .line 670
    :cond_26
    move-object/from16 v24, v3

    .line 671
    .line 672
    const/16 v3, 0x8

    .line 673
    .line 674
    :goto_19
    if-eq v8, v7, :cond_27

    .line 675
    .line 676
    add-int/lit8 v8, v8, 0x1

    .line 677
    .line 678
    move-object/from16 v3, v24

    .line 679
    .line 680
    goto :goto_14

    .line 681
    :cond_27
    :goto_1a
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 682
    .line 683
    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    .line 684
    .line 685
    iget-object v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    .line 686
    .line 687
    iget-object v6, v5, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 688
    .line 689
    iget v6, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 690
    .line 691
    sub-int v6, v1, v6

    .line 692
    .line 693
    add-int/2addr v6, v3

    .line 694
    iput v6, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    .line 695
    .line 696
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 697
    .line 698
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->r(I)V

    .line 699
    .line 700
    .line 701
    if-lez v16, :cond_2a

    .line 702
    .line 703
    const/4 v14, 0x0

    .line 704
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 705
    .line 706
    .line 707
    iget-object v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d:Landroidx/compose/runtime/IntStack;

    .line 708
    .line 709
    iget-object v3, v5, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 710
    .line 711
    iget v5, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    .line 712
    .line 713
    if-lez v5, :cond_29

    .line 714
    .line 715
    iget v5, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 716
    .line 717
    const/4 v6, -0x2

    .line 718
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/IntStack;->a(I)I

    .line 719
    .line 720
    .line 721
    move-result v6

    .line 722
    if-eq v6, v5, :cond_29

    .line 723
    .line 724
    iget-boolean v6, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 725
    .line 726
    if-nez v6, :cond_28

    .line 727
    .line 728
    iget-boolean v6, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z

    .line 729
    .line 730
    if-eqz v6, :cond_28

    .line 731
    .line 732
    const/4 v14, 0x0

    .line 733
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 734
    .line 735
    .line 736
    iget-object v6, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 737
    .line 738
    iget-object v6, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 739
    .line 740
    sget-object v7, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureRootGroupStarted;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureRootGroupStarted;

    .line 741
    .line 742
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 743
    .line 744
    .line 745
    const/4 v6, 0x1

    .line 746
    iput-boolean v6, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 747
    .line 748
    :cond_28
    if-lez v5, :cond_29

    .line 749
    .line 750
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/IntStack;->c(I)V

    .line 755
    .line 756
    .line 757
    const/4 v14, 0x0

    .line 758
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 759
    .line 760
    .line 761
    iget-object v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 762
    .line 763
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 764
    .line 765
    sget-object v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureGroupStarted;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureGroupStarted;

    .line 766
    .line 767
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 768
    .line 769
    .line 770
    invoke-static {v1, v14, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 771
    .line 772
    .line 773
    const/4 v3, 0x1

    .line 774
    iput-boolean v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 775
    .line 776
    :cond_29
    iget-object v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 777
    .line 778
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 779
    .line 780
    sget-object v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$MoveCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$MoveCurrentGroup;

    .line 781
    .line 782
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 783
    .line 784
    .line 785
    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    .line 786
    .line 787
    iget v3, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    .line 788
    .line 789
    iget-object v5, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 790
    .line 791
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    .line 792
    .line 793
    const/16 v19, 0x1

    .line 794
    .line 795
    add-int/lit8 v1, v1, -0x1

    .line 796
    .line 797
    aget-object v1, v5, v1

    .line 798
    .line 799
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    .line 800
    .line 801
    sub-int/2addr v3, v1

    .line 802
    aput v16, v2, v3

    .line 803
    .line 804
    :cond_2a
    invoke-virtual {v0, v4, v10}, Landroidx/compose/runtime/GapComposer;->V(Ljava/lang/Object;Z)V

    .line 805
    .line 806
    .line 807
    :cond_2b
    const/4 v2, 0x0

    .line 808
    goto/16 :goto_20

    .line 809
    .line 810
    :cond_2c
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 811
    .line 812
    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 813
    .line 814
    const/4 v11, 0x1

    .line 815
    add-int/2addr v3, v11

    .line 816
    iput v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 817
    .line 818
    iput-boolean v11, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 819
    .line 820
    const/4 v2, 0x0

    .line 821
    iput-object v2, v0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 822
    .line 823
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 824
    .line 825
    iget-boolean v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->w:Z

    .line 826
    .line 827
    if-eqz v3, :cond_2d

    .line 828
    .line 829
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 830
    .line 831
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->e()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 832
    .line 833
    .line 834
    move-result-object v3

    .line 835
    iput-object v3, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 836
    .line 837
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->M()V

    .line 838
    .line 839
    .line 840
    const/4 v14, 0x0

    .line 841
    iput-boolean v14, v0, Landroidx/compose/runtime/GapComposer;->J:Z

    .line 842
    .line 843
    iput-object v2, v0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 844
    .line 845
    :cond_2d
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 846
    .line 847
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->d()V

    .line 848
    .line 849
    .line 850
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 851
    .line 852
    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    .line 853
    .line 854
    if-eqz v10, :cond_2e

    .line 855
    .line 856
    const/4 v11, 0x1

    .line 857
    invoke-virtual {v2, v1, v8, v8, v11}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 858
    .line 859
    .line 860
    const/4 v14, 0x0

    .line 861
    goto :goto_1e

    .line 862
    :cond_2e
    if-eqz v4, :cond_30

    .line 863
    .line 864
    if-nez p3, :cond_2f

    .line 865
    .line 866
    :goto_1b
    const/4 v14, 0x0

    .line 867
    goto :goto_1c

    .line 868
    :cond_2f
    move-object/from16 v8, p3

    .line 869
    .line 870
    goto :goto_1b

    .line 871
    :goto_1c
    invoke-virtual {v2, v1, v8, v4, v14}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 872
    .line 873
    .line 874
    goto :goto_1e

    .line 875
    :cond_30
    const/4 v14, 0x0

    .line 876
    if-nez p3, :cond_31

    .line 877
    .line 878
    move-object v4, v8

    .line 879
    goto :goto_1d

    .line 880
    :cond_31
    move-object/from16 v4, p3

    .line 881
    .line 882
    :goto_1d
    invoke-virtual {v2, v1, v4, v8, v14}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 883
    .line 884
    .line 885
    :goto_1e
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 886
    .line 887
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 888
    .line 889
    .line 890
    move-result-object v2

    .line 891
    iput-object v2, v0, Landroidx/compose/runtime/GapComposer;->N:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 892
    .line 893
    new-instance v2, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 894
    .line 895
    const/16 v17, -0x2

    .line 896
    .line 897
    rsub-int/lit8 v12, v3, -0x2

    .line 898
    .line 899
    const/4 v3, -0x1

    .line 900
    invoke-direct {v2, v6, v1, v12, v3}, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;-><init>(Ljava/lang/Object;III)V

    .line 901
    .line 902
    .line 903
    iget v1, v0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 904
    .line 905
    sub-int/2addr v1, v9

    .line 906
    new-instance v4, Landroidx/compose/runtime/composer/GroupInfo;

    .line 907
    .line 908
    invoke-direct {v4, v3, v1, v14}, Landroidx/compose/runtime/composer/GroupInfo;-><init>(III)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v7, v12, v4}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    .line 916
    .line 917
    new-instance v13, Landroidx/compose/runtime/GapPending;

    .line 918
    .line 919
    new-instance v1, Ljava/util/ArrayList;

    .line 920
    .line 921
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .line 923
    .line 924
    if-eqz v10, :cond_32

    .line 925
    .line 926
    move v9, v14

    .line 927
    goto :goto_1f

    .line 928
    :cond_32
    iget v9, v0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 929
    .line 930
    :goto_1f
    invoke-direct {v13, v9, v1}, Landroidx/compose/runtime/GapPending;-><init>(ILjava/util/ArrayList;)V

    .line 931
    .line 932
    .line 933
    goto :goto_21

    .line 934
    :goto_20
    move-object v13, v2

    .line 935
    :goto_21
    invoke-virtual {v0, v10, v13}, Landroidx/compose/runtime/GapComposer;->t(ZLandroidx/compose/runtime/GapPending;)V

    .line 936
    .line 937
    .line 938
    return-void
.end method

.method public final S()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, -0x7f

    .line 4
    .line 5
    invoke-virtual {p0, v2, v1, v0, v0}, Landroidx/compose/runtime/GapComposer;->R(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final T(ILandroidx/compose/runtime/OpaqueKey;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, p2, v1}, Landroidx/compose/runtime/GapComposer;->R(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final U(ILjava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, p2, v1}, Landroidx/compose/runtime/GapComposer;->R(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final V(Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 4
    .line 5
    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 6
    .line 7
    if-gtz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 10
    .line 11
    iget p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 12
    .line 13
    mul-int/lit8 p2, p2, 0x5

    .line 14
    .line 15
    add-int/lit8 p2, p2, 0x1

    .line 16
    .line 17
    aget p1, p1, p2

    .line 18
    .line 19
    const/high16 p2, 0x40000000    # 2.0f

    .line 20
    .line 21
    and-int/2addr p1, p2

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "Expected a node group"

    .line 26
    .line 27
    invoke-static {p1}, Landroidx/compose/runtime/PreconditionsKt;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->u()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void

    .line 34
    :cond_2
    if-eqz p1, :cond_3

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 37
    .line 38
    invoke-virtual {p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->f()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eq p2, p1, :cond_3

    .line 43
    .line 44
    iget-object p2, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 54
    .line 55
    iget-object p2, p2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 56
    .line 57
    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAuxData;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAuxData;

    .line 58
    .line 59
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p2, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->u()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final W(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, v1, v2, v2}, Landroidx/compose/runtime/GapComposer;->R(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v0, "A call to createNode(), emitNode() or useNode() expected"

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 21
    .line 22
    iget-wide v3, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    int-to-long v6, p1

    .line 30
    xor-long/2addr v3, v6

    .line 31
    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    int-to-long v5, v0

    .line 36
    xor-long/2addr v3, v5

    .line 37
    iput-wide v3, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 38
    .line 39
    iget v0, p0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    add-int/2addr v0, v3

    .line 43
    iput v0, p0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 46
    .line 47
    iget-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 48
    .line 49
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 54
    .line 55
    add-int/2addr v4, v3

    .line 56
    iput v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 59
    .line 60
    invoke-virtual {v0, p1, v5, v5, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/GapComposer;->t(ZLandroidx/compose/runtime/GapPending;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-ne v4, p1, :cond_4

    .line 72
    .line 73
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 74
    .line 75
    iget v6, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    .line 76
    .line 77
    if-ge v4, v6, :cond_3

    .line 78
    .line 79
    iget-object v6, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 80
    .line 81
    mul-int/lit8 v4, v4, 0x5

    .line 82
    .line 83
    add-int/2addr v4, v3

    .line 84
    aget v4, v6, v4

    .line 85
    .line 86
    const/high16 v6, 0x20000000

    .line 87
    .line 88
    and-int/2addr v4, v6

    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->u()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/GapComposer;->t(ZLandroidx/compose/runtime/GapPending;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    :goto_0
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 100
    .line 101
    if-lez v4, :cond_5

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 105
    .line 106
    iget v6, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    .line 107
    .line 108
    if-ne v4, v6, :cond_6

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    iget v6, p0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->H()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->s()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    iget-object v8, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 121
    .line 122
    invoke-virtual {v8, v6, v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e(II)V

    .line 123
    .line 124
    .line 125
    iget-object v6, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    .line 126
    .line 127
    iget v7, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 128
    .line 129
    invoke-static {v4, v7, v6}, Landroidx/compose/runtime/GapComposerKt;->a(IILjava/util/List;)V

    .line 130
    .line 131
    .line 132
    :goto_1
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 133
    .line 134
    add-int/2addr v4, v3

    .line 135
    iput v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 136
    .line 137
    iput-boolean v3, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 138
    .line 139
    iput-object v2, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 140
    .line 141
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 142
    .line 143
    iget-boolean v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->w:Z

    .line 144
    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->e()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->M()V

    .line 156
    .line 157
    .line 158
    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->J:Z

    .line 159
    .line 160
    iput-object v2, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 161
    .line 162
    :cond_7
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 163
    .line 164
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->d()V

    .line 165
    .line 166
    .line 167
    iget v3, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    .line 168
    .line 169
    invoke-virtual {v0, p1, v5, v5, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->N:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 177
    .line 178
    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/GapComposer;->t(ZLandroidx/compose/runtime/GapPending;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final X(I)Landroidx/compose/runtime/GapComposer;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->g:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->E:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 15
    .line 16
    invoke-direct {p1, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->h0(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Landroidx/compose/runtime/GapComposer;->B:I

    .line 26
    .line 27
    iput v1, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->e:I

    .line 28
    .line 29
    iget v1, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 30
    .line 31
    and-int/lit8 v1, v1, -0x11

    .line 32
    .line 33
    iput v1, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionObserverHolder;->a()V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 40
    .line 41
    iget p1, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-static {p1, v3}, Landroidx/compose/runtime/GapComposerKt;->c(ILjava/util/List;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-ltz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroidx/compose/runtime/Invalidation;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 p1, 0x0

    .line 59
    :goto_0
    iget-object v3, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->m()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 66
    .line 67
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    new-instance v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 74
    .line 75
    invoke-direct {v3, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->h0(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 86
    .line 87
    :goto_1
    const/4 v2, 0x0

    .line 88
    const/4 v4, 0x1

    .line 89
    if-nez p1, :cond_6

    .line 90
    .line 91
    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 92
    .line 93
    and-int/lit8 v5, p1, 0x40

    .line 94
    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    move v5, v4

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move v5, v2

    .line 100
    :goto_2
    if-eqz v5, :cond_4

    .line 101
    .line 102
    and-int/lit8 p1, p1, -0x41

    .line 103
    .line 104
    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 105
    .line 106
    :cond_4
    if-eqz v5, :cond_5

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    move p1, v2

    .line 110
    goto :goto_4

    .line 111
    :cond_6
    :goto_3
    move p1, v4

    .line 112
    :goto_4
    iget v5, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 113
    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    or-int/lit8 p1, v5, 0x8

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_7
    and-int/lit8 p1, v5, -0x9

    .line 120
    .line 121
    :goto_5
    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 122
    .line 123
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    iget p1, p0, Landroidx/compose/runtime/GapComposer;->B:I

    .line 127
    .line 128
    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->e:I

    .line 129
    .line 130
    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 131
    .line 132
    and-int/lit8 p1, p1, -0x11

    .line 133
    .line 134
    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 135
    .line 136
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionObserverHolder;->a()V

    .line 137
    .line 138
    .line 139
    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 140
    .line 141
    and-int/lit16 v0, p1, 0x100

    .line 142
    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    and-int/lit16 p1, p1, -0x101

    .line 146
    .line 147
    or-int/lit16 p1, p1, 0x200

    .line 148
    .line 149
    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 150
    .line 151
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 152
    .line 153
    iget-object p1, p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 154
    .line 155
    iget-object p1, p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 156
    .line 157
    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$StartResumingScope;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$StartResumingScope;

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 160
    .line 161
    .line 162
    invoke-static {p1, v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iget-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 166
    .line 167
    if-nez p1, :cond_8

    .line 168
    .line 169
    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 170
    .line 171
    and-int/lit16 v0, p1, 0x80

    .line 172
    .line 173
    if-eqz v0, :cond_8

    .line 174
    .line 175
    iput-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 176
    .line 177
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 178
    .line 179
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 180
    .line 181
    iput v0, p0, Landroidx/compose/runtime/GapComposer;->z:I

    .line 182
    .line 183
    or-int/lit16 p1, p1, 0x400

    .line 184
    .line 185
    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 186
    .line 187
    :cond_8
    return-object p0
.end method

.method public final Y(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 2
    .line 3
    const/16 v1, 0xcf

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->f()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget v0, p0, Landroidx/compose/runtime/GapComposer;->z:I

    .line 28
    .line 29
    if-gez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 32
    .line 33
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 34
    .line 35
    iput v0, p0, Landroidx/compose/runtime/GapComposer;->z:I

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 39
    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, v1, v2, v0, p1}, Landroidx/compose/runtime/GapComposer;->R(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final Z()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/16 v2, 0x7d

    .line 4
    .line 5
    invoke-virtual {p0, v2, v1, v0, v0}, Landroidx/compose/runtime/GapComposer;->R(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    .line 10
    .line 11
    return-void
.end method

.method public final a()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->i:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->n:Landroidx/compose/runtime/IntStack;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, v0, Landroidx/compose/runtime/IntStack;->b:I

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->t:Landroidx/compose/runtime/IntStack;

    .line 15
    .line 16
    iput v1, v0, Landroidx/compose/runtime/IntStack;->b:I

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->x:Landroidx/compose/runtime/IntStack;

    .line 19
    .line 20
    iput v1, v0, Landroidx/compose/runtime/IntStack;->b:I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 26
    .line 27
    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a()V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a()V

    .line 35
    .line 36
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    iput-wide v2, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 40
    .line 41
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->A:I

    .line 42
    .line 43
    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    .line 44
    .line 45
    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 48
    .line 49
    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 50
    .line 51
    const/4 v0, -0x1

    .line 52
    iput v0, p0, Landroidx/compose/runtime/GapComposer;->z:I

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 55
    .line 56
    iget-boolean v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->f:Z

    .line 57
    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 64
    .line 65
    iget-boolean v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->w:Z

    .line 66
    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->u()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public final a0()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->d()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 11
    .line 12
    const/16 v1, 0x64

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v1, v0, v2, v2}, Landroidx/compose/runtime/GapComposer;->R(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->t()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->i()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Landroidx/compose/runtime/GapComposer;->x:Landroidx/compose/runtime/IntStack;

    .line 28
    .line 29
    iget-boolean v5, p0, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/IntStack;->c(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    iput-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 39
    .line 40
    iput-object v2, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 41
    .line 42
    iget-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->q:Z

    .line 43
    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->e()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iput-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->q:Z

    .line 51
    .line 52
    :cond_0
    iget-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    .line 53
    .line 54
    if-nez v4, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->f()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iput-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    .line 61
    .line 62
    :cond_1
    iget-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    .line 63
    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    sget-object v4, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v5, Landroidx/compose/runtime/StaticValueHolder;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-direct {v5, v6}, Landroidx/compose/runtime/StaticValueHolder;-><init>(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    check-cast v3, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 81
    .line 82
    invoke-virtual {v3, v4, v5}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->b(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    :cond_2
    iput-object v3, p0, Landroidx/compose/runtime/GapComposer;->u:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 87
    .line 88
    sget-object v4, Landroidx/compose/runtime/tooling/InspectionTablesKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 89
    .line 90
    invoke-static {v3, v4}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/util/Set;

    .line 95
    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->v()Landroidx/compose/runtime/tooling/CompositionData;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/CompositionContext;->o(Ljava/util/Set;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->g()J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {p0, v1, v0, v2, v2}, Landroidx/compose/runtime/GapComposer;->R(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v3, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->c(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v2, p2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 33
    .line 34
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 35
    .line 36
    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->c(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v3, p1, v2, p2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final b0(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->c:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->b(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 19
    .line 20
    if-eqz v1, :cond_6

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 23
    .line 24
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 25
    .line 26
    if-lt v0, v1, :cond_6

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroidx/compose/runtime/GapComposerKt;->c(ILjava/util/List;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    if-gez v1, :cond_2

    .line 37
    .line 38
    add-int/2addr v1, v2

    .line 39
    neg-int v1, v1

    .line 40
    instance-of v4, p2, Landroidx/compose/runtime/DerivedState;

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object p2, v3

    .line 46
    :goto_0
    new-instance v3, Landroidx/compose/runtime/Invalidation;

    .line 47
    .line 48
    invoke-direct {v3, p1, v0, p2}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Landroidx/compose/runtime/Invalidation;

    .line 60
    .line 61
    instance-of p1, p2, Landroidx/compose/runtime/DerivedState;

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    iget-object p1, p0, Landroidx/compose/runtime/Invalidation;->c:Ljava/lang/Object;

    .line 66
    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    iput-object p2, p0, Landroidx/compose/runtime/Invalidation;->c:Ljava/lang/Object;

    .line 70
    .line 71
    return v2

    .line 72
    :cond_3
    instance-of v0, p1, Landroidx/collection/MutableScatterSet;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    check-cast p1, Landroidx/collection/MutableScatterSet;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    return v2

    .line 82
    :cond_4
    sget-object v0, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 83
    .line 84
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 85
    .line 86
    const/4 v1, 0x2

    .line 87
    invoke-direct {v0, v1}, Landroidx/collection/MutableScatterSet;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->l(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p2}, Landroidx/collection/MutableScatterSet;->l(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Landroidx/compose/runtime/Invalidation;->c:Ljava/lang/Object;

    .line 97
    .line 98
    return v2

    .line 99
    :cond_5
    iput-object v3, p0, Landroidx/compose/runtime/Invalidation;->c:Ljava/lang/Object;

    .line 100
    .line 101
    return v2

    .line 102
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 103
    return p0
.end method

.method public final c(F)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->C()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/Float;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    cmpg-float v0, p1, v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->h0(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public final c0(Landroidx/collection/MutableScatterMap;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    :goto_0
    const/4 v4, -0x1

    .line 12
    if-ge v4, v2, :cond_3

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroidx/compose/runtime/Invalidation;

    .line 19
    .line 20
    iget-object v5, v4, Landroidx/compose/runtime/Invalidation;->a:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 21
    .line 22
    iget-object v5, v5, Landroidx/compose/runtime/RecomposeScopeImpl;->c:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-static {v5}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v3, 0x0

    .line 32
    :goto_1
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->a()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    iget v5, v4, Landroidx/compose/runtime/Invalidation;->b:I

    .line 41
    .line 42
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->a:I

    .line 43
    .line 44
    if-eq v5, v3, :cond_2

    .line 45
    .line 46
    iput v3, v4, Landroidx/compose/runtime/Invalidation;->b:I

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object v2, v1, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v4, v1, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 58
    .line 59
    iget-object v1, v1, Landroidx/collection/ScatterMap;->a:[J

    .line 60
    .line 61
    array-length v5, v1

    .line 62
    add-int/lit8 v5, v5, -0x2

    .line 63
    .line 64
    if-ltz v5, :cond_8

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    move v7, v6

    .line 68
    :goto_3
    aget-wide v8, v1, v7

    .line 69
    .line 70
    not-long v10, v8

    .line 71
    const/4 v12, 0x7

    .line 72
    shl-long/2addr v10, v12

    .line 73
    and-long/2addr v10, v8

    .line 74
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    and-long/2addr v10, v12

    .line 80
    cmp-long v10, v10, v12

    .line 81
    .line 82
    if-eqz v10, :cond_7

    .line 83
    .line 84
    sub-int v10, v7, v5

    .line 85
    .line 86
    not-int v10, v10

    .line 87
    ushr-int/lit8 v10, v10, 0x1f

    .line 88
    .line 89
    const/16 v11, 0x8

    .line 90
    .line 91
    rsub-int/lit8 v10, v10, 0x8

    .line 92
    .line 93
    move v12, v6

    .line 94
    :goto_4
    if-ge v12, v10, :cond_6

    .line 95
    .line 96
    const-wide/16 v13, 0xff

    .line 97
    .line 98
    and-long/2addr v13, v8

    .line 99
    const-wide/16 v15, 0x80

    .line 100
    .line 101
    cmp-long v13, v13, v15

    .line 102
    .line 103
    if-gez v13, :cond_5

    .line 104
    .line 105
    shl-int/lit8 v13, v7, 0x3

    .line 106
    .line 107
    add-int/2addr v13, v12

    .line 108
    aget-object v14, v2, v13

    .line 109
    .line 110
    aget-object v13, v4, v13

    .line 111
    .line 112
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    check-cast v14, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 116
    .line 117
    iget-object v15, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->c:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 118
    .line 119
    if-eqz v15, :cond_5

    .line 120
    .line 121
    invoke-static {v15}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->a(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    iget v15, v15, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->a:I

    .line 126
    .line 127
    sget-object v3, Landroidx/compose/runtime/ScopeInvalidated;->a:Landroidx/compose/runtime/ScopeInvalidated;

    .line 128
    .line 129
    if-ne v13, v3, :cond_4

    .line 130
    .line 131
    const/4 v13, 0x0

    .line 132
    :cond_4
    new-instance v3, Landroidx/compose/runtime/Invalidation;

    .line 133
    .line 134
    invoke-direct {v3, v14, v15, v13}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_5
    shr-long/2addr v8, v11

    .line 141
    add-int/lit8 v12, v12, 0x1

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_6
    if-ne v10, v11, :cond_8

    .line 145
    .line 146
    :cond_7
    if-eq v7, v5, :cond_8

    .line 147
    .line 148
    add-int/lit8 v7, v7, 0x1

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_8
    sget-object v1, Landroidx/compose/runtime/GapComposerKt;->a:Landroidx/compose/runtime/c;

    .line 152
    .line 153
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->P(Ljava/util/List;Ljava/util/Comparator;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final d(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->C()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/Integer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->h0(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final d0(II)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->i0(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p2, :cond_3

    .line 6
    .line 7
    if-gez p1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->p:Landroidx/collection/MutableIntIntMap;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/collection/MutableIntIntMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->p:Landroidx/collection/MutableIntIntMap;

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/collection/MutableIntIntMap;->f(II)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->o:[I

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 29
    .line 30
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    .line 31
    .line 32
    new-array v1, v0, [I

    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Landroidx/compose/runtime/GapComposer;->o:[I

    .line 40
    .line 41
    move-object v0, v1

    .line 42
    :cond_2
    aput p2, v0, p1

    .line 43
    .line 44
    :cond_3
    return-void
.end method

.method public final e(J)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->C()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/Long;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    cmp-long v0, p1, v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->h0(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public final e0(II)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->i0(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p2, :cond_3

    .line 6
    .line 7
    sub-int/2addr p2, v0

    .line 8
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->i:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    :goto_0
    const/4 v2, -0x1

    .line 17
    if-eq p1, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->i0(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    add-int/2addr v3, p2

    .line 24
    invoke-virtual {p0, p1, v3}, Landroidx/compose/runtime/GapComposer;->d0(II)V

    .line 25
    .line 26
    .line 27
    move v4, v1

    .line 28
    :goto_1
    if-ge v2, v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Landroidx/compose/runtime/GapPending;

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    invoke-virtual {v5, p1, v3}, Landroidx/compose/runtime/GapPending;->a(II)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    add-int/lit8 v4, v4, -0x1

    .line 45
    .line 46
    move v1, v4

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_2
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 52
    .line 53
    if-gez p1, :cond_2

    .line 54
    .line 55
    iget p1, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 65
    .line 66
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    return-void
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->C()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->h0(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final f0(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;-><init>(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->putAll(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;->b()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/16 v0, 0xcc

    .line 19
    .line 20
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->d:Landroidx/compose/runtime/OpaqueKey;

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/GapComposer;->T(ILandroidx/compose/runtime/OpaqueKey;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->C()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->h0(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->C()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/GapComposer;->h0(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 39
    .line 40
    .line 41
    return-object p1
.end method

.method public final g(Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->C()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->h0(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final g0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/compose/runtime/RememberObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    .line 9
    .line 10
    iget v2, p0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 11
    .line 12
    add-int/lit8 v2, v2, -0x1

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/GapRememberObserverHolder;-><init>(Landroidx/compose/runtime/RememberObserver;I)V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 24
    .line 25
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 26
    .line 27
    sget-object v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Remember;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Remember;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->d:Ljava/util/Set;

    .line 37
    .line 38
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-object p1, v0

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->h0(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->C()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->h0(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final h0(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->n:I

    .line 8
    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->i:I

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->k:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->s:Landroidx/collection/MutableIntObjectMap;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    .line 22
    .line 23
    invoke-direct {v0}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->s:Landroidx/collection/MutableIntObjectMap;

    .line 27
    .line 28
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    new-instance v1, Landroidx/collection/MutableObjectList;

    .line 37
    .line 38
    invoke-direct {v1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0, v1}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    check-cast v1, Landroidx/collection/MutableObjectList;

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->F(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 55
    .line 56
    iget-boolean v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->n:Z

    .line 57
    .line 58
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    const/4 v4, 0x1

    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l:I

    .line 65
    .line 66
    iget-object v5, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 67
    .line 68
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 69
    .line 70
    invoke-static {v5, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->b([II)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    sub-int/2addr v1, v0

    .line 75
    sub-int/2addr v1, v4

    .line 76
    iget-object v0, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    .line 77
    .line 78
    iget-object v0, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 79
    .line 80
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 81
    .line 82
    iget v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    .line 83
    .line 84
    sub-int/2addr v0, v5

    .line 85
    if-gez v0, :cond_4

    .line 86
    .line 87
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 88
    .line 89
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iget-object v0, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 96
    .line 97
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 98
    .line 99
    sget-object v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAnchoredValue;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAnchoredValue;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v3, p1, v4, p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object p0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    .line 108
    .line 109
    iget p1, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    .line 110
    .line 111
    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 112
    .line 113
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    .line 114
    .line 115
    sub-int/2addr v0, v4

    .line 116
    aget-object v0, v2, v0

    .line 117
    .line 118
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    .line 119
    .line 120
    sub-int/2addr p1, v0

    .line 121
    aput v1, p0, p1

    .line 122
    .line 123
    return-void

    .line 124
    :cond_4
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 125
    .line 126
    .line 127
    iget-object p0, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 128
    .line 129
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 130
    .line 131
    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p0, v3, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    .line 140
    .line 141
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    .line 142
    .line 143
    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 144
    .line 145
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    .line 146
    .line 147
    sub-int/2addr p0, v4

    .line 148
    aget-object p0, v2, p0

    .line 149
    .line 150
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    .line 151
    .line 152
    sub-int/2addr v0, p0

    .line 153
    aput v1, p1, v0

    .line 154
    .line 155
    return-void

    .line 156
    :cond_5
    iget p0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 157
    .line 158
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    iget-object v0, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 163
    .line 164
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 165
    .line 166
    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AppendValue;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AppendValue;

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v3, p0, v4, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 6
    .line 7
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->l:I

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    iput-wide v2, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 12
    .line 13
    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 16
    .line 17
    iput-boolean v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 18
    .line 19
    iget-object v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d:Landroidx/compose/runtime/IntStack;

    .line 20
    .line 21
    iput v1, v3, Landroidx/compose/runtime/IntStack;->b:I

    .line 22
    .line 23
    iput v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    iput-boolean v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z

    .line 27
    .line 28
    iput v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->g:I

    .line 29
    .line 30
    iget-object v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->h:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    const/4 v3, -0x1

    .line 36
    iput v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->i:I

    .line 37
    .line 38
    iput v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->j:I

    .line 39
    .line 40
    iput v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->k:I

    .line 41
    .line 42
    iput v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->l:I

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->E:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->o:[I

    .line 50
    .line 51
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->p:Landroidx/collection/MutableIntIntMap;

    .line 52
    .line 53
    return-void
.end method

.method public final i0(I)I
    .locals 2

    .line 1
    if-gez p1, :cond_2

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->p:Landroidx/collection/MutableIntIntMap;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->a(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ltz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->a(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ltz v1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/collection/IntIntMap;->c:[I

    .line 21
    .line 22
    aget p0, p0, v1

    .line 23
    .line 24
    return p0

    .line 25
    :cond_0
    const-string p0, "Cannot find value for key "

    .line 26
    .line 27
    invoke-static {p1, p0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lfe;->o(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return v0

    .line 35
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->o:[I

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    aget v0, v0, p1

    .line 40
    .line 41
    if-ltz v0, :cond_3

    .line 42
    .line 43
    return v0

    .line 44
    :cond_3
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->o(I)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public final j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final j0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string v0, "useNode() called while inserting"

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 23
    .line 24
    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->n(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    .line 33
    .line 34
    .line 35
    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->h:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    instance-of p0, v0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 45
    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    .line 49
    .line 50
    .line 51
    iget-object p0, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 52
    .line 53
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 54
    .line 55
    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UseCurrentNode;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UseCurrentNode;

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public final k(Lkotlin/jvm/functions/Function0;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->r:Z

    .line 12
    .line 13
    iget-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string v1, "createNode() can only be called when inserting"

    .line 18
    .line 19
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->n:Landroidx/compose/runtime/IntStack;

    .line 23
    .line 24
    iget-object v2, v1, Landroidx/compose/runtime/IntStack;->a:[I

    .line 25
    .line 26
    iget v1, v1, Landroidx/compose/runtime/IntStack;->b:I

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    sub-int/2addr v1, v3

    .line 30
    aget v1, v2, v1

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 33
    .line 34
    iget v4, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget v4, p0, Landroidx/compose/runtime/GapComposer;->l:I

    .line 41
    .line 42
    add-int/2addr v4, v3

    .line 43
    iput v4, p0, Landroidx/compose/runtime/GapComposer;->l:I

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 46
    .line 47
    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 48
    .line 49
    sget-object v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertNodeFixup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertNodeFixup;

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v4, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    .line 58
    .line 59
    iget v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    .line 60
    .line 61
    iget-object v6, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 62
    .line 63
    iget v7, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    .line 64
    .line 65
    sub-int/2addr v7, v3

    .line 66
    aget-object v6, v6, v7

    .line 67
    .line 68
    iget v6, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    .line 69
    .line 70
    sub-int/2addr v5, v6

    .line 71
    aput v1, p1, v5

    .line 72
    .line 73
    invoke-static {v4, v3, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 77
    .line 78
    sget-object p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$PostInsertNodeFixup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$PostInsertNodeFixup;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    .line 84
    .line 85
    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    .line 86
    .line 87
    iget-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 88
    .line 89
    iget v6, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    .line 90
    .line 91
    sub-int/2addr v6, v3

    .line 92
    aget-object v3, v5, v6

    .line 93
    .line 94
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    .line 95
    .line 96
    sub-int/2addr v4, v3

    .line 97
    aput v1, p1, v4

    .line 98
    .line 99
    invoke-static {p0, v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final l()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 7
    .line 8
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 9
    .line 10
    iget-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 11
    .line 12
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->c:Landroidx/compose/runtime/OpaqueKey;

    .line 13
    .line 14
    const/16 v3, 0xca

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->J:Z

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 23
    .line 24
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    .line 25
    .line 26
    :goto_0
    if-lez v1, :cond_2

    .line 27
    .line 28
    iget-object v4, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 29
    .line 30
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->s(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-ne v4, v3, :cond_1

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 37
    .line 38
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->q(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 58
    .line 59
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_1
    iget-object v4, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 63
    .line 64
    iget-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    .line 65
    .line 66
    invoke-virtual {v4, v5, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->E([II)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 72
    .line 73
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    .line 74
    .line 75
    if-lez v1, :cond_6

    .line 76
    .line 77
    :goto_1
    if-lez v0, :cond_6

    .line 78
    .line 79
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i(I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-ne v1, v3, :cond_5

    .line 86
    .line 87
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 88
    .line 89
    iget-object v4, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 90
    .line 91
    invoke-virtual {v1, v4, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p([II)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    .line 102
    .line 103
    if-eqz v1, :cond_3

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 110
    .line 111
    if-nez v1, :cond_4

    .line 112
    .line 113
    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 114
    .line 115
    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 116
    .line 117
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b([II)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    move-object v1, v0

    .line 125
    check-cast v1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 126
    .line 127
    :cond_4
    iput-object v1, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 128
    .line 129
    return-object v1

    .line 130
    :cond_5
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 131
    .line 132
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    goto :goto_1

    .line 137
    :cond_6
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->u:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 138
    .line 139
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 140
    .line 141
    return-object v0
.end method

.method public final m()Landroidx/compose/runtime/tooling/ComposeStackTrace;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt;->o()Lkotlin/collections/builders/ListBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 15
    .line 16
    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    .line 17
    .line 18
    invoke-static {v2, v1, v3, v1}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;->a(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 26
    .line 27
    iget-boolean v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->f:Z

    .line 28
    .line 29
    iget-object v3, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    iget v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    new-instance v2, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;-><init>(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;)V

    .line 40
    .line 41
    .line 42
    iget v4, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 43
    .line 44
    iget v5, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l:I

    .line 45
    .line 46
    invoke-static {v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->b([II)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    sub-int/2addr v5, v6

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    :goto_0
    if-ltz v4, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k(I)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_0

    .line 62
    .line 63
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p([II)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 69
    .line 70
    :goto_1
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i(I)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    iget-object v8, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 75
    .line 76
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->g(I)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v2, v7, v6, v8, v5}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->c(ILjava/lang/Object;Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iget-object v1, v2, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->a:Ljava/util/ArrayList;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    sget-object v1, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 96
    .line 97
    :goto_2
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->D()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->l(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    .line 112
    .line 113
    new-instance v1, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 114
    .line 115
    invoke-direct {v1, v0, p0}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    .line 116
    .line 117
    .line 118
    :cond_3
    return-object v1
.end method

.method public final n(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function2;)V
    .locals 7

    .line 1
    const-string v0, "Check failed"

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-boolean v2, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string v2, "Reentrant composition is not supported"

    .line 10
    .line 11
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->g:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionObserverHolder;->a()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Compose:recompose"

    .line 20
    .line 21
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iput v2, p0, Landroidx/compose/runtime/GapComposer;->B:I

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iput-object v2, p0, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->c0(Landroidx/collection/MutableScatterMap;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput p1, p0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    iput-boolean v2, p0, Landroidx/compose/runtime/GapComposer;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 49
    .line 50
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->a0()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->C()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eq v3, p2, :cond_1

    .line 58
    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/GapComposer;->h0(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p2

    .line 66
    goto :goto_3

    .line 67
    :cond_1
    :goto_0
    iget-object v4, p0, Landroidx/compose/runtime/GapComposer;->D:Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;

    .line 68
    .line 69
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->c()Landroidx/compose/runtime/collection/MutableVector;

    .line 70
    .line 71
    .line 72
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    .line 75
    .line 76
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    .line 77
    .line 78
    const/16 v6, 0xc8

    .line 79
    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    :try_start_3
    invoke-virtual {p0, v6, v4}, Landroidx/compose/runtime/GapComposer;->T(ILandroidx/compose/runtime/OpaqueKey;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p0, p2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->a(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_1
    move-exception p2

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    iget-boolean p2, p0, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 95
    .line 96
    if-eqz p2, :cond_3

    .line 97
    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 101
    .line 102
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-nez p2, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0, v6, v4}, Landroidx/compose/runtime/GapComposer;->T(ILandroidx/compose/runtime/OpaqueKey;)V

    .line 109
    .line 110
    .line 111
    const/4 p2, 0x2

    .line 112
    invoke-static {p2, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->c(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 116
    .line 117
    invoke-static {p0, v3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->a(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->O()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    .line 126
    .line 127
    :goto_1
    :try_start_4
    iget p2, v5, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 128
    .line 129
    sub-int/2addr p2, v2

    .line 130
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->s()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    .line 135
    .line 136
    :try_start_5
    iput-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 142
    .line 143
    iget-boolean p1, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->w:Z

    .line 144
    .line 145
    if-nez p1, :cond_4

    .line 146
    .line 147
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->u()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 151
    .line 152
    .line 153
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :goto_2
    :try_start_6
    iget v3, v5, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 158
    .line 159
    sub-int/2addr v3, v2

    .line 160
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 164
    :goto_3
    :try_start_7
    new-instance v3, Lx8;

    .line 165
    .line 166
    invoke-direct {v3, v2, p0}, Lx8;-><init>(ILandroidx/compose/runtime/GapComposer;)V

    .line 167
    .line 168
    .line 169
    invoke-static {p2, v3}, Landroidx/compose/runtime/tooling/ComposeStackTraceKt;->a(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z

    .line 170
    .line 171
    .line 172
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 173
    :catchall_2
    move-exception p2

    .line 174
    :try_start_8
    iput-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->a()V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 183
    .line 184
    iget-boolean p1, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->w:Z

    .line 185
    .line 186
    if-nez p1, :cond_5

    .line 187
    .line 188
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->u()V

    .line 192
    .line 193
    .line 194
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 195
    :catchall_3
    move-exception p0

    .line 196
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 197
    .line 198
    .line 199
    throw p0
.end method

.method public final o(II)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    if-eq p1, p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0, p2}, Landroidx/compose/runtime/GapComposer;->o(II)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->n(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->h:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final p(Z)V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->n:Landroidx/compose/runtime/IntStack;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/runtime/IntStack;->a:[I

    .line 6
    .line 7
    iget v3, v1, Landroidx/compose/runtime/IntStack;->b:I

    .line 8
    .line 9
    add-int/lit8 v3, v3, -0x2

    .line 10
    .line 11
    aget v2, v2, v3

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    sub-int/2addr v2, v3

    .line 15
    iget-boolean v4, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 16
    .line 17
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 18
    .line 19
    const/16 v6, 0xcf

    .line 20
    .line 21
    const/4 v7, 0x3

    .line 22
    if-eqz v4, :cond_3

    .line 23
    .line 24
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 25
    .line 26
    iget v8, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    .line 27
    .line 28
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->s(I)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 33
    .line 34
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    iget-object v10, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 39
    .line 40
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->q(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    if-nez v9, :cond_1

    .line 45
    .line 46
    if-eqz v8, :cond_0

    .line 47
    .line 48
    if-ne v4, v6, :cond_0

    .line 49
    .line 50
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_0

    .line 55
    .line 56
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iget-wide v5, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 61
    .line 62
    int-to-long v8, v2

    .line 63
    xor-long/2addr v5, v8

    .line 64
    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    int-to-long v8, v4

    .line 69
    xor-long v4, v5, v8

    .line 70
    .line 71
    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    iput-wide v4, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 76
    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_0
    iget-wide v5, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 80
    .line 81
    int-to-long v8, v2

    .line 82
    xor-long/2addr v5, v8

    .line 83
    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    int-to-long v8, v4

    .line 88
    xor-long v4, v5, v8

    .line 89
    .line 90
    :goto_0
    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    iput-wide v4, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_1
    instance-of v2, v9, Ljava/lang/Enum;

    .line 99
    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    check-cast v9, Ljava/lang/Enum;

    .line 103
    .line 104
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    :goto_1
    iget-wide v4, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 109
    .line 110
    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    int-to-long v8, v2

    .line 115
    xor-long/2addr v4, v8

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 123
    .line 124
    iget v8, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 125
    .line 126
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i(I)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 131
    .line 132
    iget-object v10, v9, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 133
    .line 134
    invoke-virtual {v9, v10, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p([II)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    iget-object v10, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 139
    .line 140
    iget-object v11, v10, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 141
    .line 142
    invoke-virtual {v10, v11, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b([II)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    if-nez v9, :cond_5

    .line 147
    .line 148
    if-eqz v8, :cond_4

    .line 149
    .line 150
    if-ne v4, v6, :cond_4

    .line 151
    .line 152
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-nez v5, :cond_4

    .line 157
    .line 158
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    iget-wide v5, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 163
    .line 164
    int-to-long v8, v2

    .line 165
    xor-long/2addr v5, v8

    .line 166
    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 167
    .line 168
    .line 169
    move-result-wide v5

    .line 170
    int-to-long v8, v4

    .line 171
    xor-long v4, v5, v8

    .line 172
    .line 173
    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 174
    .line 175
    .line 176
    move-result-wide v4

    .line 177
    iput-wide v4, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_4
    iget-wide v5, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 181
    .line 182
    int-to-long v8, v2

    .line 183
    xor-long/2addr v5, v8

    .line 184
    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 185
    .line 186
    .line 187
    move-result-wide v5

    .line 188
    int-to-long v8, v4

    .line 189
    xor-long v4, v5, v8

    .line 190
    .line 191
    :goto_2
    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 192
    .line 193
    .line 194
    move-result-wide v4

    .line 195
    iput-wide v4, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_5
    instance-of v2, v9, Ljava/lang/Enum;

    .line 199
    .line 200
    if-eqz v2, :cond_6

    .line 201
    .line 202
    check-cast v9, Ljava/lang/Enum;

    .line 203
    .line 204
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    :goto_3
    iget-wide v4, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 209
    .line 210
    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 211
    .line 212
    .line 213
    move-result-wide v4

    .line 214
    int-to-long v8, v2

    .line 215
    xor-long/2addr v4, v8

    .line 216
    goto :goto_2

    .line 217
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    goto :goto_3

    .line 222
    :goto_4
    iget v2, v0, Landroidx/compose/runtime/GapComposer;->l:I

    .line 223
    .line 224
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    .line 225
    .line 226
    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->s:Ljava/util/ArrayList;

    .line 227
    .line 228
    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 229
    .line 230
    if-eqz v4, :cond_22

    .line 231
    .line 232
    iget-object v10, v4, Landroidx/compose/runtime/GapPending;->e:Landroidx/collection/MutableIntObjectMap;

    .line 233
    .line 234
    iget v11, v4, Landroidx/compose/runtime/GapPending;->b:I

    .line 235
    .line 236
    iget-object v12, v4, Landroidx/compose/runtime/GapPending;->a:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 239
    .line 240
    .line 241
    move-result v13

    .line 242
    if-lez v13, :cond_22

    .line 243
    .line 244
    iget-object v13, v4, Landroidx/compose/runtime/GapPending;->d:Ljava/util/ArrayList;

    .line 245
    .line 246
    new-instance v14, Ljava/util/HashSet;

    .line 247
    .line 248
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 249
    .line 250
    .line 251
    move-result v15

    .line 252
    invoke-direct {v14, v15}, Ljava/util/HashSet;-><init>(I)V

    .line 253
    .line 254
    .line 255
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 256
    .line 257
    .line 258
    move-result v15

    .line 259
    move/from16 v16, v7

    .line 260
    .line 261
    const/4 v7, 0x0

    .line 262
    :goto_5
    if-ge v7, v15, :cond_7

    .line 263
    .line 264
    const/16 v17, -0x1

    .line 265
    .line 266
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-virtual {v14, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    add-int/lit8 v7, v7, 0x1

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_7
    const/16 v17, -0x1

    .line 277
    .line 278
    sget-object v6, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 279
    .line 280
    new-instance v6, Landroidx/collection/MutableScatterSet;

    .line 281
    .line 282
    invoke-direct {v6}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 290
    .line 291
    .line 292
    move-result v15

    .line 293
    const/4 v3, 0x0

    .line 294
    const/16 v19, 0x0

    .line 295
    .line 296
    const/16 v20, 0x0

    .line 297
    .line 298
    :goto_6
    if-ge v3, v15, :cond_21

    .line 299
    .line 300
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v21

    .line 304
    move-object/from16 v8, v21

    .line 305
    .line 306
    check-cast v8, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 307
    .line 308
    invoke-virtual {v14, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v21

    .line 312
    if-nez v21, :cond_9

    .line 313
    .line 314
    move-object/from16 v21, v1

    .line 315
    .line 316
    iget v1, v8, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    .line 317
    .line 318
    invoke-virtual {v10, v1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    check-cast v1, Landroidx/compose/runtime/composer/GroupInfo;

    .line 323
    .line 324
    if-eqz v1, :cond_8

    .line 325
    .line 326
    iget v1, v1, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    .line 327
    .line 328
    move/from16 v22, v1

    .line 329
    .line 330
    goto :goto_7

    .line 331
    :cond_8
    move/from16 v22, v17

    .line 332
    .line 333
    :goto_7
    iget v1, v8, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    .line 334
    .line 335
    move/from16 v23, v3

    .line 336
    .line 337
    add-int v3, v22, v11

    .line 338
    .line 339
    iget v8, v8, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->d:I

    .line 340
    .line 341
    invoke-virtual {v9, v3, v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e(II)V

    .line 342
    .line 343
    .line 344
    const/4 v3, 0x0

    .line 345
    invoke-virtual {v4, v1, v3}, Landroidx/compose/runtime/GapPending;->a(II)Z

    .line 346
    .line 347
    .line 348
    iget v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    .line 349
    .line 350
    iget-object v8, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    .line 351
    .line 352
    iget-object v8, v8, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 353
    .line 354
    iget v8, v8, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 355
    .line 356
    sub-int v8, v1, v8

    .line 357
    .line 358
    add-int/2addr v8, v3

    .line 359
    iput v8, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    .line 360
    .line 361
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 362
    .line 363
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->r(I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->H()V

    .line 367
    .line 368
    .line 369
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 370
    .line 371
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->s()I

    .line 372
    .line 373
    .line 374
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 375
    .line 376
    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 377
    .line 378
    mul-int/lit8 v8, v1, 0x5

    .line 379
    .line 380
    add-int/lit8 v8, v8, 0x3

    .line 381
    .line 382
    aget v3, v3, v8

    .line 383
    .line 384
    add-int/2addr v3, v1

    .line 385
    invoke-static {v1, v3, v5}, Landroidx/compose/runtime/GapComposerKt;->a(IILjava/util/List;)V

    .line 386
    .line 387
    .line 388
    :goto_8
    add-int/lit8 v3, v23, 0x1

    .line 389
    .line 390
    :goto_9
    move-object/from16 v1, v21

    .line 391
    .line 392
    goto :goto_6

    .line 393
    :cond_9
    move-object/from16 v21, v1

    .line 394
    .line 395
    move/from16 v23, v3

    .line 396
    .line 397
    invoke-virtual {v6, v8}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-eqz v1, :cond_a

    .line 402
    .line 403
    goto :goto_8

    .line 404
    :cond_a
    move/from16 v1, v19

    .line 405
    .line 406
    if-ge v1, v7, :cond_20

    .line 407
    .line 408
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    check-cast v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 413
    .line 414
    if-eq v3, v8, :cond_1e

    .line 415
    .line 416
    iget v8, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    .line 417
    .line 418
    invoke-virtual {v10, v8}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v8

    .line 422
    check-cast v8, Landroidx/compose/runtime/composer/GroupInfo;

    .line 423
    .line 424
    if-eqz v8, :cond_b

    .line 425
    .line 426
    iget v8, v8, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    .line 427
    .line 428
    goto :goto_a

    .line 429
    :cond_b
    move/from16 v8, v17

    .line 430
    .line 431
    :goto_a
    invoke-virtual {v6, v3}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move/from16 v19, v1

    .line 435
    .line 436
    move/from16 v1, v20

    .line 437
    .line 438
    move-object/from16 v20, v4

    .line 439
    .line 440
    if-eq v8, v1, :cond_1c

    .line 441
    .line 442
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    .line 443
    .line 444
    invoke-virtual {v10, v4}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    check-cast v4, Landroidx/compose/runtime/composer/GroupInfo;

    .line 449
    .line 450
    if-eqz v4, :cond_c

    .line 451
    .line 452
    iget v4, v4, Landroidx/compose/runtime/composer/GroupInfo;->c:I

    .line 453
    .line 454
    :goto_b
    move-object/from16 v22, v6

    .line 455
    .line 456
    goto :goto_c

    .line 457
    :cond_c
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->d:I

    .line 458
    .line 459
    goto :goto_b

    .line 460
    :goto_c
    add-int v6, v8, v11

    .line 461
    .line 462
    move/from16 v24, v7

    .line 463
    .line 464
    add-int v7, v1, v11

    .line 465
    .line 466
    if-lez v4, :cond_f

    .line 467
    .line 468
    move/from16 v25, v11

    .line 469
    .line 470
    iget v11, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->l:I

    .line 471
    .line 472
    if-lez v11, :cond_d

    .line 473
    .line 474
    move/from16 v26, v11

    .line 475
    .line 476
    iget v11, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->j:I

    .line 477
    .line 478
    move-object/from16 v27, v12

    .line 479
    .line 480
    sub-int v12, v6, v26

    .line 481
    .line 482
    if-ne v11, v12, :cond_e

    .line 483
    .line 484
    iget v11, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->k:I

    .line 485
    .line 486
    sub-int v12, v7, v26

    .line 487
    .line 488
    if-ne v11, v12, :cond_e

    .line 489
    .line 490
    add-int v11, v26, v4

    .line 491
    .line 492
    iput v11, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->l:I

    .line 493
    .line 494
    goto :goto_d

    .line 495
    :cond_d
    move-object/from16 v27, v12

    .line 496
    .line 497
    :cond_e
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    .line 498
    .line 499
    .line 500
    iput v6, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->j:I

    .line 501
    .line 502
    iput v7, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->k:I

    .line 503
    .line 504
    iput v4, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->l:I

    .line 505
    .line 506
    goto :goto_d

    .line 507
    :cond_f
    move/from16 v25, v11

    .line 508
    .line 509
    move-object/from16 v27, v12

    .line 510
    .line 511
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    :goto_d
    const/16 v26, 0x7

    .line 515
    .line 516
    const-wide v28, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    const-wide/16 v30, 0x80

    .line 522
    .line 523
    if-le v8, v1, :cond_16

    .line 524
    .line 525
    iget-object v7, v10, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    .line 526
    .line 527
    const-wide/16 v32, 0xff

    .line 528
    .line 529
    iget-object v11, v10, Landroidx/collection/IntObjectMap;->a:[J

    .line 530
    .line 531
    array-length v12, v11

    .line 532
    add-int/lit8 v12, v12, -0x2

    .line 533
    .line 534
    if-ltz v12, :cond_15

    .line 535
    .line 536
    move-object/from16 v35, v13

    .line 537
    .line 538
    move-object/from16 v36, v14

    .line 539
    .line 540
    const/4 v6, 0x0

    .line 541
    :goto_e
    const/16 v34, 0x8

    .line 542
    .line 543
    aget-wide v13, v11, v6

    .line 544
    .line 545
    move/from16 v38, v4

    .line 546
    .line 547
    move-object/from16 v37, v5

    .line 548
    .line 549
    not-long v4, v13

    .line 550
    shl-long v4, v4, v26

    .line 551
    .line 552
    and-long/2addr v4, v13

    .line 553
    and-long v4, v4, v28

    .line 554
    .line 555
    cmp-long v4, v4, v28

    .line 556
    .line 557
    if-eqz v4, :cond_14

    .line 558
    .line 559
    sub-int v4, v6, v12

    .line 560
    .line 561
    not-int v4, v4

    .line 562
    ushr-int/lit8 v4, v4, 0x1f

    .line 563
    .line 564
    rsub-int/lit8 v4, v4, 0x8

    .line 565
    .line 566
    const/4 v5, 0x0

    .line 567
    :goto_f
    if-ge v5, v4, :cond_13

    .line 568
    .line 569
    and-long v39, v13, v32

    .line 570
    .line 571
    cmp-long v39, v39, v30

    .line 572
    .line 573
    if-gez v39, :cond_11

    .line 574
    .line 575
    shl-int/lit8 v39, v6, 0x3

    .line 576
    .line 577
    add-int v39, v39, v5

    .line 578
    .line 579
    aget-object v39, v7, v39

    .line 580
    .line 581
    move/from16 v40, v5

    .line 582
    .line 583
    move-object/from16 v5, v39

    .line 584
    .line 585
    check-cast v5, Landroidx/compose/runtime/composer/GroupInfo;

    .line 586
    .line 587
    move-object/from16 v39, v7

    .line 588
    .line 589
    iget v7, v5, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    .line 590
    .line 591
    move-object/from16 v41, v11

    .line 592
    .line 593
    if-gt v8, v7, :cond_10

    .line 594
    .line 595
    add-int v11, v8, v38

    .line 596
    .line 597
    if-ge v7, v11, :cond_10

    .line 598
    .line 599
    sub-int/2addr v7, v8

    .line 600
    add-int/2addr v7, v1

    .line 601
    iput v7, v5, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    .line 602
    .line 603
    goto :goto_10

    .line 604
    :cond_10
    if-gt v1, v7, :cond_12

    .line 605
    .line 606
    if-ge v7, v8, :cond_12

    .line 607
    .line 608
    add-int v7, v7, v38

    .line 609
    .line 610
    iput v7, v5, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    .line 611
    .line 612
    goto :goto_10

    .line 613
    :cond_11
    move/from16 v40, v5

    .line 614
    .line 615
    move-object/from16 v39, v7

    .line 616
    .line 617
    move-object/from16 v41, v11

    .line 618
    .line 619
    :cond_12
    :goto_10
    shr-long v13, v13, v34

    .line 620
    .line 621
    add-int/lit8 v5, v40, 0x1

    .line 622
    .line 623
    move-object/from16 v7, v39

    .line 624
    .line 625
    move-object/from16 v11, v41

    .line 626
    .line 627
    goto :goto_f

    .line 628
    :cond_13
    move-object/from16 v39, v7

    .line 629
    .line 630
    move-object/from16 v41, v11

    .line 631
    .line 632
    move/from16 v5, v34

    .line 633
    .line 634
    if-ne v4, v5, :cond_1d

    .line 635
    .line 636
    goto :goto_11

    .line 637
    :cond_14
    move-object/from16 v39, v7

    .line 638
    .line 639
    move-object/from16 v41, v11

    .line 640
    .line 641
    :goto_11
    if-eq v6, v12, :cond_1d

    .line 642
    .line 643
    add-int/lit8 v6, v6, 0x1

    .line 644
    .line 645
    move-object/from16 v5, v37

    .line 646
    .line 647
    move/from16 v4, v38

    .line 648
    .line 649
    move-object/from16 v7, v39

    .line 650
    .line 651
    move-object/from16 v11, v41

    .line 652
    .line 653
    goto :goto_e

    .line 654
    :cond_15
    move-object/from16 v37, v5

    .line 655
    .line 656
    goto/16 :goto_17

    .line 657
    .line 658
    :cond_16
    move/from16 v38, v4

    .line 659
    .line 660
    move-object/from16 v37, v5

    .line 661
    .line 662
    move-object/from16 v35, v13

    .line 663
    .line 664
    move-object/from16 v36, v14

    .line 665
    .line 666
    const-wide/16 v32, 0xff

    .line 667
    .line 668
    if-le v1, v8, :cond_1d

    .line 669
    .line 670
    iget-object v4, v10, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    .line 671
    .line 672
    iget-object v5, v10, Landroidx/collection/IntObjectMap;->a:[J

    .line 673
    .line 674
    array-length v6, v5

    .line 675
    add-int/lit8 v6, v6, -0x2

    .line 676
    .line 677
    if-ltz v6, :cond_1d

    .line 678
    .line 679
    const/4 v7, 0x0

    .line 680
    :goto_12
    aget-wide v11, v5, v7

    .line 681
    .line 682
    not-long v13, v11

    .line 683
    shl-long v13, v13, v26

    .line 684
    .line 685
    and-long/2addr v13, v11

    .line 686
    and-long v13, v13, v28

    .line 687
    .line 688
    cmp-long v13, v13, v28

    .line 689
    .line 690
    if-eqz v13, :cond_1b

    .line 691
    .line 692
    sub-int v13, v7, v6

    .line 693
    .line 694
    not-int v13, v13

    .line 695
    ushr-int/lit8 v13, v13, 0x1f

    .line 696
    .line 697
    const/16 v34, 0x8

    .line 698
    .line 699
    rsub-int/lit8 v13, v13, 0x8

    .line 700
    .line 701
    const/4 v14, 0x0

    .line 702
    :goto_13
    if-ge v14, v13, :cond_1a

    .line 703
    .line 704
    and-long v39, v11, v32

    .line 705
    .line 706
    cmp-long v39, v39, v30

    .line 707
    .line 708
    if-gez v39, :cond_19

    .line 709
    .line 710
    shl-int/lit8 v39, v7, 0x3

    .line 711
    .line 712
    add-int v39, v39, v14

    .line 713
    .line 714
    aget-object v39, v4, v39

    .line 715
    .line 716
    move-object/from16 v40, v4

    .line 717
    .line 718
    move-object/from16 v4, v39

    .line 719
    .line 720
    check-cast v4, Landroidx/compose/runtime/composer/GroupInfo;

    .line 721
    .line 722
    move-object/from16 v39, v5

    .line 723
    .line 724
    iget v5, v4, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    .line 725
    .line 726
    move/from16 v41, v8

    .line 727
    .line 728
    if-gt v8, v5, :cond_17

    .line 729
    .line 730
    add-int v8, v41, v38

    .line 731
    .line 732
    if-ge v5, v8, :cond_17

    .line 733
    .line 734
    sub-int v5, v5, v41

    .line 735
    .line 736
    add-int/2addr v5, v1

    .line 737
    iput v5, v4, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    .line 738
    .line 739
    goto :goto_14

    .line 740
    :cond_17
    add-int/lit8 v8, v41, 0x1

    .line 741
    .line 742
    if-gt v8, v5, :cond_18

    .line 743
    .line 744
    if-ge v5, v1, :cond_18

    .line 745
    .line 746
    sub-int v5, v5, v38

    .line 747
    .line 748
    iput v5, v4, Landroidx/compose/runtime/composer/GroupInfo;->b:I

    .line 749
    .line 750
    :cond_18
    :goto_14
    const/16 v5, 0x8

    .line 751
    .line 752
    goto :goto_15

    .line 753
    :cond_19
    move-object/from16 v40, v4

    .line 754
    .line 755
    move-object/from16 v39, v5

    .line 756
    .line 757
    move/from16 v41, v8

    .line 758
    .line 759
    goto :goto_14

    .line 760
    :goto_15
    shr-long/2addr v11, v5

    .line 761
    add-int/lit8 v14, v14, 0x1

    .line 762
    .line 763
    move-object/from16 v5, v39

    .line 764
    .line 765
    move-object/from16 v4, v40

    .line 766
    .line 767
    move/from16 v8, v41

    .line 768
    .line 769
    goto :goto_13

    .line 770
    :cond_1a
    move-object/from16 v40, v4

    .line 771
    .line 772
    move-object/from16 v39, v5

    .line 773
    .line 774
    move/from16 v41, v8

    .line 775
    .line 776
    const/16 v5, 0x8

    .line 777
    .line 778
    if-ne v13, v5, :cond_1d

    .line 779
    .line 780
    goto :goto_16

    .line 781
    :cond_1b
    move-object/from16 v40, v4

    .line 782
    .line 783
    move-object/from16 v39, v5

    .line 784
    .line 785
    move/from16 v41, v8

    .line 786
    .line 787
    const/16 v5, 0x8

    .line 788
    .line 789
    :goto_16
    if-eq v7, v6, :cond_1d

    .line 790
    .line 791
    add-int/lit8 v7, v7, 0x1

    .line 792
    .line 793
    move-object/from16 v5, v39

    .line 794
    .line 795
    move-object/from16 v4, v40

    .line 796
    .line 797
    move/from16 v8, v41

    .line 798
    .line 799
    goto :goto_12

    .line 800
    :cond_1c
    move-object/from16 v37, v5

    .line 801
    .line 802
    move-object/from16 v22, v6

    .line 803
    .line 804
    move/from16 v24, v7

    .line 805
    .line 806
    move/from16 v25, v11

    .line 807
    .line 808
    move-object/from16 v27, v12

    .line 809
    .line 810
    :goto_17
    move-object/from16 v35, v13

    .line 811
    .line 812
    move-object/from16 v36, v14

    .line 813
    .line 814
    :cond_1d
    move/from16 v4, v23

    .line 815
    .line 816
    goto :goto_18

    .line 817
    :cond_1e
    move/from16 v19, v1

    .line 818
    .line 819
    move-object/from16 v37, v5

    .line 820
    .line 821
    move-object/from16 v22, v6

    .line 822
    .line 823
    move/from16 v24, v7

    .line 824
    .line 825
    move/from16 v25, v11

    .line 826
    .line 827
    move-object/from16 v27, v12

    .line 828
    .line 829
    move-object/from16 v35, v13

    .line 830
    .line 831
    move-object/from16 v36, v14

    .line 832
    .line 833
    move/from16 v1, v20

    .line 834
    .line 835
    move-object/from16 v20, v4

    .line 836
    .line 837
    add-int/lit8 v4, v23, 0x1

    .line 838
    .line 839
    :goto_18
    add-int/lit8 v19, v19, 0x1

    .line 840
    .line 841
    iget v5, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->c:I

    .line 842
    .line 843
    invoke-virtual {v10, v5}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v5

    .line 847
    check-cast v5, Landroidx/compose/runtime/composer/GroupInfo;

    .line 848
    .line 849
    if-eqz v5, :cond_1f

    .line 850
    .line 851
    iget v3, v5, Landroidx/compose/runtime/composer/GroupInfo;->c:I

    .line 852
    .line 853
    goto :goto_19

    .line 854
    :cond_1f
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->d:I

    .line 855
    .line 856
    :goto_19
    add-int/2addr v1, v3

    .line 857
    move v3, v4

    .line 858
    move-object/from16 v4, v20

    .line 859
    .line 860
    move-object/from16 v6, v22

    .line 861
    .line 862
    move/from16 v7, v24

    .line 863
    .line 864
    move/from16 v11, v25

    .line 865
    .line 866
    move-object/from16 v12, v27

    .line 867
    .line 868
    move-object/from16 v13, v35

    .line 869
    .line 870
    move-object/from16 v14, v36

    .line 871
    .line 872
    move-object/from16 v5, v37

    .line 873
    .line 874
    move/from16 v20, v1

    .line 875
    .line 876
    goto/16 :goto_9

    .line 877
    .line 878
    :cond_20
    move/from16 v19, v1

    .line 879
    .line 880
    move/from16 v1, v20

    .line 881
    .line 882
    move-object/from16 v1, v21

    .line 883
    .line 884
    move/from16 v3, v23

    .line 885
    .line 886
    goto/16 :goto_6

    .line 887
    .line 888
    :cond_21
    move-object/from16 v21, v1

    .line 889
    .line 890
    move-object/from16 v37, v5

    .line 891
    .line 892
    move-object/from16 v27, v12

    .line 893
    .line 894
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    .line 895
    .line 896
    .line 897
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    .line 898
    .line 899
    .line 900
    move-result v1

    .line 901
    if-lez v1, :cond_23

    .line 902
    .line 903
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 904
    .line 905
    iget v3, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    .line 906
    .line 907
    iget v4, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    .line 908
    .line 909
    iget-object v5, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    .line 910
    .line 911
    iget-object v5, v5, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 912
    .line 913
    iget v5, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 914
    .line 915
    sub-int/2addr v3, v5

    .line 916
    add-int/2addr v3, v4

    .line 917
    iput v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->f:I

    .line 918
    .line 919
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->t()V

    .line 920
    .line 921
    .line 922
    goto :goto_1a

    .line 923
    :cond_22
    move-object/from16 v21, v1

    .line 924
    .line 925
    move-object/from16 v37, v5

    .line 926
    .line 927
    const/16 v17, -0x1

    .line 928
    .line 929
    :cond_23
    :goto_1a
    iget-boolean v1, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 930
    .line 931
    const/4 v3, -0x2

    .line 932
    if-nez v1, :cond_27

    .line 933
    .line 934
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 935
    .line 936
    iget v5, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->m:I

    .line 937
    .line 938
    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l:I

    .line 939
    .line 940
    sub-int/2addr v5, v4

    .line 941
    if-lez v5, :cond_27

    .line 942
    .line 943
    if-lez v5, :cond_26

    .line 944
    .line 945
    const/4 v4, 0x0

    .line 946
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 947
    .line 948
    .line 949
    iget-object v4, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d:Landroidx/compose/runtime/IntStack;

    .line 950
    .line 951
    iget-object v6, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    .line 952
    .line 953
    iget-object v6, v6, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 954
    .line 955
    iget v7, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    .line 956
    .line 957
    if-lez v7, :cond_25

    .line 958
    .line 959
    iget v7, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 960
    .line 961
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/IntStack;->a(I)I

    .line 962
    .line 963
    .line 964
    move-result v8

    .line 965
    if-eq v8, v7, :cond_25

    .line 966
    .line 967
    iget-boolean v8, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 968
    .line 969
    if-nez v8, :cond_24

    .line 970
    .line 971
    iget-boolean v8, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z

    .line 972
    .line 973
    if-eqz v8, :cond_24

    .line 974
    .line 975
    const/4 v8, 0x0

    .line 976
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 977
    .line 978
    .line 979
    iget-object v8, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 980
    .line 981
    iget-object v8, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 982
    .line 983
    sget-object v10, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureRootGroupStarted;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureRootGroupStarted;

    .line 984
    .line 985
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 986
    .line 987
    .line 988
    const/4 v8, 0x1

    .line 989
    iput-boolean v8, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 990
    .line 991
    :cond_24
    if-lez v7, :cond_25

    .line 992
    .line 993
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 994
    .line 995
    .line 996
    move-result-object v6

    .line 997
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/IntStack;->c(I)V

    .line 998
    .line 999
    .line 1000
    const/4 v4, 0x0

    .line 1001
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 1002
    .line 1003
    .line 1004
    iget-object v7, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 1005
    .line 1006
    iget-object v7, v7, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1007
    .line 1008
    sget-object v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureGroupStarted;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureGroupStarted;

    .line 1009
    .line 1010
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 1011
    .line 1012
    .line 1013
    invoke-static {v7, v4, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 1014
    .line 1015
    .line 1016
    const/4 v8, 0x1

    .line 1017
    iput-boolean v8, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 1018
    .line 1019
    :cond_25
    iget-object v4, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 1020
    .line 1021
    iget-object v4, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1022
    .line 1023
    sget-object v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TrimParentValues;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TrimParentValues;

    .line 1024
    .line 1025
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 1026
    .line 1027
    .line 1028
    iget-object v6, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    .line 1029
    .line 1030
    iget v7, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    .line 1031
    .line 1032
    iget-object v8, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 1033
    .line 1034
    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    .line 1035
    .line 1036
    const/16 v18, 0x1

    .line 1037
    .line 1038
    add-int/lit8 v4, v4, -0x1

    .line 1039
    .line 1040
    aget-object v4, v8, v4

    .line 1041
    .line 1042
    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    .line 1043
    .line 1044
    sub-int/2addr v7, v4

    .line 1045
    aput v5, v6, v7

    .line 1046
    .line 1047
    goto :goto_1b

    .line 1048
    :cond_26
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1049
    .line 1050
    .line 1051
    :cond_27
    :goto_1b
    iget v4, v0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 1052
    .line 1053
    :goto_1c
    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1054
    .line 1055
    iget v6, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 1056
    .line 1057
    if-lez v6, :cond_28

    .line 1058
    .line 1059
    goto :goto_1d

    .line 1060
    :cond_28
    iget v6, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 1061
    .line 1062
    iget v5, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h:I

    .line 1063
    .line 1064
    if-ne v6, v5, :cond_3a

    .line 1065
    .line 1066
    :goto_1d
    if-eqz v1, :cond_33

    .line 1067
    .line 1068
    if-eqz p1, :cond_2a

    .line 1069
    .line 1070
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 1071
    .line 1072
    iget-object v4, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1073
    .line 1074
    iget v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    .line 1075
    .line 1076
    if-eqz v5, :cond_29

    .line 1077
    .line 1078
    goto :goto_1e

    .line 1079
    :cond_29
    const-string v5, "Cannot end node insertion, there are no pending operations that can be realized."

    .line 1080
    .line 1081
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    :goto_1e
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1085
    .line 1086
    iget-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 1087
    .line 1088
    iget v6, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    .line 1089
    .line 1090
    add-int/lit8 v6, v6, -0x1

    .line 1091
    .line 1092
    iput v6, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    .line 1093
    .line 1094
    aget-object v7, v5, v6

    .line 1095
    .line 1096
    const/4 v8, 0x0

    .line 1097
    aput-object v8, v5, v6

    .line 1098
    .line 1099
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 1100
    .line 1101
    .line 1102
    iget-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->e:[Ljava/lang/Object;

    .line 1103
    .line 1104
    iget-object v6, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->e:[Ljava/lang/Object;

    .line 1105
    .line 1106
    iget v10, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->f:I

    .line 1107
    .line 1108
    iget v11, v7, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->b:I

    .line 1109
    .line 1110
    sub-int/2addr v10, v11

    .line 1111
    iget v12, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->f:I

    .line 1112
    .line 1113
    sub-int v13, v12, v11

    .line 1114
    .line 1115
    sub-int/2addr v12, v13

    .line 1116
    invoke-static {v5, v13, v6, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1117
    .line 1118
    .line 1119
    iget-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->e:[Ljava/lang/Object;

    .line 1120
    .line 1121
    iget v6, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->f:I

    .line 1122
    .line 1123
    sub-int v10, v6, v11

    .line 1124
    .line 1125
    invoke-static {v5, v10, v6, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1126
    .line 1127
    .line 1128
    iget-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    .line 1129
    .line 1130
    iget-object v6, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c:[I

    .line 1131
    .line 1132
    iget v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    .line 1133
    .line 1134
    iget v7, v7, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->a:I

    .line 1135
    .line 1136
    sub-int/2addr v2, v7

    .line 1137
    iget v8, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    .line 1138
    .line 1139
    sub-int v10, v8, v7

    .line 1140
    .line 1141
    invoke-static {v2, v10, v8, v5, v6}, Lkotlin/collections/ArraysKt;->f(III[I[I)V

    .line 1142
    .line 1143
    .line 1144
    iget v2, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->f:I

    .line 1145
    .line 1146
    sub-int/2addr v2, v11

    .line 1147
    iput v2, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->f:I

    .line 1148
    .line 1149
    iget v2, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    .line 1150
    .line 1151
    sub-int/2addr v2, v7

    .line 1152
    iput v2, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d:I

    .line 1153
    .line 1154
    const/4 v2, 0x1

    .line 1155
    :cond_2a
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1156
    .line 1157
    iget v5, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 1158
    .line 1159
    if-lez v5, :cond_2b

    .line 1160
    .line 1161
    goto :goto_1f

    .line 1162
    :cond_2b
    const-string v5, "Unbalanced begin/end empty"

    .line 1163
    .line 1164
    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->a(Ljava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    :goto_1f
    iget v5, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 1168
    .line 1169
    add-int/lit8 v5, v5, -0x1

    .line 1170
    .line 1171
    iput v5, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 1172
    .line 1173
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 1174
    .line 1175
    iget v5, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    .line 1176
    .line 1177
    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->j()V

    .line 1178
    .line 1179
    .line 1180
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1181
    .line 1182
    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k:I

    .line 1183
    .line 1184
    if-lez v4, :cond_2c

    .line 1185
    .line 1186
    goto/16 :goto_23

    .line 1187
    .line 1188
    :cond_2c
    rsub-int/lit8 v4, v5, -0x2

    .line 1189
    .line 1190
    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 1191
    .line 1192
    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->k()V

    .line 1193
    .line 1194
    .line 1195
    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 1196
    .line 1197
    const/4 v8, 0x1

    .line 1198
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e(Z)V

    .line 1199
    .line 1200
    .line 1201
    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->N:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 1202
    .line 1203
    iget-object v6, v0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 1204
    .line 1205
    iget-object v6, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1206
    .line 1207
    invoke-virtual {v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->c()Z

    .line 1208
    .line 1209
    .line 1210
    move-result v6

    .line 1211
    iget-object v7, v0, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 1212
    .line 1213
    if-eqz v6, :cond_2f

    .line 1214
    .line 1215
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    .line 1216
    .line 1217
    .line 1218
    const/4 v8, 0x0

    .line 1219
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 1220
    .line 1221
    .line 1222
    iget-object v6, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d:Landroidx/compose/runtime/IntStack;

    .line 1223
    .line 1224
    iget-object v8, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    .line 1225
    .line 1226
    iget-object v8, v8, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1227
    .line 1228
    iget v10, v8, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    .line 1229
    .line 1230
    if-lez v10, :cond_2e

    .line 1231
    .line 1232
    iget v10, v8, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 1233
    .line 1234
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/IntStack;->a(I)I

    .line 1235
    .line 1236
    .line 1237
    move-result v3

    .line 1238
    if-eq v3, v10, :cond_2e

    .line 1239
    .line 1240
    iget-boolean v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 1241
    .line 1242
    if-nez v3, :cond_2d

    .line 1243
    .line 1244
    iget-boolean v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z

    .line 1245
    .line 1246
    if-eqz v3, :cond_2d

    .line 1247
    .line 1248
    const/4 v3, 0x0

    .line 1249
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 1250
    .line 1251
    .line 1252
    iget-object v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 1253
    .line 1254
    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1255
    .line 1256
    sget-object v11, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureRootGroupStarted;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureRootGroupStarted;

    .line 1257
    .line 1258
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 1259
    .line 1260
    .line 1261
    const/4 v3, 0x1

    .line 1262
    iput-boolean v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 1263
    .line 1264
    :cond_2d
    if-lez v10, :cond_2e

    .line 1265
    .line 1266
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v3

    .line 1270
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/IntStack;->c(I)V

    .line 1271
    .line 1272
    .line 1273
    const/4 v8, 0x0

    .line 1274
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 1275
    .line 1276
    .line 1277
    iget-object v6, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 1278
    .line 1279
    iget-object v6, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1280
    .line 1281
    sget-object v10, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureGroupStarted;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureGroupStarted;

    .line 1282
    .line 1283
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 1284
    .line 1285
    .line 1286
    invoke-static {v6, v8, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 1287
    .line 1288
    .line 1289
    const/4 v8, 0x1

    .line 1290
    iput-boolean v8, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 1291
    .line 1292
    goto :goto_20

    .line 1293
    :cond_2e
    const/4 v8, 0x1

    .line 1294
    :goto_20
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    .line 1295
    .line 1296
    .line 1297
    iget-object v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 1298
    .line 1299
    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1300
    .line 1301
    sget-object v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlots;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlots;

    .line 1302
    .line 1303
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 1304
    .line 1305
    .line 1306
    const/4 v6, 0x0

    .line 1307
    invoke-static {v3, v6, v5, v8, v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 1308
    .line 1309
    .line 1310
    move v3, v6

    .line 1311
    goto/16 :goto_21

    .line 1312
    .line 1313
    :cond_2f
    const/4 v6, 0x0

    .line 1314
    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 1315
    .line 1316
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 1320
    .line 1321
    .line 1322
    iget-object v6, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d:Landroidx/compose/runtime/IntStack;

    .line 1323
    .line 1324
    iget-object v10, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    .line 1325
    .line 1326
    iget-object v10, v10, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1327
    .line 1328
    iget v11, v10, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    .line 1329
    .line 1330
    if-lez v11, :cond_31

    .line 1331
    .line 1332
    iget v11, v10, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 1333
    .line 1334
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/IntStack;->a(I)I

    .line 1335
    .line 1336
    .line 1337
    move-result v3

    .line 1338
    if-eq v3, v11, :cond_31

    .line 1339
    .line 1340
    iget-boolean v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 1341
    .line 1342
    if-nez v3, :cond_30

    .line 1343
    .line 1344
    iget-boolean v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z

    .line 1345
    .line 1346
    if-eqz v3, :cond_30

    .line 1347
    .line 1348
    const/4 v3, 0x0

    .line 1349
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 1350
    .line 1351
    .line 1352
    iget-object v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 1353
    .line 1354
    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1355
    .line 1356
    sget-object v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureRootGroupStarted;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureRootGroupStarted;

    .line 1357
    .line 1358
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 1359
    .line 1360
    .line 1361
    const/4 v3, 0x1

    .line 1362
    iput-boolean v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 1363
    .line 1364
    :cond_30
    if-lez v11, :cond_31

    .line 1365
    .line 1366
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v3

    .line 1370
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/IntStack;->c(I)V

    .line 1371
    .line 1372
    .line 1373
    const/4 v6, 0x0

    .line 1374
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 1375
    .line 1376
    .line 1377
    iget-object v10, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 1378
    .line 1379
    iget-object v10, v10, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1380
    .line 1381
    sget-object v11, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureGroupStarted;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EnsureGroupStarted;

    .line 1382
    .line 1383
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 1384
    .line 1385
    .line 1386
    invoke-static {v10, v6, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 1387
    .line 1388
    .line 1389
    const/4 v3, 0x1

    .line 1390
    iput-boolean v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 1391
    .line 1392
    :cond_31
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    .line 1393
    .line 1394
    .line 1395
    iget-object v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 1396
    .line 1397
    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1398
    .line 1399
    sget-object v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlotsWithFixups;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlotsWithFixups;

    .line 1400
    .line 1401
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 1402
    .line 1403
    .line 1404
    iget v6, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->f:I

    .line 1405
    .line 1406
    iget-object v9, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->a:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 1407
    .line 1408
    iget v10, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->b:I

    .line 1409
    .line 1410
    const/16 v18, 0x1

    .line 1411
    .line 1412
    add-int/lit8 v10, v10, -0x1

    .line 1413
    .line 1414
    aget-object v9, v9, v10

    .line 1415
    .line 1416
    iget v9, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->b:I

    .line 1417
    .line 1418
    sub-int/2addr v6, v9

    .line 1419
    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->e:[Ljava/lang/Object;

    .line 1420
    .line 1421
    aput-object v5, v3, v6

    .line 1422
    .line 1423
    add-int/lit8 v5, v6, 0x1

    .line 1424
    .line 1425
    aput-object v7, v3, v5

    .line 1426
    .line 1427
    add-int/lit8 v6, v6, 0x2

    .line 1428
    .line 1429
    aput-object v8, v3, v6

    .line 1430
    .line 1431
    new-instance v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 1432
    .line 1433
    invoke-direct {v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;-><init>()V

    .line 1434
    .line 1435
    .line 1436
    iput-object v3, v0, Landroidx/compose/runtime/GapComposer;->O:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 1437
    .line 1438
    const/4 v3, 0x0

    .line 1439
    :goto_21
    iput-boolean v3, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1440
    .line 1441
    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 1442
    .line 1443
    iget v5, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->k:I

    .line 1444
    .line 1445
    if-nez v5, :cond_32

    .line 1446
    .line 1447
    goto :goto_23

    .line 1448
    :cond_32
    invoke-virtual {v0, v4, v3}, Landroidx/compose/runtime/GapComposer;->d0(II)V

    .line 1449
    .line 1450
    .line 1451
    invoke-virtual {v0, v4, v2}, Landroidx/compose/runtime/GapComposer;->e0(II)V

    .line 1452
    .line 1453
    .line 1454
    goto :goto_23

    .line 1455
    :cond_33
    if-eqz p1, :cond_34

    .line 1456
    .line 1457
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a()V

    .line 1458
    .line 1459
    .line 1460
    :cond_34
    iget-object v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->a:Landroidx/compose/runtime/GapComposer;

    .line 1461
    .line 1462
    iget-object v3, v3, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1463
    .line 1464
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 1465
    .line 1466
    iget-object v4, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d:Landroidx/compose/runtime/IntStack;

    .line 1467
    .line 1468
    move/from16 v5, v17

    .line 1469
    .line 1470
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/IntStack;->a(I)I

    .line 1471
    .line 1472
    .line 1473
    move-result v6

    .line 1474
    if-gt v6, v3, :cond_35

    .line 1475
    .line 1476
    goto :goto_22

    .line 1477
    :cond_35
    const-string v6, "Missed recording an endGroup"

    .line 1478
    .line 1479
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 1480
    .line 1481
    .line 1482
    :goto_22
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/IntStack;->a(I)I

    .line 1483
    .line 1484
    .line 1485
    move-result v5

    .line 1486
    if-ne v5, v3, :cond_36

    .line 1487
    .line 1488
    const/4 v8, 0x0

    .line 1489
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 1490
    .line 1491
    .line 1492
    invoke-virtual {v4}, Landroidx/compose/runtime/IntStack;->b()I

    .line 1493
    .line 1494
    .line 1495
    iget-object v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 1496
    .line 1497
    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1498
    .line 1499
    sget-object v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;

    .line 1500
    .line 1501
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 1502
    .line 1503
    .line 1504
    :cond_36
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1505
    .line 1506
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 1507
    .line 1508
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->i0(I)I

    .line 1509
    .line 1510
    .line 1511
    move-result v4

    .line 1512
    if-eq v2, v4, :cond_37

    .line 1513
    .line 1514
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->e0(II)V

    .line 1515
    .line 1516
    .line 1517
    :cond_37
    if-eqz p1, :cond_38

    .line 1518
    .line 1519
    const/4 v2, 0x1

    .line 1520
    :cond_38
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1521
    .line 1522
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->e()V

    .line 1523
    .line 1524
    .line 1525
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c()V

    .line 1526
    .line 1527
    .line 1528
    :goto_23
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->i:Ljava/util/ArrayList;

    .line 1529
    .line 1530
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1531
    .line 1532
    .line 1533
    move-result v4

    .line 1534
    const/16 v18, 0x1

    .line 1535
    .line 1536
    add-int/lit8 v4, v4, -0x1

    .line 1537
    .line 1538
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v3

    .line 1542
    check-cast v3, Landroidx/compose/runtime/GapPending;

    .line 1543
    .line 1544
    if-eqz v3, :cond_39

    .line 1545
    .line 1546
    if-nez v1, :cond_39

    .line 1547
    .line 1548
    iget v1, v3, Landroidx/compose/runtime/GapPending;->c:I

    .line 1549
    .line 1550
    add-int/lit8 v1, v1, 0x1

    .line 1551
    .line 1552
    iput v1, v3, Landroidx/compose/runtime/GapPending;->c:I

    .line 1553
    .line 1554
    :cond_39
    iput-object v3, v0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    .line 1555
    .line 1556
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/IntStack;->b()I

    .line 1557
    .line 1558
    .line 1559
    move-result v1

    .line 1560
    add-int/2addr v1, v2

    .line 1561
    iput v1, v0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 1562
    .line 1563
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/IntStack;->b()I

    .line 1564
    .line 1565
    .line 1566
    move-result v1

    .line 1567
    iput v1, v0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 1568
    .line 1569
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/IntStack;->b()I

    .line 1570
    .line 1571
    .line 1572
    move-result v1

    .line 1573
    add-int/2addr v1, v2

    .line 1574
    iput v1, v0, Landroidx/compose/runtime/GapComposer;->l:I

    .line 1575
    .line 1576
    return-void

    .line 1577
    :cond_3a
    move/from16 v5, v17

    .line 1578
    .line 1579
    const/4 v8, 0x0

    .line 1580
    const/16 v18, 0x1

    .line 1581
    .line 1582
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->H()V

    .line 1583
    .line 1584
    .line 1585
    iget-object v7, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1586
    .line 1587
    invoke-virtual {v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->s()I

    .line 1588
    .line 1589
    .line 1590
    move-result v7

    .line 1591
    invoke-virtual {v9, v4, v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e(II)V

    .line 1592
    .line 1593
    .line 1594
    iget-object v7, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1595
    .line 1596
    iget v7, v7, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 1597
    .line 1598
    move-object/from16 v10, v37

    .line 1599
    .line 1600
    invoke-static {v6, v7, v10}, Landroidx/compose/runtime/GapComposerKt;->a(IILjava/util/List;)V

    .line 1601
    .line 1602
    .line 1603
    goto/16 :goto_1c
.end method

.method public final q()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->w()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 12
    .line 13
    and-int/lit8 v1, v0, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final r()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->E:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sub-int/2addr v2, v3

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_7

    .line 27
    .line 28
    iget v5, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 29
    .line 30
    and-int/lit8 v5, v5, -0x9

    .line 31
    .line 32
    iput v5, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 33
    .line 34
    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->g:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 35
    .line 36
    invoke-virtual {v5}, Landroidx/compose/runtime/CompositionObserverHolder;->a()V

    .line 37
    .line 38
    .line 39
    iget v5, v0, Landroidx/compose/runtime/GapComposer;->B:I

    .line 40
    .line 41
    iget-object v6, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->f:Landroidx/collection/MutableObjectIntMap;

    .line 42
    .line 43
    if-eqz v6, :cond_5

    .line 44
    .line 45
    iget v7, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 46
    .line 47
    and-int/lit8 v7, v7, 0x10

    .line 48
    .line 49
    if-eqz v7, :cond_1

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_1
    iget-object v7, v6, Landroidx/collection/ObjectIntMap;->b:[Ljava/lang/Object;

    .line 53
    .line 54
    iget-object v8, v6, Landroidx/collection/ObjectIntMap;->c:[I

    .line 55
    .line 56
    iget-object v9, v6, Landroidx/collection/ObjectIntMap;->a:[J

    .line 57
    .line 58
    array-length v10, v9

    .line 59
    add-int/lit8 v10, v10, -0x2

    .line 60
    .line 61
    if-ltz v10, :cond_5

    .line 62
    .line 63
    move v11, v2

    .line 64
    :goto_1
    aget-wide v12, v9, v11

    .line 65
    .line 66
    not-long v14, v12

    .line 67
    const/16 v16, 0x7

    .line 68
    .line 69
    shl-long v14, v14, v16

    .line 70
    .line 71
    and-long/2addr v14, v12

    .line 72
    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    and-long v14, v14, v16

    .line 78
    .line 79
    cmp-long v14, v14, v16

    .line 80
    .line 81
    if-eqz v14, :cond_4

    .line 82
    .line 83
    sub-int v14, v11, v10

    .line 84
    .line 85
    not-int v14, v14

    .line 86
    ushr-int/lit8 v14, v14, 0x1f

    .line 87
    .line 88
    const/16 v15, 0x8

    .line 89
    .line 90
    rsub-int/lit8 v14, v14, 0x8

    .line 91
    .line 92
    move v4, v2

    .line 93
    :goto_2
    if-ge v4, v14, :cond_3

    .line 94
    .line 95
    const-wide/16 v17, 0xff

    .line 96
    .line 97
    and-long v17, v12, v17

    .line 98
    .line 99
    const-wide/16 v19, 0x80

    .line 100
    .line 101
    cmp-long v17, v17, v19

    .line 102
    .line 103
    if-gez v17, :cond_2

    .line 104
    .line 105
    shl-int/lit8 v17, v11, 0x3

    .line 106
    .line 107
    add-int v17, v17, v4

    .line 108
    .line 109
    aget-object v18, v7, v17

    .line 110
    .line 111
    aget v3, v8, v17

    .line 112
    .line 113
    if-eq v3, v5, :cond_2

    .line 114
    .line 115
    new-instance v3, Lde;

    .line 116
    .line 117
    invoke-direct {v3, v5, v2, v1, v6}, Lde;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_2
    shr-long/2addr v12, v15

    .line 122
    add-int/lit8 v4, v4, 0x1

    .line 123
    .line 124
    const/4 v3, 0x1

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    if-ne v14, v15, :cond_5

    .line 127
    .line 128
    :cond_4
    if-eq v11, v10, :cond_5

    .line 129
    .line 130
    add-int/lit8 v11, v11, 0x1

    .line 131
    .line 132
    const/4 v3, 0x1

    .line 133
    goto :goto_1

    .line 134
    :cond_5
    :goto_3
    const/4 v3, 0x0

    .line 135
    :goto_4
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 136
    .line 137
    if-eqz v3, :cond_6

    .line 138
    .line 139
    iget-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 140
    .line 141
    iget-object v5, v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 142
    .line 143
    sget-object v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCompositionScope;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCompositionScope;

    .line 144
    .line 145
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 146
    .line 147
    .line 148
    iget-object v6, v0, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    .line 149
    .line 150
    const/4 v7, 0x1

    .line 151
    invoke-static {v5, v2, v3, v7, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 155
    .line 156
    and-int/lit16 v5, v3, 0x200

    .line 157
    .line 158
    if-eqz v5, :cond_7

    .line 159
    .line 160
    and-int/lit16 v3, v3, -0x201

    .line 161
    .line 162
    iput v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 163
    .line 164
    iget-object v3, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 165
    .line 166
    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 167
    .line 168
    sget-object v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndResumingScope;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndResumingScope;

    .line 169
    .line 170
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v3, v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$WriteScope;->a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 177
    .line 178
    and-int/lit16 v4, v3, -0x81

    .line 179
    .line 180
    iput v4, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 181
    .line 182
    and-int/lit16 v4, v3, 0x400

    .line 183
    .line 184
    if-eqz v4, :cond_7

    .line 185
    .line 186
    and-int/lit16 v3, v3, -0x481

    .line 187
    .line 188
    iput v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 189
    .line 190
    iget v3, v0, Landroidx/compose/runtime/GapComposer;->z:I

    .line 191
    .line 192
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 193
    .line 194
    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 195
    .line 196
    if-ne v3, v4, :cond_7

    .line 197
    .line 198
    iput-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 199
    .line 200
    const/4 v3, -0x1

    .line 201
    iput v3, v0, Landroidx/compose/runtime/GapComposer;->z:I

    .line 202
    .line 203
    :cond_7
    if-eqz v1, :cond_c

    .line 204
    .line 205
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 206
    .line 207
    and-int/lit8 v4, v3, 0x10

    .line 208
    .line 209
    if-eqz v4, :cond_8

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_8
    const/16 v18, 0x1

    .line 213
    .line 214
    and-int/lit8 v3, v3, 0x1

    .line 215
    .line 216
    if-eqz v3, :cond_9

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_9
    iget-boolean v3, v0, Landroidx/compose/runtime/GapComposer;->q:Z

    .line 220
    .line 221
    if-eqz v3, :cond_c

    .line 222
    .line 223
    :goto_5
    iget-object v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->c:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 224
    .line 225
    if-nez v3, :cond_b

    .line 226
    .line 227
    iget-boolean v3, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 228
    .line 229
    if-eqz v3, :cond_a

    .line 230
    .line 231
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 232
    .line 233
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    .line 234
    .line 235
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    goto :goto_6

    .line 240
    :cond_a
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 241
    .line 242
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i:I

    .line 243
    .line 244
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    :goto_6
    iput-object v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->c:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 249
    .line 250
    :cond_b
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 251
    .line 252
    and-int/lit8 v3, v3, -0x5

    .line 253
    .line 254
    iput v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 255
    .line 256
    move-object v4, v1

    .line 257
    goto :goto_8

    .line 258
    :cond_c
    :goto_7
    const/4 v4, 0x0

    .line 259
    :goto_8
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 260
    .line 261
    .line 262
    return-object v4
.end method

.method public final s()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->c()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 14
    .line 15
    iget-boolean v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->a:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 28
    .line 29
    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->d(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 32
    .line 33
    .line 34
    iput-boolean v0, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->c:Z

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b()V

    .line 37
    .line 38
    .line 39
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->d:Landroidx/compose/runtime/IntStack;

    .line 40
    .line 41
    iget v1, v1, Landroidx/compose/runtime/IntStack;->b:I

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v1, "Missed recording an endGroup()"

    .line 47
    .line 48
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->i:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    const-string v1, "Start/end imbalance"

    .line 60
    .line 61
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->i()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->x:Landroidx/compose/runtime/IntStack;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->b()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    :cond_3
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 82
    .line 83
    return-void
.end method

.method public final t(ZLandroidx/compose/runtime/GapPending;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Landroidx/compose/runtime/GapComposer;->j:Landroidx/compose/runtime/GapPending;

    .line 9
    .line 10
    iget p2, p0, Landroidx/compose/runtime/GapComposer;->l:I

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->n:Landroidx/compose/runtime/IntStack;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->c(I)V

    .line 15
    .line 16
    .line 17
    iget p2, p0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->c(I)V

    .line 20
    .line 21
    .line 22
    iget p2, p0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->c(I)V

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iput p2, p0, Landroidx/compose/runtime/GapComposer;->k:I

    .line 31
    .line 32
    :cond_0
    iput p2, p0, Landroidx/compose/runtime/GapComposer;->l:I

    .line 33
    .line 34
    iput p2, p0, Landroidx/compose/runtime/GapComposer;->m:I

    .line 35
    .line 36
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->C:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->c()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->d()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Landroidx/collection/MutableIntObjectMap;

    .line 22
    .line 23
    invoke-direct {v1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->t:Landroidx/collection/MutableIntObjectMap;

    .line 27
    .line 28
    :cond_1
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->e()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e(Z)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 39
    .line 40
    return-void
.end method

.method public final v()Landroidx/compose/runtime/tooling/CompositionData;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->U:Landroidx/compose/runtime/GapCompositionDataImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/runtime/GapCompositionDataImpl;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/compose/runtime/GapCompositionDataImpl;-><init>(Landroidx/compose/runtime/Composition;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->U:Landroidx/compose/runtime/GapCompositionDataImpl;

    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final w()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/GapComposer;->A:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->E:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public final x()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->z()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->w()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iget p0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 18
    .line 19
    and-int/lit8 p0, p0, 0x4

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final y()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->b:Landroidx/compose/runtime/CompositionContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->Q:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->w()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget p0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 20
    .line 21
    and-int/lit8 p0, p0, 0x8

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method
