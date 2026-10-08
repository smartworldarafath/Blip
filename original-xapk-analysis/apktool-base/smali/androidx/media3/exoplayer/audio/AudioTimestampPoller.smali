.class final Landroidx/media3/exoplayer/audio/AudioTimestampPoller;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

.field public final b:I

.field public final c:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

.field public d:I

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;-><init>(Landroid/media/AudioTrack;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->b:I

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->c:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->d:I

    .line 2
    .line 3
    const-wide/16 v0, 0x2710

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq p1, v2, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    const-wide/32 v0, 0x7a120

    .line 20
    .line 21
    .line 22
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->f:J

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lio/sentry/d;->d()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const-wide/32 v0, 0x989680

    .line 30
    .line 31
    .line 32
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->f:J

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->f:J

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    const-wide/16 v2, 0x0

    .line 39
    .line 40
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->g:J

    .line 41
    .line 42
    const-wide/16 v2, -0x1

    .line 43
    .line 44
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->h:J

    .line 45
    .line 46
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->i:J

    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    const-wide/16 v4, 0x3e8

    .line 58
    .line 59
    div-long/2addr v2, v4

    .line 60
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->e:J

    .line 61
    .line 62
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->f:J

    .line 63
    .line 64
    return-void
.end method
