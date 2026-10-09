.class public final synthetic Leb;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic k:Landroidx/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic l:Landroidx/media3/exoplayer/source/MediaLoadData;

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Leb;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 5
    .line 6
    iput-object p2, p0, Leb;->k:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 7
    .line 8
    iput-object p3, p0, Leb;->l:Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 9
    .line 10
    iput p4, p0, Leb;->m:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 3
    .line 4
    iget-object p1, p0, Leb;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 5
    .line 6
    iget v1, p1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a:I

    .line 7
    .line 8
    iget-object v2, p1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 9
    .line 10
    iget-object v3, p0, Leb;->k:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 11
    .line 12
    iget-object v4, p0, Leb;->l:Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 13
    .line 14
    iget v5, p0, Leb;->m:I

    .line 15
    .line 16
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->z(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
