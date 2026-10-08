.class final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Landroidx/compose/runtime/MonotonicFrameClock;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2"
    f = "Recomposer.kt"
    l = {
        0x267,
        0x272
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:Ljava/util/List;

.field public q:Landroidx/collection/MutableScatterSet;

.field public r:Landroidx/collection/MutableScatterSet;

.field public s:Landroidx/collection/MutableScatterSet;

.field public t:Ljava/util/Set;

.field public u:Landroidx/collection/MutableScatterSet;

.field public v:I

.field public synthetic w:Landroidx/compose/runtime/MonotonicFrameClock;

.field public final synthetic x:Landroidx/compose/runtime/Recomposer;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->x:Landroidx/compose/runtime/Recomposer;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final x(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v4

    .line 12
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v7, 0x0

    .line 23
    :goto_0
    if-ge v7, v5, :cond_0

    .line 24
    .line 25
    move-object/from16 v8, p3

    .line 26
    .line 27
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    check-cast v9, Landroidx/compose/runtime/ControlledComposition;

    .line 32
    .line 33
    check-cast v9, Landroidx/compose/runtime/CompositionImpl;

    .line 34
    .line 35
    invoke-virtual {v9}, Landroidx/compose/runtime/CompositionImpl;->e()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/Recomposer;->M(Landroidx/compose/runtime/ControlledComposition;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v7, v7, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_7

    .line 46
    .line 47
    :cond_0
    move-object/from16 v8, p3

    .line 48
    .line 49
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 50
    .line 51
    .line 52
    iget-object v5, v1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 53
    .line 54
    iget-object v7, v1, Landroidx/collection/ScatterSet;->a:[J

    .line 55
    .line 56
    array-length v8, v7

    .line 57
    add-int/lit8 v8, v8, -0x2

    .line 58
    .line 59
    const/16 v6, 0x8

    .line 60
    .line 61
    const-wide/16 p2, 0x80

    .line 62
    .line 63
    if-ltz v8, :cond_4

    .line 64
    .line 65
    const/4 v9, 0x0

    .line 66
    const-wide/16 v16, 0xff

    .line 67
    .line 68
    :goto_1
    aget-wide v11, v7, v9

    .line 69
    .line 70
    const/4 v10, 0x7

    .line 71
    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    not-long v13, v11

    .line 77
    shl-long/2addr v13, v10

    .line 78
    and-long/2addr v13, v11

    .line 79
    and-long v13, v13, v18

    .line 80
    .line 81
    cmp-long v13, v13, v18

    .line 82
    .line 83
    if-eqz v13, :cond_3

    .line 84
    .line 85
    sub-int v13, v9, v8

    .line 86
    .line 87
    not-int v13, v13

    .line 88
    ushr-int/lit8 v13, v13, 0x1f

    .line 89
    .line 90
    rsub-int/lit8 v13, v13, 0x8

    .line 91
    .line 92
    const/4 v14, 0x0

    .line 93
    :goto_2
    if-ge v14, v13, :cond_2

    .line 94
    .line 95
    and-long v20, v11, v16

    .line 96
    .line 97
    cmp-long v15, v20, p2

    .line 98
    .line 99
    if-gez v15, :cond_1

    .line 100
    .line 101
    shl-int/lit8 v15, v9, 0x3

    .line 102
    .line 103
    add-int/2addr v15, v14

    .line 104
    aget-object v15, v5, v15

    .line 105
    .line 106
    check-cast v15, Landroidx/compose/runtime/ControlledComposition;

    .line 107
    .line 108
    check-cast v15, Landroidx/compose/runtime/CompositionImpl;

    .line 109
    .line 110
    invoke-virtual {v15}, Landroidx/compose/runtime/CompositionImpl;->e()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/Recomposer;->M(Landroidx/compose/runtime/ControlledComposition;)V

    .line 114
    .line 115
    .line 116
    :cond_1
    shr-long/2addr v11, v6

    .line 117
    add-int/lit8 v14, v14, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    if-ne v13, v6, :cond_5

    .line 121
    .line 122
    :cond_3
    if-eq v9, v8, :cond_5

    .line 123
    .line 124
    add-int/lit8 v9, v9, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    const/4 v10, 0x7

    .line 128
    const-wide/16 v16, 0xff

    .line 129
    .line 130
    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :cond_5
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->f()V

    .line 136
    .line 137
    .line 138
    iget-object v1, v2, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 139
    .line 140
    iget-object v5, v2, Landroidx/collection/ScatterSet;->a:[J

    .line 141
    .line 142
    array-length v7, v5

    .line 143
    add-int/lit8 v7, v7, -0x2

    .line 144
    .line 145
    if-ltz v7, :cond_9

    .line 146
    .line 147
    const/4 v8, 0x0

    .line 148
    :goto_3
    aget-wide v11, v5, v8

    .line 149
    .line 150
    not-long v13, v11

    .line 151
    shl-long/2addr v13, v10

    .line 152
    and-long/2addr v13, v11

    .line 153
    and-long v13, v13, v18

    .line 154
    .line 155
    cmp-long v9, v13, v18

    .line 156
    .line 157
    if-eqz v9, :cond_8

    .line 158
    .line 159
    sub-int v9, v8, v7

    .line 160
    .line 161
    not-int v9, v9

    .line 162
    ushr-int/lit8 v9, v9, 0x1f

    .line 163
    .line 164
    rsub-int/lit8 v9, v9, 0x8

    .line 165
    .line 166
    const/4 v13, 0x0

    .line 167
    :goto_4
    if-ge v13, v9, :cond_7

    .line 168
    .line 169
    and-long v14, v11, v16

    .line 170
    .line 171
    cmp-long v14, v14, p2

    .line 172
    .line 173
    if-gez v14, :cond_6

    .line 174
    .line 175
    shl-int/lit8 v14, v8, 0x3

    .line 176
    .line 177
    add-int/2addr v14, v13

    .line 178
    aget-object v14, v1, v14

    .line 179
    .line 180
    check-cast v14, Landroidx/compose/runtime/ControlledComposition;

    .line 181
    .line 182
    check-cast v14, Landroidx/compose/runtime/CompositionImpl;

    .line 183
    .line 184
    invoke-virtual {v14}, Landroidx/compose/runtime/CompositionImpl;->k()V

    .line 185
    .line 186
    .line 187
    :cond_6
    shr-long/2addr v11, v6

    .line 188
    add-int/lit8 v13, v13, 0x1

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_7
    if-ne v9, v6, :cond_9

    .line 192
    .line 193
    :cond_8
    if-eq v8, v7, :cond_9

    .line 194
    .line 195
    add-int/lit8 v8, v8, 0x1

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_9
    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->f()V

    .line 199
    .line 200
    .line 201
    invoke-virtual/range {p6 .. p6}, Landroidx/collection/MutableScatterSet;->f()V

    .line 202
    .line 203
    .line 204
    iget-object v1, v3, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 205
    .line 206
    iget-object v2, v3, Landroidx/collection/ScatterSet;->a:[J

    .line 207
    .line 208
    array-length v5, v2

    .line 209
    add-int/lit8 v5, v5, -0x2

    .line 210
    .line 211
    if-ltz v5, :cond_d

    .line 212
    .line 213
    const/4 v7, 0x0

    .line 214
    :goto_5
    aget-wide v8, v2, v7

    .line 215
    .line 216
    not-long v11, v8

    .line 217
    shl-long/2addr v11, v10

    .line 218
    and-long/2addr v11, v8

    .line 219
    and-long v11, v11, v18

    .line 220
    .line 221
    cmp-long v11, v11, v18

    .line 222
    .line 223
    if-eqz v11, :cond_c

    .line 224
    .line 225
    sub-int v11, v7, v5

    .line 226
    .line 227
    not-int v11, v11

    .line 228
    ushr-int/lit8 v11, v11, 0x1f

    .line 229
    .line 230
    rsub-int/lit8 v11, v11, 0x8

    .line 231
    .line 232
    const/4 v12, 0x0

    .line 233
    :goto_6
    if-ge v12, v11, :cond_b

    .line 234
    .line 235
    and-long v13, v8, v16

    .line 236
    .line 237
    cmp-long v13, v13, p2

    .line 238
    .line 239
    if-gez v13, :cond_a

    .line 240
    .line 241
    shl-int/lit8 v13, v7, 0x3

    .line 242
    .line 243
    add-int/2addr v13, v12

    .line 244
    aget-object v13, v1, v13

    .line 245
    .line 246
    check-cast v13, Landroidx/compose/runtime/ControlledComposition;

    .line 247
    .line 248
    check-cast v13, Landroidx/compose/runtime/CompositionImpl;

    .line 249
    .line 250
    invoke-virtual {v13}, Landroidx/compose/runtime/CompositionImpl;->e()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/Recomposer;->M(Landroidx/compose/runtime/ControlledComposition;)V

    .line 254
    .line 255
    .line 256
    :cond_a
    shr-long/2addr v8, v6

    .line 257
    add-int/lit8 v12, v12, 0x1

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_b
    if-ne v11, v6, :cond_d

    .line 261
    .line 262
    :cond_c
    if-eq v7, v5, :cond_d

    .line 263
    .line 264
    add-int/lit8 v7, v7, 0x1

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_d
    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .line 269
    .line 270
    monitor-exit v4

    .line 271
    return-void

    .line 272
    :goto_7
    monitor-exit v4

    .line 273
    throw v0
.end method

.method public static final y(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p1, Landroidx/compose/runtime/Recomposer;->k:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    .line 21
    .line 22
    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p0, p1, Landroidx/compose/runtime/Recomposer;->k:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0

    .line 38
    throw p0
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 4
    .line 5
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    new-instance p1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->x:Landroidx/compose/runtime/Recomposer;

    .line 10
    .line 11
    invoke-direct {p1, p0, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->w:Landroidx/compose/runtime/MonotonicFrameClock;

    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 22
    .line 23
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->v:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    if-eq v2, v5, :cond_1

    .line 13
    .line 14
    if-ne v2, v4, :cond_0

    .line 15
    .line 16
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->u:Landroidx/collection/MutableScatterSet;

    .line 17
    .line 18
    iget-object v6, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->t:Ljava/util/Set;

    .line 19
    .line 20
    check-cast v6, Ljava/util/Set;

    .line 21
    .line 22
    iget-object v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->s:Landroidx/collection/MutableScatterSet;

    .line 23
    .line 24
    iget-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->r:Landroidx/collection/MutableScatterSet;

    .line 25
    .line 26
    iget-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->q:Landroidx/collection/MutableScatterSet;

    .line 27
    .line 28
    iget-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->p:Ljava/util/List;

    .line 29
    .line 30
    iget-object v11, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->o:Ljava/util/List;

    .line 31
    .line 32
    iget-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->n:Ljava/util/List;

    .line 33
    .line 34
    iget-object v13, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->w:Landroidx/compose/runtime/MonotonicFrameClock;

    .line 35
    .line 36
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    move-object/from16 v21, v13

    .line 40
    .line 41
    move-object v13, v2

    .line 42
    move-object/from16 v2, v21

    .line 43
    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v3

    .line 52
    :cond_1
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->u:Landroidx/collection/MutableScatterSet;

    .line 53
    .line 54
    iget-object v6, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->t:Ljava/util/Set;

    .line 55
    .line 56
    check-cast v6, Ljava/util/Set;

    .line 57
    .line 58
    iget-object v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->s:Landroidx/collection/MutableScatterSet;

    .line 59
    .line 60
    iget-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->r:Landroidx/collection/MutableScatterSet;

    .line 61
    .line 62
    iget-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->q:Landroidx/collection/MutableScatterSet;

    .line 63
    .line 64
    iget-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->p:Ljava/util/List;

    .line 65
    .line 66
    iget-object v11, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->o:Ljava/util/List;

    .line 67
    .line 68
    iget-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->n:Ljava/util/List;

    .line 69
    .line 70
    iget-object v13, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->w:Landroidx/compose/runtime/MonotonicFrameClock;

    .line 71
    .line 72
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    move-object v14, v9

    .line 76
    move-object v9, v2

    .line 77
    move-object v2, v13

    .line 78
    move-object v13, v10

    .line 79
    move-object v10, v12

    .line 80
    move-object v12, v14

    .line 81
    :goto_0
    move-object v15, v6

    .line 82
    move-object v14, v8

    .line 83
    move-object v8, v7

    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->w:Landroidx/compose/runtime/MonotonicFrameClock;

    .line 90
    .line 91
    new-instance v6, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v7, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v8, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    sget-object v9, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 107
    .line 108
    new-instance v9, Landroidx/collection/MutableScatterSet;

    .line 109
    .line 110
    invoke-direct {v9}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 111
    .line 112
    .line 113
    new-instance v10, Landroidx/collection/MutableScatterSet;

    .line 114
    .line 115
    invoke-direct {v10}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v11, Landroidx/collection/MutableScatterSet;

    .line 119
    .line 120
    invoke-direct {v11}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 121
    .line 122
    .line 123
    new-instance v12, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 124
    .line 125
    invoke-direct {v12, v11}, Landroidx/compose/runtime/collection/ScatterSetWrapper;-><init>(Landroidx/collection/ScatterSet;)V

    .line 126
    .line 127
    .line 128
    new-instance v13, Landroidx/collection/MutableScatterSet;

    .line 129
    .line 130
    invoke-direct {v13}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 131
    .line 132
    .line 133
    move-object/from16 v21, v12

    .line 134
    .line 135
    move-object v12, v6

    .line 136
    move-object/from16 v6, v21

    .line 137
    .line 138
    move-object/from16 v21, v11

    .line 139
    .line 140
    move-object v11, v7

    .line 141
    move-object/from16 v7, v21

    .line 142
    .line 143
    move-object/from16 v21, v10

    .line 144
    .line 145
    move-object v10, v8

    .line 146
    move-object/from16 v8, v21

    .line 147
    .line 148
    :goto_1
    iget-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->x:Landroidx/compose/runtime/Recomposer;

    .line 149
    .line 150
    iget-object v14, v14, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 151
    .line 152
    monitor-enter v14

    .line 153
    monitor-exit v14

    .line 154
    iget-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->x:Landroidx/compose/runtime/Recomposer;

    .line 155
    .line 156
    iput-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->w:Landroidx/compose/runtime/MonotonicFrameClock;

    .line 157
    .line 158
    iput-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->n:Ljava/util/List;

    .line 159
    .line 160
    iput-object v11, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->o:Ljava/util/List;

    .line 161
    .line 162
    iput-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->p:Ljava/util/List;

    .line 163
    .line 164
    iput-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->q:Landroidx/collection/MutableScatterSet;

    .line 165
    .line 166
    iput-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->r:Landroidx/collection/MutableScatterSet;

    .line 167
    .line 168
    iput-object v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->s:Landroidx/collection/MutableScatterSet;

    .line 169
    .line 170
    move-object v15, v6

    .line 171
    check-cast v15, Ljava/util/Set;

    .line 172
    .line 173
    iput-object v15, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->t:Ljava/util/Set;

    .line 174
    .line 175
    iput-object v13, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->u:Landroidx/collection/MutableScatterSet;

    .line 176
    .line 177
    iput v5, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->v:I

    .line 178
    .line 179
    invoke-virtual {v14}, Landroidx/compose/runtime/Recomposer;->C()Z

    .line 180
    .line 181
    .line 182
    move-result v15

    .line 183
    if-nez v15, :cond_6

    .line 184
    .line 185
    new-instance v15, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 186
    .line 187
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-direct {v15, v5, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v15}, Lkotlinx/coroutines/CancellableContinuationImpl;->v()V

    .line 195
    .line 196
    .line 197
    iget-object v3, v14, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 198
    .line 199
    monitor-enter v3

    .line 200
    :try_start_0
    invoke-virtual {v14}, Landroidx/compose/runtime/Recomposer;->C()Z

    .line 201
    .line 202
    .line 203
    move-result v16

    .line 204
    if-eqz v16, :cond_3

    .line 205
    .line 206
    move-object v14, v15

    .line 207
    goto :goto_2

    .line 208
    :cond_3
    iput-object v15, v14, Landroidx/compose/runtime/Recomposer;->r:Lkotlinx/coroutines/CancellableContinuationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .line 210
    const/4 v14, 0x0

    .line 211
    :goto_2
    monitor-exit v3

    .line 212
    if-eqz v14, :cond_4

    .line 213
    .line 214
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 215
    .line 216
    invoke-virtual {v14, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_4
    invoke-virtual {v15}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 224
    .line 225
    if-ne v3, v14, :cond_5

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_5
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    monitor-exit v3

    .line 233
    throw v0

    .line 234
    :cond_6
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 235
    .line 236
    :goto_3
    if-ne v3, v1, :cond_7

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_7
    move-object v14, v12

    .line 240
    move-object v12, v9

    .line 241
    move-object v9, v13

    .line 242
    move-object v13, v10

    .line 243
    move-object v10, v14

    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :goto_4
    iget-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->x:Landroidx/compose/runtime/Recomposer;

    .line 247
    .line 248
    sget-object v6, Landroidx/compose/runtime/Recomposer;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 249
    .line 250
    invoke-virtual {v3}, Landroidx/compose/runtime/Recomposer;->L()Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_c

    .line 255
    .line 256
    iget-object v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->x:Landroidx/compose/runtime/Recomposer;

    .line 257
    .line 258
    new-instance v6, Landroidx/compose/runtime/h;

    .line 259
    .line 260
    invoke-direct/range {v6 .. v15}, Landroidx/compose/runtime/h;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/Set;)V

    .line 261
    .line 262
    .line 263
    iput-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->w:Landroidx/compose/runtime/MonotonicFrameClock;

    .line 264
    .line 265
    iput-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->n:Ljava/util/List;

    .line 266
    .line 267
    iput-object v11, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->o:Ljava/util/List;

    .line 268
    .line 269
    iput-object v13, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->p:Ljava/util/List;

    .line 270
    .line 271
    iput-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->q:Landroidx/collection/MutableScatterSet;

    .line 272
    .line 273
    iput-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->r:Landroidx/collection/MutableScatterSet;

    .line 274
    .line 275
    iput-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->s:Landroidx/collection/MutableScatterSet;

    .line 276
    .line 277
    move-object v3, v15

    .line 278
    check-cast v3, Ljava/util/Set;

    .line 279
    .line 280
    iput-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->t:Ljava/util/Set;

    .line 281
    .line 282
    iput-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->u:Landroidx/collection/MutableScatterSet;

    .line 283
    .line 284
    iput v4, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->v:I

    .line 285
    .line 286
    invoke-interface {v2, v0, v6}, Landroidx/compose/runtime/MonotonicFrameClock;->w(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    if-ne v3, v1, :cond_8

    .line 291
    .line 292
    :goto_5
    return-object v1

    .line 293
    :cond_8
    move-object v6, v13

    .line 294
    move-object v13, v9

    .line 295
    move-object v9, v12

    .line 296
    move-object v12, v10

    .line 297
    move-object v10, v6

    .line 298
    move-object v7, v8

    .line 299
    move-object v8, v14

    .line 300
    move-object v6, v15

    .line 301
    :goto_6
    iget-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->x:Landroidx/compose/runtime/Recomposer;

    .line 302
    .line 303
    iget-object v14, v3, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 304
    .line 305
    monitor-enter v14

    .line 306
    :try_start_1
    iget-object v15, v3, Landroidx/compose/runtime/Recomposer;->l:Landroidx/collection/MutableScatterMap;

    .line 307
    .line 308
    invoke-virtual {v15}, Landroidx/collection/ScatterMap;->g()Z

    .line 309
    .line 310
    .line 311
    move-result v15

    .line 312
    if-eqz v15, :cond_a

    .line 313
    .line 314
    iget-object v15, v3, Landroidx/compose/runtime/Recomposer;->l:Landroidx/collection/MutableScatterMap;

    .line 315
    .line 316
    invoke-static {v15}, Landroidx/compose/runtime/collection/MultiValueMap;->b(Landroidx/collection/MutableScatterMap;)Landroidx/collection/MutableObjectList;

    .line 317
    .line 318
    .line 319
    move-result-object v15

    .line 320
    iget-object v5, v3, Landroidx/compose/runtime/Recomposer;->l:Landroidx/collection/MutableScatterMap;

    .line 321
    .line 322
    invoke-virtual {v5}, Landroidx/collection/MutableScatterMap;->h()V

    .line 323
    .line 324
    .line 325
    iget-object v5, v3, Landroidx/compose/runtime/Recomposer;->m:Landroidx/compose/runtime/NestedContentMap;

    .line 326
    .line 327
    iget-object v4, v5, Landroidx/compose/runtime/NestedContentMap;->a:Landroidx/collection/MutableScatterMap;

    .line 328
    .line 329
    invoke-virtual {v4}, Landroidx/collection/MutableScatterMap;->h()V

    .line 330
    .line 331
    .line 332
    iget-object v4, v5, Landroidx/compose/runtime/NestedContentMap;->b:Landroidx/collection/MutableScatterMap;

    .line 333
    .line 334
    invoke-virtual {v4}, Landroidx/collection/MutableScatterMap;->h()V

    .line 335
    .line 336
    .line 337
    iget-object v4, v3, Landroidx/compose/runtime/Recomposer;->o:Landroidx/collection/MutableScatterMap;

    .line 338
    .line 339
    invoke-virtual {v4}, Landroidx/collection/MutableScatterMap;->h()V

    .line 340
    .line 341
    .line 342
    new-instance v4, Landroidx/collection/MutableObjectList;

    .line 343
    .line 344
    iget v5, v15, Landroidx/collection/ObjectList;->b:I

    .line 345
    .line 346
    invoke-direct {v4, v5}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 347
    .line 348
    .line 349
    iget-object v5, v15, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 350
    .line 351
    iget v15, v15, Landroidx/collection/ObjectList;->b:I

    .line 352
    .line 353
    move-object/from16 v17, v1

    .line 354
    .line 355
    const/4 v1, 0x0

    .line 356
    :goto_7
    if-ge v1, v15, :cond_9

    .line 357
    .line 358
    aget-object v18, v5, v1

    .line 359
    .line 360
    move/from16 v19, v1

    .line 361
    .line 362
    move-object/from16 v1, v18

    .line 363
    .line 364
    check-cast v1, Landroidx/compose/runtime/MovableContentStateReference;

    .line 365
    .line 366
    move-object/from16 v18, v2

    .line 367
    .line 368
    iget-object v2, v3, Landroidx/compose/runtime/Recomposer;->n:Landroidx/collection/MutableScatterMap;

    .line 369
    .line 370
    invoke-virtual {v2, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    move-object/from16 v20, v5

    .line 375
    .line 376
    new-instance v5, Lkotlin/Pair;

    .line 377
    .line 378
    invoke-direct {v5, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v4, v5}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    add-int/lit8 v1, v19, 0x1

    .line 385
    .line 386
    move-object/from16 v2, v18

    .line 387
    .line 388
    move-object/from16 v5, v20

    .line 389
    .line 390
    goto :goto_7

    .line 391
    :catchall_1
    move-exception v0

    .line 392
    goto :goto_a

    .line 393
    :cond_9
    move-object/from16 v18, v2

    .line 394
    .line 395
    iget-object v1, v3, Landroidx/compose/runtime/Recomposer;->n:Landroidx/collection/MutableScatterMap;

    .line 396
    .line 397
    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->h()V

    .line 398
    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_a
    move-object/from16 v17, v1

    .line 402
    .line 403
    move-object/from16 v18, v2

    .line 404
    .line 405
    sget-object v4, Landroidx/collection/ObjectListKt;->b:Landroidx/collection/MutableObjectList;

    .line 406
    .line 407
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 408
    .line 409
    .line 410
    :goto_8
    monitor-exit v14

    .line 411
    iget-object v1, v4, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 412
    .line 413
    iget v2, v4, Landroidx/collection/ObjectList;->b:I

    .line 414
    .line 415
    const/4 v3, 0x0

    .line 416
    :goto_9
    if-ge v3, v2, :cond_b

    .line 417
    .line 418
    aget-object v4, v1, v3

    .line 419
    .line 420
    check-cast v4, Lkotlin/Pair;

    .line 421
    .line 422
    iget-object v5, v4, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v5, Landroidx/compose/runtime/MovableContentStateReference;

    .line 425
    .line 426
    iget-object v4, v4, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v4, Landroidx/compose/runtime/MovableContentState;

    .line 429
    .line 430
    add-int/lit8 v3, v3, 0x1

    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_b
    iget-object v1, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->x:Landroidx/compose/runtime/Recomposer;

    .line 434
    .line 435
    iget-object v1, v1, Landroidx/compose/runtime/Recomposer;->b:Landroidx/compose/runtime/NextFrameEndCallbackQueue;

    .line 436
    .line 437
    iget-object v2, v1, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->a:Landroidx/compose/runtime/internal/AtomicInt;

    .line 438
    .line 439
    const/4 v3, 0x0

    .line 440
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 441
    .line 442
    .line 443
    iget-object v1, v1, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->b:Landroidx/compose/runtime/internal/AwaiterQueue;

    .line 444
    .line 445
    new-instance v2, Landroidx/compose/runtime/g;

    .line 446
    .line 447
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/internal/AwaiterQueue;->b(Lkotlin/jvm/functions/Function1;)V

    .line 451
    .line 452
    .line 453
    move-object/from16 v1, v17

    .line 454
    .line 455
    move-object/from16 v2, v18

    .line 456
    .line 457
    const/4 v3, 0x0

    .line 458
    const/4 v4, 0x2

    .line 459
    const/4 v5, 0x1

    .line 460
    goto/16 :goto_1

    .line 461
    .line 462
    :goto_a
    monitor-exit v14

    .line 463
    throw v0

    .line 464
    :cond_c
    move-object v3, v13

    .line 465
    move-object v13, v9

    .line 466
    move-object v9, v12

    .line 467
    move-object v12, v10

    .line 468
    move-object v10, v3

    .line 469
    move-object v7, v8

    .line 470
    move-object v8, v14

    .line 471
    move-object v6, v15

    .line 472
    const/4 v3, 0x0

    .line 473
    goto/16 :goto_1
.end method
