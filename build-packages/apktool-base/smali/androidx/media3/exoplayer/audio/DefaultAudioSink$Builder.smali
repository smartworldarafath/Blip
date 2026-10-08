.class public final Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/exoplayer/audio/AudioCapabilities;

.field public c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

.field public d:Z

.field public e:Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

.field public f:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

.field public g:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->a:Landroid/content/Context;

    .line 5
    .line 6
    sget-object p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->f:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->b:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 9
    .line 10
    return-void
.end method
