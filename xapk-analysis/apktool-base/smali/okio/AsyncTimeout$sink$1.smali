.class public final Lokio/AsyncTimeout$sink$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lokio/Sink;


# instance fields
.field public final synthetic j:Lokio/internal/SocketAsyncTimeout;

.field public final synthetic k:Lokio/Sink;


# direct methods
.method public constructor <init>(Lokio/internal/SocketAsyncTimeout;Lokio/Sink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokio/AsyncTimeout$sink$1;->j:Lokio/internal/SocketAsyncTimeout;

    .line 5
    .line 6
    iput-object p2, p0, Lokio/AsyncTimeout$sink$1;->k:Lokio/Sink;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokio/AsyncTimeout$sink$1;->k:Lokio/Sink;

    .line 2
    .line 3
    iget-object p0, p0, Lokio/AsyncTimeout$sink$1;->j:Lokio/internal/SocketAsyncTimeout;

    .line 4
    .line 5
    invoke-virtual {p0}, Lokio/AsyncTimeout;->h()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    check-cast v0, Lokio/OutputStreamSink;

    .line 9
    .line 10
    invoke-virtual {v0}, Lokio/OutputStreamSink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/AsyncTimeout;->i()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lokio/internal/SocketAsyncTimeout;->k(Ljava/io/IOException;)Ljava/io/IOException;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    throw p0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    :try_start_1
    invoke-virtual {p0}, Lokio/AsyncTimeout;->i()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0, v0}, Lokio/internal/SocketAsyncTimeout;->k(Ljava/io/IOException;)Ljava/io/IOException;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    invoke-virtual {p0}, Lokio/AsyncTimeout;->i()Z

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokio/AsyncTimeout$sink$1;->k:Lokio/Sink;

    .line 2
    .line 3
    iget-object p0, p0, Lokio/AsyncTimeout$sink$1;->j:Lokio/internal/SocketAsyncTimeout;

    .line 4
    .line 5
    invoke-virtual {p0}, Lokio/AsyncTimeout;->h()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    check-cast v0, Lokio/OutputStreamSink;

    .line 9
    .line 10
    invoke-virtual {v0}, Lokio/OutputStreamSink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/AsyncTimeout;->i()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lokio/internal/SocketAsyncTimeout;->k(Ljava/io/IOException;)Ljava/io/IOException;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    throw p0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    :try_start_1
    invoke-virtual {p0}, Lokio/AsyncTimeout;->i()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0, v0}, Lokio/internal/SocketAsyncTimeout;->k(Ljava/io/IOException;)Ljava/io/IOException;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    invoke-virtual {p0}, Lokio/AsyncTimeout;->i()Z

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public final i()Lokio/Timeout;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/AsyncTimeout$sink$1;->j:Lokio/internal/SocketAsyncTimeout;

    .line 2
    .line 3
    return-object p0
.end method

.method public final l0(JLokio/Buffer;)V
    .locals 6

    .line 1
    iget-wide v0, p3, Lokio/Buffer;->k:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    move-wide v4, p1

    .line 6
    invoke-static/range {v0 .. v5}, Lokio/-SegmentedByteString;->b(JJJ)V

    .line 7
    .line 8
    .line 9
    :goto_0
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    cmp-long v2, p1, v0

    .line 12
    .line 13
    if-lez v2, :cond_4

    .line 14
    .line 15
    iget-object v2, p3, Lokio/Buffer;->j:Lokio/Segment;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :goto_1
    const-wide/32 v3, 0x10000

    .line 21
    .line 22
    .line 23
    cmp-long v3, v0, v3

    .line 24
    .line 25
    if-gez v3, :cond_1

    .line 26
    .line 27
    iget v3, v2, Lokio/Segment;->c:I

    .line 28
    .line 29
    iget v4, v2, Lokio/Segment;->b:I

    .line 30
    .line 31
    sub-int/2addr v3, v4

    .line 32
    int-to-long v3, v3

    .line 33
    add-long/2addr v0, v3

    .line 34
    cmp-long v3, v0, p1

    .line 35
    .line 36
    if-ltz v3, :cond_0

    .line 37
    .line 38
    move-wide v0, p1

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    iget-object v2, v2, Lokio/Segment;->f:Lokio/Segment;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_2
    iget-object v2, p0, Lokio/AsyncTimeout$sink$1;->k:Lokio/Sink;

    .line 47
    .line 48
    iget-object v3, p0, Lokio/AsyncTimeout$sink$1;->j:Lokio/internal/SocketAsyncTimeout;

    .line 49
    .line 50
    invoke-virtual {v3}, Lokio/AsyncTimeout;->h()V

    .line 51
    .line 52
    .line 53
    :try_start_0
    check-cast v2, Lokio/OutputStreamSink;

    .line 54
    .line 55
    invoke-virtual {v2, v0, v1, p3}, Lokio/OutputStreamSink;->l0(JLokio/Buffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lokio/AsyncTimeout;->i()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    sub-long/2addr p1, v0

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p0, 0x0

    .line 67
    invoke-virtual {v3, p0}, Lokio/internal/SocketAsyncTimeout;->k(Ljava/io/IOException;)Ljava/io/IOException;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    throw p0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    move-object p0, v0

    .line 74
    :try_start_1
    invoke-virtual {v3}, Lokio/AsyncTimeout;->i()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_3

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    invoke-virtual {v3, p0}, Lokio/internal/SocketAsyncTimeout;->k(Ljava/io/IOException;)Ljava/io/IOException;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :goto_3
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    move-object p0, v0

    .line 88
    invoke-virtual {v3}, Lokio/AsyncTimeout;->i()Z

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AsyncTimeout.sink("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lokio/AsyncTimeout$sink$1;->k:Lokio/Sink;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
