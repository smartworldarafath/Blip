.class public final synthetic Landroidx/compose/runtime/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/runtime/SnapshotFlowManagerImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/SnapshotFlowManagerImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/runtime/e;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/runtime/e;->k:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/runtime/e;->j:I

    .line 4
    .line 5
    const/4 v6, 0x7

    .line 6
    const/16 v7, 0x8

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Landroidx/compose/runtime/e;->k:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    .line 18
    .line 19
    check-cast v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Ljava/util/Set;

    .line 24
    .line 25
    move-object/from16 v11, p2

    .line 26
    .line 27
    check-cast v11, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 28
    .line 29
    iget-object v11, v0, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->a:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v11

    .line 32
    :try_start_0
    iget-object v12, v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->d:Landroidx/collection/MutableScatterSet;

    .line 33
    .line 34
    if-nez v12, :cond_0

    .line 35
    .line 36
    check-cast v1, Ljava/lang/Iterable;

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->b:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->n(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_5

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->f:Lkotlinx/coroutines/channels/SendChannel;

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_4

    .line 51
    :cond_0
    iget-object v13, v12, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 52
    .line 53
    iget-object v12, v12, Landroidx/collection/ScatterSet;->a:[J

    .line 54
    .line 55
    array-length v14, v12

    .line 56
    add-int/lit8 v14, v14, -0x2

    .line 57
    .line 58
    if-ltz v14, :cond_5

    .line 59
    .line 60
    move v15, v8

    .line 61
    const-wide/16 v16, 0x80

    .line 62
    .line 63
    :goto_0
    aget-wide v2, v12, v15

    .line 64
    .line 65
    const-wide/16 v18, 0xff

    .line 66
    .line 67
    not-long v4, v2

    .line 68
    shl-long/2addr v4, v6

    .line 69
    and-long/2addr v4, v2

    .line 70
    and-long/2addr v4, v9

    .line 71
    cmp-long v4, v4, v9

    .line 72
    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    sub-int v4, v15, v14

    .line 76
    .line 77
    not-int v4, v4

    .line 78
    ushr-int/lit8 v4, v4, 0x1f

    .line 79
    .line 80
    rsub-int/lit8 v4, v4, 0x8

    .line 81
    .line 82
    move v5, v8

    .line 83
    :goto_1
    if-ge v5, v4, :cond_3

    .line 84
    .line 85
    and-long v20, v2, v18

    .line 86
    .line 87
    cmp-long v20, v20, v16

    .line 88
    .line 89
    if-gez v20, :cond_1

    .line 90
    .line 91
    shl-int/lit8 v20, v15, 0x3

    .line 92
    .line 93
    add-int v20, v20, v5

    .line 94
    .line 95
    move/from16 v21, v6

    .line 96
    .line 97
    aget-object v6, v13, v20

    .line 98
    .line 99
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_2

    .line 104
    .line 105
    iget-object v0, v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->f:Lkotlinx/coroutines/channels/SendChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_1
    move/from16 v21, v6

    .line 109
    .line 110
    :cond_2
    shr-long/2addr v2, v7

    .line 111
    add-int/lit8 v5, v5, 0x1

    .line 112
    .line 113
    move/from16 v6, v21

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    move/from16 v21, v6

    .line 117
    .line 118
    if-ne v4, v7, :cond_5

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    move/from16 v21, v6

    .line 122
    .line 123
    :goto_2
    if-eq v15, v14, :cond_5

    .line 124
    .line 125
    add-int/lit8 v15, v15, 0x1

    .line 126
    .line 127
    move/from16 v6, v21

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    const/4 v0, 0x0

    .line 131
    :goto_3
    monitor-exit v11

    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 140
    .line 141
    return-object v0

    .line 142
    :goto_4
    monitor-exit v11

    .line 143
    throw v0

    .line 144
    :pswitch_0
    move/from16 v21, v6

    .line 145
    .line 146
    const-wide/16 v16, 0x80

    .line 147
    .line 148
    const-wide/16 v18, 0xff

    .line 149
    .line 150
    iget-object v0, v0, Landroidx/compose/runtime/e;->k:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    .line 151
    .line 152
    check-cast v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    .line 153
    .line 154
    move-object/from16 v1, p1

    .line 155
    .line 156
    check-cast v1, Ljava/util/Set;

    .line 157
    .line 158
    move-object/from16 v2, p2

    .line 159
    .line 160
    check-cast v2, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 161
    .line 162
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 165
    .line 166
    .line 167
    iget-object v3, v0, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->a:Ljava/lang/Object;

    .line 168
    .line 169
    monitor-enter v3

    .line 170
    :try_start_1
    iget-object v4, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->b:Landroidx/collection/MutableScatterMap;

    .line 171
    .line 172
    new-instance v5, Landroidx/compose/runtime/f;

    .line 173
    .line 174
    invoke-direct {v5, v1, v0, v2}, Landroidx/compose/runtime/f;-><init>(Ljava/util/Set;Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 175
    .line 176
    .line 177
    const/4 v0, 0x1

    .line 178
    invoke-static {v0, v5}, Lkotlin/jvm/internal/TypeIntrinsics;->c(ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, v4, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 182
    .line 183
    iget-object v1, v4, Landroidx/collection/ScatterMap;->a:[J

    .line 184
    .line 185
    array-length v4, v1

    .line 186
    add-int/lit8 v4, v4, -0x2

    .line 187
    .line 188
    if-ltz v4, :cond_a

    .line 189
    .line 190
    move v6, v8

    .line 191
    :goto_5
    aget-wide v11, v1, v6

    .line 192
    .line 193
    not-long v13, v11

    .line 194
    shl-long v13, v13, v21

    .line 195
    .line 196
    and-long/2addr v13, v11

    .line 197
    and-long/2addr v13, v9

    .line 198
    cmp-long v13, v13, v9

    .line 199
    .line 200
    if-eqz v13, :cond_9

    .line 201
    .line 202
    sub-int v13, v6, v4

    .line 203
    .line 204
    not-int v13, v13

    .line 205
    ushr-int/lit8 v13, v13, 0x1f

    .line 206
    .line 207
    rsub-int/lit8 v13, v13, 0x8

    .line 208
    .line 209
    move v14, v8

    .line 210
    :goto_6
    if-ge v14, v13, :cond_8

    .line 211
    .line 212
    and-long v22, v11, v18

    .line 213
    .line 214
    cmp-long v15, v22, v16

    .line 215
    .line 216
    if-gez v15, :cond_7

    .line 217
    .line 218
    shl-int/lit8 v15, v6, 0x3

    .line 219
    .line 220
    add-int/2addr v15, v14

    .line 221
    aget-object v15, v0, v15

    .line 222
    .line 223
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    :cond_7
    shr-long/2addr v11, v7

    .line 227
    add-int/lit8 v14, v14, 0x1

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_8
    if-ne v13, v7, :cond_a

    .line 231
    .line 232
    :cond_9
    if-eq v6, v4, :cond_a

    .line 233
    .line 234
    add-int/lit8 v6, v6, 0x1

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_a
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v0, Ljava/util/List;

    .line 240
    .line 241
    if-eqz v0, :cond_b

    .line 242
    .line 243
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    :goto_7
    if-ge v8, v1, :cond_b

    .line 248
    .line 249
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Lkotlinx/coroutines/channels/SendChannel;

    .line 254
    .line 255
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 256
    .line 257
    invoke-interface {v2, v4}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    .line 259
    .line 260
    add-int/lit8 v8, v8, 0x1

    .line 261
    .line 262
    goto :goto_7

    .line 263
    :catchall_1
    move-exception v0

    .line 264
    goto :goto_8

    .line 265
    :cond_b
    monitor-exit v3

    .line 266
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 267
    .line 268
    return-object v0

    .line 269
    :goto_8
    monitor-exit v3

    .line 270
    throw v0

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
