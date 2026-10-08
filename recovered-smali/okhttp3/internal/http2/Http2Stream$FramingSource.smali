.class public final Lokhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FramingSource"
.end annotation


# instance fields
.field public final j:J

.field public k:Z

.field public final l:Lokio/Buffer;

.field public final m:Lokio/Buffer;

.field public n:Z

.field public final synthetic o:Lokhttp3/internal/http2/Http2Stream;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Stream;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->o:Lokhttp3/internal/http2/Http2Stream;

    .line 5
    .line 6
    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->j:J

    .line 7
    .line 8
    iput-boolean p4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->k:Z

    .line 9
    .line 10
    new-instance p1, Lokio/Buffer;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->l:Lokio/Buffer;

    .line 16
    .line 17
    new-instance p1, Lokio/Buffer;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->m:Lokio/Buffer;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final J0(JLokio/Buffer;)J
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-ltz v5, :cond_9

    .line 13
    .line 14
    :goto_0
    iget-object v5, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->o:Lokhttp3/internal/http2/Http2Stream;

    .line 15
    .line 16
    monitor-enter v5

    .line 17
    :try_start_0
    iget-object v6, v5, Lokhttp3/internal/http2/Http2Stream;->k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 18
    .line 19
    invoke-virtual {v6}, Lokio/AsyncTimeout;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 20
    .line 21
    .line 22
    :try_start_1
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    iget-object v6, v5, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 24
    .line 25
    :try_start_3
    monitor-exit v5

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    iget-boolean v6, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->k:Z

    .line 29
    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    iget-object v6, v5, Lokhttp3/internal/http2/Http2Stream;->n:Ljava/io/IOException;

    .line 33
    .line 34
    if-nez v6, :cond_1

    .line 35
    .line 36
    new-instance v6, Lokhttp3/internal/http2/StreamResetException;

    .line 37
    .line 38
    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :try_start_4
    iget-object v7, v5, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    .line 41
    :try_start_5
    monitor-exit v5

    .line 42
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-direct {v6, v7}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :catchall_1
    move-exception v0

    .line 53
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 54
    :try_start_7
    throw v0

    .line 55
    :cond_0
    const/4 v6, 0x0

    .line 56
    :cond_1
    :goto_1
    iget-boolean v7, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->n:Z

    .line 57
    .line 58
    if-nez v7, :cond_8

    .line 59
    .line 60
    iget-object v7, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->m:Lokio/Buffer;

    .line 61
    .line 62
    iget-wide v8, v7, Lokio/Buffer;->k:J

    .line 63
    .line 64
    cmp-long v10, v8, v3

    .line 65
    .line 66
    const-wide/16 v11, -0x1

    .line 67
    .line 68
    const/4 v13, 0x0

    .line 69
    if-lez v10, :cond_2

    .line 70
    .line 71
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v8

    .line 75
    move-object/from16 v10, p3

    .line 76
    .line 77
    invoke-virtual {v7, v8, v9, v10}, Lokio/Buffer;->J0(JLokio/Buffer;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v7

    .line 81
    iget-wide v14, v5, Lokhttp3/internal/http2/Http2Stream;->c:J

    .line 82
    .line 83
    add-long/2addr v14, v7

    .line 84
    iput-wide v14, v5, Lokhttp3/internal/http2/Http2Stream;->c:J

    .line 85
    .line 86
    move-wide/from16 v16, v3

    .line 87
    .line 88
    iget-wide v3, v5, Lokhttp3/internal/http2/Http2Stream;->d:J

    .line 89
    .line 90
    sub-long/2addr v14, v3

    .line 91
    if-nez v6, :cond_4

    .line 92
    .line 93
    iget-object v3, v5, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 94
    .line 95
    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->y:Lokhttp3/internal/http2/Settings;

    .line 96
    .line 97
    invoke-virtual {v3}, Lokhttp3/internal/http2/Settings;->a()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    div-int/lit8 v3, v3, 0x2

    .line 102
    .line 103
    int-to-long v3, v3

    .line 104
    cmp-long v3, v14, v3

    .line 105
    .line 106
    if-ltz v3, :cond_4

    .line 107
    .line 108
    iget-object v3, v5, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 109
    .line 110
    iget v4, v5, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 111
    .line 112
    invoke-virtual {v3, v4, v14, v15}, Lokhttp3/internal/http2/Http2Connection;->O(IJ)V

    .line 113
    .line 114
    .line 115
    iget-wide v3, v5, Lokhttp3/internal/http2/Http2Stream;->c:J

    .line 116
    .line 117
    iput-wide v3, v5, Lokhttp3/internal/http2/Http2Stream;->d:J

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    move-object/from16 v10, p3

    .line 121
    .line 122
    move-wide/from16 v16, v3

    .line 123
    .line 124
    iget-boolean v3, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->k:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 125
    .line 126
    if-nez v3, :cond_3

    .line 127
    .line 128
    if-nez v6, :cond_3

    .line 129
    .line 130
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 131
    .line 132
    .line 133
    const/4 v13, 0x1

    .line 134
    :cond_3
    move-wide v7, v11

    .line 135
    goto :goto_2

    .line 136
    :catch_0
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 141
    .line 142
    .line 143
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 146
    .line 147
    .line 148
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 149
    :cond_4
    :goto_2
    :try_start_a
    iget-object v3, v5, Lokhttp3/internal/http2/Http2Stream;->k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 150
    .line 151
    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->k()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 152
    .line 153
    .line 154
    monitor-exit v5

    .line 155
    if-eqz v13, :cond_5

    .line 156
    .line 157
    move-wide/from16 v3, v16

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_5
    cmp-long v0, v7, v11

    .line 162
    .line 163
    if-eqz v0, :cond_6

    .line 164
    .line 165
    return-wide v7

    .line 166
    :cond_6
    if-nez v6, :cond_7

    .line 167
    .line 168
    return-wide v11

    .line 169
    :cond_7
    throw v6

    .line 170
    :catchall_2
    move-exception v0

    .line 171
    goto :goto_4

    .line 172
    :cond_8
    :try_start_b
    new-instance v0, Ljava/io/IOException;

    .line 173
    .line 174
    const-string v1, "stream closed"

    .line 175
    .line 176
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 180
    :catchall_3
    move-exception v0

    .line 181
    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 182
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 183
    :goto_3
    :try_start_e
    iget-object v1, v5, Lokhttp3/internal/http2/Http2Stream;->k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 184
    .line 185
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->k()V

    .line 186
    .line 187
    .line 188
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 189
    :goto_4
    monitor-exit v5

    .line 190
    throw v0

    .line 191
    :cond_9
    move-wide/from16 v16, v3

    .line 192
    .line 193
    const-string v0, "byteCount < 0: "

    .line 194
    .line 195
    invoke-static {v1, v2, v0}, Lq;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {v0}, Lfe;->l(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    return-wide v16
.end method

.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->o:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->n:Z

    .line 6
    .line 7
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->m:Lokio/Buffer;

    .line 8
    .line 9
    iget-wide v2, v1, Lokio/Buffer;->k:J

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    cmp-long v0, v2, v0

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->o:Lokhttp3/internal/http2/Http2Stream;

    .line 25
    .line 26
    sget-object v1, Lokhttp3/internal/Util;->a:[B

    .line 27
    .line 28
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->w(J)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->o:Lokhttp3/internal/http2/Http2Stream;

    .line 34
    .line 35
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->a()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0

    .line 41
    throw p0
.end method

.method public final i()Lokio/Timeout;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->o:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->k:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 4
    .line 5
    return-object p0
.end method
