.class public final synthetic Landroidx/media3/exoplayer/o;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field public final synthetic k:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/o;->j:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/o;->k:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 8

    .line 1
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q0:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/o;->k:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    move-wide v4, p3

    .line 7
    move-object v6, p5

    .line 8
    move-object v7, p6

    .line 9
    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->f(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/media3/exoplayer/o;->j:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
