.class public final Landroidx/media3/exoplayer/LoadControl$Parameters;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/LoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public final b:Landroidx/media3/common/Timeline;

.field public final c:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final d:J

.field public final e:F


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JFZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->a:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->b:Landroidx/media3/common/Timeline;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->c:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 9
    .line 10
    iput-wide p4, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->d:J

    .line 11
    .line 12
    iput p6, p0, Landroidx/media3/exoplayer/LoadControl$Parameters;->e:F

    .line 13
    .line 14
    return-void
.end method
