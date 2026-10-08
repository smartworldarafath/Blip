.class public final Landroidx/media3/container/ReorderingBufferQueue;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;,
        Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Ljava/util/ArrayDeque;

.field public final d:Ljava/util/PriorityQueue;

.field public e:I

.field public f:Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;


# direct methods
.method public constructor <init>(Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/container/ReorderingBufferQueue;->a:Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/container/ReorderingBufferQueue;->b:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayDeque;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/media3/container/ReorderingBufferQueue;->c:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    new-instance p1, Ljava/util/PriorityQueue;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroidx/media3/container/ReorderingBufferQueue;->d:Ljava/util/PriorityQueue;

    .line 26
    .line 27
    const/4 p1, -0x1

    .line 28
    iput p1, p0, Landroidx/media3/container/ReorderingBufferQueue;->e:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 8

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    iget v1, p0, Landroidx/media3/container/ReorderingBufferQueue;->e:I

    .line 11
    .line 12
    if-eqz v1, :cond_6

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    iget-object v3, p0, Landroidx/media3/container/ReorderingBufferQueue;->d:Ljava/util/PriorityQueue;

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v4, p0, Landroidx/media3/container/ReorderingBufferQueue;->e:I

    .line 24
    .line 25
    if-lt v1, v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    .line 32
    .line 33
    sget-object v4, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 34
    .line 35
    iget-wide v4, v1, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->k:J

    .line 36
    .line 37
    cmp-long v1, p1, v4

    .line 38
    .line 39
    if-gez v1, :cond_0

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_0
    iget-object v1, p0, Landroidx/media3/container/ReorderingBufferQueue;->b:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    .line 51
    .line 52
    invoke-direct {v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroidx/media3/common/util/ParsableByteArray;

    .line 61
    .line 62
    :goto_0
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 67
    .line 68
    .line 69
    iget-object v4, p3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 70
    .line 71
    iget p3, p3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 72
    .line 73
    iget-object v5, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 74
    .line 75
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    const/4 v7, 0x0

    .line 80
    invoke-static {v4, p3, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    .line 82
    .line 83
    iget-object p3, p0, Landroidx/media3/container/ReorderingBufferQueue;->f:Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    .line 84
    .line 85
    if-eqz p3, :cond_2

    .line 86
    .line 87
    iget-wide v4, p3, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->k:J

    .line 88
    .line 89
    cmp-long v4, p1, v4

    .line 90
    .line 91
    if-nez v4, :cond_2

    .line 92
    .line 93
    iget-object p0, p3, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->j:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_2
    iget-object p3, p0, Landroidx/media3/container/ReorderingBufferQueue;->c:Ljava/util/ArrayDeque;

    .line 100
    .line 101
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_3

    .line 106
    .line 107
    new-instance p3, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    .line 108
    .line 109
    invoke-direct {p3}, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;-><init>()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    check-cast p3, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    .line 118
    .line 119
    :goto_1
    iget-object v4, p3, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->j:Ljava/util/ArrayList;

    .line 120
    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    const/4 v7, 0x1

    .line 124
    :cond_4
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 132
    .line 133
    .line 134
    iput-wide p1, p3, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->k:J

    .line 135
    .line 136
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    iput-object p3, p0, Landroidx/media3/container/ReorderingBufferQueue;->f:Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    .line 143
    .line 144
    iget p1, p0, Landroidx/media3/container/ReorderingBufferQueue;->e:I

    .line 145
    .line 146
    if-eq p1, v2, :cond_5

    .line 147
    .line 148
    invoke-virtual {p0, p1}, Landroidx/media3/container/ReorderingBufferQueue;->b(I)V

    .line 149
    .line 150
    .line 151
    :cond_5
    return-void

    .line 152
    :cond_6
    :goto_2
    iget-object p0, p0, Landroidx/media3/container/ReorderingBufferQueue;->a:Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;

    .line 153
    .line 154
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;->e(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public final b(I)V
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Landroidx/media3/container/ReorderingBufferQueue;->d:Ljava/util/PriorityQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-le v1, p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    .line 14
    .line 15
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_1
    iget-object v2, v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->j:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v1, v3, :cond_0

    .line 25
    .line 26
    iget-wide v3, v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->k:J

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Landroidx/media3/common/util/ParsableByteArray;

    .line 33
    .line 34
    iget-object v6, p0, Landroidx/media3/container/ReorderingBufferQueue;->a:Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;

    .line 35
    .line 36
    invoke-interface {v6, v3, v4, v5}, Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;->e(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/media3/container/ReorderingBufferQueue;->b:Ljava/util/ArrayDeque;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Landroidx/media3/container/ReorderingBufferQueue;->f:Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    iget-wide v1, v1, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->k:J

    .line 61
    .line 62
    iget-wide v3, v0, Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;->k:J

    .line 63
    .line 64
    cmp-long v1, v1, v3

    .line 65
    .line 66
    if-nez v1, :cond_1

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Landroidx/media3/container/ReorderingBufferQueue;->f:Landroidx/media3/container/ReorderingBufferQueue$BuffersWithTimestamp;

    .line 70
    .line 71
    :cond_1
    iget-object v1, p0, Landroidx/media3/container/ReorderingBufferQueue;->c:Ljava/util/ArrayDeque;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Landroidx/media3/container/ReorderingBufferQueue;->e:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/media3/container/ReorderingBufferQueue;->b(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
