.class public final Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field public c:Landroidx/media3/common/VideoGraph$Factory;

.field public d:Z

.field public e:Landroidx/media3/common/util/Clock;

.field public f:Z

.field public g:J

.field public final h:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 11
    .line 12
    const-wide/16 p1, 0x3a98

    .line 13
    .line 14
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->g:J

    .line 15
    .line 16
    new-instance p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->h:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 22
    .line 23
    sget-object p1, Landroidx/media3/common/util/Clock;->a:Landroidx/media3/common/util/SystemClock;

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->e:Landroidx/media3/common/util/Clock;

    .line 26
    .line 27
    return-void
.end method
