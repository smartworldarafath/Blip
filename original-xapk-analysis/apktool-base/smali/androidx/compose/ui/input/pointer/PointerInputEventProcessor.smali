.class public final Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/ui/node/LayoutNode;

.field public final b:Landroidx/compose/ui/input/pointer/HitPathTracker;

.field public final c:Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;

.field public final d:Landroidx/compose/ui/node/HitTestResult;

.field public e:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    new-instance v0, Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Landroidx/compose/ui/input/pointer/HitPathTracker;-><init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->b:Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 16
    .line 17
    new-instance p1, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;

    .line 18
    .line 19
    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->c:Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;

    .line 23
    .line 24
    new-instance p1, Landroidx/compose/ui/node/HitTestResult;

    .line 25
    .line 26
    invoke-direct {p1}, Landroidx/compose/ui/node/HitTestResult;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->d:Landroidx/compose/ui/node/HitTestResult;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/platform/AndroidComposeView;Z)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->d:Landroidx/compose/ui/node/HitTestResult;

    .line 4
    .line 5
    iget-boolean v2, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->e:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    const/4 v2, 0x1

    .line 12
    :try_start_0
    iput-boolean v2, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->e:Z

    .line 13
    .line 14
    iget-object v4, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->c:Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;

    .line 15
    .line 16
    move-object/from16 v5, p1

    .line 17
    .line 18
    move-object/from16 v6, p2

    .line 19
    .line 20
    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->a(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iget-object v5, v4, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->a:Landroidx/collection/LongSparseArray;

    .line 25
    .line 26
    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->f()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    move v7, v3

    .line 31
    :goto_0
    if-ge v7, v6, :cond_3

    .line 32
    .line 33
    invoke-virtual {v5, v7}, Landroidx/collection/LongSparseArray;->g(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 38
    .line 39
    iget-boolean v9, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 40
    .line 41
    if-nez v9, :cond_2

    .line 42
    .line 43
    iget-boolean v8, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->h:Z

    .line 44
    .line 45
    if-eqz v8, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto/16 :goto_8

    .line 53
    .line 54
    :cond_2
    :goto_1
    move v6, v3

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    move v6, v2

    .line 57
    :goto_2
    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->f()I

    .line 58
    .line 59
    .line 60
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    move v8, v3

    .line 62
    :goto_3
    iget-object v9, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->b:Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 63
    .line 64
    if-ge v8, v7, :cond_6

    .line 65
    .line 66
    :try_start_1
    invoke-virtual {v5, v8}, Landroidx/collection/LongSparseArray;->g(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 71
    .line 72
    if-nez v6, :cond_4

    .line 73
    .line 74
    invoke-static {v10}, Landroidx/compose/ui/input/pointer/PointerEventKt;->b(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    if-eqz v11, :cond_5

    .line 79
    .line 80
    :cond_4
    iget-object v11, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 81
    .line 82
    iget-wide v12, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 83
    .line 84
    iget-object v14, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->d:Landroidx/compose/ui/node/HitTestResult;

    .line 85
    .line 86
    iget v15, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    .line 87
    .line 88
    const/16 v16, 0x1

    .line 89
    .line 90
    invoke-virtual/range {v11 .. v16}, Landroidx/compose/ui/node/LayoutNode;->E(JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 91
    .line 92
    .line 93
    iget-object v11, v0, Landroidx/compose/ui/node/HitTestResult;->j:Landroidx/collection/MutableObjectList;

    .line 94
    .line 95
    invoke-virtual {v11}, Landroidx/collection/ObjectList;->d()Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    if-nez v11, :cond_5

    .line 100
    .line 101
    iget-wide v11, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 102
    .line 103
    invoke-static {v10}, Landroidx/compose/ui/input/pointer/PointerEventKt;->b(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    invoke-virtual {v9, v11, v12, v0, v10}, Landroidx/compose/ui/input/pointer/HitPathTracker;->a(JLjava/util/List;Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroidx/compose/ui/node/HitTestResult;->clear()V

    .line 111
    .line 112
    .line 113
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_6
    move/from16 v0, p3

    .line 117
    .line 118
    invoke-virtual {v9, v4, v0}, Landroidx/compose/ui/input/pointer/HitPathTracker;->b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iget-boolean v4, v4, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->c:Z

    .line 123
    .line 124
    if-eqz v4, :cond_8

    .line 125
    .line 126
    :cond_7
    move v4, v3

    .line 127
    goto :goto_5

    .line 128
    :cond_8
    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->f()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    move v6, v3

    .line 133
    :goto_4
    if-ge v6, v4, :cond_7

    .line 134
    .line 135
    invoke-virtual {v5, v6}, Landroidx/collection/LongSparseArray;->g(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 140
    .line 141
    invoke-static {v7, v2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 142
    .line 143
    .line 144
    move-result-wide v8

    .line 145
    const-wide/16 v10, 0x0

    .line 146
    .line 147
    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-nez v8, :cond_9

    .line 152
    .line 153
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-eqz v7, :cond_9

    .line 158
    .line 159
    move v4, v2

    .line 160
    goto :goto_5

    .line 161
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :goto_5
    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->f()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    move v7, v3

    .line 169
    :goto_6
    if-ge v7, v6, :cond_b

    .line 170
    .line 171
    invoke-virtual {v5, v7}, Landroidx/collection/LongSparseArray;->g(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 176
    .line 177
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 178
    .line 179
    .line 180
    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    if-eqz v8, :cond_a

    .line 182
    .line 183
    move v5, v2

    .line 184
    goto :goto_7

    .line 185
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_b
    move v5, v3

    .line 189
    :goto_7
    shl-int/lit8 v2, v4, 0x1

    .line 190
    .line 191
    or-int/2addr v0, v2

    .line 192
    shl-int/lit8 v2, v5, 0x2

    .line 193
    .line 194
    or-int/2addr v0, v2

    .line 195
    iput-boolean v3, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->e:Z

    .line 196
    .line 197
    return v0

    .line 198
    :goto_8
    iput-boolean v3, v1, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->e:Z

    .line 199
    .line 200
    throw v0
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->c:Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->a:Landroidx/collection/LongSparseArray;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->a()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->b:Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/HitPathTracker;->c()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
