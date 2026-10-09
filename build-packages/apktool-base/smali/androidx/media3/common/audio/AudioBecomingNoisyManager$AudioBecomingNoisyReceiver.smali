.class final Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/audio/AudioBecomingNoisyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioBecomingNoisyReceiver"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;

.field public final b:Landroidx/media3/common/util/HandlerWrapper;

.field public final synthetic c:Landroidx/media3/common/audio/AudioBecomingNoisyManager;


# direct methods
.method public constructor <init>(Landroidx/media3/common/audio/AudioBecomingNoisyManager;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->c:Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->b:Landroidx/media3/common/util/HandlerWrapper;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->a:Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Landroidx/media3/common/audio/a;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Landroidx/media3/common/audio/a;-><init>(Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->b:Landroidx/media3/common/util/HandlerWrapper;

    .line 19
    .line 20
    invoke-interface {p0, p1}, Landroidx/media3/common/util/HandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
