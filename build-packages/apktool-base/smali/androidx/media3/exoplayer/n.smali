.class public final synthetic Landroidx/media3/exoplayer/n;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/n;->j:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/n;->k:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/n;->j:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 6
    .line 7
    iget p0, p0, Landroidx/media3/exoplayer/n;->k:I

    .line 8
    .line 9
    aget-object p0, v0, p0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    .line 12
    .line 13
    .line 14
    check-cast v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Lb7;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v0, v2}, Lb7;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x409

    .line 27
    .line 28
    invoke-virtual {v1, p0, v2, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
