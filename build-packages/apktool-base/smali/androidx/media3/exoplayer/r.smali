.class public final synthetic Landroidx/media3/exoplayer/r;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/MediaSourceList;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/r;->a:Landroidx/media3/exoplayer/MediaSourceList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/r;->a:Landroidx/media3/exoplayer/MediaSourceList;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->f:Landroidx/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-interface {p0, p1}, Landroidx/media3/common/util/HandlerWrapper;->j(I)V

    .line 11
    .line 12
    .line 13
    const/16 p1, 0x16

    .line 14
    .line 15
    invoke-interface {p0, p1}, Landroidx/media3/common/util/HandlerWrapper;->i(I)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
