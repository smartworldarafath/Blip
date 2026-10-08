.class public final synthetic Landroidx/media3/exoplayer/source/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

.field public final synthetic k:Landroidx/media3/extractor/SeekMap;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/c;->j:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/source/c;->k:Landroidx/media3/extractor/SeekMap;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->b0:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->j:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/source/c;->k:Landroidx/media3/extractor/SeekMap;

    .line 8
    .line 9
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move-object v1, p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 19
    .line 20
    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iput-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Landroidx/media3/extractor/SeekMap;

    .line 24
    .line 25
    invoke-interface {p0}, Landroidx/media3/extractor/SeekMap;->g()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    iput-wide v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:J

    .line 30
    .line 31
    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->U:Z

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-interface {p0}, Landroidx/media3/extractor/SeekMap;->g()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    cmp-long v1, v5, v2

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    move v1, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_1
    iput-boolean v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->M:Z

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    const/4 v4, 0x7

    .line 52
    :cond_2
    iput v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    .line 53
    .line 54
    iget-boolean v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:Z

    .line 55
    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->p:Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    .line 59
    .line 60
    iget-wide v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:J

    .line 61
    .line 62
    invoke-virtual {v2, v3, v4, p0, v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->t(JLandroidx/media3/extractor/SeekMap;Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A()V

    .line 67
    .line 68
    .line 69
    :goto_2
    return-void
.end method
