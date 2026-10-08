.class final Landroidx/media3/common/util/NetworkTypeObserver$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Receiver"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media3/common/util/NetworkTypeObserver;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/util/NetworkTypeObserver$Receiver;->a:Landroidx/media3/common/util/NetworkTypeObserver;

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
    .locals 2

    .line 1
    iget-object p2, p0, Landroidx/media3/common/util/NetworkTypeObserver$Receiver;->a:Landroidx/media3/common/util/NetworkTypeObserver;

    .line 2
    .line 3
    iget-object p2, p2, Landroidx/media3/common/util/NetworkTypeObserver;->a:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v0, Landroidx/media3/common/util/a;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1, p0, p1}, Landroidx/media3/common/util/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
