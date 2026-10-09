.class public final Landroidx/compose/material/AnchoredDraggableState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lkotlin/jvm/functions/Function1;

.field public final b:Lkotlin/jvm/functions/Function0;

.field public final c:Landroidx/compose/animation/core/AnimationSpec;

.field public final d:Lkotlin/jvm/functions/Function1;

.field public final e:Landroidx/compose/material/InternalMutatorMutex;

.field public final f:Landroidx/compose/material/AnchoredDraggableState$draggableState$1;

.field public final g:Landroidx/compose/runtime/MutableState;

.field public final h:Landroidx/compose/runtime/State;

.field public final i:Landroidx/compose/runtime/State;

.field public final j:Landroidx/compose/runtime/MutableFloatState;

.field public final k:Landroidx/compose/runtime/MutableFloatState;

.field public final l:Landroidx/compose/runtime/MutableState;

.field public final m:Landroidx/compose/runtime/MutableState;

.field public final n:Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/material/AnchoredDraggableState;->a:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/material/AnchoredDraggableState;->b:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/material/AnchoredDraggableState;->c:Landroidx/compose/animation/core/AnimationSpec;

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/compose/material/AnchoredDraggableState;->d:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    new-instance p2, Landroidx/compose/material/InternalMutatorMutex;

    .line 13
    .line 14
    invoke-direct {p2}, Landroidx/compose/material/InternalMutatorMutex;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/material/AnchoredDraggableState;->e:Landroidx/compose/material/InternalMutatorMutex;

    .line 18
    .line 19
    new-instance p2, Landroidx/compose/material/AnchoredDraggableState$draggableState$1;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Landroidx/compose/material/AnchoredDraggableState$draggableState$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Landroidx/compose/material/AnchoredDraggableState;->f:Landroidx/compose/material/AnchoredDraggableState$draggableState$1;

    .line 25
    .line 26
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState;->g:Landroidx/compose/runtime/MutableState;

    .line 31
    .line 32
    new-instance p1, Lf0;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-direct {p1, p0, p2}, Lf0;-><init>(Landroidx/compose/material/AnchoredDraggableState;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState;->h:Landroidx/compose/runtime/State;

    .line 43
    .line 44
    new-instance p1, Landroidx/compose/material/a;

    .line 45
    .line 46
    invoke-direct {p1, p2, p0}, Landroidx/compose/material/a;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState;->i:Landroidx/compose/runtime/State;

    .line 54
    .line 55
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 56
    .line 57
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState;->j:Landroidx/compose/runtime/MutableFloatState;

    .line 62
    .line 63
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->m()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance p2, Landroidx/compose/material/a;

    .line 68
    .line 69
    const/4 p3, 0x1

    .line 70
    invoke-direct {p2, p3, p0}, Landroidx/compose/material/a;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState;->k:Landroidx/compose/runtime/MutableFloatState;

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState;->l:Landroidx/compose/runtime/MutableState;

    .line 89
    .line 90
    new-instance p1, Landroidx/compose/material/MapDraggableAnchors;

    .line 91
    .line 92
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-direct {p1, p2}, Landroidx/compose/material/MapDraggableAnchors;-><init>(Ljava/util/Map;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState;->m:Landroidx/compose/runtime/MutableState;

    .line 104
    .line 105
    new-instance p1, Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;

    .line 106
    .line 107
    invoke-direct {p1, p0}, Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;)V

    .line 108
    .line 109
    .line 110
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState;->n:Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;

    .line 111
    .line 112
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$1;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    iget-object v4, p0, Landroidx/compose/material/AnchoredDraggableState;->d:Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    const/high16 v5, 0x3f000000    # 0.5f

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    if-ne v2, v6, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :try_start_1
    iget-object p3, p0, Landroidx/compose/material/AnchoredDraggableState;->e:Landroidx/compose/material/InternalMutatorMutex;

    .line 57
    .line 58
    new-instance v2, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2;

    .line 59
    .line 60
    invoke-direct {v2, p0, v3, p2}, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2;-><init>(Landroidx/compose/material/AnchoredDraggableState;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function3;)V

    .line 61
    .line 62
    .line 63
    iput v6, v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$1;->o:I

    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance p2, Landroidx/compose/material/InternalMutatorMutex$mutate$2;

    .line 69
    .line 70
    invoke-direct {p2, p1, p3, v2, v3}, Landroidx/compose/material/InternalMutatorMutex$mutate$2;-><init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/material/InternalMutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    if-ne p1, v1, :cond_3

    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    check-cast p1, Landroidx/compose/material/MapDraggableAnchors;

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroidx/compose/material/MapDraggableAnchors;->a(F)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    check-cast p3, Landroidx/compose/material/MapDraggableAnchors;

    .line 105
    .line 106
    invoke-virtual {p3, p1}, Landroidx/compose/material/MapDraggableAnchors;->c(Ljava/lang/Object;)F

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    sub-float/2addr p2, p3

    .line 111
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    cmpg-float p2, p2, v5

    .line 116
    .line 117
    if-gtz p2, :cond_4

    .line 118
    .line 119
    invoke-interface {v4, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    check-cast p2, Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_4

    .line 130
    .line 131
    invoke-virtual {p0, p1}, Landroidx/compose/material/AnchoredDraggableState;->g(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p0

    .line 137
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 142
    .line 143
    .line 144
    move-result p3

    .line 145
    check-cast p2, Landroidx/compose/material/MapDraggableAnchors;

    .line 146
    .line 147
    invoke-virtual {p2, p3}, Landroidx/compose/material/MapDraggableAnchors;->a(F)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    if-eqz p2, :cond_5

    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 154
    .line 155
    .line 156
    move-result p3

    .line 157
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Landroidx/compose/material/MapDraggableAnchors;

    .line 162
    .line 163
    invoke-virtual {v0, p2}, Landroidx/compose/material/MapDraggableAnchors;->c(Ljava/lang/Object;)F

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    sub-float/2addr p3, v0

    .line 168
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    cmpg-float p3, p3, v5

    .line 173
    .line 174
    if-gtz p3, :cond_5

    .line 175
    .line 176
    invoke-interface {v4, p2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    check-cast p3, Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 183
    .line 184
    .line 185
    move-result p3

    .line 186
    if-eqz p3, :cond_5

    .line 187
    .line 188
    invoke-virtual {p0, p2}, Landroidx/compose/material/AnchoredDraggableState;->g(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_5
    throw p1
.end method

.method public final b(Ljava/lang/Object;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p4, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$3;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$3;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$3;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$3;-><init>(Landroidx/compose/material/AnchoredDraggableState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$3;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$3;->o:I

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/compose/material/AnchoredDraggableState;->d:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    const/high16 v4, 0x3f000000    # 0.5f

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    if-ne v2, v5, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v6

    .line 53
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    check-cast p4, Landroidx/compose/material/MapDraggableAnchors;

    .line 61
    .line 62
    iget-object p4, p4, Landroidx/compose/material/MapDraggableAnchors;->a:Ljava/util/Map;

    .line 63
    .line 64
    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    if-eqz p4, :cond_5

    .line 69
    .line 70
    :try_start_1
    iget-object p4, p0, Landroidx/compose/material/AnchoredDraggableState;->e:Landroidx/compose/material/InternalMutatorMutex;

    .line 71
    .line 72
    new-instance v2, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;

    .line 73
    .line 74
    invoke-direct {v2, p0, p1, p3, v6}, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;-><init>(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V

    .line 75
    .line 76
    .line 77
    iput v5, v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$3;->o:I

    .line 78
    .line 79
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance p1, Landroidx/compose/material/InternalMutatorMutex$mutate$2;

    .line 83
    .line 84
    invoke-direct {p1, p2, p4, v2, v6}, Landroidx/compose/material/InternalMutatorMutex$mutate$2;-><init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/material/InternalMutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    if-ne p1, v1, :cond_3

    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_3
    :goto_1
    invoke-virtual {p0, v6}, Landroidx/compose/material/AnchoredDraggableState;->h(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    check-cast p1, Landroidx/compose/material/MapDraggableAnchors;

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroidx/compose/material/MapDraggableAnchors;->a(F)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    check-cast p3, Landroidx/compose/material/MapDraggableAnchors;

    .line 122
    .line 123
    invoke-virtual {p3, p1}, Landroidx/compose/material/MapDraggableAnchors;->c(Ljava/lang/Object;)F

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    sub-float/2addr p2, p3

    .line 128
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    cmpg-float p2, p2, v4

    .line 133
    .line 134
    if-gtz p2, :cond_6

    .line 135
    .line 136
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Ljava/lang/Boolean;

    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_6

    .line 147
    .line 148
    invoke-virtual {p0, p1}, Landroidx/compose/material/AnchoredDraggableState;->g(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :goto_2
    invoke-virtual {p0, v6}, Landroidx/compose/material/AnchoredDraggableState;->h(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 160
    .line 161
    .line 162
    move-result p3

    .line 163
    check-cast p2, Landroidx/compose/material/MapDraggableAnchors;

    .line 164
    .line 165
    invoke-virtual {p2, p3}, Landroidx/compose/material/MapDraggableAnchors;->a(F)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    if-eqz p2, :cond_4

    .line 170
    .line 171
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 172
    .line 173
    .line 174
    move-result p3

    .line 175
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 176
    .line 177
    .line 178
    move-result-object p4

    .line 179
    check-cast p4, Landroidx/compose/material/MapDraggableAnchors;

    .line 180
    .line 181
    invoke-virtual {p4, p2}, Landroidx/compose/material/MapDraggableAnchors;->c(Ljava/lang/Object;)F

    .line 182
    .line 183
    .line 184
    move-result p4

    .line 185
    sub-float/2addr p3, p4

    .line 186
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    cmpg-float p3, p3, v4

    .line 191
    .line 192
    if-gtz p3, :cond_4

    .line 193
    .line 194
    invoke-interface {v3, p2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    check-cast p3, Ljava/lang/Boolean;

    .line 199
    .line 200
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 201
    .line 202
    .line 203
    move-result p3

    .line 204
    if-eqz p3, :cond_4

    .line 205
    .line 206
    invoke-virtual {p0, p2}, Landroidx/compose/material/AnchoredDraggableState;->g(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :cond_4
    throw p1

    .line 210
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/compose/material/AnchoredDraggableState;->g(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 214
    .line 215
    return-object p0
.end method

.method public final c(FFLjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/compose/material/MapDraggableAnchors;

    .line 6
    .line 7
    invoke-virtual {v0, p3}, Landroidx/compose/material/MapDraggableAnchors;->c(Ljava/lang/Object;)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Landroidx/compose/material/AnchoredDraggableState;->b:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    cmpg-float v3, v1, p1

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object p0, p0, Landroidx/compose/material/AnchoredDraggableState;->a:Lkotlin/jvm/functions/Function1;

    .line 38
    .line 39
    if-gez v3, :cond_4

    .line 40
    .line 41
    cmpl-float p2, p2, v2

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    if-ltz p2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0, p1, v2}, Landroidx/compose/material/MapDraggableAnchors;->b(FZ)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_2
    invoke-virtual {v0, p1, v2}, Landroidx/compose/material/MapDraggableAnchors;->b(FZ)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p2}, Landroidx/compose/material/MapDraggableAnchors;->c(Ljava/lang/Object;)F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    sub-float/2addr v0, v1

    .line 66
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Ljava/lang/Number;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    add-float/2addr p0, v1

    .line 89
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    cmpg-float p0, p1, p0

    .line 94
    .line 95
    if-gez p0, :cond_3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    return-object p2

    .line 99
    :cond_4
    neg-float v2, v2

    .line 100
    cmpg-float p2, p2, v2

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    if-gtz p2, :cond_5

    .line 104
    .line 105
    invoke-virtual {v0, p1, v2}, Landroidx/compose/material/MapDraggableAnchors;->b(FZ)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    return-object p0

    .line 113
    :cond_5
    invoke-virtual {v0, p1, v2}, Landroidx/compose/material/MapDraggableAnchors;->b(FZ)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p2}, Landroidx/compose/material/MapDraggableAnchors;->c(Ljava/lang/Object;)F

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    sub-float v0, v1, v0

    .line 125
    .line 126
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Ljava/lang/Number;

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    sub-float/2addr v1, p0

    .line 149
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    const/4 v0, 0x0

    .line 154
    cmpg-float v0, p1, v0

    .line 155
    .line 156
    if-gez v0, :cond_6

    .line 157
    .line 158
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    cmpg-float p0, p1, p0

    .line 163
    .line 164
    if-gez p0, :cond_7

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_6
    cmpl-float p0, p1, p0

    .line 168
    .line 169
    if-lez p0, :cond_7

    .line 170
    .line 171
    :goto_0
    return-object p3

    .line 172
    :cond_7
    return-object p2
.end method

.method public final d()Landroidx/compose/material/DraggableAnchors;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/material/AnchoredDraggableState;->m:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/material/DraggableAnchors;

    .line 10
    .line 11
    return-object p0
.end method

.method public final e()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/material/AnchoredDraggableState;->j:Landroidx/compose/runtime/MutableFloatState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final f()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const-string p0, "The offset was read before being initialized. Did you access the offset in a phase before layout, like effects or composition?"

    .line 17
    .line 18
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/material/AnchoredDraggableState;->g:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/material/AnchoredDraggableState;->l:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
