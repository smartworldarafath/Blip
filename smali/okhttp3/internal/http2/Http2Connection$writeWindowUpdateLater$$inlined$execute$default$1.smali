.class public final Lokhttp3/internal/http2/Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1;
.super Lokhttp3/internal/concurrent/Task;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic e:Lokhttp3/internal/http2/Http2Connection;

.field public final synthetic f:I

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;IJ)V
    .locals 0

    .line 1
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1;->e:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iput p3, p0, Lokhttp3/internal/http2/Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1;->f:I

    .line 4
    .line 5
    iput-wide p4, p0, Lokhttp3/internal/http2/Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1;->g:J

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
    .locals 5

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1;->e:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->F:Lokhttp3/internal/http2/Http2Writer;

    .line 4
    .line 5
    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1;->f:I

    .line 6
    .line 7
    iget-wide v3, p0, Lokhttp3/internal/http2/Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1;->g:J

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/internal/http2/Http2Writer;->E(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    sget-object v1, Lokhttp3/internal/http2/Http2Connection;->I:Lokhttp3/internal/http2/Settings;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection;->h(Ljava/io/IOException;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const-wide/16 v0, -0x1

    .line 20
    .line 21
    return-wide v0
.end method
