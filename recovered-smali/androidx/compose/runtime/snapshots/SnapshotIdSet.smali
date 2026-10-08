.class public final Landroidx/compose/runtime/snapshots/SnapshotIdSet;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# static fields
.field public static final n:Landroidx/compose/runtime/snapshots/SnapshotIdSet;


# instance fields
.field public final j:J

.field public final k:J

.field public final l:J

.field public final m:[J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 2
    .line 3
    const-wide/16 v5, 0x0

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->n:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(JJJ[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j:J

    .line 5
    .line 6
    iput-wide p3, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->k:J

    .line 7
    .line 8
    iput-wide p5, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 9
    .line 10
    iput-object p7, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m:[J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->n:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_1
    iget-wide v2, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 14
    .line 15
    iget-wide v4, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 16
    .line 17
    iget-object v6, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m:[J

    .line 18
    .line 19
    iget-wide v7, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->k:J

    .line 20
    .line 21
    iget-wide v9, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j:J

    .line 22
    .line 23
    iget-wide v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 24
    .line 25
    cmp-long v1, v2, v11

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m:[J

    .line 30
    .line 31
    if-ne v6, v1, :cond_2

    .line 32
    .line 33
    move-wide/from16 v16, v11

    .line 34
    .line 35
    new-instance v11, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 36
    .line 37
    iget-wide v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j:J

    .line 38
    .line 39
    not-long v4, v9

    .line 40
    and-long v12, v2, v4

    .line 41
    .line 42
    iget-wide v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->k:J

    .line 43
    .line 44
    not-long v4, v7

    .line 45
    and-long v14, v2, v4

    .line 46
    .line 47
    move-object/from16 v18, v1

    .line 48
    .line 49
    invoke-direct/range {v11 .. v18}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    .line 50
    .line 51
    .line 52
    return-object v11

    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    if-eqz v6, :cond_3

    .line 55
    .line 56
    array-length v2, v6

    .line 57
    move v3, v1

    .line 58
    :goto_0
    if-ge v3, v2, :cond_3

    .line 59
    .line 60
    aget-wide v11, v6, v3

    .line 61
    .line 62
    invoke-virtual {v0, v11, v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-wide/16 v2, 0x0

    .line 70
    .line 71
    cmp-long v6, v7, v2

    .line 72
    .line 73
    const-wide/16 v11, 0x1

    .line 74
    .line 75
    const/16 v13, 0x40

    .line 76
    .line 77
    if-eqz v6, :cond_5

    .line 78
    .line 79
    move v6, v1

    .line 80
    :goto_1
    if-ge v6, v13, :cond_5

    .line 81
    .line 82
    shl-long v14, v11, v6

    .line 83
    .line 84
    and-long/2addr v14, v7

    .line 85
    cmp-long v14, v14, v2

    .line 86
    .line 87
    if-eqz v14, :cond_4

    .line 88
    .line 89
    int-to-long v14, v6

    .line 90
    add-long/2addr v14, v4

    .line 91
    invoke-virtual {v0, v14, v15}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    cmp-long v6, v9, v2

    .line 99
    .line 100
    if-eqz v6, :cond_7

    .line 101
    .line 102
    :goto_2
    if-ge v1, v13, :cond_7

    .line 103
    .line 104
    shl-long v6, v11, v1

    .line 105
    .line 106
    and-long/2addr v6, v9

    .line 107
    cmp-long v6, v6, v2

    .line 108
    .line 109
    if-eqz v6, :cond_6

    .line 110
    .line 111
    int-to-long v6, v1

    .line 112
    add-long/2addr v6, v4

    .line 113
    const-wide/16 v14, 0x40

    .line 114
    .line 115
    add-long/2addr v6, v14

    .line 116
    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_7
    return-object v0
.end method

.method public final c(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 11

    .line 1
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 2
    .line 3
    sub-long v0, p1, v0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    const-wide/16 v5, 0x1

    .line 12
    .line 13
    const-wide/16 v7, 0x40

    .line 14
    .line 15
    if-ltz v4, :cond_0

    .line 16
    .line 17
    invoke-static {v0, v1, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-gez v4, :cond_0

    .line 22
    .line 23
    long-to-int p1, v0

    .line 24
    shl-long p1, v5, p1

    .line 25
    .line 26
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->k:J

    .line 27
    .line 28
    and-long v4, v0, p1

    .line 29
    .line 30
    cmp-long v2, v4, v2

    .line 31
    .line 32
    if-eqz v2, :cond_5

    .line 33
    .line 34
    new-instance v3, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 35
    .line 36
    not-long p1, p1

    .line 37
    and-long v6, v0, p1

    .line 38
    .line 39
    iget-wide v8, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 40
    .line 41
    iget-object v10, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m:[J

    .line 42
    .line 43
    iget-wide v4, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j:J

    .line 44
    .line 45
    invoke-direct/range {v3 .. v10}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_0
    invoke-static {v0, v1, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-ltz v4, :cond_1

    .line 54
    .line 55
    const-wide/16 v7, 0x80

    .line 56
    .line 57
    invoke-static {v0, v1, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-gez v4, :cond_1

    .line 62
    .line 63
    long-to-int p1, v0

    .line 64
    add-int/lit8 p1, p1, -0x40

    .line 65
    .line 66
    shl-long p1, v5, p1

    .line 67
    .line 68
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j:J

    .line 69
    .line 70
    and-long v4, v0, p1

    .line 71
    .line 72
    cmp-long v2, v4, v2

    .line 73
    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    new-instance v3, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 77
    .line 78
    not-long p1, p1

    .line 79
    and-long v4, v0, p1

    .line 80
    .line 81
    iget-wide v8, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 82
    .line 83
    iget-object v10, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m:[J

    .line 84
    .line 85
    iget-wide v6, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->k:J

    .line 86
    .line 87
    invoke-direct/range {v3 .. v10}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    .line 88
    .line 89
    .line 90
    return-object v3

    .line 91
    :cond_1
    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-gez v0, :cond_5

    .line 96
    .line 97
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m:[J

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    invoke-static {v0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->a([JJ)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-ltz p1, :cond_5

    .line 106
    .line 107
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 108
    .line 109
    array-length p2, v0

    .line 110
    add-int/lit8 v2, p2, -0x1

    .line 111
    .line 112
    if-nez v2, :cond_2

    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    move-object v8, p1

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    new-array v3, v2, [J

    .line 118
    .line 119
    if-lez p1, :cond_3

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-static {v0, v3, v4, v4, p1}, Lkotlin/collections/ArraysKt;->h([J[JIII)V

    .line 123
    .line 124
    .line 125
    :cond_3
    if-ge p1, v2, :cond_4

    .line 126
    .line 127
    add-int/lit8 v2, p1, 0x1

    .line 128
    .line 129
    invoke-static {v0, v3, p1, v2, p2}, Lkotlin/collections/ArraysKt;->h([J[JIII)V

    .line 130
    .line 131
    .line 132
    :cond_4
    move-object v8, v3

    .line 133
    :goto_0
    iget-wide v2, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j:J

    .line 134
    .line 135
    iget-wide v4, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->k:J

    .line 136
    .line 137
    iget-wide v6, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 138
    .line 139
    invoke-direct/range {v1 .. v8}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    .line 140
    .line 141
    .line 142
    return-object v1

    .line 143
    :cond_5
    return-object p0
.end method

.method public final d(J)Z
    .locals 11

    .line 1
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 2
    .line 3
    sub-long v0, p1, v0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    const-wide/16 v5, 0x1

    .line 12
    .line 13
    const-wide/16 v7, 0x40

    .line 14
    .line 15
    const/4 v9, 0x1

    .line 16
    const/4 v10, 0x0

    .line 17
    if-ltz v4, :cond_1

    .line 18
    .line 19
    invoke-static {v0, v1, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-gez v4, :cond_1

    .line 24
    .line 25
    long-to-int p1, v0

    .line 26
    shl-long p1, v5, p1

    .line 27
    .line 28
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->k:J

    .line 29
    .line 30
    and-long p0, p1, v0

    .line 31
    .line 32
    cmp-long p0, p0, v2

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    return v9

    .line 37
    :cond_0
    return v10

    .line 38
    :cond_1
    invoke-static {v0, v1, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-ltz v4, :cond_3

    .line 43
    .line 44
    const-wide/16 v7, 0x80

    .line 45
    .line 46
    invoke-static {v0, v1, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-gez v4, :cond_3

    .line 51
    .line 52
    long-to-int p1, v0

    .line 53
    add-int/lit8 p1, p1, -0x40

    .line 54
    .line 55
    shl-long p1, v5, p1

    .line 56
    .line 57
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j:J

    .line 58
    .line 59
    and-long p0, p1, v0

    .line 60
    .line 61
    cmp-long p0, p0, v2

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    return v9

    .line 66
    :cond_2
    return v10

    .line 67
    :cond_3
    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-lez v0, :cond_4

    .line 72
    .line 73
    return v10

    .line 74
    :cond_4
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m:[J

    .line 75
    .line 76
    if-eqz p0, :cond_5

    .line 77
    .line 78
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->a([JJ)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-ltz p0, :cond_5

    .line 83
    .line 84
    return v9

    .line 85
    :cond_5
    return v10
.end method

.method public final e(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->n:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_1
    iget-wide v2, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 14
    .line 15
    iget-wide v4, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 16
    .line 17
    iget-object v6, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m:[J

    .line 18
    .line 19
    iget-wide v7, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->k:J

    .line 20
    .line 21
    iget-wide v9, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j:J

    .line 22
    .line 23
    iget-wide v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 24
    .line 25
    cmp-long v2, v2, v11

    .line 26
    .line 27
    iget-wide v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->k:J

    .line 28
    .line 29
    move v3, v2

    .line 30
    iget-wide v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j:J

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m:[J

    .line 35
    .line 36
    if-ne v6, v3, :cond_2

    .line 37
    .line 38
    move-wide/from16 v16, v11

    .line 39
    .line 40
    new-instance v11, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 41
    .line 42
    move-wide v14, v13

    .line 43
    or-long v12, v1, v9

    .line 44
    .line 45
    or-long/2addr v14, v7

    .line 46
    move-object/from16 v18, v3

    .line 47
    .line 48
    invoke-direct/range {v11 .. v18}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    .line 49
    .line 50
    .line 51
    return-object v11

    .line 52
    :cond_2
    move-wide v14, v13

    .line 53
    const-wide/16 v16, 0x1

    .line 54
    .line 55
    const/16 v3, 0x40

    .line 56
    .line 57
    const/4 v13, 0x0

    .line 58
    const-wide/16 v18, 0x0

    .line 59
    .line 60
    const-wide/16 v20, 0x40

    .line 61
    .line 62
    iget-object v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m:[J

    .line 63
    .line 64
    if-nez v11, :cond_9

    .line 65
    .line 66
    if-eqz v11, :cond_3

    .line 67
    .line 68
    array-length v4, v11

    .line 69
    move-object/from16 v5, p1

    .line 70
    .line 71
    move v6, v13

    .line 72
    :goto_0
    if-ge v6, v4, :cond_4

    .line 73
    .line 74
    aget-wide v7, v11, v6

    .line 75
    .line 76
    invoke-virtual {v5, v7, v8}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    add-int/lit8 v6, v6, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    move-object/from16 v5, p1

    .line 84
    .line 85
    :cond_4
    cmp-long v4, v14, v18

    .line 86
    .line 87
    iget-wide v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 88
    .line 89
    if-eqz v4, :cond_6

    .line 90
    .line 91
    move v0, v13

    .line 92
    :goto_1
    if-ge v0, v3, :cond_6

    .line 93
    .line 94
    shl-long v8, v16, v0

    .line 95
    .line 96
    and-long/2addr v8, v14

    .line 97
    cmp-long v4, v8, v18

    .line 98
    .line 99
    if-eqz v4, :cond_5

    .line 100
    .line 101
    int-to-long v8, v0

    .line 102
    add-long/2addr v8, v6

    .line 103
    invoke-virtual {v5, v8, v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    move-object v5, v4

    .line 108
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    cmp-long v0, v1, v18

    .line 112
    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    :goto_2
    if-ge v13, v3, :cond_8

    .line 116
    .line 117
    shl-long v8, v16, v13

    .line 118
    .line 119
    and-long/2addr v8, v1

    .line 120
    cmp-long v0, v8, v18

    .line 121
    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    int-to-long v8, v13

    .line 125
    add-long/2addr v8, v6

    .line 126
    add-long v8, v8, v20

    .line 127
    .line 128
    invoke-virtual {v5, v8, v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    move-object v5, v0

    .line 133
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_8
    return-object v5

    .line 137
    :cond_9
    if-eqz v6, :cond_a

    .line 138
    .line 139
    array-length v1, v6

    .line 140
    move v2, v13

    .line 141
    :goto_3
    if-ge v2, v1, :cond_a

    .line 142
    .line 143
    aget-wide v11, v6, v2

    .line 144
    .line 145
    invoke-virtual {v0, v11, v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    add-int/lit8 v2, v2, 0x1

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_a
    cmp-long v1, v7, v18

    .line 153
    .line 154
    if-eqz v1, :cond_c

    .line 155
    .line 156
    move v1, v13

    .line 157
    :goto_4
    if-ge v1, v3, :cond_c

    .line 158
    .line 159
    shl-long v11, v16, v1

    .line 160
    .line 161
    and-long/2addr v11, v7

    .line 162
    cmp-long v2, v11, v18

    .line 163
    .line 164
    if-eqz v2, :cond_b

    .line 165
    .line 166
    int-to-long v11, v1

    .line 167
    add-long/2addr v11, v4

    .line 168
    invoke-virtual {v0, v11, v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_c
    cmp-long v1, v9, v18

    .line 176
    .line 177
    if-eqz v1, :cond_e

    .line 178
    .line 179
    :goto_5
    if-ge v13, v3, :cond_e

    .line 180
    .line 181
    shl-long v1, v16, v13

    .line 182
    .line 183
    and-long/2addr v1, v9

    .line 184
    cmp-long v1, v1, v18

    .line 185
    .line 186
    if-eqz v1, :cond_d

    .line 187
    .line 188
    int-to-long v1, v13

    .line 189
    add-long/2addr v1, v4

    .line 190
    add-long v1, v1, v20

    .line 191
    .line 192
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    :cond_d
    add-int/lit8 v13, v13, 0x1

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_e
    return-object v0
.end method

.method public final f(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-wide v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 6
    .line 7
    sub-long v5, v1, v3

    .line 8
    .line 9
    const-wide/16 v7, 0x0

    .line 10
    .line 11
    invoke-static {v5, v6, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 12
    .line 13
    .line 14
    move-result v9

    .line 15
    iget-wide v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->k:J

    .line 16
    .line 17
    const-wide/16 v12, 0x40

    .line 18
    .line 19
    const-wide/16 v14, 0x1

    .line 20
    .line 21
    if-ltz v9, :cond_0

    .line 22
    .line 23
    invoke-static {v5, v6, v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    if-gez v9, :cond_0

    .line 28
    .line 29
    long-to-int v1, v5

    .line 30
    shl-long v1, v14, v1

    .line 31
    .line 32
    and-long v3, v10, v1

    .line 33
    .line 34
    cmp-long v3, v3, v7

    .line 35
    .line 36
    if-nez v3, :cond_f

    .line 37
    .line 38
    new-instance v12, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 39
    .line 40
    or-long v15, v10, v1

    .line 41
    .line 42
    iget-wide v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 43
    .line 44
    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m:[J

    .line 45
    .line 46
    iget-wide v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j:J

    .line 47
    .line 48
    move-wide/from16 v17, v1

    .line 49
    .line 50
    move-object/from16 v19, v3

    .line 51
    .line 52
    invoke-direct/range {v12 .. v19}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    .line 53
    .line 54
    .line 55
    return-object v12

    .line 56
    :cond_0
    invoke-static {v5, v6, v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    move-wide/from16 v16, v12

    .line 61
    .line 62
    iget-wide v12, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j:J

    .line 63
    .line 64
    move-wide/from16 v18, v14

    .line 65
    .line 66
    const/16 v20, 0x40

    .line 67
    .line 68
    const-wide/16 v14, 0x80

    .line 69
    .line 70
    if-ltz v9, :cond_1

    .line 71
    .line 72
    invoke-static {v5, v6, v14, v15}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-gez v9, :cond_1

    .line 77
    .line 78
    long-to-int v1, v5

    .line 79
    add-int/lit8 v1, v1, -0x40

    .line 80
    .line 81
    shl-long v1, v18, v1

    .line 82
    .line 83
    and-long v3, v12, v1

    .line 84
    .line 85
    cmp-long v3, v3, v7

    .line 86
    .line 87
    if-nez v3, :cond_f

    .line 88
    .line 89
    new-instance v4, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 90
    .line 91
    or-long v5, v12, v1

    .line 92
    .line 93
    iget-wide v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 94
    .line 95
    iget-object v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m:[J

    .line 96
    .line 97
    iget-wide v7, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->k:J

    .line 98
    .line 99
    invoke-direct/range {v4 .. v11}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    .line 100
    .line 101
    .line 102
    return-object v4

    .line 103
    :cond_1
    invoke-static {v5, v6, v14, v15}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    const/4 v6, 0x0

    .line 108
    iget-object v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m:[J

    .line 109
    .line 110
    if-ltz v5, :cond_d

    .line 111
    .line 112
    invoke-virtual/range {p0 .. p2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d(J)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-nez v5, :cond_f

    .line 117
    .line 118
    add-long v14, v1, v18

    .line 119
    .line 120
    div-long v14, v14, v16

    .line 121
    .line 122
    mul-long v14, v14, v16

    .line 123
    .line 124
    invoke-static {v14, v15, v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-gez v0, :cond_2

    .line 129
    .line 130
    const-wide v14, 0x7fffffffffffff80L

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :cond_2
    move-wide/from16 v22, v12

    .line 136
    .line 137
    const/4 v5, 0x0

    .line 138
    :goto_0
    invoke-static {v3, v4, v14, v15}, Lkotlin/jvm/internal/Intrinsics;->c(JJ)I

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    if-gez v12, :cond_8

    .line 143
    .line 144
    cmp-long v12, v10, v7

    .line 145
    .line 146
    if-eqz v12, :cond_6

    .line 147
    .line 148
    if-nez v5, :cond_3

    .line 149
    .line 150
    new-instance v5, Landroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder;

    .line 151
    .line 152
    invoke-direct {v5, v9}, Landroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder;-><init>([J)V

    .line 153
    .line 154
    .line 155
    :cond_3
    move v12, v6

    .line 156
    move/from16 v13, v20

    .line 157
    .line 158
    :goto_1
    if-ge v12, v13, :cond_5

    .line 159
    .line 160
    shl-long v20, v18, v12

    .line 161
    .line 162
    and-long v20, v10, v20

    .line 163
    .line 164
    cmp-long v20, v20, v7

    .line 165
    .line 166
    if-eqz v20, :cond_4

    .line 167
    .line 168
    move-wide/from16 v20, v7

    .line 169
    .line 170
    int-to-long v7, v12

    .line 171
    add-long/2addr v7, v3

    .line 172
    iget-object v0, v5, Landroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder;->a:Landroidx/collection/MutableLongList;

    .line 173
    .line 174
    invoke-virtual {v0, v7, v8}, Landroidx/collection/MutableLongList;->a(J)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_4
    move-wide/from16 v20, v7

    .line 179
    .line 180
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 181
    .line 182
    move-wide/from16 v7, v20

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_5
    :goto_3
    move-wide/from16 v20, v7

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_6
    move/from16 v13, v20

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :goto_4
    cmp-long v0, v22, v20

    .line 192
    .line 193
    if-nez v0, :cond_7

    .line 194
    .line 195
    move-wide/from16 v26, v14

    .line 196
    .line 197
    move-wide/from16 v24, v20

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_7
    add-long v3, v3, v16

    .line 201
    .line 202
    move-wide/from16 v7, v20

    .line 203
    .line 204
    move-wide/from16 v10, v22

    .line 205
    .line 206
    move/from16 v20, v13

    .line 207
    .line 208
    move-wide/from16 v22, v7

    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_8
    move-wide/from16 v26, v3

    .line 212
    .line 213
    move-wide/from16 v24, v10

    .line 214
    .line 215
    :goto_5
    new-instance v21, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 216
    .line 217
    if-eqz v5, :cond_c

    .line 218
    .line 219
    iget-object v0, v5, Landroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder;->a:Landroidx/collection/MutableLongList;

    .line 220
    .line 221
    iget v3, v0, Landroidx/collection/LongList;->b:I

    .line 222
    .line 223
    if-nez v3, :cond_9

    .line 224
    .line 225
    const/4 v0, 0x0

    .line 226
    goto :goto_7

    .line 227
    :cond_9
    new-array v4, v3, [J

    .line 228
    .line 229
    iget-object v0, v0, Landroidx/collection/LongList;->a:[J

    .line 230
    .line 231
    :goto_6
    if-ge v6, v3, :cond_a

    .line 232
    .line 233
    aget-wide v7, v0, v6

    .line 234
    .line 235
    aput-wide v7, v4, v6

    .line 236
    .line 237
    add-int/lit8 v6, v6, 0x1

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_a
    move-object v0, v4

    .line 241
    :goto_7
    if-nez v0, :cond_b

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_b
    move-object/from16 v28, v0

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :cond_c
    :goto_8
    move-object/from16 v28, v9

    .line 248
    .line 249
    :goto_9
    invoke-direct/range {v21 .. v28}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    .line 250
    .line 251
    .line 252
    move-object/from16 v0, v21

    .line 253
    .line 254
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    return-object v0

    .line 259
    :cond_d
    const/4 v3, 0x1

    .line 260
    if-nez v9, :cond_e

    .line 261
    .line 262
    new-instance v10, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 263
    .line 264
    new-array v3, v3, [J

    .line 265
    .line 266
    aput-wide v1, v3, v6

    .line 267
    .line 268
    iget-wide v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j:J

    .line 269
    .line 270
    iget-wide v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->k:J

    .line 271
    .line 272
    iget-wide v0, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 273
    .line 274
    move-wide v15, v0

    .line 275
    move-object/from16 v17, v3

    .line 276
    .line 277
    invoke-direct/range {v10 .. v17}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    .line 278
    .line 279
    .line 280
    return-object v10

    .line 281
    :cond_e
    invoke-static {v9, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->a([JJ)I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-gez v4, :cond_f

    .line 286
    .line 287
    add-int/2addr v4, v3

    .line 288
    neg-int v3, v4

    .line 289
    array-length v4, v9

    .line 290
    add-int/lit8 v5, v4, 0x1

    .line 291
    .line 292
    new-array v5, v5, [J

    .line 293
    .line 294
    invoke-static {v9, v5, v6, v6, v3}, Lkotlin/collections/ArraysKt;->h([J[JIII)V

    .line 295
    .line 296
    .line 297
    add-int/lit8 v6, v3, 0x1

    .line 298
    .line 299
    invoke-static {v9, v5, v6, v3, v4}, Lkotlin/collections/ArraysKt;->h([J[JIII)V

    .line 300
    .line 301
    .line 302
    aput-wide v1, v5, v3

    .line 303
    .line 304
    new-instance v10, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 305
    .line 306
    iget-wide v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->k:J

    .line 307
    .line 308
    iget-wide v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l:J

    .line 309
    .line 310
    iget-wide v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j:J

    .line 311
    .line 312
    move-wide v15, v1

    .line 313
    move-object/from16 v17, v5

    .line 314
    .line 315
    invoke-direct/range {v10 .. v17}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    .line 316
    .line 317
    .line 318
    return-object v10

    .line 319
    :cond_f
    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->e(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Number;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, ""

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 52
    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v4, 0x0

    .line 59
    move v5, v4

    .line 60
    :goto_1
    if-ge v4, v3, :cond_5

    .line 61
    .line 62
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const/4 v7, 0x1

    .line 67
    add-int/2addr v5, v7

    .line 68
    if-le v5, v7, :cond_1

    .line 69
    .line 70
    const-string v8, ", "

    .line 71
    .line 72
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 73
    .line 74
    .line 75
    :cond_1
    if-nez v6, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    instance-of v7, v6, Ljava/lang/CharSequence;

    .line 79
    .line 80
    :goto_2
    if-eqz v7, :cond_3

    .line 81
    .line 82
    check-cast v6, Ljava/lang/CharSequence;

    .line 83
    .line 84
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    instance-of v7, v6, Ljava/lang/Character;

    .line 89
    .line 90
    if-eqz v7, :cond_4

    .line 91
    .line 92
    check-cast v6, Ljava/lang/Character;

    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 107
    .line 108
    .line 109
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v0, " ["

    .line 128
    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p0, "]"

    .line 136
    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0
.end method
