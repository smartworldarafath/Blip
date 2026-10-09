.class public final Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:J

.field public final b:Landroid/media/MediaMuxer;

.field public c:Z

.field public d:I

.field public e:I

.field public f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x49742400    # 1000000.0f

    .line 5
    .line 6
    .line 7
    div-float/2addr v0, p2

    .line 8
    float-to-long v0, v0

    .line 9
    iput-wide v0, p0, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->a:J

    .line 10
    .line 11
    new-instance p2, Landroid/media/MediaMuxer;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p2, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->b:Landroid/media/MediaMuxer;

    .line 18
    .line 19
    return-void
.end method
