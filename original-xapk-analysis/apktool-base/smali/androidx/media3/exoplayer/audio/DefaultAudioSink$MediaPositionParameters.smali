.class final Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPositionParameters"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/PlaybackParameters;

.field public final b:J

.field public final c:J

.field public d:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/PlaybackParameters;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->a:Landroidx/media3/common/PlaybackParameters;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->b:J

    .line 7
    .line 8
    iput-wide p4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->c:J

    .line 9
    .line 10
    return-void
.end method
