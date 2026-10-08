.class public final Lkotlinx/io/Buffer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Ljava/io/Flushable;


# instance fields
.field public j:Lkotlinx/io/Segment;

.field public k:Lkotlinx/io/Segment;

.field public l:J


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/io/Buffer;->j:Lkotlinx/io/Segment;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lkotlinx/io/Segment;->e:Lkotlinx/io/Segment;

    .line 7
    .line 8
    iput-object v1, p0, Lkotlinx/io/Buffer;->j:Lkotlinx/io/Segment;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iput-object v2, p0, Lkotlinx/io/Buffer;->k:Lkotlinx/io/Segment;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput-object v2, v1, Lkotlinx/io/Segment;->f:Lkotlinx/io/Segment;

    .line 17
    .line 18
    :goto_0
    iput-object v2, v0, Lkotlinx/io/Segment;->e:Lkotlinx/io/Segment;

    .line 19
    .line 20
    sget-object p0, Lkotlinx/io/SegmentPool;->a:Lkotlinx/io/Segment;

    .line 21
    .line 22
    iget-object v1, v0, Lkotlinx/io/Segment;->f:Lkotlinx/io/Segment;

    .line 23
    .line 24
    if-nez v1, :cond_c

    .line 25
    .line 26
    sget-object v1, Lkotlinx/io/SegmentPool;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 27
    .line 28
    sget v2, Lkotlinx/io/SegmentPool;->b:I

    .line 29
    .line 30
    int-to-long v2, v2

    .line 31
    const-wide/16 v4, 0x1

    .line 32
    .line 33
    sub-long/2addr v2, v4

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    and-long/2addr v2, v6

    .line 43
    long-to-int v2, v2

    .line 44
    const/4 v3, 0x0

    .line 45
    iput v3, v0, Lkotlinx/io/Segment;->b:I

    .line 46
    .line 47
    const/4 v6, 0x1

    .line 48
    iput-boolean v6, v0, Lkotlinx/io/Segment;->d:Z

    .line 49
    .line 50
    :cond_1
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Lkotlinx/io/Segment;

    .line 55
    .line 56
    if-eq v7, p0, :cond_1

    .line 57
    .line 58
    if-eqz v7, :cond_2

    .line 59
    .line 60
    iget v8, v7, Lkotlinx/io/Segment;->c:I

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move v8, v3

    .line 64
    :goto_2
    const/high16 v9, 0x10000

    .line 65
    .line 66
    if-lt v8, v9, :cond_8

    .line 67
    .line 68
    sget v1, Lkotlinx/io/SegmentPool;->d:I

    .line 69
    .line 70
    if-lez v1, :cond_a

    .line 71
    .line 72
    iput v3, v0, Lkotlinx/io/Segment;->b:I

    .line 73
    .line 74
    iput-boolean v6, v0, Lkotlinx/io/Segment;->d:Z

    .line 75
    .line 76
    sget v1, Lkotlinx/io/SegmentPool;->c:I

    .line 77
    .line 78
    int-to-long v1, v1

    .line 79
    sub-long/2addr v1, v4

    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    .line 85
    .line 86
    .line 87
    move-result-wide v4

    .line 88
    and-long/2addr v1, v4

    .line 89
    long-to-int v1, v1

    .line 90
    sget-object v2, Lkotlinx/io/SegmentPool;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 91
    .line 92
    move v4, v3

    .line 93
    :cond_3
    :goto_3
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Lkotlinx/io/Segment;

    .line 98
    .line 99
    if-eq v5, p0, :cond_3

    .line 100
    .line 101
    if-eqz v5, :cond_4

    .line 102
    .line 103
    iget v6, v5, Lkotlinx/io/Segment;->c:I

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    move v6, v3

    .line 107
    :goto_4
    add-int/lit16 v6, v6, 0x2000

    .line 108
    .line 109
    sget v7, Lkotlinx/io/SegmentPool;->e:I

    .line 110
    .line 111
    if-le v6, v7, :cond_5

    .line 112
    .line 113
    sget v5, Lkotlinx/io/SegmentPool;->c:I

    .line 114
    .line 115
    if-ge v4, v5, :cond_a

    .line 116
    .line 117
    add-int/lit8 v4, v4, 0x1

    .line 118
    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    add-int/lit8 v5, v5, -0x1

    .line 122
    .line 123
    and-int/2addr v1, v5

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    iput-object v5, v0, Lkotlinx/io/Segment;->e:Lkotlinx/io/Segment;

    .line 126
    .line 127
    iput v6, v0, Lkotlinx/io/Segment;->c:I

    .line 128
    .line 129
    :cond_6
    invoke-virtual {v2, v1, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_7

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_7
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    if-eq v6, v5, :cond_6

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_8
    iput-object v7, v0, Lkotlinx/io/Segment;->e:Lkotlinx/io/Segment;

    .line 144
    .line 145
    add-int/lit16 v8, v8, 0x2000

    .line 146
    .line 147
    iput v8, v0, Lkotlinx/io/Segment;->c:I

    .line 148
    .line 149
    :cond_9
    invoke-virtual {v1, v2, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_b

    .line 154
    .line 155
    :cond_a
    :goto_5
    return-void

    .line 156
    :cond_b
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    if-eq v8, v7, :cond_9

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_c
    const-string p0, "Failed requirement."

    .line 164
    .line 165
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public final readByte()B
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlinx/io/Buffer;->j:Lkotlinx/io/Segment;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v1, v0, Lkotlinx/io/Segment;->c:I

    .line 6
    .line 7
    iget v2, v0, Lkotlinx/io/Segment;->b:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->a()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->readByte()B

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    iget-object v3, v0, Lkotlinx/io/Segment;->a:[B

    .line 21
    .line 22
    add-int/lit8 v4, v2, 0x1

    .line 23
    .line 24
    iput v4, v0, Lkotlinx/io/Segment;->b:I

    .line 25
    .line 26
    aget-byte v0, v3, v2

    .line 27
    .line 28
    iget-wide v2, p0, Lkotlinx/io/Buffer;->l:J

    .line 29
    .line 30
    const-wide/16 v4, 0x1

    .line 31
    .line 32
    sub-long/2addr v2, v4

    .line 33
    iput-wide v2, p0, Lkotlinx/io/Buffer;->l:J

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lkotlinx/io/Buffer;->a()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return v0

    .line 42
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "Buffer doesn\'t contain required number of bytes (size: "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-wide v2, p0, Lkotlinx/io/Buffer;->l:J

    .line 52
    .line 53
    const-string p0, ", required: 1)"

    .line 54
    .line 55
    invoke-static {v1, v2, v3, p0}, Lq;->k(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-wide v0, p0, Lkotlinx/io/Buffer;->l:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const-string p0, "Buffer(size=0)"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-wide/16 v2, 0x40

    .line 13
    .line 14
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    long-to-int v0, v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    mul-int/lit8 v4, v0, 0x2

    .line 22
    .line 23
    iget-wide v5, p0, Lkotlinx/io/Buffer;->l:J

    .line 24
    .line 25
    cmp-long v5, v5, v2

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    if-lez v5, :cond_1

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v5, v6

    .line 33
    :goto_0
    add-int/2addr v4, v5

    .line 34
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Lkotlinx/io/Buffer;->j:Lkotlinx/io/Segment;

    .line 38
    .line 39
    move v5, v6

    .line 40
    :goto_1
    if-eqz v4, :cond_3

    .line 41
    .line 42
    move v7, v6

    .line 43
    :goto_2
    if-ge v5, v0, :cond_2

    .line 44
    .line 45
    iget v8, v4, Lkotlinx/io/Segment;->c:I

    .line 46
    .line 47
    iget v9, v4, Lkotlinx/io/Segment;->b:I

    .line 48
    .line 49
    sub-int/2addr v8, v9

    .line 50
    if-ge v7, v8, :cond_2

    .line 51
    .line 52
    add-int/lit8 v8, v7, 0x1

    .line 53
    .line 54
    iget-object v10, v4, Lkotlinx/io/Segment;->a:[B

    .line 55
    .line 56
    add-int/2addr v9, v7

    .line 57
    aget-byte v7, v10, v9

    .line 58
    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    shr-int/lit8 v9, v7, 0x4

    .line 62
    .line 63
    and-int/lit8 v9, v9, 0xf

    .line 64
    .line 65
    sget-object v10, Lkotlinx/io/_UtilKt;->a:[C

    .line 66
    .line 67
    aget-char v9, v10, v9

    .line 68
    .line 69
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    and-int/lit8 v7, v7, 0xf

    .line 73
    .line 74
    aget-char v7, v10, v7

    .line 75
    .line 76
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    move v7, v8

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    iget-object v4, v4, Lkotlinx/io/Segment;->e:Lkotlinx/io/Segment;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    iget-wide v4, p0, Lkotlinx/io/Buffer;->l:J

    .line 85
    .line 86
    cmp-long v0, v4, v2

    .line 87
    .line 88
    if-lez v0, :cond_4

    .line 89
    .line 90
    const/16 v0, 0x2026

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v2, "Buffer(size="

    .line 98
    .line 99
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-wide v2, p0, Lkotlinx/io/Buffer;->l:J

    .line 103
    .line 104
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p0, " hex="

    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const/16 p0, 0x29

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0
.end method
