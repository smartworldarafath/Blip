.class public final Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/Format;

.field public b:Lcom/google/common/primitives/ImmutableIntArray;

.field public c:Landroidx/media3/common/Timeline;

.field public d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;->a:Landroidx/media3/common/Format;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;->b:Lcom/google/common/primitives/ImmutableIntArray;

    .line 8
    .line 9
    sget-object v0, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;->c:Landroidx/media3/common/Timeline;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 14
    .line 15
    return-void
.end method
