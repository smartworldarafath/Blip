.class final Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekPosition"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/Timeline;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->a:Landroidx/media3/common/Timeline;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->b:I

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->c:J

    .line 9
    .line 10
    return-void
.end method
