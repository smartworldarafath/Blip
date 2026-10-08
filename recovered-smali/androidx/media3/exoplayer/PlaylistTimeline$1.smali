.class Landroidx/media3/exoplayer/PlaylistTimeline$1;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final c:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/media3/common/Timeline$Window;

    .line 5
    .line 6
    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->c:Landroidx/media3/common/Timeline$Window;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->b:Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget p3, p1, Landroidx/media3/common/Timeline$Period;->c:I

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline$1;->c:Landroidx/media3/common/Timeline$Window;

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    invoke-virtual {v0, p3, p0, v1, v2}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->a()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 p3, 0x1

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iget-object p0, p2, Landroidx/media3/common/Timeline$Period;->a:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v0, p2, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    .line 27
    .line 28
    iget v1, p2, Landroidx/media3/common/Timeline$Period;->c:I

    .line 29
    .line 30
    iget-wide v2, p2, Landroidx/media3/common/Timeline$Period;->d:J

    .line 31
    .line 32
    iget-wide v4, p2, Landroidx/media3/common/Timeline$Period;->e:J

    .line 33
    .line 34
    sget-object p2, Landroidx/media3/common/AdPlaybackState;->c:Landroidx/media3/common/AdPlaybackState;

    .line 35
    .line 36
    iput-object p0, p1, Landroidx/media3/common/Timeline$Period;->a:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object v0, p1, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    .line 39
    .line 40
    iput v1, p1, Landroidx/media3/common/Timeline$Period;->c:I

    .line 41
    .line 42
    iput-wide v2, p1, Landroidx/media3/common/Timeline$Period;->d:J

    .line 43
    .line 44
    iput-wide v4, p1, Landroidx/media3/common/Timeline$Period;->e:J

    .line 45
    .line 46
    iput-object p2, p1, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 47
    .line 48
    iput-boolean p3, p1, Landroidx/media3/common/Timeline$Period;->f:Z

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_0
    iput-boolean p3, p1, Landroidx/media3/common/Timeline$Period;->f:Z

    .line 52
    .line 53
    return-object p1
.end method
