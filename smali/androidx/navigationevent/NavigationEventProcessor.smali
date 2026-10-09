.class public final Landroidx/navigationevent/NavigationEventProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final c:Lkotlinx/coroutines/flow/StateFlow;

.field public final d:Lkotlin/collections/ArrayDeque;

.field public final e:Lkotlin/collections/ArrayDeque;

.field public f:Landroidx/navigationevent/NavigationEventHandler;

.field public g:I

.field public h:Landroidx/navigationevent/NavigationEventInput;

.field public final i:Landroidx/collection/MutableOrderedScatterSet;

.field public final j:Landroidx/collection/MutableOrderedScatterSet;

.field public final k:Landroidx/collection/MutableOrderedScatterSet;

.field public l:Z

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/navigationevent/NavigationEventTransitionState$Idle;->a:Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 11
    .line 12
    new-instance v0, Landroidx/navigationevent/NavigationEventHistory;

    .line 13
    .line 14
    invoke-direct {v0}, Landroidx/navigationevent/NavigationEventHistory;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 22
    .line 23
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->c:Lkotlinx/coroutines/flow/StateFlow;

    .line 28
    .line 29
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 30
    .line 31
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->d:Lkotlin/collections/ArrayDeque;

    .line 35
    .line 36
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 37
    .line 38
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->e:Lkotlin/collections/ArrayDeque;

    .line 42
    .line 43
    invoke-static {}, Landroidx/collection/OrderedScatterSetKt;->a()Landroidx/collection/MutableOrderedScatterSet;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->i:Landroidx/collection/MutableOrderedScatterSet;

    .line 48
    .line 49
    invoke-static {}, Landroidx/collection/OrderedScatterSetKt;->a()Landroidx/collection/MutableOrderedScatterSet;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->j:Landroidx/collection/MutableOrderedScatterSet;

    .line 54
    .line 55
    invoke-static {}, Landroidx/collection/OrderedScatterSetKt;->a()Landroidx/collection/MutableOrderedScatterSet;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->k:Landroidx/collection/MutableOrderedScatterSet;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final a(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventInput;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Landroidx/navigationevent/NavigationEventInput;->a:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    if-eq p3, v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->i:Landroidx/collection/MutableOrderedScatterSet;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->j:Landroidx/collection/MutableOrderedScatterSet;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->k:Landroidx/collection/MutableOrderedScatterSet;

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v1, p2}, Landroidx/collection/MutableOrderedScatterSet;->h(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p2, Landroidx/navigationevent/NavigationEventInput;->a:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->c:Lkotlinx/coroutines/flow/StateFlow;

    .line 27
    .line 28
    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroidx/navigationevent/NavigationEventHistory;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    if-eqz p3, :cond_3

    .line 38
    .line 39
    if-eq p3, v0, :cond_2

    .line 40
    .line 41
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->n:Z

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->l:Z

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->m:Z

    .line 48
    .line 49
    :goto_1
    invoke-virtual {p2, p0}, Landroidx/navigationevent/NavigationEventInput;->b(Z)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p1, "Input \'"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object p1, p2, Landroidx/navigationevent/NavigationEventInput;->a:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 64
    .line 65
    const-string p2, "\' is already added to dispatcher "

    .line 66
    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 p1, 0x2e

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public final b()V
    .locals 15

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Landroidx/navigationevent/NavigationEventProcessor;->d:Lkotlin/collections/ArrayDeque;

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    :cond_0
    move v2, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/navigationevent/NavigationEventHandler;

    .line 30
    .line 31
    iget-boolean v3, v3, Landroidx/navigationevent/NavigationEventHandler;->d:Z

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v2, v0

    .line 37
    :goto_1
    iget-object v3, p0, Landroidx/navigationevent/NavigationEventProcessor;->e:Lkotlin/collections/ArrayDeque;

    .line 38
    .line 39
    if-eqz v3, :cond_4

    .line 40
    .line 41
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_4

    .line 46
    .line 47
    :cond_3
    move v3, v1

    .line 48
    goto :goto_3

    .line 49
    :cond_4
    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroidx/navigationevent/NavigationEventHandler;

    .line 64
    .line 65
    iget-boolean v4, v4, Landroidx/navigationevent/NavigationEventHandler;->d:Z

    .line 66
    .line 67
    if-nez v4, :cond_5

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    move v3, v0

    .line 71
    :goto_3
    if-nez v2, :cond_7

    .line 72
    .line 73
    if-eqz v3, :cond_6

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_6
    move v4, v1

    .line 77
    goto :goto_5

    .line 78
    :cond_7
    :goto_4
    move v4, v0

    .line 79
    :goto_5
    iget-boolean v5, p0, Landroidx/navigationevent/NavigationEventProcessor;->m:Z

    .line 80
    .line 81
    if-eq v5, v2, :cond_8

    .line 82
    .line 83
    move v5, v0

    .line 84
    goto :goto_6

    .line 85
    :cond_8
    move v5, v1

    .line 86
    :goto_6
    iget-boolean v6, p0, Landroidx/navigationevent/NavigationEventProcessor;->l:Z

    .line 87
    .line 88
    if-eq v6, v3, :cond_9

    .line 89
    .line 90
    move v6, v0

    .line 91
    goto :goto_7

    .line 92
    :cond_9
    move v6, v1

    .line 93
    :goto_7
    iget-boolean v7, p0, Landroidx/navigationevent/NavigationEventProcessor;->n:Z

    .line 94
    .line 95
    if-eq v7, v4, :cond_a

    .line 96
    .line 97
    goto :goto_8

    .line 98
    :cond_a
    move v0, v1

    .line 99
    :goto_8
    const-wide/32 v7, 0x7fffffff

    .line 100
    .line 101
    .line 102
    const/16 v9, 0x1f

    .line 103
    .line 104
    const v10, 0x7fffffff

    .line 105
    .line 106
    .line 107
    if-eqz v5, :cond_b

    .line 108
    .line 109
    iget-object v5, p0, Landroidx/navigationevent/NavigationEventProcessor;->k:Landroidx/collection/MutableOrderedScatterSet;

    .line 110
    .line 111
    iget-object v11, v5, Landroidx/collection/OrderedScatterSet;->b:[Ljava/lang/Object;

    .line 112
    .line 113
    iget-object v12, v5, Landroidx/collection/OrderedScatterSet;->c:[J

    .line 114
    .line 115
    iget v5, v5, Landroidx/collection/OrderedScatterSet;->e:I

    .line 116
    .line 117
    :goto_9
    if-eq v5, v10, :cond_b

    .line 118
    .line 119
    aget-wide v13, v12, v5

    .line 120
    .line 121
    shr-long/2addr v13, v9

    .line 122
    and-long/2addr v13, v7

    .line 123
    long-to-int v13, v13

    .line 124
    aget-object v5, v11, v5

    .line 125
    .line 126
    check-cast v5, Landroidx/navigationevent/NavigationEventInput;

    .line 127
    .line 128
    invoke-virtual {v5, v2}, Landroidx/navigationevent/NavigationEventInput;->b(Z)V

    .line 129
    .line 130
    .line 131
    move v5, v13

    .line 132
    goto :goto_9

    .line 133
    :cond_b
    if-eqz v6, :cond_c

    .line 134
    .line 135
    iget-object v5, p0, Landroidx/navigationevent/NavigationEventProcessor;->j:Landroidx/collection/MutableOrderedScatterSet;

    .line 136
    .line 137
    iget-object v6, v5, Landroidx/collection/OrderedScatterSet;->b:[Ljava/lang/Object;

    .line 138
    .line 139
    iget-object v11, v5, Landroidx/collection/OrderedScatterSet;->c:[J

    .line 140
    .line 141
    iget v5, v5, Landroidx/collection/OrderedScatterSet;->e:I

    .line 142
    .line 143
    :goto_a
    if-eq v5, v10, :cond_c

    .line 144
    .line 145
    aget-wide v12, v11, v5

    .line 146
    .line 147
    shr-long/2addr v12, v9

    .line 148
    and-long/2addr v12, v7

    .line 149
    long-to-int v12, v12

    .line 150
    aget-object v5, v6, v5

    .line 151
    .line 152
    check-cast v5, Landroidx/navigationevent/NavigationEventInput;

    .line 153
    .line 154
    invoke-virtual {v5, v3}, Landroidx/navigationevent/NavigationEventInput;->b(Z)V

    .line 155
    .line 156
    .line 157
    move v5, v12

    .line 158
    goto :goto_a

    .line 159
    :cond_c
    if-eqz v0, :cond_d

    .line 160
    .line 161
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->i:Landroidx/collection/MutableOrderedScatterSet;

    .line 162
    .line 163
    iget-object v5, v0, Landroidx/collection/OrderedScatterSet;->b:[Ljava/lang/Object;

    .line 164
    .line 165
    iget-object v6, v0, Landroidx/collection/OrderedScatterSet;->c:[J

    .line 166
    .line 167
    iget v0, v0, Landroidx/collection/OrderedScatterSet;->e:I

    .line 168
    .line 169
    :goto_b
    if-eq v0, v10, :cond_d

    .line 170
    .line 171
    aget-wide v11, v6, v0

    .line 172
    .line 173
    shr-long/2addr v11, v9

    .line 174
    and-long/2addr v11, v7

    .line 175
    long-to-int v11, v11

    .line 176
    aget-object v0, v5, v0

    .line 177
    .line 178
    check-cast v0, Landroidx/navigationevent/NavigationEventInput;

    .line 179
    .line 180
    invoke-virtual {v0, v4}, Landroidx/navigationevent/NavigationEventInput;->b(Z)V

    .line 181
    .line 182
    .line 183
    move v0, v11

    .line 184
    goto :goto_b

    .line 185
    :cond_d
    iput-boolean v2, p0, Landroidx/navigationevent/NavigationEventProcessor;->m:Z

    .line 186
    .line 187
    iput-boolean v3, p0, Landroidx/navigationevent/NavigationEventProcessor;->l:Z

    .line 188
    .line 189
    iput-boolean v4, p0, Landroidx/navigationevent/NavigationEventProcessor;->n:Z

    .line 190
    .line 191
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->f:Landroidx/navigationevent/NavigationEventHandler;

    .line 192
    .line 193
    if-nez v0, :cond_e

    .line 194
    .line 195
    invoke-virtual {p0, v1}, Landroidx/navigationevent/NavigationEventProcessor;->c(I)Landroidx/navigationevent/NavigationEventHandler;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    :cond_e
    invoke-virtual {p0, v0}, Landroidx/navigationevent/NavigationEventProcessor;->d(Landroidx/navigationevent/NavigationEventHandler;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public final c(I)Landroidx/navigationevent/NavigationEventHandler;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->e:Lkotlin/collections/ArrayDeque;

    .line 3
    .line 4
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->d:Lkotlin/collections/ArrayDeque;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq p1, v0, :cond_9

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroidx/navigationevent/NavigationEventHandler;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroidx/navigationevent/NavigationEventHandler;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    return-object v2

    .line 55
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, "Unsupported direction: \'"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, "\'."

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_3
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    move-object v0, p1

    .line 99
    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    .line 100
    .line 101
    iget-boolean v0, v0, Landroidx/navigationevent/NavigationEventHandler;->d:Z

    .line 102
    .line 103
    if-nez v0, :cond_5

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    move-object p1, v2

    .line 107
    :cond_5
    check-cast p1, Landroidx/navigationevent/NavigationEventHandler;

    .line 108
    .line 109
    if-nez p1, :cond_8

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    move-object v0, p1

    .line 126
    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    .line 127
    .line 128
    iget-boolean v0, v0, Landroidx/navigationevent/NavigationEventHandler;->d:Z

    .line 129
    .line 130
    if-nez v0, :cond_6

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    move-object v2, p1

    .line 134
    :cond_7
    check-cast v2, Landroidx/navigationevent/NavigationEventHandler;

    .line 135
    .line 136
    return-object v2

    .line 137
    :cond_8
    return-object p1

    .line 138
    :cond_9
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_b

    .line 147
    .line 148
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    move-object v0, p1

    .line 153
    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    .line 154
    .line 155
    iget-boolean v0, v0, Landroidx/navigationevent/NavigationEventHandler;->d:Z

    .line 156
    .line 157
    if-eqz v0, :cond_a

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_b
    move-object p1, v2

    .line 161
    :goto_4
    check-cast p1, Landroidx/navigationevent/NavigationEventHandler;

    .line 162
    .line 163
    if-nez p1, :cond_e

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_d

    .line 174
    .line 175
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    move-object v0, p1

    .line 180
    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    .line 181
    .line 182
    iget-boolean v0, v0, Landroidx/navigationevent/NavigationEventHandler;->d:Z

    .line 183
    .line 184
    if-eqz v0, :cond_c

    .line 185
    .line 186
    move-object v2, p1

    .line 187
    :cond_d
    check-cast v2, Landroidx/navigationevent/NavigationEventHandler;

    .line 188
    .line 189
    return-object v2

    .line 190
    :cond_e
    return-object p1
.end method

.method public final d(Landroidx/navigationevent/NavigationEventHandler;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->f:Landroidx/navigationevent/NavigationEventHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/navigationevent/NavigationEventProcessor;->c(I)Landroidx/navigationevent/NavigationEventHandler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_1
    if-nez v0, :cond_2

    .line 19
    .line 20
    new-instance p1, Landroidx/navigationevent/NavigationEventHistory;

    .line 21
    .line 22
    invoke-direct {p1}, Landroidx/navigationevent/NavigationEventHistory;-><init>()V

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->d:Lkotlin/collections/ArrayDeque;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroidx/navigationevent/NavigationEventHandler;

    .line 48
    .line 49
    iget-boolean v3, v2, Landroidx/navigationevent/NavigationEventHandler;->d:Z

    .line 50
    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    iget-object v3, v2, Landroidx/navigationevent/NavigationEventHandler;->b:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    iget-object v2, v2, Landroidx/navigationevent/NavigationEventHandler;->b:Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->e:Lkotlin/collections/ArrayDeque;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_6

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Landroidx/navigationevent/NavigationEventHandler;

    .line 84
    .line 85
    iget-boolean v3, v2, Landroidx/navigationevent/NavigationEventHandler;->d:Z

    .line 86
    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    iget-object v3, v2, Landroidx/navigationevent/NavigationEventHandler;->b:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_5

    .line 96
    .line 97
    iget-object v2, v2, Landroidx/navigationevent/NavigationEventHandler;->b:Ljava/util/List;

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    iget-object v1, v0, Landroidx/navigationevent/NavigationEventHandler;->a:Landroidx/navigationevent/NavigationEventInfo;

    .line 104
    .line 105
    iget-object v0, v0, Landroidx/navigationevent/NavigationEventHandler;->c:Ljava/util/List;

    .line 106
    .line 107
    new-instance v2, Landroidx/navigationevent/NavigationEventHistory;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-direct {v2, v1, p1, v0, v3}, Landroidx/navigationevent/NavigationEventHistory;-><init>(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;I)V

    .line 120
    .line 121
    .line 122
    move-object p1, v2

    .line 123
    :goto_2
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 124
    .line 125
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Landroidx/navigationevent/NavigationEventHistory;

    .line 130
    .line 131
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_7

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_7
    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->k:Landroidx/collection/MutableOrderedScatterSet;

    .line 142
    .line 143
    iget-object v0, p1, Landroidx/collection/OrderedScatterSet;->b:[Ljava/lang/Object;

    .line 144
    .line 145
    iget-object v1, p1, Landroidx/collection/OrderedScatterSet;->c:[J

    .line 146
    .line 147
    iget p1, p1, Landroidx/collection/OrderedScatterSet;->e:I

    .line 148
    .line 149
    :goto_3
    const-wide/32 v2, 0x7fffffff

    .line 150
    .line 151
    .line 152
    const/16 v4, 0x1f

    .line 153
    .line 154
    const v5, 0x7fffffff

    .line 155
    .line 156
    .line 157
    if-eq p1, v5, :cond_8

    .line 158
    .line 159
    aget-wide v5, v1, p1

    .line 160
    .line 161
    shr-long v4, v5, v4

    .line 162
    .line 163
    and-long/2addr v2, v4

    .line 164
    long-to-int v2, v2

    .line 165
    aget-object p1, v0, p1

    .line 166
    .line 167
    check-cast p1, Landroidx/navigationevent/NavigationEventInput;

    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    move p1, v2

    .line 173
    goto :goto_3

    .line 174
    :cond_8
    iget-object p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->j:Landroidx/collection/MutableOrderedScatterSet;

    .line 175
    .line 176
    iget-object v0, p1, Landroidx/collection/OrderedScatterSet;->b:[Ljava/lang/Object;

    .line 177
    .line 178
    iget-object v1, p1, Landroidx/collection/OrderedScatterSet;->c:[J

    .line 179
    .line 180
    iget p1, p1, Landroidx/collection/OrderedScatterSet;->e:I

    .line 181
    .line 182
    :goto_4
    if-eq p1, v5, :cond_9

    .line 183
    .line 184
    aget-wide v6, v1, p1

    .line 185
    .line 186
    shr-long/2addr v6, v4

    .line 187
    and-long/2addr v6, v2

    .line 188
    long-to-int v6, v6

    .line 189
    aget-object p1, v0, p1

    .line 190
    .line 191
    check-cast p1, Landroidx/navigationevent/NavigationEventInput;

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    move p1, v6

    .line 197
    goto :goto_4

    .line 198
    :cond_9
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->i:Landroidx/collection/MutableOrderedScatterSet;

    .line 199
    .line 200
    iget-object p1, p0, Landroidx/collection/OrderedScatterSet;->b:[Ljava/lang/Object;

    .line 201
    .line 202
    iget-object v0, p0, Landroidx/collection/OrderedScatterSet;->c:[J

    .line 203
    .line 204
    iget p0, p0, Landroidx/collection/OrderedScatterSet;->e:I

    .line 205
    .line 206
    :goto_5
    if-eq p0, v5, :cond_a

    .line 207
    .line 208
    aget-wide v6, v0, p0

    .line 209
    .line 210
    shr-long/2addr v6, v4

    .line 211
    and-long/2addr v6, v2

    .line 212
    long-to-int v1, v6

    .line 213
    aget-object p0, p1, p0

    .line 214
    .line 215
    check-cast p0, Landroidx/navigationevent/NavigationEventInput;

    .line 216
    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    move p0, v1

    .line 221
    goto :goto_5

    .line 222
    :cond_a
    :goto_6
    return-void
.end method
