.class public final synthetic Landroidx/compose/runtime/snapshots/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/b;->j:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/b;->j:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 4
    .line 5
    :cond_0
    iget-object v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->g:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-boolean v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->c:Z

    .line 9
    .line 10
    if-nez v0, :cond_6

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    :try_start_1
    iget-object v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->f:Landroidx/compose/runtime/collection/MutableVector;

    .line 16
    .line 17
    iget-object v4, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 18
    .line 19
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    :goto_0
    if-ge v5, v0, :cond_5

    .line 23
    .line 24
    aget-object v6, v4, v5

    .line 25
    .line 26
    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 27
    .line 28
    iget-object v7, v6, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->g:Landroidx/collection/MutableScatterSet;

    .line 29
    .line 30
    iget-object v6, v6, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->a:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    iget-object v8, v7, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v9, v7, Landroidx/collection/ScatterSet;->a:[J

    .line 35
    .line 36
    array-length v10, v9

    .line 37
    add-int/lit8 v10, v10, -0x2

    .line 38
    .line 39
    if-ltz v10, :cond_4

    .line 40
    .line 41
    const/4 v11, 0x0

    .line 42
    :goto_1
    aget-wide v12, v9, v11

    .line 43
    .line 44
    not-long v14, v12

    .line 45
    const/16 v16, 0x7

    .line 46
    .line 47
    shl-long v14, v14, v16

    .line 48
    .line 49
    and-long/2addr v14, v12

    .line 50
    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    and-long v14, v14, v16

    .line 56
    .line 57
    cmp-long v14, v14, v16

    .line 58
    .line 59
    if-eqz v14, :cond_3

    .line 60
    .line 61
    sub-int v14, v11, v10

    .line 62
    .line 63
    not-int v14, v14

    .line 64
    ushr-int/lit8 v14, v14, 0x1f

    .line 65
    .line 66
    const/16 v15, 0x8

    .line 67
    .line 68
    rsub-int/lit8 v14, v14, 0x8

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    :goto_2
    if-ge v3, v14, :cond_2

    .line 72
    .line 73
    const-wide/16 v16, 0xff

    .line 74
    .line 75
    and-long v16, v12, v16

    .line 76
    .line 77
    const-wide/16 v18, 0x80

    .line 78
    .line 79
    cmp-long v16, v16, v18

    .line 80
    .line 81
    if-gez v16, :cond_1

    .line 82
    .line 83
    shl-int/lit8 v16, v11, 0x3

    .line 84
    .line 85
    add-int v16, v16, v3

    .line 86
    .line 87
    move/from16 v17, v15

    .line 88
    .line 89
    aget-object v15, v8, v16

    .line 90
    .line 91
    invoke-interface {v6, v15}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_1
    move/from16 v17, v15

    .line 96
    .line 97
    :goto_3
    shr-long v12, v12, v17

    .line 98
    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    move/from16 v15, v17

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    move v3, v15

    .line 105
    if-ne v14, v3, :cond_4

    .line 106
    .line 107
    :cond_3
    if-eq v11, v10, :cond_4

    .line 108
    .line 109
    add-int/lit8 v11, v11, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {v7}, Landroidx/collection/MutableScatterSet;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    add-int/lit8 v5, v5, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :goto_4
    const/4 v3, 0x0

    .line 119
    goto :goto_5

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    const/4 v3, 0x0

    .line 123
    :try_start_2
    iput-boolean v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->c:Z

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :catchall_1
    move-exception v0

    .line 127
    goto :goto_7

    .line 128
    :goto_5
    iput-boolean v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->c:Z

    .line 129
    .line 130
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    :cond_6
    :goto_6
    monitor-exit v2

    .line 132
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->d()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_0

    .line 137
    .line 138
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 139
    .line 140
    return-object v0

    .line 141
    :goto_7
    monitor-exit v2

    .line 142
    throw v0
.end method
