.class public abstract Landroidx/compose/animation/core/Transition;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/Transition$DeferredAnimation;,
        Landroidx/compose/animation/core/Transition$Segment;,
        Landroidx/compose/animation/core/Transition$SegmentImpl;,
        Landroidx/compose/animation/core/Transition$TransitionAnimationState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/compose/animation/core/TransitionState;

.field public final b:Landroidx/compose/animation/core/Transition;

.field public final c:Ljava/lang/String;

.field public final d:Landroidx/compose/runtime/MutableState;

.field public final e:Landroidx/compose/runtime/MutableState;

.field public final f:Landroidx/compose/runtime/MutableState;

.field public final g:Landroidx/compose/runtime/MutableLongState;

.field public final h:Landroidx/compose/runtime/MutableLongState;

.field public final i:Landroidx/compose/runtime/MutableState;

.field public final j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field public final k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field public final l:Landroidx/compose/runtime/MutableState;

.field public final m:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/TransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/animation/core/Transition;->b:Landroidx/compose/animation/core/Transition;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/animation/core/Transition;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iput-object p2, p0, Landroidx/compose/animation/core/Transition;->e:Landroidx/compose/runtime/MutableState;

    .line 26
    .line 27
    new-instance p2, Landroidx/compose/animation/core/Transition$SegmentImpl;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p1}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p2, p3, v0}, Landroidx/compose/animation/core/Transition$SegmentImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Landroidx/compose/animation/core/Transition;->f:Landroidx/compose/runtime/MutableState;

    .line 45
    .line 46
    const-wide/16 p2, 0x0

    .line 47
    .line 48
    invoke-static {p2, p3}, Landroidx/compose/runtime/SnapshotLongStateKt;->a(J)Landroidx/compose/runtime/MutableLongState;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iput-object p2, p0, Landroidx/compose/animation/core/Transition;->g:Landroidx/compose/runtime/MutableLongState;

    .line 53
    .line 54
    const-wide/high16 p2, -0x8000000000000000L

    .line 55
    .line 56
    invoke-static {p2, p3}, Landroidx/compose/runtime/SnapshotLongStateKt;->a(J)Landroidx/compose/runtime/MutableLongState;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Landroidx/compose/animation/core/Transition;->h:Landroidx/compose/runtime/MutableLongState;

    .line 61
    .line 62
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    iput-object p3, p0, Landroidx/compose/animation/core/Transition;->i:Landroidx/compose/runtime/MutableState;

    .line 69
    .line 70
    new-instance p3, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 71
    .line 72
    invoke-direct {p3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p3, p0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 76
    .line 77
    new-instance p3, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 78
    .line 79
    invoke-direct {p3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p3, p0, Landroidx/compose/animation/core/Transition;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 83
    .line 84
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, p0, Landroidx/compose/animation/core/Transition;->l:Landroidx/compose/runtime/MutableState;

    .line 89
    .line 90
    new-instance p2, Lwh;

    .line 91
    .line 92
    const/4 p3, 0x1

    .line 93
    invoke-direct {p2, p0, p3}, Lwh;-><init>(Landroidx/compose/animation/core/Transition;I)V

    .line 94
    .line 95
    .line 96
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iput-object p2, p0, Landroidx/compose/animation/core/Transition;->m:Landroidx/compose/runtime/State;

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Landroidx/compose/animation/core/TransitionState;->d(Landroidx/compose/animation/core/Transition;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x59064cff

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p3, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    and-int/lit8 v0, p3, 0x8

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v0, 0x2

    .line 31
    :goto_1
    or-int/2addr v0, p3

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v0, p3

    .line 34
    :goto_2
    and-int/lit8 v1, p3, 0x30

    .line 35
    .line 36
    const/16 v2, 0x20

    .line 37
    .line 38
    if-nez v1, :cond_4

    .line 39
    .line 40
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    move v1, v2

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    const/16 v1, 0x10

    .line 49
    .line 50
    :goto_3
    or-int/2addr v0, v1

    .line 51
    :cond_4
    and-int/lit8 v1, v0, 0x13

    .line 52
    .line 53
    const/16 v3, 0x12

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    const/4 v5, 0x0

    .line 57
    if-eq v1, v3, :cond_5

    .line 58
    .line 59
    move v1, v4

    .line 60
    goto :goto_4

    .line 61
    :cond_5
    move v1, v5

    .line 62
    :goto_4
    and-int/lit8 v3, v0, 0x1

    .line 63
    .line 64
    invoke-virtual {p2, v3, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_f

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->h()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_e

    .line 75
    .line 76
    const v1, 0x1bc78ba1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/Transition;->s(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    and-int/lit8 v0, v0, 0x70

    .line 86
    .line 87
    if-ne v0, v2, :cond_6

    .line 88
    .line 89
    move v1, v4

    .line 90
    goto :goto_5

    .line 91
    :cond_6
    move v1, v5

    .line 92
    :goto_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 97
    .line 98
    if-nez v1, :cond_7

    .line 99
    .line 100
    if-ne v3, v6, :cond_8

    .line 101
    .line 102
    :cond_7
    new-instance v1, Lwh;

    .line 103
    .line 104
    invoke-direct {v1, p0, v5}, Lwh;-><init>(Landroidx/compose/animation/core/Transition;I)V

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_8
    check-cast v3, Landroidx/compose/runtime/State;

    .line 115
    .line 116
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_d

    .line 127
    .line 128
    const v1, 0x1bcdc5d4

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-ne v1, v6, :cond_9

    .line 139
    .line 140
    invoke-static {p2}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_9
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 148
    .line 149
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-ne v0, v2, :cond_a

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_a
    move v4, v5

    .line 157
    :goto_6
    or-int v0, v3, v4

    .line 158
    .line 159
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    if-nez v0, :cond_b

    .line 164
    .line 165
    if-ne v2, v6, :cond_c

    .line 166
    .line 167
    :cond_b
    new-instance v2, Landroidx/compose/animation/core/b;

    .line 168
    .line 169
    invoke-direct {v2, v1, p0}, Landroidx/compose/animation/core/b;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/Transition;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_c
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 176
    .line 177
    invoke-static {v1, p0, v2, p2}, Landroidx/compose/runtime/EffectsKt;->b(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 181
    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_d
    const v0, 0x1be0bba1

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 191
    .line 192
    .line 193
    :goto_7
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 194
    .line 195
    .line 196
    goto :goto_8

    .line 197
    :cond_e
    const v0, 0x1be0e261

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 204
    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_f
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 208
    .line 209
    .line 210
    :goto_8
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    if-eqz p2, :cond_10

    .line 215
    .line 216
    new-instance v0, Lt2;

    .line 217
    .line 218
    const/16 v1, 0xb

    .line 219
    .line 220
    invoke-direct {v0, p3, v1, p0, p1}, Lt2;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 224
    .line 225
    :cond_10
    return-void
.end method

.method public final b()J
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    move v5, v4

    .line 11
    :goto_0
    if-ge v5, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    check-cast v6, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 18
    .line 19
    iget-object v6, v6, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->u:Landroidx/compose/runtime/MutableLongState;

    .line 20
    .line 21
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 22
    .line 23
    invoke-virtual {v6}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->j()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    :goto_1
    if-ge v4, v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroidx/compose/animation/core/Transition;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->b()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    return-wide v2
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    iput-object v5, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->o:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 19
    .line 20
    iput-object v5, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->n:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 21
    .line 22
    iput-boolean v2, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->r:Z

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    :goto_1
    if-ge v2, v0, :cond_1

    .line 34
    .line 35
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/compose/animation/core/Transition;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->c()V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 16
    .line 17
    iget-object v4, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->n:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    move v1, v2

    .line 32
    :goto_1
    if-ge v1, v0, :cond_3

    .line 33
    .line 34
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroidx/compose/animation/core/Transition;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->d()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    :goto_2
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    return v2
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->b:Landroidx/compose/animation/core/Transition;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->e()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->g:Landroidx/compose/runtime/MutableLongState;

    .line 11
    .line 12
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->j()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    return-wide v0
.end method

.method public final f()Landroidx/compose/animation/core/Transition$Segment;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->f:Landroidx/compose/runtime/MutableState;

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
    check-cast p0, Landroidx/compose/animation/core/Transition$Segment;

    .line 10
    .line 11
    return-object p0
.end method

.method public final g()Z
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->h:Landroidx/compose/runtime/MutableLongState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->j()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/high16 v2, -0x8000000000000000L

    .line 10
    .line 11
    cmp-long p0, v0, v2

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final h()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->l:Landroidx/compose/runtime/MutableState;

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
    check-cast p0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final i(JZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->h:Landroidx/compose/runtime/MutableLongState;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->j()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/high16 v3, -0x8000000000000000L

    .line 11
    .line 12
    cmp-long v1, v1, v3

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->k(J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v2, Landroidx/compose/animation/core/TransitionState;->a:Landroidx/compose/runtime/MutableState;

    .line 24
    .line 25
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, v2, Landroidx/compose/animation/core/TransitionState;->a:Landroidx/compose/runtime/MutableState;

    .line 34
    .line 35
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, v2, Landroidx/compose/animation/core/TransitionState;->a:Landroidx/compose/runtime/MutableState;

    .line 50
    .line 51
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    .line 53
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/Transition;->p(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/4 v3, 0x1

    .line 69
    move v4, v0

    .line 70
    :goto_1
    if-ge v4, v2, :cond_5

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 77
    .line 78
    iget-object v6, v5, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->p:Landroidx/compose/runtime/MutableState;

    .line 79
    .line 80
    iget-object v7, v5, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->p:Landroidx/compose/runtime/MutableState;

    .line 81
    .line 82
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 83
    .line 84
    invoke-virtual {v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_3

    .line 95
    .line 96
    if-eqz p3, :cond_2

    .line 97
    .line 98
    invoke-virtual {v5}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v6}, Landroidx/compose/animation/core/TargetBasedAnimation;->b()J

    .line 103
    .line 104
    .line 105
    move-result-wide v8

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    move-wide v8, p1

    .line 108
    :goto_2
    invoke-virtual {v5}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v6, v8, v9}, Landroidx/compose/animation/core/TargetBasedAnimation;->f(J)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v5, v6}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->h(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v6, v8, v9}, Landroidx/compose/animation/core/TargetBasedAnimation;->d(J)Landroidx/compose/animation/core/AnimationVector;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    iput-object v6, v5, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->t:Landroidx/compose/animation/core/AnimationVector;

    .line 128
    .line 129
    invoke-virtual {v5}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-interface {v5, v8, v9}, Landroidx/compose/animation/core/Animation;->e(J)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_3

    .line 138
    .line 139
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 140
    .line 141
    move-object v6, v7

    .line 142
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 143
    .line 144
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 148
    .line 149
    invoke-virtual {v7}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    check-cast v5, Ljava/lang/Boolean;

    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-nez v5, :cond_4

    .line 160
    .line 161
    move v3, v0

    .line 162
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    iget-object v1, p0, Landroidx/compose/animation/core/Transition;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 166
    .line 167
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    move v4, v0

    .line 172
    :goto_3
    if-ge v4, v2, :cond_8

    .line 173
    .line 174
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    check-cast v5, Landroidx/compose/animation/core/Transition;

    .line 179
    .line 180
    iget-object v6, v5, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 181
    .line 182
    iget-object v7, v5, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 183
    .line 184
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 185
    .line 186
    invoke-virtual {v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-virtual {v7}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-nez v6, :cond_6

    .line 199
    .line 200
    invoke-virtual {v5, p1, p2, p3}, Landroidx/compose/animation/core/Transition;->i(JZ)V

    .line 201
    .line 202
    .line 203
    :cond_6
    iget-object v5, v5, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 204
    .line 205
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 206
    .line 207
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {v7}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-nez v5, :cond_7

    .line 220
    .line 221
    move v3, v0

    .line 222
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_8
    if-eqz v3, :cond_9

    .line 226
    .line 227
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->j()V

    .line 228
    .line 229
    .line 230
    :cond_9
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->h:Landroidx/compose/runtime/MutableLongState;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 4
    .line 5
    const-wide/high16 v1, -0x8000000000000000L

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->k(J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 11
    .line 12
    instance-of v1, v0, Landroidx/compose/animation/core/MutableTransitionState;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroidx/compose/animation/core/TransitionState;->c(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    invoke-virtual {p0, v1, v2}, Landroidx/compose/animation/core/Transition;->o(J)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Landroidx/compose/animation/core/TransitionState;->a:Landroidx/compose/runtime/MutableState;

    .line 34
    .line 35
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x0

    .line 49
    :goto_1
    if-ge v1, v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroidx/compose/animation/core/Transition;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->j()V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    return-void
.end method

.method public final k(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_4

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/high16 v5, -0x3f800000    # -4.0f

    .line 21
    .line 22
    cmpg-float v5, p1, v5

    .line 23
    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/high16 v6, -0x3f600000    # -5.0f

    .line 28
    .line 29
    cmpg-float v6, p1, v6

    .line 30
    .line 31
    if-nez v6, :cond_3

    .line 32
    .line 33
    :goto_1
    iget-object v6, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->o:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 34
    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    iget-object v6, v6, Landroidx/compose/animation/core/TargetBasedAnimation;->c:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v7, v6}, Landroidx/compose/animation/core/TargetBasedAnimation;->h(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    iput-object v6, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->n:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 48
    .line 49
    iput-object v6, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->o:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 50
    .line 51
    :cond_1
    if-nez v5, :cond_2

    .line 52
    .line 53
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-object v5, v5, Landroidx/compose/animation/core/TargetBasedAnimation;->d:Ljava/lang/Object;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    iget-object v5, v5, Landroidx/compose/animation/core/TargetBasedAnimation;->c:Ljava/lang/Object;

    .line 65
    .line 66
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v6, v5}, Landroidx/compose/animation/core/TargetBasedAnimation;->h(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v6, v5}, Landroidx/compose/animation/core/TargetBasedAnimation;->i(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v5}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->h(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5}, Landroidx/compose/animation/core/TargetBasedAnimation;->b()J

    .line 88
    .line 89
    .line 90
    move-result-wide v5

    .line 91
    iget-object v4, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->u:Landroidx/compose/runtime/MutableLongState;

    .line 92
    .line 93
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 94
    .line 95
    invoke-virtual {v4, v5, v6}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->k(J)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_3
    iget-object v4, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->q:Landroidx/compose/runtime/MutableFloatState;

    .line 100
    .line 101
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 102
    .line 103
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 104
    .line 105
    .line 106
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    :goto_4
    if-ge v2, v0, :cond_5

    .line 116
    .line 117
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Landroidx/compose/animation/core/Transition;

    .line 122
    .line 123
    invoke-virtual {v1, p1}, Landroidx/compose/animation/core/Transition;->k(F)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_5
    return-void
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->h:Landroidx/compose/runtime/MutableLongState;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 4
    .line 5
    const-wide/high16 v1, -0x8000000000000000L

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->k(J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/compose/animation/core/TransitionState;->a:Landroidx/compose/runtime/MutableState;

    .line 13
    .line 14
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->h()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    move-object v1, v2

    .line 40
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    instance-of v1, v0, Landroidx/compose/animation/core/MutableTransitionState;

    .line 63
    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/compose/animation/core/TransitionState;->c(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 71
    .line 72
    invoke-virtual {v2, p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 76
    .line 77
    iget-object v1, p0, Landroidx/compose/animation/core/Transition;->l:Landroidx/compose/runtime/MutableState;

    .line 78
    .line 79
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Landroidx/compose/animation/core/Transition$SegmentImpl;

    .line 85
    .line 86
    invoke-direct {v0, p1, p2}, Landroidx/compose/animation/core/Transition$SegmentImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Landroidx/compose/animation/core/Transition;->f:Landroidx/compose/runtime/MutableState;

    .line 90
    .line 91
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    iget-object p1, p0, Landroidx/compose/animation/core/Transition;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    const/4 v0, 0x0

    .line 103
    move v1, v0

    .line 104
    :goto_1
    if-ge v1, p2, :cond_5

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Landroidx/compose/animation/core/Transition;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->h()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    iget-object v3, v2, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 122
    .line 123
    invoke-virtual {v3}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iget-object v4, v2, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 128
    .line 129
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 130
    .line 131
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v2, v3, v4}, Landroidx/compose/animation/core/Transition;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    :goto_2
    if-ge v0, p1, :cond_6

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    check-cast p2, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 154
    .line 155
    const-wide/16 v1, 0x0

    .line 156
    .line 157
    invoke-virtual {p2, v1, v2}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->e(J)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v0, v0, 0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    return-void
.end method

.method public final m(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->h:Landroidx/compose/runtime/MutableLongState;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->j()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/high16 v3, -0x8000000000000000L

    .line 11
    .line 12
    cmp-long v1, v1, v3

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->k(J)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/Transition;->o(J)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/Transition;->p(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    move v3, v0

    .line 35
    :goto_0
    if-ge v3, v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 42
    .line 43
    invoke-virtual {v4, p1, p2}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->e(J)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    :goto_1
    if-ge v0, v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroidx/compose/animation/core/Transition;

    .line 62
    .line 63
    iget-object v3, v2, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 64
    .line 65
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget-object v4, v2, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 72
    .line 73
    invoke-virtual {v4}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_2

    .line 82
    .line 83
    invoke-virtual {v2, p1, p2}, Landroidx/compose/animation/core/Transition;->m(J)V

    .line 84
    .line 85
    .line 86
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    return-void
.end method

.method public final n(Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 16
    .line 17
    iget-object v5, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->s:Landroidx/compose/runtime/MutableState;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    iget-object v6, v6, Landroidx/compose/animation/core/TargetBasedAnimation;->c:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    iget-object v7, v7, Landroidx/compose/animation/core/TargetBasedAnimation;->d:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-nez v6, :cond_0

    .line 36
    .line 37
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iput-object v6, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->o:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 42
    .line 43
    iput-object p1, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->n:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 44
    .line 45
    :cond_0
    new-instance v7, Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 46
    .line 47
    iget-object v8, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->w:Landroidx/compose/animation/core/SpringSpec;

    .line 48
    .line 49
    iget-object v9, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->j:Landroidx/compose/animation/core/TwoWayConverter;

    .line 50
    .line 51
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 52
    .line 53
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    iget-object v5, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->t:Landroidx/compose/animation/core/AnimationVector;

    .line 62
    .line 63
    invoke-virtual {v5}, Landroidx/compose/animation/core/AnimationVector;->c()Landroidx/compose/animation/core/AnimationVector;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    invoke-direct/range {v7 .. v12}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 68
    .line 69
    .line 70
    iget-object v5, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->m:Landroidx/compose/runtime/MutableState;

    .line 71
    .line 72
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 73
    .line 74
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v5}, Landroidx/compose/animation/core/TargetBasedAnimation;->b()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    iget-object v7, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->u:Landroidx/compose/runtime/MutableLongState;

    .line 86
    .line 87
    check-cast v7, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 88
    .line 89
    invoke-virtual {v7, v5, v6}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->k(J)V

    .line 90
    .line 91
    .line 92
    const/4 v5, 0x1

    .line 93
    iput-boolean v5, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->r:Z

    .line 94
    .line 95
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    :goto_1
    if-ge v2, v0, :cond_2

    .line 105
    .line 106
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Landroidx/compose/animation/core/Transition;

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Landroidx/compose/animation/core/Transition;->n(Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;)V

    .line 113
    .line 114
    .line 115
    add-int/lit8 v2, v2, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    return-void
.end method

.method public final o(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->b:Landroidx/compose/animation/core/Transition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->g:Landroidx/compose/runtime/MutableLongState;

    .line 6
    .line 7
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->k(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final p(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->i:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final q()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_6

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 16
    .line 17
    iget-object v5, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->n:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    iget-object v6, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->o:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 23
    .line 24
    if-nez v6, :cond_1

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_1
    iget-wide v7, v5, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->g:J

    .line 28
    .line 29
    long-to-double v7, v7

    .line 30
    iget v9, v5, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->d:F

    .line 31
    .line 32
    float-to-double v9, v9

    .line 33
    mul-double/2addr v7, v9

    .line 34
    invoke-static {v7, v8}, Lkotlin/math/MathKt;->c(D)J

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    invoke-virtual {v6, v7, v8}, Landroidx/compose/animation/core/TargetBasedAnimation;->f(J)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    iget-boolean v9, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->r:Z

    .line 43
    .line 44
    if-eqz v9, :cond_2

    .line 45
    .line 46
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v9, v6}, Landroidx/compose/animation/core/TargetBasedAnimation;->i(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-virtual {v9, v6}, Landroidx/compose/animation/core/TargetBasedAnimation;->h(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->b()Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v9}, Landroidx/compose/animation/core/TargetBasedAnimation;->b()J

    .line 65
    .line 66
    .line 67
    move-result-wide v9

    .line 68
    iget-object v11, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->u:Landroidx/compose/runtime/MutableLongState;

    .line 69
    .line 70
    check-cast v11, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 71
    .line 72
    invoke-virtual {v11, v9, v10}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->k(J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->c()F

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    const/high16 v10, -0x40000000    # -2.0f

    .line 80
    .line 81
    cmpg-float v9, v9, v10

    .line 82
    .line 83
    if-nez v9, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-boolean v9, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->r:Z

    .line 87
    .line 88
    if-eqz v9, :cond_4

    .line 89
    .line 90
    :goto_1
    invoke-virtual {v4, v6}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->h(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    iget-object v6, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->x:Landroidx/compose/animation/core/Transition;

    .line 95
    .line 96
    invoke-virtual {v6}, Landroidx/compose/animation/core/Transition;->e()J

    .line 97
    .line 98
    .line 99
    move-result-wide v9

    .line 100
    invoke-virtual {v4, v9, v10}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->e(J)V

    .line 101
    .line 102
    .line 103
    :goto_2
    iget-wide v9, v5, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->g:J

    .line 104
    .line 105
    cmp-long v6, v7, v9

    .line 106
    .line 107
    if-ltz v6, :cond_5

    .line 108
    .line 109
    const/4 v5, 0x0

    .line 110
    iput-object v5, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->n:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 111
    .line 112
    iput-object v5, v4, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->o:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    iput-boolean v2, v5, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->c:Z

    .line 116
    .line 117
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_6
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    :goto_4
    if-ge v2, v0, :cond_7

    .line 127
    .line 128
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Landroidx/compose/animation/core/Transition;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->q()V

    .line 135
    .line 136
    .line 137
    add-int/lit8 v2, v2, 0x1

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_7
    return-void
.end method

.method public final r(Landroidx/compose/animation/EnterExitState;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->e:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    move-object v6, v4

    .line 20
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 21
    .line 22
    invoke-virtual {v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v3}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    move v6, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v6, v2

    .line 39
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    new-instance p1, Landroidx/compose/animation/core/Transition$SegmentImpl;

    .line 45
    .line 46
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 47
    .line 48
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {p1, v1, v0}, Landroidx/compose/animation/core/Transition$SegmentImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->f:Landroidx/compose/runtime/MutableState;

    .line 56
    .line 57
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v1}, Landroidx/compose/animation/core/TransitionState;->c(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->g()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_1

    .line 70
    .line 71
    invoke-virtual {p0, v5}, Landroidx/compose/animation/core/Transition;->p(Z)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    :goto_1
    if-ge v2, p1, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 87
    .line 88
    iget-object v0, v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->q:Landroidx/compose/runtime/MutableFloatState;

    .line 89
    .line 90
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 91
    .line 92
    const/high16 v1, -0x40000000    # -2.0f

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    return-void
.end method

.method public final s(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    new-instance v2, Landroidx/compose/animation/core/Transition$SegmentImpl;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v2, v3, p1}, Landroidx/compose/animation/core/Transition$SegmentImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Landroidx/compose/animation/core/Transition;->f:Landroidx/compose/runtime/MutableState;

    .line 26
    .line 27
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v2, v1}, Landroidx/compose/animation/core/TransitionState;->c(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->g()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/Transition;->p(Z)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/4 v0, 0x0

    .line 77
    :goto_0
    if-ge v0, p1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 84
    .line 85
    iget-object v1, v1, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->q:Landroidx/compose/runtime/MutableFloatState;

    .line 86
    .line 87
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 88
    .line 89
    const/high16 v2, -0x40000000    # -2.0f

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 92
    .line 93
    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "Transition animation values: "

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", "

    .line 30
    .line 31
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-object v1
.end method
