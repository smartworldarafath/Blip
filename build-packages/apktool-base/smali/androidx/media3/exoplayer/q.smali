.class public final synthetic Landroidx/media3/exoplayer/q;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/media3/exoplayer/q;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/q;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/media3/exoplayer/q;->l:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/media3/exoplayer/q;->m:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/q;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/q;->m:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/q;->l:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/q;->k:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    .line 13
    .line 14
    check-cast v2, Landroid/util/Pair;

    .line 15
    .line 16
    check-cast v1, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->k:Landroidx/media3/exoplayer/MediaSourceList;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->i:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 21
    .line 22
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 33
    .line 34
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 35
    .line 36
    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->o(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 41
    .line 42
    check-cast v2, Lcom/google/common/collect/ImmutableList$Builder;

    .line 43
    .line 44
    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->c:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 53
    .line 54
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->P(Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
