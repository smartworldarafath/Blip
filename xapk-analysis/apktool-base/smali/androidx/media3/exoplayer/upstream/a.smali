.class public final synthetic Landroidx/media3/exoplayer/upstream/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

.field public final synthetic k:I

.field public final synthetic l:J

.field public final synthetic m:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/a;->j:Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/upstream/a;->k:I

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/media3/exoplayer/upstream/a;->l:J

    .line 9
    .line 10
    iput-wide p5, p0, Landroidx/media3/exoplayer/upstream/a;->m:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/a;->j:Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->b:Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 7
    .line 8
    iget v2, p0, Landroidx/media3/exoplayer/upstream/a;->k:I

    .line 9
    .line 10
    iget-wide v3, p0, Landroidx/media3/exoplayer/upstream/a;->l:J

    .line 11
    .line 12
    iget-wide v5, p0, Landroidx/media3/exoplayer/upstream/a;->m:J

    .line 13
    .line 14
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->M(IJJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
