.class public final Landroidx/media3/common/audio/AudioBecomingNoisyManager;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;,
        Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

.field public final c:Landroidx/media3/common/util/HandlerWrapper;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;Landroidx/media3/common/util/SystemClock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->a:Landroid/content/Context;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p5, p2, p1}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->c:Landroidx/media3/common/util/HandlerWrapper;

    .line 16
    .line 17
    new-instance p2, Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    .line 18
    .line 19
    invoke-virtual {p5, p3, p1}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p2, p0, p1, p4}, Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;-><init>(Landroidx/media3/common/audio/AudioBecomingNoisyManager;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->b:Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Le;

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-direct {v0, v1, p0}, Le;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->c:Landroidx/media3/common/util/HandlerWrapper;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Landroidx/media3/common/util/HandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->d:Z

    .line 19
    .line 20
    return-void
.end method
