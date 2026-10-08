.class final Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallback;
.super Landroid/media/AudioDeviceCallback;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioDeviceCallback"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallback;->a:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallback;->a:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallback;->a:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->i:Landroid/media/AudioDeviceInfo;

    .line 4
    .line 5
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 6
    .line 7
    array-length v1, p1

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->i:Landroid/media/AudioDeviceInfo;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->c()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
