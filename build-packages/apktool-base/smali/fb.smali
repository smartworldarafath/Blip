.class public final synthetic Lfb;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic l:Landroidx/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic m:Landroidx/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V
    .locals 0

    .line 1
    iput p4, p0, Lfb;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lfb;->k:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 4
    .line 5
    iput-object p2, p0, Lfb;->l:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 6
    .line 7
    iput-object p3, p0, Lfb;->m:Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lfb;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lfb;->m:Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 4
    .line 5
    iget-object v2, p0, Lfb;->l:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 6
    .line 7
    iget-object p0, p0, Lfb;->k:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 8
    .line 9
    check-cast p1, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a:I

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 17
    .line 18
    invoke-interface {p1, v0, p0, v2, v1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->E(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a:I

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 25
    .line 26
    invoke-interface {p1, v0, p0, v2, v1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->g(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
