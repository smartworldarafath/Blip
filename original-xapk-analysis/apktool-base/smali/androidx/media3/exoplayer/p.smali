.class public final synthetic Landroidx/media3/exoplayer/p;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/image/ImageMetadataListener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/ExoPlayerImplInternal;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/p;->a:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/p;->a:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 8
    .line 9
    const/16 v0, 0x25

    .line 10
    .line 11
    invoke-interface {p0, v0}, Landroidx/media3/common/util/HandlerWrapper;->e(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
