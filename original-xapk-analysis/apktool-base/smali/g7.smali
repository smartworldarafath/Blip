.class public final synthetic Lg7;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/media3/common/VideoSize;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/VideoSize;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lg7;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lg7;->k:Landroidx/media3/common/VideoSize;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 10
    const/4 p1, 0x0

    iput p1, p0, Lg7;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg7;->k:Landroidx/media3/common/VideoSize;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lg7;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lg7;->k:Landroidx/media3/common/VideoSize;

    .line 7
    .line 8
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 9
    .line 10
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->a(Landroidx/media3/common/VideoSize;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 15
    .line 16
    iget-object p0, p0, Lg7;->k:Landroidx/media3/common/VideoSize;

    .line 17
    .line 18
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->a(Landroidx/media3/common/VideoSize;)V

    .line 19
    .line 20
    .line 21
    iget p0, p0, Landroidx/media3/common/VideoSize;->a:I

    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
