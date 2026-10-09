.class public abstract Landroidx/compose/runtime/snapshots/SnapshotKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lle;

.field public static final b:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

.field public static final c:Ljava/lang/Object;

.field public static d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

.field public static e:J

.field public static final f:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

.field public static final g:Landroidx/compose/runtime/snapshots/SnapshotWeakSet;

.field public static h:Ljava/util/List;

.field public static i:Ljava/util/List;

.field public static final j:Landroidx/compose/runtime/snapshots/GlobalSnapshot;

.field public static final k:Landroidx/compose/runtime/internal/AtomicInt;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lle;

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lle;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->a:Lle;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->b:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/Object;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 23
    .line 24
    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->n:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 25
    .line 26
    sput-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 27
    .line 28
    const-wide/16 v0, 0x2

    .line 29
    .line 30
    sput-wide v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:J

    .line 31
    .line 32
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x10

    .line 38
    .line 39
    new-array v2, v1, [J

    .line 40
    .line 41
    iput-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->b:[J

    .line 42
    .line 43
    new-array v2, v1, [I

    .line 44
    .line 45
    iput-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->c:[I

    .line 46
    .line 47
    new-array v2, v1, [I

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    move v3, v7

    .line 51
    :goto_0
    if-ge v3, v1, :cond_0

    .line 52
    .line 53
    add-int/lit8 v5, v3, 0x1

    .line 54
    .line 55
    aput v5, v2, v3

    .line 56
    .line 57
    move v3, v5

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iput-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->d:[I

    .line 60
    .line 61
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->f:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    .line 62
    .line 63
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    new-array v2, v1, [I

    .line 69
    .line 70
    iput-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->b:[I

    .line 71
    .line 72
    new-array v1, v1, [Landroidx/compose/runtime/internal/WeakReference;

    .line 73
    .line 74
    iput-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->c:[Landroidx/compose/runtime/internal/WeakReference;

    .line 75
    .line 76
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->g:Landroidx/compose/runtime/snapshots/SnapshotWeakSet;

    .line 77
    .line 78
    sget-object v0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 79
    .line 80
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->h:Ljava/util/List;

    .line 81
    .line 82
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->i:Ljava/util/List;

    .line 83
    .line 84
    sget-wide v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:J

    .line 85
    .line 86
    const-wide/16 v0, 0x1

    .line 87
    .line 88
    add-long/2addr v0, v2

    .line 89
    sput-wide v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:J

    .line 90
    .line 91
    new-instance v1, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 92
    .line 93
    new-instance v6, La7;

    .line 94
    .line 95
    const/16 v0, 0xd

    .line 96
    .line 97
    invoke-direct {v6, v0}, La7;-><init>(I)V

    .line 98
    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/snapshots/MutableSnapshot;-><init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 102
    .line 103
    .line 104
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 105
    .line 106
    iget-wide v2, v1, Landroidx/compose/runtime/snapshots/Snapshot;->b:J

    .line 107
    .line 108
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 113
    .line 114
    sput-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->j:Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 115
    .line 116
    new-instance v0, Landroidx/compose/runtime/internal/AtomicInt;

    .line 117
    .line 118
    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->k:Landroidx/compose/runtime/internal/AtomicInt;

    .line 122
    .line 123
    return-void
.end method

.method public static final a(JLandroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/HashMap;
    .locals 22

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->x()Landroidx/collection/MutableScatterSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    :cond_0
    const/16 v17, 0x0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/snapshots/Snapshot;->d()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    move-object/from16 v5, p2

    .line 24
    .line 25
    iget-object v6, v5, Landroidx/compose/runtime/snapshots/MutableSnapshot;->j:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 26
    .line 27
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->e(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v6, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 34
    .line 35
    array-length v7, v0

    .line 36
    add-int/lit8 v7, v7, -0x2

    .line 37
    .line 38
    if-ltz v7, :cond_0

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v10, 0x0

    .line 42
    :goto_0
    aget-wide v11, v0, v9

    .line 43
    .line 44
    not-long v13, v11

    .line 45
    const/4 v15, 0x7

    .line 46
    shl-long/2addr v13, v15

    .line 47
    and-long/2addr v13, v11

    .line 48
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    and-long/2addr v13, v15

    .line 54
    cmp-long v13, v13, v15

    .line 55
    .line 56
    if-eqz v13, :cond_a

    .line 57
    .line 58
    sub-int v13, v9, v7

    .line 59
    .line 60
    not-int v13, v13

    .line 61
    ushr-int/lit8 v13, v13, 0x1f

    .line 62
    .line 63
    const/16 v14, 0x8

    .line 64
    .line 65
    rsub-int/lit8 v13, v13, 0x8

    .line 66
    .line 67
    const/4 v15, 0x0

    .line 68
    :goto_1
    if-ge v15, v13, :cond_8

    .line 69
    .line 70
    const-wide/16 v16, 0xff

    .line 71
    .line 72
    and-long v16, v11, v16

    .line 73
    .line 74
    const-wide/16 v18, 0x80

    .line 75
    .line 76
    cmp-long v16, v16, v18

    .line 77
    .line 78
    if-gez v16, :cond_7

    .line 79
    .line 80
    shl-int/lit8 v16, v9, 0x3

    .line 81
    .line 82
    add-int v16, v16, v15

    .line 83
    .line 84
    aget-object v16, v6, v16

    .line 85
    .line 86
    const/16 v17, 0x0

    .line 87
    .line 88
    move-object/from16 v1, v16

    .line 89
    .line 90
    check-cast v1, Landroidx/compose/runtime/snapshots/StateObject;

    .line 91
    .line 92
    invoke-interface {v1}, Landroidx/compose/runtime/snapshots/StateObject;->c()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    move-object/from16 v20, v0

    .line 97
    .line 98
    move/from16 v18, v14

    .line 99
    .line 100
    move/from16 v19, v15

    .line 101
    .line 102
    move-wide/from16 v14, p0

    .line 103
    .line 104
    move-object/from16 v0, p3

    .line 105
    .line 106
    invoke-static {v8, v14, v15, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-nez v5, :cond_2

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    invoke-static {v8, v2, v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-nez v0, :cond_3

    .line 118
    .line 119
    :goto_2
    goto :goto_3

    .line 120
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v21

    .line 124
    if-nez v21, :cond_6

    .line 125
    .line 126
    move-object/from16 v21, v4

    .line 127
    .line 128
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/snapshots/Snapshot;->d()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {v8, v2, v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    if-eqz v4, :cond_5

    .line 137
    .line 138
    invoke-interface {v1, v0, v5, v4}, Landroidx/compose/runtime/snapshots/StateObject;->e(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_c

    .line 143
    .line 144
    if-nez v10, :cond_4

    .line 145
    .line 146
    new-instance v10, Ljava/util/HashMap;

    .line 147
    .line 148
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 149
    .line 150
    .line 151
    :cond_4
    move-object v1, v10

    .line 152
    invoke-interface {v10, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-object v10, v1

    .line 156
    goto :goto_4

    .line 157
    :cond_5
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->q()V

    .line 158
    .line 159
    .line 160
    throw v17

    .line 161
    :cond_6
    :goto_3
    move-object/from16 v21, v4

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_7
    move-object/from16 v20, v0

    .line 165
    .line 166
    move-object/from16 v21, v4

    .line 167
    .line 168
    move/from16 v18, v14

    .line 169
    .line 170
    move/from16 v19, v15

    .line 171
    .line 172
    const/16 v17, 0x0

    .line 173
    .line 174
    move-wide/from16 v14, p0

    .line 175
    .line 176
    :goto_4
    shr-long v11, v11, v18

    .line 177
    .line 178
    add-int/lit8 v0, v19, 0x1

    .line 179
    .line 180
    move-object/from16 v5, p2

    .line 181
    .line 182
    move v15, v0

    .line 183
    move/from16 v14, v18

    .line 184
    .line 185
    move-object/from16 v0, v20

    .line 186
    .line 187
    move-object/from16 v4, v21

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_8
    move-object/from16 v20, v0

    .line 191
    .line 192
    move-object/from16 v21, v4

    .line 193
    .line 194
    move v0, v14

    .line 195
    const/16 v17, 0x0

    .line 196
    .line 197
    move-wide/from16 v14, p0

    .line 198
    .line 199
    if-ne v13, v0, :cond_9

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_9
    return-object v10

    .line 203
    :cond_a
    move-wide/from16 v14, p0

    .line 204
    .line 205
    move-object/from16 v20, v0

    .line 206
    .line 207
    move-object/from16 v21, v4

    .line 208
    .line 209
    const/16 v17, 0x0

    .line 210
    .line 211
    :goto_5
    if-eq v9, v7, :cond_b

    .line 212
    .line 213
    add-int/lit8 v9, v9, 0x1

    .line 214
    .line 215
    move-object/from16 v5, p2

    .line 216
    .line 217
    move-object/from16 v0, v20

    .line 218
    .line 219
    move-object/from16 v4, v21

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_b
    return-object v10

    .line 224
    :cond_c
    :goto_6
    return-object v17
.end method

.method public static final b(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d(J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-boolean v2, p0, Landroidx/compose/runtime/snapshots/Snapshot;->c:Z

    .line 18
    .line 19
    instance-of v3, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    check-cast p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    if-eqz p0, :cond_1

    .line 28
    .line 29
    iget-boolean p0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->m:Z

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string p0, "read-only"

    .line 37
    .line 38
    :goto_1
    sget-object v3, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v3

    .line 41
    :try_start_0
    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->f:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    .line 42
    .line 43
    iget v5, v4, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->a:I

    .line 44
    .line 45
    if-lez v5, :cond_2

    .line 46
    .line 47
    iget-object v4, v4, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->b:[J

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    aget-wide v4, v4, v5

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const-wide/16 v4, -0x1

    .line 54
    .line 55
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v3

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v5, "Snapshot is not open: snapshotId="

    .line 63
    .line 64
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, ", disposed="

    .line 71
    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ", applied="

    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p0, ", lowestPin="

    .line 87
    .line 88
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    monitor-exit v3

    .line 110
    throw p0

    .line 111
    :cond_3
    return-void
.end method

.method public static final c(Landroidx/compose/runtime/snapshots/SnapshotIdSet;JJ)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 2

    .line 1
    :goto_0
    invoke-static {p1, p2, p3, p4}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-wide/16 v0, 0x1

    .line 12
    .line 13
    add-long/2addr p1, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-object p0
.end method

.method public static final d(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 15

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->j:Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->h:Landroidx/collection/MutableScatterSet;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    sget-object v3, Landroidx/compose/runtime/snapshots/SnapshotKt;->k:Landroidx/compose/runtime/internal/AtomicInt;

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto/16 :goto_8

    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-static {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->u(Landroidx/compose/runtime/snapshots/GlobalSnapshot;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v1

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    :try_start_1
    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->h:Ljava/util/List;

    .line 30
    .line 31
    new-instance v5, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 32
    .line 33
    invoke-direct {v5, v2}, Landroidx/compose/runtime/collection/ScatterSetWrapper;-><init>(Landroidx/collection/ScatterSet;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    move v7, v1

    .line 41
    :goto_1
    if-ge v7, v6, :cond_1

    .line 42
    .line 43
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 48
    .line 49
    invoke-interface {v8, v5, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .line 51
    .line 52
    add-int/lit8 v7, v7, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->k:Landroidx/compose/runtime/internal/AtomicInt;

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :goto_2
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->k:Landroidx/compose/runtime/internal/AtomicInt;

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_2
    :goto_3
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 70
    .line 71
    monitor-enter v0

    .line 72
    :try_start_2
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->e()V

    .line 73
    .line 74
    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    iget-object v3, v2, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v2, v2, Landroidx/collection/ScatterSet;->a:[J

    .line 80
    .line 81
    array-length v4, v2

    .line 82
    add-int/lit8 v4, v4, -0x2

    .line 83
    .line 84
    if-ltz v4, :cond_6

    .line 85
    .line 86
    move v5, v1

    .line 87
    :goto_4
    aget-wide v6, v2, v5

    .line 88
    .line 89
    not-long v8, v6

    .line 90
    const/4 v10, 0x7

    .line 91
    shl-long/2addr v8, v10

    .line 92
    and-long/2addr v8, v6

    .line 93
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    and-long/2addr v8, v10

    .line 99
    cmp-long v8, v8, v10

    .line 100
    .line 101
    if-eqz v8, :cond_5

    .line 102
    .line 103
    sub-int v8, v5, v4

    .line 104
    .line 105
    not-int v8, v8

    .line 106
    ushr-int/lit8 v8, v8, 0x1f

    .line 107
    .line 108
    const/16 v9, 0x8

    .line 109
    .line 110
    rsub-int/lit8 v8, v8, 0x8

    .line 111
    .line 112
    move v10, v1

    .line 113
    :goto_5
    if-ge v10, v8, :cond_4

    .line 114
    .line 115
    const-wide/16 v11, 0xff

    .line 116
    .line 117
    and-long/2addr v11, v6

    .line 118
    const-wide/16 v13, 0x80

    .line 119
    .line 120
    cmp-long v11, v11, v13

    .line 121
    .line 122
    if-gez v11, :cond_3

    .line 123
    .line 124
    shl-int/lit8 v11, v5, 0x3

    .line 125
    .line 126
    add-int/2addr v11, v10

    .line 127
    aget-object v11, v3, v11

    .line 128
    .line 129
    check-cast v11, Landroidx/compose/runtime/snapshots/StateObject;

    .line 130
    .line 131
    invoke-static {v11}, Landroidx/compose/runtime/snapshots/SnapshotKt;->p(Landroidx/compose/runtime/snapshots/StateObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 132
    .line 133
    .line 134
    goto :goto_6

    .line 135
    :catchall_2
    move-exception p0

    .line 136
    goto :goto_7

    .line 137
    :cond_3
    :goto_6
    shr-long/2addr v6, v9

    .line 138
    add-int/lit8 v10, v10, 0x1

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_4
    if-ne v8, v9, :cond_6

    .line 142
    .line 143
    :cond_5
    if-eq v5, v4, :cond_6

    .line 144
    .line 145
    add-int/lit8 v5, v5, 0x1

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_6
    monitor-exit v0

    .line 149
    return-object p0

    .line 150
    :goto_7
    monitor-exit v0

    .line 151
    throw p0

    .line 152
    :goto_8
    monitor-exit v1

    .line 153
    throw p0
.end method

.method public static final e()V
    .locals 7

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->g:Landroidx/compose/runtime/snapshots/SnapshotWeakSet;

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    move v4, v3

    .line 8
    :goto_0
    const/4 v5, 0x0

    .line 9
    if-ge v3, v1, :cond_3

    .line 10
    .line 11
    iget-object v6, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->c:[Landroidx/compose/runtime/internal/WeakReference;

    .line 12
    .line 13
    aget-object v6, v6, v3

    .line 14
    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    :cond_0
    if-eqz v5, :cond_2

    .line 22
    .line 23
    check-cast v5, Landroidx/compose/runtime/snapshots/StateObject;

    .line 24
    .line 25
    invoke-static {v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->o(Landroidx/compose/runtime/snapshots/StateObject;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_2

    .line 30
    .line 31
    if-eq v4, v3, :cond_1

    .line 32
    .line 33
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->c:[Landroidx/compose/runtime/internal/WeakReference;

    .line 34
    .line 35
    aput-object v6, v5, v4

    .line 36
    .line 37
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->b:[I

    .line 38
    .line 39
    aget v6, v5, v3

    .line 40
    .line 41
    aput v6, v5, v4

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    move v3, v4

    .line 49
    :goto_1
    if-ge v3, v1, :cond_4

    .line 50
    .line 51
    iget-object v6, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->c:[Landroidx/compose/runtime/internal/WeakReference;

    .line 52
    .line 53
    aput-object v5, v6, v3

    .line 54
    .line 55
    iget-object v6, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->b:[I

    .line 56
    .line 57
    aput v2, v6, v3

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    if-eq v4, v1, :cond_5

    .line 63
    .line 64
    iput v4, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->a:I

    .line 65
    .line 66
    :cond_5
    return-void
.end method

.method public static final f(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 8

    .line 1
    instance-of v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, p1, v1, p2}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;-><init>(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;ZZ)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    :goto_0
    new-instance v2, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    check-cast p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 20
    .line 21
    :goto_1
    move-object v3, p0

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :goto_2
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v4, p1

    .line 28
    move v7, p2

    .line 29
    invoke-direct/range {v2 .. v7}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V

    .line 30
    .line 31
    .line 32
    return-object v2
.end method

.method public static final g(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 4

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->d()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, v1, v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->d()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p0, v2, v3, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->q()V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    throw p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v0

    .line 49
    throw p0

    .line 50
    :cond_1
    return-object v0
.end method

.method public static final h(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->d()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {p0, v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->d()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0, v1, v2, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->q()V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    throw p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0

    .line 41
    throw p0

    .line 42
    :cond_1
    return-object v0
.end method

.method public static final i()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->b:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->j:Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public static final j(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    if-eqz p0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eq p0, p1, :cond_1

    .line 10
    .line 11
    new-instance p2, Lzf;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p2, p0, p1, v0}, Lzf;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 15
    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_1
    if-nez p0, :cond_2

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_2
    return-object p0
.end method

.method public static final k(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-eq p0, p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lzf;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, p0, p1, v1}, Lzf;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    if-nez p0, :cond_1

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_1
    return-object p0
.end method

.method public static final l(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 10

    .line 1
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/StateObject;->c()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-wide v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:J

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/snapshots/SnapshotKt;->f:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    .line 8
    .line 9
    iget v4, v3, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->a:I

    .line 10
    .line 11
    if-lez v4, :cond_0

    .line 12
    .line 13
    iget-object v1, v3, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->b:[J

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aget-wide v1, v1, v2

    .line 17
    .line 18
    :cond_0
    const-wide/16 v3, 0x1

    .line 19
    .line 20
    sub-long/2addr v1, v3

    .line 21
    const/4 v3, 0x0

    .line 22
    move-object v4, v3

    .line 23
    :goto_0
    if-eqz v0, :cond_5

    .line 24
    .line 25
    iget-wide v5, v0, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 26
    .line 27
    const-wide/16 v7, 0x0

    .line 28
    .line 29
    cmp-long v9, v5, v7

    .line 30
    .line 31
    if-nez v9, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    cmp-long v7, v5, v7

    .line 35
    .line 36
    if-eqz v7, :cond_4

    .line 37
    .line 38
    invoke-static {v5, v6, v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-gtz v7, :cond_4

    .line 43
    .line 44
    sget-object v7, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->n:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 45
    .line 46
    invoke-virtual {v7, v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d(J)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_4

    .line 51
    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    move-object v4, v0

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iget-wide v1, v0, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 57
    .line 58
    iget-wide v5, v4, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 59
    .line 60
    invoke-static {v1, v2, v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-gez v1, :cond_3

    .line 65
    .line 66
    :goto_1
    move-object v3, v0

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move-object v3, v4

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    :goto_2
    iget-object v0, v0, Landroidx/compose/runtime/snapshots/StateRecord;->b:Landroidx/compose/runtime/snapshots/StateRecord;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    :goto_3
    const-wide v0, 0x7fffffffffffffffL

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    if-eqz v3, :cond_6

    .line 79
    .line 80
    iput-wide v0, v3, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 81
    .line 82
    return-object v3

    .line 83
    :cond_6
    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/snapshots/StateRecord;->b(J)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/StateObject;->c()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/StateRecord;->b:Landroidx/compose/runtime/snapshots/StateRecord;

    .line 92
    .line 93
    invoke-interface {p1, p0}, Landroidx/compose/runtime/snapshots/StateObject;->b(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 94
    .line 95
    .line 96
    return-object p0
.end method

.method public static final m(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->h()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->t(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->i()Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static final n(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObjectImpl;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->n(Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v2, p3, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 15
    .line 16
    cmp-long v2, v2, v0

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    return-object p3

    .line 21
    :cond_1
    sget-object p3, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter p3

    .line 24
    :try_start_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->l(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p3

    .line 29
    iput-wide v0, p0, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->n(Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit p3

    .line 37
    throw p0
.end method

.method public static final o(Landroidx/compose/runtime/snapshots/StateObject;)Z
    .locals 15

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/StateObject;->c()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-wide v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:J

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/snapshots/SnapshotKt;->f:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    .line 8
    .line 9
    iget v4, v3, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->a:I

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-lez v4, :cond_0

    .line 13
    .line 14
    iget-object v1, v3, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->b:[J

    .line 15
    .line 16
    aget-wide v1, v1, v5

    .line 17
    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    move-object v4, v3

    .line 20
    move v6, v5

    .line 21
    :goto_0
    if-eqz v0, :cond_9

    .line 22
    .line 23
    iget-wide v7, v0, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 24
    .line 25
    const-wide/16 v9, 0x0

    .line 26
    .line 27
    cmp-long v11, v7, v9

    .line 28
    .line 29
    if-eqz v11, :cond_8

    .line 30
    .line 31
    invoke-static {v7, v8, v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-gez v7, :cond_7

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    add-int/lit8 v6, v6, 0x1

    .line 40
    .line 41
    move-object v3, v0

    .line 42
    goto :goto_4

    .line 43
    :cond_1
    iget-wide v7, v0, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 44
    .line 45
    iget-wide v11, v3, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 46
    .line 47
    invoke-static {v7, v8, v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-gez v7, :cond_2

    .line 52
    .line 53
    move-object v7, v3

    .line 54
    move-object v3, v0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move-object v7, v0

    .line 57
    :goto_1
    if-nez v4, :cond_6

    .line 58
    .line 59
    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/StateObject;->c()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    move-object v8, v4

    .line 64
    :goto_2
    if-eqz v4, :cond_5

    .line 65
    .line 66
    iget-wide v11, v4, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 67
    .line 68
    invoke-static {v11, v12, v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    if-ltz v11, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    iget-wide v11, v8, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 76
    .line 77
    iget-wide v13, v4, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 78
    .line 79
    invoke-static {v11, v12, v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    if-gez v11, :cond_4

    .line 84
    .line 85
    move-object v8, v4

    .line 86
    :cond_4
    iget-object v4, v4, Landroidx/compose/runtime/snapshots/StateRecord;->b:Landroidx/compose/runtime/snapshots/StateRecord;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    move-object v4, v8

    .line 90
    :cond_6
    :goto_3
    iput-wide v9, v3, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/StateRecord;->a(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 93
    .line 94
    .line 95
    move-object v3, v7

    .line 96
    goto :goto_4

    .line 97
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 98
    .line 99
    :cond_8
    :goto_4
    iget-object v0, v0, Landroidx/compose/runtime/snapshots/StateRecord;->b:Landroidx/compose/runtime/snapshots/StateRecord;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_9
    const/4 p0, 0x1

    .line 103
    if-le v6, p0, :cond_a

    .line 104
    .line 105
    return p0

    .line 106
    :cond_a
    return v5
.end method

.method public static final p(Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 10

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->o(Landroidx/compose/runtime/snapshots/StateObject;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->g:Landroidx/compose/runtime/snapshots/SnapshotWeakSet;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->a:I

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, -0x1

    .line 17
    if-lez v1, :cond_d

    .line 18
    .line 19
    iget v5, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->a:I

    .line 20
    .line 21
    add-int/lit8 v5, v5, -0x1

    .line 22
    .line 23
    move v6, v3

    .line 24
    :goto_0
    if-gt v6, v5, :cond_c

    .line 25
    .line 26
    add-int v7, v6, v5

    .line 27
    .line 28
    ushr-int/lit8 v7, v7, 0x1

    .line 29
    .line 30
    iget-object v8, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->b:[I

    .line 31
    .line 32
    aget v8, v8, v7

    .line 33
    .line 34
    if-ge v8, v2, :cond_0

    .line 35
    .line 36
    add-int/lit8 v6, v7, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-le v8, v2, :cond_1

    .line 40
    .line 41
    add-int/lit8 v5, v7, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->c:[Landroidx/compose/runtime/internal/WeakReference;

    .line 45
    .line 46
    aget-object v5, v5, v7

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move-object v5, v6

    .line 57
    :goto_1
    if-ne p0, v5, :cond_3

    .line 58
    .line 59
    :goto_2
    move v4, v7

    .line 60
    goto :goto_8

    .line 61
    :cond_3
    add-int/lit8 v5, v7, -0x1

    .line 62
    .line 63
    :goto_3
    if-ge v4, v5, :cond_7

    .line 64
    .line 65
    iget-object v8, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->b:[I

    .line 66
    .line 67
    aget v8, v8, v5

    .line 68
    .line 69
    if-eq v8, v2, :cond_4

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_4
    iget-object v8, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->c:[Landroidx/compose/runtime/internal/WeakReference;

    .line 73
    .line 74
    aget-object v8, v8, v5

    .line 75
    .line 76
    if-eqz v8, :cond_5

    .line 77
    .line 78
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    goto :goto_4

    .line 83
    :cond_5
    move-object v8, v6

    .line 84
    :goto_4
    if-ne v8, p0, :cond_6

    .line 85
    .line 86
    move v4, v5

    .line 87
    goto :goto_8

    .line 88
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 92
    .line 93
    iget v4, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->a:I

    .line 94
    .line 95
    :goto_6
    if-ge v7, v4, :cond_b

    .line 96
    .line 97
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->b:[I

    .line 98
    .line 99
    aget v5, v5, v7

    .line 100
    .line 101
    if-eq v5, v2, :cond_8

    .line 102
    .line 103
    add-int/lit8 v7, v7, 0x1

    .line 104
    .line 105
    neg-int v4, v7

    .line 106
    goto :goto_8

    .line 107
    :cond_8
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->c:[Landroidx/compose/runtime/internal/WeakReference;

    .line 108
    .line 109
    aget-object v5, v5, v7

    .line 110
    .line 111
    if-eqz v5, :cond_9

    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    goto :goto_7

    .line 118
    :cond_9
    move-object v5, v6

    .line 119
    :goto_7
    if-ne v5, p0, :cond_a

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_b
    iget v4, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->a:I

    .line 126
    .line 127
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    neg-int v4, v4

    .line 130
    goto :goto_8

    .line 131
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 132
    .line 133
    neg-int v4, v6

    .line 134
    :goto_8
    if-ltz v4, :cond_d

    .line 135
    .line 136
    goto :goto_a

    .line 137
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    neg-int v4, v4

    .line 140
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->c:[Landroidx/compose/runtime/internal/WeakReference;

    .line 141
    .line 142
    array-length v6, v5

    .line 143
    if-ne v1, v6, :cond_e

    .line 144
    .line 145
    mul-int/lit8 v6, v6, 0x2

    .line 146
    .line 147
    new-array v7, v6, [Landroidx/compose/runtime/internal/WeakReference;

    .line 148
    .line 149
    new-array v6, v6, [I

    .line 150
    .line 151
    add-int/lit8 v8, v4, 0x1

    .line 152
    .line 153
    sub-int v9, v1, v4

    .line 154
    .line 155
    invoke-static {v5, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    .line 157
    .line 158
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->c:[Landroidx/compose/runtime/internal/WeakReference;

    .line 159
    .line 160
    invoke-static {v5, v3, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    .line 162
    .line 163
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->b:[I

    .line 164
    .line 165
    invoke-static {v8, v4, v1, v5, v6}, Lkotlin/collections/ArraysKt;->f(III[I[I)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->b:[I

    .line 169
    .line 170
    const/4 v5, 0x6

    .line 171
    invoke-static {v3, v4, v5, v1, v6}, Lkotlin/collections/ArraysKt;->i(III[I[I)V

    .line 172
    .line 173
    .line 174
    iput-object v7, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->c:[Landroidx/compose/runtime/internal/WeakReference;

    .line 175
    .line 176
    iput-object v6, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->b:[I

    .line 177
    .line 178
    goto :goto_9

    .line 179
    :cond_e
    add-int/lit8 v3, v4, 0x1

    .line 180
    .line 181
    sub-int v6, v1, v4

    .line 182
    .line 183
    invoke-static {v5, v4, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    .line 185
    .line 186
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->b:[I

    .line 187
    .line 188
    invoke-static {v3, v4, v1, v5, v5}, Lkotlin/collections/ArraysKt;->f(III[I[I)V

    .line 189
    .line 190
    .line 191
    :goto_9
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->c:[Landroidx/compose/runtime/internal/WeakReference;

    .line 192
    .line 193
    new-instance v3, Landroidx/compose/runtime/internal/WeakReference;

    .line 194
    .line 195
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    aput-object v3, v1, v4

    .line 199
    .line 200
    iget-object p0, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->b:[I

    .line 201
    .line 202
    aput v2, p0, v4

    .line 203
    .line 204
    iget p0, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->a:I

    .line 205
    .line 206
    add-int/lit8 p0, p0, 0x1

    .line 207
    .line 208
    iput p0, v0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->a:I

    .line 209
    .line 210
    :cond_f
    :goto_a
    return-void
.end method

.method public static final q()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Reading a state that was created after the snapshot was taken or in a snapshot that has not yet been applied"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public static final r(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_0
    if-eqz p0, :cond_2

    .line 4
    .line 5
    iget-wide v2, p0, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v4, v2, v4

    .line 10
    .line 11
    if-eqz v4, :cond_1

    .line 12
    .line 13
    invoke-static {v2, v3, p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-gtz v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d(J)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-wide v2, v1, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 29
    .line 30
    iget-wide v4, p0, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 31
    .line 32
    invoke-static {v2, v3, v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-gez v2, :cond_1

    .line 37
    .line 38
    :goto_1
    move-object v1, p0

    .line 39
    :cond_1
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/StateRecord;->b:Landroidx/compose/runtime/snapshots/StateRecord;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-eqz v1, :cond_3

    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_3
    return-object v0
.end method

.method public static final s(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 3

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->d()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, v1, v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/StateObject;->c()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->d()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v1, v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return-object p1

    .line 58
    :cond_1
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->q()V

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    monitor-exit p0

    .line 65
    throw p1

    .line 66
    :cond_2
    return-object p0
.end method

.method public static final t(I)V
    .locals 10

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->f:Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->d:[I

    .line 4
    .line 5
    aget v1, v1, p0

    .line 6
    .line 7
    iget v2, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->a:I

    .line 8
    .line 9
    add-int/lit8 v2, v2, -0x1

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->b(II)V

    .line 12
    .line 13
    .line 14
    iget v2, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->a:I

    .line 15
    .line 16
    add-int/lit8 v2, v2, -0x1

    .line 17
    .line 18
    iput v2, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->a:I

    .line 19
    .line 20
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->b:[J

    .line 21
    .line 22
    aget-wide v3, v2, v1

    .line 23
    .line 24
    move v5, v1

    .line 25
    :goto_0
    if-lez v5, :cond_0

    .line 26
    .line 27
    add-int/lit8 v6, v5, 0x1

    .line 28
    .line 29
    shr-int/lit8 v6, v6, 0x1

    .line 30
    .line 31
    add-int/lit8 v6, v6, -0x1

    .line 32
    .line 33
    aget-wide v7, v2, v6

    .line 34
    .line 35
    invoke-static {v7, v8, v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-lez v7, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, v6, v5}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->b(II)V

    .line 42
    .line 43
    .line 44
    move v5, v6

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->b:[J

    .line 47
    .line 48
    iget v3, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->a:I

    .line 49
    .line 50
    shr-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    :goto_1
    if-ge v1, v3, :cond_2

    .line 53
    .line 54
    add-int/lit8 v4, v1, 0x1

    .line 55
    .line 56
    shl-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    add-int/lit8 v5, v4, -0x1

    .line 59
    .line 60
    iget v6, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->a:I

    .line 61
    .line 62
    if-ge v4, v6, :cond_1

    .line 63
    .line 64
    aget-wide v6, v2, v4

    .line 65
    .line 66
    aget-wide v8, v2, v5

    .line 67
    .line 68
    invoke-static {v6, v7, v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-gez v6, :cond_1

    .line 73
    .line 74
    aget-wide v5, v2, v4

    .line 75
    .line 76
    aget-wide v7, v2, v1

    .line 77
    .line 78
    invoke-static {v5, v6, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-gez v5, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0, v4, v1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->b(II)V

    .line 85
    .line 86
    .line 87
    move v1, v4

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    aget-wide v6, v2, v5

    .line 90
    .line 91
    aget-wide v8, v2, v1

    .line 92
    .line 93
    invoke-static {v6, v7, v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-gez v4, :cond_2

    .line 98
    .line 99
    invoke-virtual {v0, v5, v1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->b(II)V

    .line 100
    .line 101
    .line 102
    move v1, v5

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->d:[I

    .line 105
    .line 106
    iget v2, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->e:I

    .line 107
    .line 108
    aput v2, v1, p0

    .line 109
    .line 110
    iput p0, v0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->e:I

    .line 111
    .line 112
    return-void
.end method

.method public static final u(Landroidx/compose/runtime/snapshots/GlobalSnapshot;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->b:J

    .line 2
    .line 3
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-wide v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:J

    .line 14
    .line 15
    const-wide/16 v4, 0x1

    .line 16
    .line 17
    add-long/2addr v4, v2

    .line 18
    sput-wide v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:J

    .line 19
    .line 20
    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 21
    .line 22
    invoke-virtual {v4, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 27
    .line 28
    iput-wide v2, p0, Landroidx/compose/runtime/snapshots/Snapshot;->b:J

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->a:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->g:I

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->h:Landroidx/collection/MutableScatterSet;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->o()V

    .line 39
    .line 40
    .line 41
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 42
    .line 43
    invoke-virtual {p0, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->d:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 48
    .line 49
    return-object p1
.end method

.method public static final v(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->n(Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->d()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p0, v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez p0, :cond_2

    .line 24
    .line 25
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/StateObject;->c()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->d()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v4, v5, v6, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 48
    .line 49
    .line 50
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    monitor-exit p0

    .line 54
    move-object p0, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->q()V

    .line 57
    .line 58
    .line 59
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    monitor-exit p0

    .line 62
    throw p1

    .line 63
    :cond_2
    :goto_0
    iget-wide v3, p0, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 64
    .line 65
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 66
    .line 67
    .line 68
    move-result-wide v5

    .line 69
    cmp-long v3, v3, v5

    .line 70
    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_3
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 75
    .line 76
    monitor-enter p0

    .line 77
    :try_start_2
    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/StateObject;->c()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->d()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-static {v3, v0, v1, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/StateRecord;JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    iget-wide v4, v3, Landroidx/compose/runtime/snapshots/StateRecord;->a:J

    .line 92
    .line 93
    cmp-long v0, v4, v0

    .line 94
    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    invoke-static {v3, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->l(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/snapshots/StateRecord;->a(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 106
    .line 107
    .line 108
    move-result-wide v1

    .line 109
    iput-wide v1, v0, Landroidx/compose/runtime/snapshots/StateRecord;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    .line 111
    move-object v3, v0

    .line 112
    :goto_1
    monitor-exit p0

    .line 113
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->n(Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 114
    .line 115
    .line 116
    return-object v3

    .line 117
    :catchall_1
    move-exception p1

    .line 118
    goto :goto_2

    .line 119
    :cond_5
    :try_start_3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->q()V

    .line 120
    .line 121
    .line 122
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    :goto_2
    monitor-exit p0

    .line 124
    throw p1
.end method
