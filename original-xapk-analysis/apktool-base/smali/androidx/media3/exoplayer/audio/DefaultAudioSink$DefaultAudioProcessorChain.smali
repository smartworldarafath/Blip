.class public Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAudioProcessorChain"
.end annotation


# instance fields
.field public final a:[Landroidx/media3/common/audio/AudioProcessor;

.field public final b:Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

.field public final c:Landroidx/media3/common/audio/SonicAudioProcessor;


# direct methods
.method public varargs constructor <init>([Landroidx/media3/common/audio/AudioProcessor;)V
    .locals 5

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/media3/common/audio/SonicAudioProcessor;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iput v2, v1, Landroidx/media3/common/audio/SonicAudioProcessor;->c:F

    .line 14
    .line 15
    iput v2, v1, Landroidx/media3/common/audio/SonicAudioProcessor;->d:F

    .line 16
    .line 17
    sget-object v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 18
    .line 19
    iput-object v2, v1, Landroidx/media3/common/audio/SonicAudioProcessor;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 20
    .line 21
    iput-object v2, v1, Landroidx/media3/common/audio/SonicAudioProcessor;->f:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 22
    .line 23
    iput-object v2, v1, Landroidx/media3/common/audio/SonicAudioProcessor;->g:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 24
    .line 25
    iput-object v2, v1, Landroidx/media3/common/audio/SonicAudioProcessor;->h:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 26
    .line 27
    sget-object v2, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    iput-object v2, v1, Landroidx/media3/common/audio/SonicAudioProcessor;->k:Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    iput-object v2, v1, Landroidx/media3/common/audio/SonicAudioProcessor;->l:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    const/4 v2, -0x1

    .line 34
    iput v2, v1, Landroidx/media3/common/audio/SonicAudioProcessor;->b:I

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    array-length v2, p1

    .line 40
    add-int/lit8 v2, v2, 0x2

    .line 41
    .line 42
    new-array v2, v2, [Landroidx/media3/common/audio/AudioProcessor;

    .line 43
    .line 44
    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->a:[Landroidx/media3/common/audio/AudioProcessor;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    array-length v4, p1

    .line 48
    invoke-static {p1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->b:Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    .line 52
    .line 53
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->c:Landroidx/media3/common/audio/SonicAudioProcessor;

    .line 54
    .line 55
    array-length p0, p1

    .line 56
    aput-object v0, v2, p0

    .line 57
    .line 58
    array-length p0, p1

    .line 59
    add-int/lit8 p0, p0, 0x1

    .line 60
    .line 61
    aput-object v1, v2, p0

    .line 62
    .line 63
    return-void
.end method
