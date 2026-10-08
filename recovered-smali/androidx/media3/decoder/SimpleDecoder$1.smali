.class Landroidx/media3/decoder/SimpleDecoder$1;
.super Ljava/lang/Thread;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic j:Landroidx/media3/decoder/SimpleDecoder;


# direct methods
.method public constructor <init>(Landroidx/media3/decoder/SimpleDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/decoder/SimpleDecoder$1;->j:Landroidx/media3/decoder/SimpleDecoder;

    .line 2
    .line 3
    const-string p1, "ExoPlayer:SimpleDecoder"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/decoder/SimpleDecoder$1;->j:Landroidx/media3/decoder/SimpleDecoder;

    .line 2
    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/decoder/SimpleDecoder;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method
