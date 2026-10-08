.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;
.super Lokhttp3/internal/concurrent/Task;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic e:Lokhttp3/internal/http2/Http2Connection;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;II)V
    .locals 0

    .line 1
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;->e:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iput p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;->f:I

    .line 4
    .line 5
    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;->g:I

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;->e:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iget v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;->f:I

    .line 4
    .line 5
    iget p0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;->g:I

    .line 6
    .line 7
    :try_start_0
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->F:Lokhttp3/internal/http2/Http2Writer;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v2, v1, p0, v3}, Lokhttp3/internal/http2/Http2Writer;->w(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection;->h(Ljava/io/IOException;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    return-wide v0
.end method
