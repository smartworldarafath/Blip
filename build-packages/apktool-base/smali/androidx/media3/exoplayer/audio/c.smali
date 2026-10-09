.class public final synthetic Landroidx/media3/exoplayer/audio/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/media3/exoplayer/audio/c;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/c;->k:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/c;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/c;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/c;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/c;->k:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, Landroid/media/AudioDeviceInfo;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;->d:Landroidx/media3/exoplayer/audio/b;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;->b:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;

    .line 18
    .line 19
    check-cast p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;->a:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->i:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->i:Landroid/media/AudioDeviceInfo;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->i:Landroid/media/AudioDeviceInfo;

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a:Landroid/content/Context;

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->j:Landroidx/media3/common/AudioAttributes;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    sget-object v4, Landroidx/media3/exoplayer/audio/AudioCapabilities;->e:Lcom/google/common/collect/ImmutableList;

    .line 47
    .line 48
    new-instance v4, Landroid/content/IntentFilter;

    .line 49
    .line 50
    const-string v5, "android.media.action.HDMI_AUDIO_PLUG"

    .line 51
    .line 52
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v0, v4, v2, v1, v3}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Landroid/media/AudioDeviceInfo;Ljava/util/List;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->b(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    return-void

    .line 68
    :pswitch_0
    check-cast v1, Landroid/media/AudioRouting;

    .line 69
    .line 70
    invoke-interface {v1}, Landroid/media/AudioRouting;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;->c:Landroid/os/Handler;

    .line 77
    .line 78
    new-instance v2, Landroidx/media3/exoplayer/audio/c;

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    invoke-direct {v2, p0, v0, v3}, Landroidx/media3/exoplayer/audio/c;-><init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
