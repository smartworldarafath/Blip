.class public final Landroidx/navigation/internal/NavControllerImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final A:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final a:Landroidx/navigation/NavController;

.field public final b:Lg9;

.field public c:Landroidx/navigation/NavGraph;

.field public d:Landroid/os/Bundle;

.field public e:[Landroid/os/Bundle;

.field public final f:Lkotlin/collections/ArrayDeque;

.field public final g:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Lkotlinx/coroutines/flow/StateFlow;

.field public final i:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final j:Lkotlinx/coroutines/flow/StateFlow;

.field public final k:Ljava/util/LinkedHashMap;

.field public final l:Ljava/util/LinkedHashMap;

.field public final m:Ljava/util/LinkedHashMap;

.field public final n:Ljava/util/LinkedHashMap;

.field public o:Landroidx/lifecycle/LifecycleOwner;

.field public p:Landroidx/navigation/NavViewModelStoreProvider;

.field public final q:Ljava/util/ArrayList;

.field public r:Landroidx/lifecycle/Lifecycle$State;

.field public final s:Lh5;

.field public final t:Landroidx/navigation/NavigatorProvider;

.field public final u:Ljava/util/LinkedHashMap;

.field public v:Lkotlin/jvm/functions/Function1;

.field public w:Lpb;

.field public final x:Ljava/util/LinkedHashMap;

.field public y:I

.field public final z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavController;Lg9;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation/internal/NavControllerImpl;->b:Lg9;

    .line 7
    .line 8
    new-instance p1, Lkotlin/collections/ArrayDeque;

    .line 9
    .line 10
    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 14
    .line 15
    sget-object p1, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 16
    .line 17
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iput-object p2, p0, Landroidx/navigation/internal/NavControllerImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 22
    .line 23
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Landroidx/navigation/internal/NavControllerImpl;->h:Lkotlinx/coroutines/flow/StateFlow;

    .line 28
    .line 29
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->j:Lkotlinx/coroutines/flow/StateFlow;

    .line 40
    .line 41
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->k:Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->l:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->m:Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->n:Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    new-instance p1, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->q:Ljava/util/ArrayList;

    .line 75
    .line 76
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->k:Landroidx/lifecycle/Lifecycle$State;

    .line 77
    .line 78
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->r:Landroidx/lifecycle/Lifecycle$State;

    .line 79
    .line 80
    new-instance p1, Lh5;

    .line 81
    .line 82
    const/4 p2, 0x1

    .line 83
    invoke-direct {p1, p2, p0}, Lh5;-><init>(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->s:Lh5;

    .line 87
    .line 88
    new-instance p1, Landroidx/navigation/NavigatorProvider;

    .line 89
    .line 90
    invoke-direct {p1}, Landroidx/navigation/NavigatorProvider;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 94
    .line 95
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 103
    .line 104
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->x:Ljava/util/LinkedHashMap;

    .line 108
    .line 109
    new-instance p1, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->z:Ljava/util/ArrayList;

    .line 115
    .line 116
    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->k:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 117
    .line 118
    const/4 p2, 0x2

    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-static {v0, p2, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 125
    .line 126
    return-void
.end method

.method public static d(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 2
    .line 3
    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 4
    .line 5
    if-ne v0, p0, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 16
    .line 17
    iget-object v1, p2, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    return-object p1

    .line 26
    :cond_1
    instance-of v0, p1, Landroidx/navigation/NavGraph;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    move-object v0, p1

    .line 31
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-nez v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p1, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    :cond_3
    iget-object p1, v0, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 43
    .line 44
    invoke-virtual {p1, p0, v0, p2, p3}, Landroidx/navigation/internal/NavGraphImpl;->c(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static synthetic n(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;)V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1, v0}, Landroidx/navigation/internal/NavControllerImpl;->m(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    .line 4
    .line 5
    iget-object v1, p3, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 6
    .line 7
    instance-of v2, v1, Landroidx/navigation/FloatingWindow;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    iget-object v4, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 27
    .line 28
    instance-of v2, v2, Landroidx/navigation/FloatingWindow;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 37
    .line 38
    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 39
    .line 40
    iget-object v2, v2, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 41
    .line 42
    iget v2, v2, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-virtual {p0, v2, v3, v5}, Landroidx/navigation/internal/NavControllerImpl;->l(IZZ)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    :cond_1
    new-instance v2, Lkotlin/collections/ArrayDeque;

    .line 52
    .line 53
    invoke-direct {v2}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 54
    .line 55
    .line 56
    instance-of v5, p1, Landroidx/navigation/NavGraph;

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    if-eqz v5, :cond_7

    .line 60
    .line 61
    move-object v5, v1

    .line 62
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v5, v5, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 66
    .line 67
    if-eqz v5, :cond_6

    .line 68
    .line 69
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    invoke-interface {p4, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    :cond_3
    invoke-interface {v7}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_4

    .line 82
    .line 83
    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    move-object v9, v8

    .line 88
    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    .line 89
    .line 90
    iget-object v9, v9, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 91
    .line 92
    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_3

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    move-object v8, v6

    .line 100
    :goto_0
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .line 101
    .line 102
    if-nez v8, :cond_5

    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/lifecycle/Lifecycle$State;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    iget-object v8, p0, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavViewModelStoreProvider;

    .line 109
    .line 110
    invoke-static {v0, v5, p2, v7, v8}, Landroidx/navigation/NavBackStackEntry$Companion;->a(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;)Landroidx/navigation/NavBackStackEntry;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    :cond_5
    invoke-virtual {v2, v8}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-nez v7, :cond_6

    .line 122
    .line 123
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 128
    .line 129
    iget-object v7, v7, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 130
    .line 131
    if-ne v7, v5, :cond_6

    .line 132
    .line 133
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 138
    .line 139
    invoke-static {p0, v7}, Landroidx/navigation/internal/NavControllerImpl;->n(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;)V

    .line 140
    .line 141
    .line 142
    :cond_6
    if-eqz v5, :cond_7

    .line 143
    .line 144
    if-ne v5, p1, :cond_2

    .line 145
    .line 146
    :cond_7
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_8

    .line 151
    .line 152
    move-object v5, v1

    .line 153
    goto :goto_1

    .line 154
    :cond_8
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 159
    .line 160
    iget-object v5, v5, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 161
    .line 162
    :cond_9
    :goto_1
    if-eqz v5, :cond_e

    .line 163
    .line 164
    iget-object v7, v5, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 165
    .line 166
    iget v7, v7, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 167
    .line 168
    invoke-virtual {p0, v7, v5}, Landroidx/navigation/internal/NavControllerImpl;->c(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    if-eq v7, v5, :cond_e

    .line 173
    .line 174
    iget-object v5, v5, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 175
    .line 176
    if-eqz v5, :cond_9

    .line 177
    .line 178
    if-eqz p2, :cond_a

    .line 179
    .line 180
    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-ne v7, v3, :cond_a

    .line 185
    .line 186
    move-object v7, v6

    .line 187
    goto :goto_2

    .line 188
    :cond_a
    move-object v7, p2

    .line 189
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    invoke-interface {p4, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    :cond_b
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-eqz v9, :cond_c

    .line 202
    .line 203
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    move-object v10, v9

    .line 208
    check-cast v10, Landroidx/navigation/NavBackStackEntry;

    .line 209
    .line 210
    iget-object v10, v10, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 211
    .line 212
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    if-eqz v10, :cond_b

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_c
    move-object v9, v6

    .line 220
    :goto_3
    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    .line 221
    .line 222
    if-nez v9, :cond_d

    .line 223
    .line 224
    invoke-virtual {v5, v7}, Landroidx/navigation/NavDestination;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/lifecycle/Lifecycle$State;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    iget-object v9, p0, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavViewModelStoreProvider;

    .line 233
    .line 234
    invoke-static {v0, v5, v7, v8, v9}, Landroidx/navigation/NavBackStackEntry$Companion;->a(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;)Landroidx/navigation/NavBackStackEntry;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    :cond_d
    invoke-virtual {v2, v9}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_e
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_f

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_f
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 254
    .line 255
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 256
    .line 257
    :goto_4
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-nez v3, :cond_10

    .line 262
    .line 263
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 268
    .line 269
    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 270
    .line 271
    instance-of v3, v3, Landroidx/navigation/NavGraph;

    .line 272
    .line 273
    if-eqz v3, :cond_10

    .line 274
    .line 275
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 280
    .line 281
    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    check-cast v3, Landroidx/navigation/NavGraph;

    .line 287
    .line 288
    iget-object v3, v3, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 289
    .line 290
    iget-object v3, v3, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    .line 291
    .line 292
    iget-object v5, v1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 293
    .line 294
    iget v5, v5, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 295
    .line 296
    invoke-virtual {v3, v5}, Landroidx/collection/SparseArrayCompat;->c(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    if-nez v3, :cond_10

    .line 301
    .line 302
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 307
    .line 308
    invoke-static {p0, v3}, Landroidx/navigation/internal/NavControllerImpl;->n(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;)V

    .line 309
    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_10
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->f()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 317
    .line 318
    if-nez v1, :cond_11

    .line 319
    .line 320
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->f()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 325
    .line 326
    :cond_11
    if-eqz v1, :cond_12

    .line 327
    .line 328
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_12
    move-object v1, v6

    .line 332
    :goto_5
    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 333
    .line 334
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-nez v1, :cond_16

    .line 339
    .line 340
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    invoke-interface {p4, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 345
    .line 346
    .line 347
    move-result-object p4

    .line 348
    :cond_13
    invoke-interface {p4}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-eqz v1, :cond_14

    .line 353
    .line 354
    invoke-interface {p4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    move-object v3, v1

    .line 359
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 360
    .line 361
    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 362
    .line 363
    iget-object v5, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 364
    .line 365
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-eqz v3, :cond_13

    .line 373
    .line 374
    move-object v6, v1

    .line 375
    :cond_14
    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    .line 376
    .line 377
    if-nez v6, :cond_15

    .line 378
    .line 379
    iget-object p4, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 380
    .line 381
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, p2}, Landroidx/navigation/NavDestination;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 390
    .line 391
    .line 392
    move-result-object p2

    .line 393
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/lifecycle/Lifecycle$State;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavViewModelStoreProvider;

    .line 398
    .line 399
    invoke-static {v0, p4, p2, v1, v3}, Landroidx/navigation/NavBackStackEntry$Companion;->a(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;)Landroidx/navigation/NavBackStackEntry;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    :cond_15
    invoke-virtual {v2, v6}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    :cond_16
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 407
    .line 408
    .line 409
    move-result-object p2

    .line 410
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 411
    .line 412
    .line 413
    move-result p4

    .line 414
    if-eqz p4, :cond_18

    .line 415
    .line 416
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object p4

    .line 420
    check-cast p4, Landroidx/navigation/NavBackStackEntry;

    .line 421
    .line 422
    iget-object v0, p4, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 423
    .line 424
    iget-object v0, v0, Landroidx/navigation/NavDestination;->j:Ljava/lang/String;

    .line 425
    .line 426
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 427
    .line 428
    invoke-virtual {v1, v0}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    .line 433
    .line 434
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    if-eqz v0, :cond_17

    .line 439
    .line 440
    check-cast v0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 441
    .line 442
    invoke-virtual {v0, p4}, Landroidx/navigation/NavController$NavControllerNavigatorState;->f(Landroidx/navigation/NavBackStackEntry;)V

    .line 443
    .line 444
    .line 445
    goto :goto_6

    .line 446
    :cond_17
    iget-object p0, p1, Landroidx/navigation/NavDestination;->j:Ljava/lang/String;

    .line 447
    .line 448
    const-string p1, "NavigatorBackStack for "

    .line 449
    .line 450
    const-string p2, " should already be created"

    .line 451
    .line 452
    invoke-static {p1, p0, p2}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object p0

    .line 456
    invoke-static {p0}, Lu2;->f(Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    return-void

    .line 460
    :cond_18
    invoke-virtual {v4, v2}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4, p3}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    invoke-static {v2, p3}, Lkotlin/collections/CollectionsKt;->G(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    :cond_19
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 475
    .line 476
    .line 477
    move-result p2

    .line 478
    if-eqz p2, :cond_1a

    .line 479
    .line 480
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object p2

    .line 484
    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 485
    .line 486
    iget-object p3, p2, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 487
    .line 488
    iget-object p3, p3, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 489
    .line 490
    if-eqz p3, :cond_19

    .line 491
    .line 492
    iget-object p3, p3, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 493
    .line 494
    iget p3, p3, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 495
    .line 496
    invoke-virtual {p0, p3}, Landroidx/navigation/internal/NavControllerImpl;->e(I)Landroidx/navigation/NavBackStackEntry;

    .line 497
    .line 498
    .line 499
    move-result-object p3

    .line 500
    invoke-virtual {p0, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->j(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    .line 501
    .line 502
    .line 503
    goto :goto_7

    .line 504
    :cond_1a
    return-void
.end method

.method public final b()Z
    .locals 8

    .line 1
    :goto_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 16
    .line 17
    instance-of v1, v1, Landroidx/navigation/NavGraph;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/navigation/internal/NavControllerImpl;->n(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->z:Ljava/util/ArrayList;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    iget v3, p0, Landroidx/navigation/internal/NavControllerImpl;->y:I

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    add-int/2addr v3, v4

    .line 48
    iput v3, p0, Landroidx/navigation/internal/NavControllerImpl;->y:I

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->r()V

    .line 51
    .line 52
    .line 53
    iget v3, p0, Landroidx/navigation/internal/NavControllerImpl;->y:I

    .line 54
    .line 55
    add-int/lit8 v3, v3, -0x1

    .line 56
    .line 57
    iput v3, p0, Landroidx/navigation/internal/NavControllerImpl;->y:I

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    if-nez v3, :cond_5

    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 84
    .line 85
    iget-object v6, p0, Landroidx/navigation/internal/NavControllerImpl;->q:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-nez v7, :cond_2

    .line 100
    .line 101
    iget-object v6, p0, Landroidx/navigation/internal/NavControllerImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 102
    .line 103
    invoke-virtual {v6, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->h(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    if-eqz p0, :cond_3

    .line 112
    .line 113
    invoke-static {}, Lio/sentry/d;->i()V

    .line 114
    .line 115
    .line 116
    return v5

    .line 117
    :cond_3
    iget-object p0, v3, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 118
    .line 119
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->b()Landroid/os/Bundle;

    .line 120
    .line 121
    .line 122
    const/4 p0, 0x0

    .line 123
    throw p0

    .line 124
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 130
    .line 131
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableSharedFlow;->h(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->o()Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->h(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    :cond_5
    if-eqz v1, :cond_6

    .line 144
    .line 145
    return v4

    .line 146
    :cond_6
    return v5
.end method

.method public final c(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object v1, v0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 8
    .line 9
    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 10
    .line 11
    if-ne v1, p1, :cond_2

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p2, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    return-object v0

    .line 29
    :cond_2
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 30
    .line 31
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 40
    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    :cond_4
    const/4 p0, 0x0

    .line 49
    invoke-static {p1, v0, p2, p0}, Landroidx/navigation/internal/NavControllerImpl;->d(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public final e(I)Landroidx/navigation/NavBackStackEntry;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v2, v1

    .line 22
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 23
    .line 24
    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 27
    .line 28
    iget v2, v2, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 29
    .line 30
    if-ne v2, p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    :goto_0
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_2
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->f()Landroidx/navigation/NavDestination;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "No destination with ID "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " is on the NavController\'s back stack. The current destination is "

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public final f()Landroidx/navigation/NavDestination;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public final g()Landroidx/navigation/NavGraph;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string p0, "You must call setGraph() before calling getGraph()"

    .line 10
    .line 11
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public final h()Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->o:Landroidx/lifecycle/LifecycleOwner;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->l:Landroidx/lifecycle/Lifecycle$State;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->r:Landroidx/lifecycle/Lifecycle$State;

    .line 9
    .line 10
    return-object p0
.end method

.method public final i()Landroidx/navigation/NavGraph;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->c:Landroidx/navigation/NavGraph;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :cond_1
    instance-of p0, v0, Landroidx/navigation/NavGraph;

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    move-object p0, v0

    .line 25
    check-cast p0, Landroidx/navigation/NavGraph;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p0, 0x0

    .line 29
    :goto_0
    if-nez p0, :cond_3

    .line 30
    .line 31
    iget-object p0, v0, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :cond_3
    return-object p0
.end method

.method public final j(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->k:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->l:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Landroidx/navigation/internal/AtomicInt;

    .line 15
    .line 16
    invoke-direct {p1}, Landroidx/navigation/internal/AtomicInt;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    check-cast p0, Landroidx/navigation/internal/AtomicInt;

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/navigation/internal/AtomicInt;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final k(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V
    .locals 23

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
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x1

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 34
    .line 35
    iput-boolean v5, v4, Landroidx/navigation/NavigatorState;->d:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 v4, -0x1

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget v7, v2, Landroidx/navigation/NavOptions;->c:I

    .line 47
    .line 48
    if-eq v7, v4, :cond_1

    .line 49
    .line 50
    iget-boolean v8, v2, Landroidx/navigation/NavOptions;->d:Z

    .line 51
    .line 52
    iget-boolean v9, v2, Landroidx/navigation/NavOptions;->e:Z

    .line 53
    .line 54
    invoke-virtual {v0, v7, v8, v9}, Landroidx/navigation/internal/NavControllerImpl;->l(IZZ)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v7, 0x0

    .line 60
    :goto_1
    invoke-virtual/range {p1 .. p2}, Landroidx/navigation/NavDestination;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-boolean v9, v2, Landroidx/navigation/NavOptions;->b:Z

    .line 67
    .line 68
    if-ne v9, v5, :cond_2

    .line 69
    .line 70
    iget-object v9, v0, Landroidx/navigation/internal/NavControllerImpl;->m:Ljava/util/LinkedHashMap;

    .line 71
    .line 72
    iget-object v10, v1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 73
    .line 74
    iget v10, v10, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 75
    .line 76
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-eqz v9, :cond_2

    .line 85
    .line 86
    iget-object v1, v1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 87
    .line 88
    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 89
    .line 90
    invoke-virtual {v0, v1, v8, v2}, Landroidx/navigation/internal/NavControllerImpl;->p(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iput-boolean v1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 95
    .line 96
    const/4 v14, 0x0

    .line 97
    goto/16 :goto_c

    .line 98
    .line 99
    :cond_2
    if-eqz v2, :cond_12

    .line 100
    .line 101
    iget-boolean v10, v2, Landroidx/navigation/NavOptions;->a:Z

    .line 102
    .line 103
    if-ne v10, v5, :cond_12

    .line 104
    .line 105
    iget-object v10, v0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 106
    .line 107
    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    check-cast v10, Landroidx/navigation/NavBackStackEntry;

    .line 112
    .line 113
    iget-object v11, v0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 114
    .line 115
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->b()I

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    invoke-virtual {v11, v12}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    :cond_3
    invoke-interface {v11}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    if-eqz v12, :cond_4

    .line 128
    .line 129
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    check-cast v12, Landroidx/navigation/NavBackStackEntry;

    .line 134
    .line 135
    iget-object v12, v12, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 136
    .line 137
    if-ne v12, v1, :cond_3

    .line 138
    .line 139
    invoke-interface {v11}, Ljava/util/ListIterator;->nextIndex()I

    .line 140
    .line 141
    .line 142
    move-result v11

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    move v11, v4

    .line 145
    :goto_2
    if-ne v11, v4, :cond_5

    .line 146
    .line 147
    goto/16 :goto_a

    .line 148
    .line 149
    :cond_5
    instance-of v12, v1, Landroidx/navigation/NavGraph;

    .line 150
    .line 151
    if-eqz v12, :cond_8

    .line 152
    .line 153
    sget v10, Landroidx/navigation/NavGraph;->p:I

    .line 154
    .line 155
    move-object v10, v1

    .line 156
    check-cast v10, Landroidx/navigation/NavGraph;

    .line 157
    .line 158
    new-instance v12, Lla;

    .line 159
    .line 160
    const/16 v13, 0x10

    .line 161
    .line 162
    invoke-direct {v12, v13}, Lla;-><init>(I)V

    .line 163
    .line 164
    .line 165
    invoke-static {v10, v12}, Lkotlin/sequences/SequencesKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    new-instance v12, Lla;

    .line 170
    .line 171
    const/16 v13, 0xa

    .line 172
    .line 173
    invoke-direct {v12, v13}, Lla;-><init>(I)V

    .line 174
    .line 175
    .line 176
    new-instance v14, Lkotlin/sequences/TransformingSequence;

    .line 177
    .line 178
    invoke-direct {v14, v10, v12}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v14}, Lkotlin/sequences/SequencesKt;->h(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    iget-object v12, v0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 186
    .line 187
    iget v12, v12, Lkotlin/collections/ArrayDeque;->l:I

    .line 188
    .line 189
    sub-int/2addr v12, v11

    .line 190
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result v14

    .line 194
    if-eq v12, v14, :cond_6

    .line 195
    .line 196
    goto/16 :goto_a

    .line 197
    .line 198
    :cond_6
    iget-object v12, v0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 199
    .line 200
    iget v14, v12, Lkotlin/collections/ArrayDeque;->l:I

    .line 201
    .line 202
    invoke-virtual {v12, v11, v14}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    new-instance v14, Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-static {v12, v13}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 209
    .line 210
    .line 211
    move-result v13

    .line 212
    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .line 214
    .line 215
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    if-eqz v13, :cond_7

    .line 224
    .line 225
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    check-cast v13, Landroidx/navigation/NavBackStackEntry;

    .line 230
    .line 231
    iget-object v13, v13, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 232
    .line 233
    iget-object v13, v13, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 234
    .line 235
    iget v13, v13, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 236
    .line 237
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_7
    invoke-virtual {v14, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v10

    .line 249
    if-nez v10, :cond_9

    .line 250
    .line 251
    goto/16 :goto_a

    .line 252
    .line 253
    :cond_8
    if-eqz v10, :cond_12

    .line 254
    .line 255
    iget-object v10, v10, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 256
    .line 257
    if-eqz v10, :cond_12

    .line 258
    .line 259
    iget-object v12, v1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 260
    .line 261
    iget v12, v12, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 262
    .line 263
    iget-object v10, v10, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 264
    .line 265
    iget v10, v10, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 266
    .line 267
    if-ne v12, v10, :cond_12

    .line 268
    .line 269
    :cond_9
    new-instance v10, Lkotlin/collections/ArrayDeque;

    .line 270
    .line 271
    invoke-direct {v10}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 272
    .line 273
    .line 274
    :goto_4
    iget-object v12, v0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 275
    .line 276
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;)I

    .line 277
    .line 278
    .line 279
    move-result v12

    .line 280
    if-lt v12, v11, :cond_a

    .line 281
    .line 282
    iget-object v12, v0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 283
    .line 284
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->L(Ljava/util/List;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v12

    .line 288
    check-cast v12, Landroidx/navigation/NavBackStackEntry;

    .line 289
    .line 290
    invoke-virtual {v0, v12}, Landroidx/navigation/internal/NavControllerImpl;->q(Landroidx/navigation/NavBackStackEntry;)V

    .line 291
    .line 292
    .line 293
    iget-object v13, v12, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 294
    .line 295
    move-object/from16 v14, p2

    .line 296
    .line 297
    invoke-virtual {v13, v14}, Landroidx/navigation/NavDestination;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 298
    .line 299
    .line 300
    move-result-object v18

    .line 301
    new-instance v15, Landroidx/navigation/NavBackStackEntry;

    .line 302
    .line 303
    iget-object v13, v12, Landroidx/navigation/NavBackStackEntry;->j:Landroidx/navigation/internal/NavContext;

    .line 304
    .line 305
    iget-object v9, v12, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 306
    .line 307
    iget-object v6, v12, Landroidx/navigation/NavBackStackEntry;->m:Landroidx/lifecycle/Lifecycle$State;

    .line 308
    .line 309
    iget-object v4, v12, Landroidx/navigation/NavBackStackEntry;->n:Landroidx/navigation/NavViewModelStoreProvider;

    .line 310
    .line 311
    iget-object v5, v12, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 312
    .line 313
    move-object/from16 v20, v4

    .line 314
    .line 315
    iget-object v4, v12, Landroidx/navigation/NavBackStackEntry;->p:Landroid/os/Bundle;

    .line 316
    .line 317
    move-object/from16 v22, v4

    .line 318
    .line 319
    move-object/from16 v21, v5

    .line 320
    .line 321
    move-object/from16 v19, v6

    .line 322
    .line 323
    move-object/from16 v17, v9

    .line 324
    .line 325
    move-object/from16 v16, v13

    .line 326
    .line 327
    invoke-direct/range {v15 .. v22}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 328
    .line 329
    .line 330
    iget-object v4, v12, Landroidx/navigation/NavBackStackEntry;->m:Landroidx/lifecycle/Lifecycle$State;

    .line 331
    .line 332
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    iput-object v4, v15, Landroidx/navigation/NavBackStackEntry;->m:Landroidx/lifecycle/Lifecycle$State;

    .line 336
    .line 337
    iget-object v4, v12, Landroidx/navigation/NavBackStackEntry;->v:Landroidx/lifecycle/Lifecycle$State;

    .line 338
    .line 339
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    iput-object v4, v15, Landroidx/navigation/NavBackStackEntry;->v:Landroidx/lifecycle/Lifecycle$State;

    .line 343
    .line 344
    invoke-virtual {v15}, Landroidx/navigation/NavBackStackEntry;->h()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v10, v15}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    const/4 v4, -0x1

    .line 351
    const/4 v5, 0x1

    .line 352
    goto :goto_4

    .line 353
    :cond_a
    invoke-virtual {v10}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    if-eqz v5, :cond_c

    .line 362
    .line 363
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 368
    .line 369
    iget-object v6, v5, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 370
    .line 371
    iget-object v6, v6, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 372
    .line 373
    if-eqz v6, :cond_b

    .line 374
    .line 375
    iget-object v6, v6, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 376
    .line 377
    iget v6, v6, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 378
    .line 379
    invoke-virtual {v0, v6}, Landroidx/navigation/internal/NavControllerImpl;->e(I)Landroidx/navigation/NavBackStackEntry;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    invoke-virtual {v0, v5, v6}, Landroidx/navigation/internal/NavControllerImpl;->j(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    .line 384
    .line 385
    .line 386
    :cond_b
    iget-object v6, v0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 387
    .line 388
    invoke-virtual {v6, v5}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    goto :goto_5

    .line 392
    :cond_c
    invoke-virtual {v10}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    if-eqz v5, :cond_11

    .line 401
    .line 402
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 407
    .line 408
    iget-object v6, v0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 409
    .line 410
    iget-object v9, v5, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 411
    .line 412
    iget-object v9, v9, Landroidx/navigation/NavDestination;->j:Ljava/lang/String;

    .line 413
    .line 414
    invoke-virtual {v6, v9}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    iget-object v9, v5, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 419
    .line 420
    if-eqz v9, :cond_d

    .line 421
    .line 422
    goto :goto_7

    .line 423
    :cond_d
    const/4 v9, 0x0

    .line 424
    :goto_7
    if-nez v9, :cond_e

    .line 425
    .line 426
    const/4 v11, 0x1

    .line 427
    const/4 v13, -0x1

    .line 428
    goto :goto_6

    .line 429
    :cond_e
    new-instance v10, Landroidx/navigation/NavOptionsBuilder;

    .line 430
    .line 431
    invoke-direct {v10}, Landroidx/navigation/NavOptionsBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    const/4 v11, 0x1

    .line 435
    iput-boolean v11, v10, Landroidx/navigation/NavOptionsBuilder;->b:Z

    .line 436
    .line 437
    iget-object v12, v10, Landroidx/navigation/NavOptionsBuilder;->a:Landroidx/navigation/NavOptions$Builder;

    .line 438
    .line 439
    iput-boolean v11, v12, Landroidx/navigation/NavOptions$Builder;->a:Z

    .line 440
    .line 441
    iget-boolean v13, v10, Landroidx/navigation/NavOptionsBuilder;->c:Z

    .line 442
    .line 443
    iput-boolean v13, v12, Landroidx/navigation/NavOptions$Builder;->b:Z

    .line 444
    .line 445
    iget-boolean v10, v10, Landroidx/navigation/NavOptionsBuilder;->e:Z

    .line 446
    .line 447
    const/4 v13, -0x1

    .line 448
    iput v13, v12, Landroidx/navigation/NavOptions$Builder;->c:I

    .line 449
    .line 450
    const/4 v14, 0x0

    .line 451
    iput-boolean v14, v12, Landroidx/navigation/NavOptions$Builder;->d:Z

    .line 452
    .line 453
    iput-boolean v10, v12, Landroidx/navigation/NavOptions$Builder;->e:Z

    .line 454
    .line 455
    invoke-virtual {v6, v9}, Landroidx/navigation/Navigator;->c(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v6}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    iget-object v9, v6, Landroidx/navigation/NavigatorState;->a:Landroidx/navigation/internal/SynchronizedObject;

    .line 463
    .line 464
    monitor-enter v9

    .line 465
    :try_start_0
    iget-object v10, v6, Landroidx/navigation/NavigatorState;->e:Lkotlinx/coroutines/flow/StateFlow;

    .line 466
    .line 467
    invoke-interface {v10}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v10

    .line 471
    check-cast v10, Ljava/util/Collection;

    .line 472
    .line 473
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 474
    .line 475
    .line 476
    move-result-object v10

    .line 477
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 478
    .line 479
    .line 480
    move-result v12

    .line 481
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 482
    .line 483
    .line 484
    move-result-object v12

    .line 485
    :cond_f
    invoke-interface {v12}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 486
    .line 487
    .line 488
    move-result v14

    .line 489
    if-eqz v14, :cond_10

    .line 490
    .line 491
    invoke-interface {v12}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v14

    .line 495
    check-cast v14, Landroidx/navigation/NavBackStackEntry;

    .line 496
    .line 497
    iget-object v14, v14, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 498
    .line 499
    iget-object v15, v5, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 500
    .line 501
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v14

    .line 505
    if-eqz v14, :cond_f

    .line 506
    .line 507
    invoke-interface {v12}, Ljava/util/ListIterator;->nextIndex()I

    .line 508
    .line 509
    .line 510
    move-result v12

    .line 511
    goto :goto_8

    .line 512
    :catchall_0
    move-exception v0

    .line 513
    goto :goto_9

    .line 514
    :cond_10
    move v12, v13

    .line 515
    :goto_8
    invoke-virtual {v10, v12, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    iget-object v5, v6, Landroidx/navigation/NavigatorState;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 519
    .line 520
    invoke-interface {v5, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    .line 522
    .line 523
    monitor-exit v9

    .line 524
    goto/16 :goto_6

    .line 525
    .line 526
    :goto_9
    monitor-exit v9

    .line 527
    throw v0

    .line 528
    :cond_11
    const/4 v11, 0x1

    .line 529
    move v5, v11

    .line 530
    goto :goto_b

    .line 531
    :cond_12
    :goto_a
    const/4 v5, 0x0

    .line 532
    :goto_b
    if-nez v5, :cond_13

    .line 533
    .line 534
    iget-object v4, v0, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    .line 535
    .line 536
    iget-object v4, v4, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    .line 537
    .line 538
    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/lifecycle/Lifecycle$State;

    .line 539
    .line 540
    .line 541
    move-result-object v6

    .line 542
    iget-object v9, v0, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavViewModelStoreProvider;

    .line 543
    .line 544
    invoke-static {v4, v1, v8, v6, v9}, Landroidx/navigation/NavBackStackEntry$Companion;->a(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;)Landroidx/navigation/NavBackStackEntry;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    iget-object v6, v0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 549
    .line 550
    iget-object v9, v1, Landroidx/navigation/NavDestination;->j:Ljava/lang/String;

    .line 551
    .line 552
    invoke-virtual {v6, v9}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 553
    .line 554
    .line 555
    move-result-object v6

    .line 556
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    new-instance v9, Ls2;

    .line 561
    .line 562
    invoke-direct {v9, v3, v0, v1, v8}, Ls2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    .line 563
    .line 564
    .line 565
    iput-object v9, v0, Landroidx/navigation/internal/NavControllerImpl;->v:Lkotlin/jvm/functions/Function1;

    .line 566
    .line 567
    invoke-virtual {v6, v4, v2}, Landroidx/navigation/Navigator;->d(Ljava/util/List;Landroidx/navigation/NavOptions;)V

    .line 568
    .line 569
    .line 570
    const/4 v1, 0x0

    .line 571
    iput-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->v:Lkotlin/jvm/functions/Function1;

    .line 572
    .line 573
    :cond_13
    move v14, v5

    .line 574
    :goto_c
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->b:Lg9;

    .line 575
    .line 576
    invoke-virtual {v1}, Lg9;->a()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    .line 580
    .line 581
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    check-cast v1, Ljava/lang/Iterable;

    .line 586
    .line 587
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    if-eqz v2, :cond_14

    .line 596
    .line 597
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 602
    .line 603
    const/4 v4, 0x0

    .line 604
    iput-boolean v4, v2, Landroidx/navigation/NavigatorState;->d:Z

    .line 605
    .line 606
    goto :goto_d

    .line 607
    :cond_14
    if-nez v7, :cond_16

    .line 608
    .line 609
    iget-boolean v1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 610
    .line 611
    if-nez v1, :cond_16

    .line 612
    .line 613
    if-eqz v14, :cond_15

    .line 614
    .line 615
    goto :goto_e

    .line 616
    :cond_15
    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->r()V

    .line 617
    .line 618
    .line 619
    return-void

    .line 620
    :cond_16
    :goto_e
    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->b()Z

    .line 621
    .line 622
    .line 623
    return-void
.end method

.method public final l(IZZ)Z
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->N(Ljava/lang/Iterable;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz v4, :cond_4

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 36
    .line 37
    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 38
    .line 39
    iget-object v6, v4, Landroidx/navigation/NavDestination;->j:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v7, v4, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 42
    .line 43
    iget-object v8, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 44
    .line 45
    invoke-virtual {v8, v6}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-nez p2, :cond_2

    .line 50
    .line 51
    iget v8, v7, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 52
    .line 53
    if-eq v8, p1, :cond_3

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_3
    iget v6, v7, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 59
    .line 60
    if-ne v6, p1, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    move-object v4, v5

    .line 64
    :goto_0
    if-nez v4, :cond_5

    .line 65
    .line 66
    sget p2, Landroidx/navigation/NavDestination;->n:I

    .line 67
    .line 68
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    .line 69
    .line 70
    iget-object p0, p0, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    .line 71
    .line 72
    invoke-static {p0, p1}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string p2, "Ignoring popBackStack to destination "

    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p0, " as it was not found on the current back stack"

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string p1, "NavController"

    .line 96
    .line 97
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    return v2

    .line 101
    :cond_5
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 102
    .line 103
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v11, Lkotlin/collections/ArrayDeque;

    .line 107
    .line 108
    invoke-direct {v11}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_7

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Landroidx/navigation/Navigator;

    .line 126
    .line 127
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 128
    .line 129
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 137
    .line 138
    new-instance v6, Lpb;

    .line 139
    .line 140
    move-object v9, p0

    .line 141
    move v10, p3

    .line 142
    invoke-direct/range {v6 .. v11}, Lpb;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/internal/NavControllerImpl;ZLkotlin/collections/ArrayDeque;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    iput-object v6, v9, Landroidx/navigation/internal/NavControllerImpl;->w:Lpb;

    .line 152
    .line 153
    invoke-virtual {v1, v3, v10}, Landroidx/navigation/Navigator;->e(Landroidx/navigation/NavBackStackEntry;Z)V

    .line 154
    .line 155
    .line 156
    iput-object v5, v9, Landroidx/navigation/internal/NavControllerImpl;->w:Lpb;

    .line 157
    .line 158
    iget-boolean p0, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 159
    .line 160
    if-nez p0, :cond_6

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    move-object p0, v9

    .line 164
    move p3, v10

    .line 165
    goto :goto_1

    .line 166
    :cond_7
    move-object v9, p0

    .line 167
    move v10, p3

    .line 168
    :goto_2
    if-eqz v10, :cond_b

    .line 169
    .line 170
    iget-object p0, v9, Landroidx/navigation/internal/NavControllerImpl;->m:Ljava/util/LinkedHashMap;

    .line 171
    .line 172
    if-nez p2, :cond_9

    .line 173
    .line 174
    new-instance p1, Lla;

    .line 175
    .line 176
    const/16 p2, 0xb

    .line 177
    .line 178
    invoke-direct {p1, p2}, Lla;-><init>(I)V

    .line 179
    .line 180
    .line 181
    invoke-static {v4, p1}, Lkotlin/sequences/SequencesKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    new-instance p2, Lqb;

    .line 186
    .line 187
    invoke-direct {p2, v9, v2}, Lqb;-><init>(Landroidx/navigation/internal/NavControllerImpl;I)V

    .line 188
    .line 189
    .line 190
    new-instance p3, Lkotlin/sequences/TakeWhileSequence;

    .line 191
    .line 192
    invoke-direct {p3, p1, p2}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 193
    .line 194
    .line 195
    new-instance p1, Lkotlin/sequences/TakeWhileSequence$iterator$1;

    .line 196
    .line 197
    invoke-direct {p1, p3}, Lkotlin/sequences/TakeWhileSequence$iterator$1;-><init>(Lkotlin/sequences/TakeWhileSequence;)V

    .line 198
    .line 199
    .line 200
    :goto_3
    invoke-virtual {p1}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    if-eqz p2, :cond_9

    .line 205
    .line 206
    invoke-virtual {p1}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    check-cast p2, Landroidx/navigation/NavDestination;

    .line 211
    .line 212
    iget-object p2, p2, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 213
    .line 214
    iget p2, p2, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 215
    .line 216
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->f()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    check-cast p3, Landroidx/navigation/NavBackStackEntryState;

    .line 225
    .line 226
    if-eqz p3, :cond_8

    .line 227
    .line 228
    iget-object p3, p3, Landroidx/navigation/NavBackStackEntryState;->a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    .line 229
    .line 230
    iget-object p3, p3, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->a:Ljava/lang/String;

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_8
    move-object p3, v5

    .line 234
    :goto_4
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_9
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-nez p1, :cond_b

    .line 243
    .line 244
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    check-cast p1, Landroidx/navigation/NavBackStackEntryState;

    .line 249
    .line 250
    iget-object p1, p1, Landroidx/navigation/NavBackStackEntryState;->a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    .line 251
    .line 252
    iget p2, p1, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->b:I

    .line 253
    .line 254
    invoke-virtual {v9, p2, v5}, Landroidx/navigation/internal/NavControllerImpl;->c(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    new-instance p3, Lla;

    .line 259
    .line 260
    const/16 v0, 0xc

    .line 261
    .line 262
    invoke-direct {p3, v0}, Lla;-><init>(I)V

    .line 263
    .line 264
    .line 265
    invoke-static {p2, p3}, Lkotlin/sequences/SequencesKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    new-instance p3, Lqb;

    .line 270
    .line 271
    const/4 v0, 0x1

    .line 272
    invoke-direct {p3, v9, v0}, Lqb;-><init>(Landroidx/navigation/internal/NavControllerImpl;I)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lkotlin/sequences/TakeWhileSequence;

    .line 276
    .line 277
    invoke-direct {v0, p2, p3}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 278
    .line 279
    .line 280
    new-instance p2, Lkotlin/sequences/TakeWhileSequence$iterator$1;

    .line 281
    .line 282
    invoke-direct {p2, v0}, Lkotlin/sequences/TakeWhileSequence$iterator$1;-><init>(Lkotlin/sequences/TakeWhileSequence;)V

    .line 283
    .line 284
    .line 285
    :goto_5
    invoke-virtual {p2}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result p3

    .line 289
    if-eqz p3, :cond_a

    .line 290
    .line 291
    invoke-virtual {p2}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p3

    .line 295
    check-cast p3, Landroidx/navigation/NavDestination;

    .line 296
    .line 297
    iget-object p3, p3, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 298
    .line 299
    iget p3, p3, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 300
    .line 301
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object p3

    .line 305
    iget-object v0, p1, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->a:Ljava/lang/String;

    .line 306
    .line 307
    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_a
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    iget-object p2, p1, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->a:Ljava/lang/String;

    .line 316
    .line 317
    invoke-interface {p0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result p0

    .line 321
    if-eqz p0, :cond_b

    .line 322
    .line 323
    iget-object p0, v9, Landroidx/navigation/internal/NavControllerImpl;->n:Ljava/util/LinkedHashMap;

    .line 324
    .line 325
    iget-object p1, p1, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->a:Ljava/lang/String;

    .line 326
    .line 327
    invoke-interface {p0, p1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    :cond_b
    iget-object p0, v9, Landroidx/navigation/internal/NavControllerImpl;->b:Lg9;

    .line 331
    .line 332
    invoke-virtual {p0}, Lg9;->a()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    iget-boolean p0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 336
    .line 337
    return p0
.end method

.method public final m(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 11
    .line 12
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->L(Ljava/util/List;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/navigation/NavDestination;->j:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    iget-object p1, p1, Landroidx/navigation/NavigatorState;->f:Lkotlinx/coroutines/flow/StateFlow;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/util/Set;

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-ne p1, v0, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->l:Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_0
    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->t:Landroidx/lifecycle/LifecycleRegistry;

    .line 72
    .line 73
    iget-object p1, p1, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 74
    .line 75
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->l:Landroidx/lifecycle/Lifecycle$State;

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-ltz p1, :cond_4

    .line 82
    .line 83
    if-eqz p2, :cond_2

    .line 84
    .line 85
    iput-object v2, v1, Landroidx/navigation/NavBackStackEntry;->v:Landroidx/lifecycle/Lifecycle$State;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->h()V

    .line 88
    .line 89
    .line 90
    new-instance p1, Landroidx/navigation/NavBackStackEntryState;

    .line 91
    .line 92
    invoke-direct {p1, v1}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    if-nez v0, :cond_3

    .line 99
    .line 100
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->j:Landroidx/lifecycle/Lifecycle$State;

    .line 101
    .line 102
    iput-object p1, v1, Landroidx/navigation/NavBackStackEntry;->v:Landroidx/lifecycle/Lifecycle$State;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->h()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Landroidx/navigation/internal/NavControllerImpl;->q(Landroidx/navigation/NavBackStackEntry;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    iput-object v2, v1, Landroidx/navigation/NavBackStackEntry;->v:Landroidx/lifecycle/Lifecycle$State;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->h()V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_1
    if-nez p2, :cond_5

    .line 117
    .line 118
    if-nez v0, :cond_5

    .line 119
    .line 120
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavViewModelStoreProvider;

    .line 121
    .line 122
    if-eqz p0, :cond_5

    .line 123
    .line 124
    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 125
    .line 126
    invoke-interface {p0, p1}, Landroidx/navigation/NavViewModelStoreProvider;->a(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    return-void

    .line 130
    :cond_6
    iget-object p0, p1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 131
    .line 132
    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 133
    .line 134
    const-string p2, ", which is not the top of the back stack ("

    .line 135
    .line 136
    const-string p3, ")"

    .line 137
    .line 138
    const-string v0, "Attempted to pop "

    .line 139
    .line 140
    invoke-static {v0, p0, p2, p1, p3}, Lk8;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final o()Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/navigation/NavigatorState;->f:Lkotlinx/coroutines/flow/StateFlow;

    .line 31
    .line 32
    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Iterable;

    .line 37
    .line 38
    new-instance v3, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    move-object v5, v4

    .line 58
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-nez v6, :cond_0

    .line 65
    .line 66
    iget-object v5, v5, Landroidx/navigation/NavBackStackEntry;->v:Landroidx/lifecycle/Lifecycle$State;

    .line 67
    .line 68
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->m:Landroidx/lifecycle/Lifecycle$State;

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-ltz v5, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->g(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    move-object v3, v2

    .line 107
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_4

    .line 114
    .line 115
    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->v:Landroidx/lifecycle/Lifecycle$State;

    .line 116
    .line 117
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->m:Landroidx/lifecycle/Lifecycle$State;

    .line 118
    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-ltz v3, :cond_4

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->g(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 130
    .line 131
    .line 132
    new-instance p0, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_7

    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    move-object v2, v1

    .line 152
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 153
    .line 154
    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 155
    .line 156
    instance-of v2, v2, Landroidx/navigation/NavGraph;

    .line 157
    .line 158
    if-nez v2, :cond_6

    .line 159
    .line 160
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_7
    return-object p0
.end method

.method public final p(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)Z
    .locals 11

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->m:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Iterable;

    .line 30
    .line 31
    new-instance v1, Lq7;

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    invoke-direct {v1, p1, v3}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->I(Ljava/lang/Iterable;Lq7;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->n:Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->b(Ljava/lang/Object;)Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lkotlin/collections/ArrayDeque;

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->a:Landroidx/navigation/NavController;

    .line 53
    .line 54
    iget-object v0, v0, Landroidx/navigation/NavController;->c:Landroidx/navigation/internal/NavContext;

    .line 55
    .line 56
    new-instance v5, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 62
    .line 63
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 72
    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    :cond_1
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->g()Landroidx/navigation/NavGraph;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_2
    const/4 v10, 0x0

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Landroidx/navigation/NavBackStackEntryState;

    .line 97
    .line 98
    iget-object v4, v3, Landroidx/navigation/NavBackStackEntryState;->a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    .line 99
    .line 100
    iget v4, v4, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->b:I

    .line 101
    .line 102
    const/4 v6, 0x1

    .line 103
    invoke-static {v4, v1, v10, v6}, Landroidx/navigation/internal/NavControllerImpl;->d(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    if-eqz v4, :cond_3

    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->h()Landroidx/lifecycle/Lifecycle$State;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v6, p0, Landroidx/navigation/internal/NavControllerImpl;->p:Landroidx/navigation/NavViewModelStoreProvider;

    .line 114
    .line 115
    invoke-virtual {v3, v0, v4, v1, v6}, Landroidx/navigation/NavBackStackEntryState;->a(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;)Landroidx/navigation/NavBackStackEntry;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-object v1, v4

    .line 123
    goto :goto_0

    .line 124
    :cond_3
    sget p0, Landroidx/navigation/NavDestination;->n:I

    .line 125
    .line 126
    iget-object p0, v3, Landroidx/navigation/NavBackStackEntryState;->a:Landroidx/navigation/internal/NavBackStackEntryStateImpl;

    .line 127
    .line 128
    iget p0, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->b:I

    .line 129
    .line 130
    invoke-static {v0, p0}, Landroidx/navigation/NavDestination$Companion;->a(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    const-string p1, "Restore State failed: destination "

    .line 135
    .line 136
    const-string p2, " cannot be found from the current destination "

    .line 137
    .line 138
    invoke-static {p1, p0, p2, v1}, Lu2;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    return v2

    .line 142
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    new-instance v0, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_6

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    move-object v3, v2

    .line 167
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 168
    .line 169
    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 170
    .line 171
    instance-of v3, v3, Landroidx/navigation/NavGraph;

    .line 172
    .line 173
    if-nez v3, :cond_5

    .line 174
    .line 175
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_9

    .line 188
    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 194
    .line 195
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Ljava/util/List;

    .line 200
    .line 201
    if-eqz v2, :cond_7

    .line 202
    .line 203
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 208
    .line 209
    if-eqz v3, :cond_7

    .line 210
    .line 211
    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 212
    .line 213
    if-eqz v3, :cond_7

    .line 214
    .line 215
    iget-object v3, v3, Landroidx/navigation/NavDestination;->j:Ljava/lang/String;

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_7
    move-object v3, v10

    .line 219
    :goto_3
    iget-object v4, v1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 220
    .line 221
    iget-object v4, v4, Landroidx/navigation/NavDestination;->j:Ljava/lang/String;

    .line 222
    .line 223
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-eqz v3, :cond_8

    .line 228
    .line 229
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_8
    filled-new-array {v1}, [Landroidx/navigation/NavBackStackEntry;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->E([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_9
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 246
    .line 247
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_a

    .line 259
    .line 260
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Ljava/util/List;

    .line 265
    .line 266
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 271
    .line 272
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 273
    .line 274
    iget-object v1, v1, Landroidx/navigation/NavDestination;->j:Ljava/lang/String;

    .line 275
    .line 276
    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 277
    .line 278
    invoke-virtual {v2, v1}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    .line 283
    .line 284
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 285
    .line 286
    .line 287
    new-instance v3, Lo;

    .line 288
    .line 289
    const/4 v9, 0x3

    .line 290
    move-object v7, p0

    .line 291
    move-object v8, p2

    .line 292
    invoke-direct/range {v3 .. v9}, Lo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 293
    .line 294
    .line 295
    iput-object v3, v7, Landroidx/navigation/internal/NavControllerImpl;->v:Lkotlin/jvm/functions/Function1;

    .line 296
    .line 297
    invoke-virtual {v1, v0, p3}, Landroidx/navigation/Navigator;->d(Ljava/util/List;Landroidx/navigation/NavOptions;)V

    .line 298
    .line 299
    .line 300
    iput-object v10, v7, Landroidx/navigation/internal/NavControllerImpl;->v:Lkotlin/jvm/functions/Function1;

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_a
    iget-boolean p0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 304
    .line 305
    return p0
.end method

.method public final q(Landroidx/navigation/NavBackStackEntry;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->k:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->l:Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/navigation/internal/AtomicInt;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, v1, Landroidx/navigation/internal/AtomicInt;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-nez v1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    iget-object v1, p1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 47
    .line 48
    iget-object v1, v1, Landroidx/navigation/NavDestination;->j:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 63
    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->b(Landroidx/navigation/NavBackStackEntry;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_1
    return-void
.end method

.method public final r()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 22
    .line 23
    filled-new-array {v1}, [Landroidx/navigation/NavDestination;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->E([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    instance-of v3, v3, Landroidx/navigation/FloatingWindow;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->N(Ljava/lang/Iterable;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 63
    .line 64
    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    instance-of v5, v4, Landroidx/navigation/FloatingWindow;

    .line 70
    .line 71
    if-nez v5, :cond_1

    .line 72
    .line 73
    instance-of v4, v4, Landroidx/navigation/NavGraph;

    .line 74
    .line 75
    if-nez v4, :cond_1

    .line 76
    .line 77
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->N(Ljava/lang/Iterable;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_d

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 101
    .line 102
    iget-object v6, v5, Landroidx/navigation/NavBackStackEntry;->v:Landroidx/lifecycle/Lifecycle$State;

    .line 103
    .line 104
    iget-object v7, v5, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 105
    .line 106
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    check-cast v8, Landroidx/navigation/NavDestination;

    .line 111
    .line 112
    if-eqz v8, :cond_9

    .line 113
    .line 114
    iget-object v8, v8, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 115
    .line 116
    iget v8, v8, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 117
    .line 118
    iget-object v9, v7, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 119
    .line 120
    iget v9, v9, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 121
    .line 122
    if-ne v8, v9, :cond_9

    .line 123
    .line 124
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->n:Landroidx/lifecycle/Lifecycle$State;

    .line 125
    .line 126
    if-eq v6, v8, :cond_7

    .line 127
    .line 128
    iget-object v6, v5, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 129
    .line 130
    iget-object v6, v6, Landroidx/navigation/NavDestination;->j:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v9, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 133
    .line 134
    invoke-virtual {v9, v6}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    iget-object v9, p0, Landroidx/navigation/internal/NavControllerImpl;->u:Ljava/util/LinkedHashMap;

    .line 139
    .line 140
    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    check-cast v6, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 145
    .line 146
    if-eqz v6, :cond_4

    .line 147
    .line 148
    iget-object v6, v6, Landroidx/navigation/NavigatorState;->f:Lkotlinx/coroutines/flow/StateFlow;

    .line 149
    .line 150
    if-eqz v6, :cond_4

    .line 151
    .line 152
    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    check-cast v6, Ljava/util/Set;

    .line 157
    .line 158
    if-eqz v6, :cond_4

    .line 159
    .line 160
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    goto :goto_1

    .line 169
    :cond_4
    const/4 v6, 0x0

    .line 170
    :goto_1
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-nez v6, :cond_6

    .line 177
    .line 178
    iget-object v6, p0, Landroidx/navigation/internal/NavControllerImpl;->l:Ljava/util/LinkedHashMap;

    .line 179
    .line 180
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    check-cast v6, Landroidx/navigation/internal/AtomicInt;

    .line 185
    .line 186
    if-eqz v6, :cond_5

    .line 187
    .line 188
    iget-object v6, v6, Landroidx/navigation/internal/AtomicInt;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-nez v6, :cond_5

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_5
    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_6
    :goto_2
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->m:Landroidx/lifecycle/Lifecycle$State;

    .line 202
    .line 203
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    :cond_7
    :goto_3
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    check-cast v5, Landroidx/navigation/NavDestination;

    .line 211
    .line 212
    if-eqz v5, :cond_8

    .line 213
    .line 214
    iget-object v5, v5, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 215
    .line 216
    iget v5, v5, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 217
    .line 218
    iget-object v6, v7, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 219
    .line 220
    iget v6, v6, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 221
    .line 222
    if-ne v5, v6, :cond_8

    .line 223
    .line 224
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->K(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    :cond_8
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->K(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    iget-object v5, v7, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 231
    .line 232
    if-eqz v5, :cond_3

    .line 233
    .line 234
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    if-nez v8, :cond_c

    .line 244
    .line 245
    iget-object v7, v7, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 246
    .line 247
    iget v7, v7, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 248
    .line 249
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    check-cast v8, Landroidx/navigation/NavDestination;

    .line 254
    .line 255
    iget-object v8, v8, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 256
    .line 257
    iget v8, v8, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 258
    .line 259
    if-ne v7, v8, :cond_c

    .line 260
    .line 261
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->K(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    check-cast v7, Landroidx/navigation/NavDestination;

    .line 266
    .line 267
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->n:Landroidx/lifecycle/Lifecycle$State;

    .line 268
    .line 269
    if-ne v6, v8, :cond_a

    .line 270
    .line 271
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->m:Landroidx/lifecycle/Lifecycle$State;

    .line 272
    .line 273
    iput-object v6, v5, Landroidx/navigation/NavBackStackEntry;->v:Landroidx/lifecycle/Lifecycle$State;

    .line 274
    .line 275
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->h()V

    .line 276
    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_a
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->m:Landroidx/lifecycle/Lifecycle$State;

    .line 280
    .line 281
    if-eq v6, v8, :cond_b

    .line 282
    .line 283
    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    :cond_b
    :goto_4
    iget-object v5, v7, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 287
    .line 288
    if-eqz v5, :cond_3

    .line 289
    .line 290
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    if-nez v6, :cond_3

    .line 295
    .line 296
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_c
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->l:Landroidx/lifecycle/Lifecycle$State;

    .line 302
    .line 303
    iput-object v6, v5, Landroidx/navigation/NavBackStackEntry;->v:Landroidx/lifecycle/Lifecycle$State;

    .line 304
    .line 305
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->h()V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_f

    .line 319
    .line 320
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 325
    .line 326
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    check-cast v1, Landroidx/lifecycle/Lifecycle$State;

    .line 331
    .line 332
    if-eqz v1, :cond_e

    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    iput-object v1, v0, Landroidx/navigation/NavBackStackEntry;->v:Landroidx/lifecycle/Lifecycle$State;

    .line 338
    .line 339
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->h()V

    .line 340
    .line 341
    .line 342
    goto :goto_5

    .line 343
    :cond_e
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->h()V

    .line 344
    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_f
    :goto_6
    return-void
.end method
