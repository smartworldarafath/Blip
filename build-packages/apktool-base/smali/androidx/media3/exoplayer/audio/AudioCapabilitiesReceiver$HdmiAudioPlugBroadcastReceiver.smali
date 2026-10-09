.class final Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HdmiAudioPlugBroadcastReceiver"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->a:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->a:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->j:Landroidx/media3/common/AudioAttributes;

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->i:Landroid/media/AudioDeviceInfo;

    .line 16
    .line 17
    invoke-static {p1, p2, v1, v2, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Landroid/media/AudioDeviceInfo;Ljava/util/List;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->b(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
