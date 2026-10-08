.class public final synthetic Landroidx/media3/exoplayer/t;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic k:Landroid/util/Pair;

.field public final synthetic l:Landroidx/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic m:Landroidx/media3/exoplayer/source/MediaLoadData;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/t;->j:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/t;->k:Landroid/util/Pair;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/t;->l:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/t;->m:Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 11
    .line 12
    iput p5, p0, Landroidx/media3/exoplayer/t;->n:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/t;->j:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->k:Landroidx/media3/exoplayer/MediaSourceList;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList;->i:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/t;->k:Landroid/util/Pair;

    .line 8
    .line 9
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v5, v1

    .line 20
    check-cast v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 21
    .line 22
    move-object v3, v0

    .line 23
    check-cast v3, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 24
    .line 25
    iget-object v6, p0, Landroidx/media3/exoplayer/t;->l:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 26
    .line 27
    iget-object v7, p0, Landroidx/media3/exoplayer/t;->m:Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 28
    .line 29
    iget v8, p0, Landroidx/media3/exoplayer/t;->n:I

    .line 30
    .line 31
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->z(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
