.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$lambda$7$lambda$6$$inlined$execute$default$1;
.super Lokhttp3/internal/concurrent/Task;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic e:Lokhttp3/internal/http2/Http2Connection;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$lambda$7$lambda$6$$inlined$execute$default$1;->e:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$lambda$7$lambda$6$$inlined$execute$default$1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

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
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$lambda$7$lambda$6$$inlined$execute$default$1;->e:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->j:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 4
    .line 5
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$lambda$7$lambda$6$$inlined$execute$default$1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lokhttp3/internal/http2/Settings;

    .line 10
    .line 11
    invoke-virtual {v1, v0, p0}, Lokhttp3/internal/http2/Http2Connection$Listener;->a(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    return-wide v0
.end method
