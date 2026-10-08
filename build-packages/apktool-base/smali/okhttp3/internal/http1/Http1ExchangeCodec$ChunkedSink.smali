.class final Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1ExchangeCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChunkedSink"
.end annotation


# instance fields
.field public final j:Lokio/ForwardingTimeout;

.field public k:Z

.field public final synthetic l:Lokhttp3/internal/http1/Http1ExchangeCodec;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->l:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 5
    .line 6
    new-instance v0, Lokio/ForwardingTimeout;

    .line 7
    .line 8
    iget-object p1, p1, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:Lokio/BufferedSink;

    .line 9
    .line 10
    invoke-interface {p1}, Lokio/Sink;->i()Lokio/Timeout;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->j:Lokio/ForwardingTimeout;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->k:Z

    .line 10
    .line 11
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->l:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 12
    .line 13
    iget-object v0, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:Lokio/BufferedSink;

    .line 14
    .line 15
    const-string v1, "0\r\n\r\n"

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lokio/BufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->j:Lokio/ForwardingTimeout;

    .line 21
    .line 22
    iget-object v1, v0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 23
    .line 24
    sget-object v2, Lokio/Timeout;->d:Lokio/Timeout$Companion$NONE$1;

    .line 25
    .line 26
    iput-object v2, v0, Lokio/ForwardingTimeout;->e:Lokio/Timeout;

    .line 27
    .line 28
    invoke-virtual {v1}, Lokio/Timeout;->a()Lokio/Timeout;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lokio/Timeout;->b()Lokio/Timeout;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->l:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    iput v1, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->l:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 9
    .line 10
    iget-object v0, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:Lokio/BufferedSink;

    .line 11
    .line 12
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    throw v0
.end method

.method public final i()Lokio/Timeout;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->j:Lokio/ForwardingTimeout;

    .line 2
    .line 3
    return-object p0
.end method

.method public final l0(JLokio/Buffer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->l:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 2
    .line 3
    iget-object v0, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->d:Lokio/BufferedSink;

    .line 4
    .line 5
    iget-boolean p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;->k:Z

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    cmp-long p0, p1, v1

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-interface {v0, p1, p2}, Lokio/BufferedSink;->q0(J)Lokio/BufferedSink;

    .line 17
    .line 18
    .line 19
    const-string p0, "\r\n"

    .line 20
    .line 21
    invoke-interface {v0, p0}, Lokio/BufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p1, p2, p3}, Lokio/Sink;->l0(JLokio/Buffer;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p0}, Lokio/BufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const-string p0, "closed"

    .line 32
    .line 33
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
