.class final Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/Format;

.field public final b:Landroidx/media3/common/Format;

.field public final c:I

.field public final d:I

.field public final e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

.field public final f:Landroidx/media3/common/audio/AudioProcessingPipeline;

.field public final g:Landroidx/media3/common/Timeline;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format;IILandroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/common/audio/AudioProcessingPipeline;Landroidx/media3/common/Timeline;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b:Landroidx/media3/common/Format;

    .line 7
    .line 8
    iput p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->c:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->f:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->g:Landroidx/media3/common/Timeline;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->h:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public static a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;
    .locals 9

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b:Landroidx/media3/common/Format;

    .line 6
    .line 7
    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->c:I

    .line 8
    .line 9
    iget v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    .line 10
    .line 11
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->f:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 12
    .line 13
    iget-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->g:Landroidx/media3/common/Timeline;

    .line 14
    .line 15
    iget-object v8, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->h:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v5, p1

    .line 18
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format;IILandroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/common/audio/AudioProcessingPipeline;Landroidx/media3/common/Timeline;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "audio/raw"

    .line 6
    .line 7
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
