.class final Landroidx/navigation/compose/NavHostKt$NavHost$25$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.navigation.compose.NavHostKt$NavHost$25$1"
    f = "NavHost.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic n:Landroidx/compose/animation/core/Transition;

.field public final synthetic o:Landroidx/navigation/NavHostController;

.field public final synthetic p:Landroidx/navigation/NavBackStackEntry;

.field public final synthetic q:Landroidx/collection/MutableObjectFloatMap;

.field public final synthetic r:Landroidx/compose/runtime/State;

.field public final synthetic s:Landroidx/navigation/compose/ComposeNavigator;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/navigation/NavHostController;Landroidx/navigation/NavBackStackEntry;Landroidx/collection/MutableObjectFloatMap;Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->n:Landroidx/compose/animation/core/Transition;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->o:Landroidx/navigation/NavHostController;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->p:Landroidx/navigation/NavBackStackEntry;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->q:Landroidx/collection/MutableObjectFloatMap;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->r:Landroidx/compose/runtime/State;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->s:Landroidx/navigation/compose/ComposeNavigator;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 2
    .line 3
    iget-object v5, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->r:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    iget-object v6, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->s:Landroidx/navigation/compose/ComposeNavigator;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->n:Landroidx/compose/animation/core/Transition;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->o:Landroidx/navigation/NavHostController;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->p:Landroidx/navigation/NavBackStackEntry;

    .line 12
    .line 13
    iget-object v4, p0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->q:Landroidx/collection/MutableObjectFloatMap;

    .line 14
    .line 15
    move-object v7, p2

    .line 16
    invoke-direct/range {v0 .. v7}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/navigation/NavHostController;Landroidx/navigation/NavBackStackEntry;Landroidx/collection/MutableObjectFloatMap;Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->n:Landroidx/compose/animation/core/Transition;

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v1, v1, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 17
    .line 18
    move-object v3, v1

    .line 19
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_5

    .line 30
    .line 31
    iget-object v2, v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->o:Landroidx/navigation/NavHostController;

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 34
    .line 35
    iget-object v2, v2, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 36
    .line 37
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    move-object v2, v1

    .line 46
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v3, v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->p:Landroidx/navigation/NavBackStackEntry;

    .line 53
    .line 54
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_5

    .line 59
    .line 60
    :cond_0
    iget-object v2, v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->r:Landroidx/compose/runtime/State;

    .line 61
    .line 62
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 83
    .line 84
    iget-object v4, v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->s:Landroidx/navigation/compose/ComposeNavigator;

    .line 85
    .line 86
    invoke-virtual {v4}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v4, v3}, Landroidx/navigation/NavigatorState;->b(Landroidx/navigation/NavBackStackEntry;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;->q:Landroidx/collection/MutableObjectFloatMap;

    .line 95
    .line 96
    iget-object v2, v0, Landroidx/collection/ObjectFloatMap;->a:[J

    .line 97
    .line 98
    array-length v3, v2

    .line 99
    add-int/lit8 v3, v3, -0x2

    .line 100
    .line 101
    if-ltz v3, :cond_5

    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    :goto_1
    aget-wide v6, v2, v5

    .line 105
    .line 106
    not-long v8, v6

    .line 107
    const/4 v10, 0x7

    .line 108
    shl-long/2addr v8, v10

    .line 109
    and-long/2addr v8, v6

    .line 110
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    and-long/2addr v8, v11

    .line 116
    cmp-long v8, v8, v11

    .line 117
    .line 118
    if-eqz v8, :cond_4

    .line 119
    .line 120
    sub-int v8, v5, v3

    .line 121
    .line 122
    not-int v8, v8

    .line 123
    ushr-int/lit8 v8, v8, 0x1f

    .line 124
    .line 125
    const/16 v9, 0x8

    .line 126
    .line 127
    rsub-int/lit8 v8, v8, 0x8

    .line 128
    .line 129
    const/4 v11, 0x0

    .line 130
    :goto_2
    if-ge v11, v8, :cond_3

    .line 131
    .line 132
    const-wide/16 v12, 0xff

    .line 133
    .line 134
    and-long v14, v6, v12

    .line 135
    .line 136
    const-wide/16 v16, 0x80

    .line 137
    .line 138
    cmp-long v14, v14, v16

    .line 139
    .line 140
    if-gez v14, :cond_2

    .line 141
    .line 142
    shl-int/lit8 v14, v5, 0x3

    .line 143
    .line 144
    add-int/2addr v14, v11

    .line 145
    iget-object v15, v0, Landroidx/collection/ObjectFloatMap;->b:[Ljava/lang/Object;

    .line 146
    .line 147
    aget-object v15, v15, v14

    .line 148
    .line 149
    iget-object v4, v0, Landroidx/collection/ObjectFloatMap;->c:[F

    .line 150
    .line 151
    aget v4, v4, v14

    .line 152
    .line 153
    check-cast v15, Ljava/lang/String;

    .line 154
    .line 155
    move-object v4, v1

    .line 156
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 157
    .line 158
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 163
    .line 164
    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-nez v4, :cond_2

    .line 171
    .line 172
    iget v4, v0, Landroidx/collection/ObjectFloatMap;->e:I

    .line 173
    .line 174
    add-int/lit8 v4, v4, -0x1

    .line 175
    .line 176
    iput v4, v0, Landroidx/collection/ObjectFloatMap;->e:I

    .line 177
    .line 178
    iget-object v4, v0, Landroidx/collection/ObjectFloatMap;->a:[J

    .line 179
    .line 180
    iget v15, v0, Landroidx/collection/ObjectFloatMap;->d:I

    .line 181
    .line 182
    shr-int/lit8 v16, v14, 0x3

    .line 183
    .line 184
    and-int/lit8 v17, v14, 0x7

    .line 185
    .line 186
    shl-int/lit8 v17, v17, 0x3

    .line 187
    .line 188
    aget-wide v18, v4, v16

    .line 189
    .line 190
    shl-long v12, v12, v17

    .line 191
    .line 192
    not-long v12, v12

    .line 193
    and-long v12, v18, v12

    .line 194
    .line 195
    const-wide/16 v18, 0xfe

    .line 196
    .line 197
    shl-long v17, v18, v17

    .line 198
    .line 199
    or-long v12, v12, v17

    .line 200
    .line 201
    aput-wide v12, v4, v16

    .line 202
    .line 203
    add-int/lit8 v16, v14, -0x7

    .line 204
    .line 205
    and-int v16, v16, v15

    .line 206
    .line 207
    and-int/2addr v15, v10

    .line 208
    add-int v16, v16, v15

    .line 209
    .line 210
    shr-int/lit8 v15, v16, 0x3

    .line 211
    .line 212
    aput-wide v12, v4, v15

    .line 213
    .line 214
    iget-object v4, v0, Landroidx/collection/ObjectFloatMap;->b:[Ljava/lang/Object;

    .line 215
    .line 216
    const/4 v12, 0x0

    .line 217
    aput-object v12, v4, v14

    .line 218
    .line 219
    :cond_2
    shr-long/2addr v6, v9

    .line 220
    add-int/lit8 v11, v11, 0x1

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_3
    if-ne v8, v9, :cond_5

    .line 224
    .line 225
    :cond_4
    if-eq v5, v3, :cond_5

    .line 226
    .line 227
    add-int/lit8 v5, v5, 0x1

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 231
    .line 232
    return-object v0
.end method
