.class final Lokio/FileHandle$FileHandleSource;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/FileHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileHandleSource"
.end annotation


# instance fields
.field public final j:Lokio/FileHandle;

.field public k:J

.field public l:Z


# direct methods
.method public constructor <init>(Lokio/FileHandle;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokio/FileHandle$FileHandleSource;->j:Lokio/FileHandle;

    .line 5
    .line 6
    iput-wide p2, p0, Lokio/FileHandle$FileHandleSource;->k:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final J0(JLokio/Buffer;)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-boolean v4, v0, Lokio/FileHandle$FileHandleSource;->l:Z

    .line 11
    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    if-nez v4, :cond_6

    .line 15
    .line 16
    iget-wide v7, v0, Lokio/FileHandle$FileHandleSource;->k:J

    .line 17
    .line 18
    cmp-long v4, v1, v5

    .line 19
    .line 20
    if-ltz v4, :cond_5

    .line 21
    .line 22
    add-long/2addr v1, v7

    .line 23
    move-wide v10, v7

    .line 24
    :goto_0
    cmp-long v4, v10, v1

    .line 25
    .line 26
    if-gez v4, :cond_2

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-virtual {v3, v4}, Lokio/Buffer;->S(I)Lokio/Segment;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget-object v12, v4, Lokio/Segment;->a:[B

    .line 34
    .line 35
    iget v13, v4, Lokio/Segment;->c:I

    .line 36
    .line 37
    sub-long v14, v1, v10

    .line 38
    .line 39
    rsub-int v9, v13, 0x2000

    .line 40
    .line 41
    const-wide/16 p1, -0x1

    .line 42
    .line 43
    int-to-long v5, v9

    .line 44
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    long-to-int v14, v5

    .line 49
    iget-object v9, v0, Lokio/FileHandle$FileHandleSource;->j:Lokio/FileHandle;

    .line 50
    .line 51
    invoke-virtual/range {v9 .. v14}, Lokio/FileHandle;->a(J[BII)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const/4 v6, -0x1

    .line 56
    if-ne v5, v6, :cond_1

    .line 57
    .line 58
    iget v1, v4, Lokio/Segment;->b:I

    .line 59
    .line 60
    iget v2, v4, Lokio/Segment;->c:I

    .line 61
    .line 62
    if-ne v1, v2, :cond_0

    .line 63
    .line 64
    invoke-virtual {v4}, Lokio/Segment;->a()Lokio/Segment;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v3, Lokio/Buffer;->j:Lokio/Segment;

    .line 69
    .line 70
    invoke-static {v4}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    cmp-long v1, v7, v10

    .line 74
    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    move-wide/from16 v10, p1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget v6, v4, Lokio/Segment;->c:I

    .line 81
    .line 82
    add-int/2addr v6, v5

    .line 83
    iput v6, v4, Lokio/Segment;->c:I

    .line 84
    .line 85
    int-to-long v4, v5

    .line 86
    add-long/2addr v10, v4

    .line 87
    iget-wide v12, v3, Lokio/Buffer;->k:J

    .line 88
    .line 89
    add-long/2addr v12, v4

    .line 90
    iput-wide v12, v3, Lokio/Buffer;->k:J

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const-wide/16 p1, -0x1

    .line 94
    .line 95
    :cond_3
    sub-long/2addr v10, v7

    .line 96
    :goto_1
    cmp-long v1, v10, p1

    .line 97
    .line 98
    if-eqz v1, :cond_4

    .line 99
    .line 100
    iget-wide v1, v0, Lokio/FileHandle$FileHandleSource;->k:J

    .line 101
    .line 102
    add-long/2addr v1, v10

    .line 103
    iput-wide v1, v0, Lokio/FileHandle$FileHandleSource;->k:J

    .line 104
    .line 105
    :cond_4
    return-wide v10

    .line 106
    :cond_5
    const-string v0, "byteCount < 0: "

    .line 107
    .line 108
    invoke-static {v1, v2, v0}, Lq;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lfe;->l(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return-wide v5

    .line 116
    :cond_6
    const-string v0, "closed"

    .line 117
    .line 118
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-wide v5
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokio/FileHandle$FileHandleSource;->j:Lokio/FileHandle;

    .line 2
    .line 3
    iget-boolean v1, p0, Lokio/FileHandle$FileHandleSource;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lokio/FileHandle$FileHandleSource;->l:Z

    .line 10
    .line 11
    iget-object p0, v0, Lokio/FileHandle;->l:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget v1, v0, Lokio/FileHandle;->k:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    iput v1, v0, Lokio/FileHandle;->k:I

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    iget-boolean v1, v0, Lokio/FileHandle;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 30
    .line 31
    .line 32
    check-cast v0, Lokio/JvmFileHandle;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_1
    iget-object p0, v0, Lokio/JvmFileHandle;->m:Ljava/io/RandomAccessFile;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw p0

    .line 45
    :catchall_1
    move-exception v0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method public final i()Lokio/Timeout;
    .locals 0

    .line 1
    sget-object p0, Lokio/Timeout;->d:Lokio/Timeout$Companion$NONE$1;

    .line 2
    .line 3
    return-object p0
.end method
