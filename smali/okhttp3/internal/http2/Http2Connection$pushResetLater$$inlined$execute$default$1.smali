.class public final Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$default$1;
.super Lokhttp3/internal/concurrent/Task;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic e:Lokhttp3/internal/http2/Http2Connection;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$default$1;->e:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iput p3, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$default$1;->f:I

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$default$1;->e:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->t:Lokhttp3/internal/http2/PushObserver;

    .line 4
    .line 5
    check-cast v0, Lokhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$default$1;->e:Lokhttp3/internal/http2/Http2Connection;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$default$1;->e:Lokhttp3/internal/http2/Http2Connection;

    .line 14
    .line 15
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->H:Ljava/util/LinkedHashSet;

    .line 16
    .line 17
    iget p0, p0, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$default$1;->f:I

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    const-wide/16 v0, -0x1

    .line 28
    .line 29
    return-wide v0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0

    .line 32
    throw p0
.end method
