.class public Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/MediaSourceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/util/Consumer;)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->b:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v2, Lf3;

    .line 24
    .line 25
    const/16 v3, 0xf

    .line 26
    .line 27
    invoke-direct {v2, v3, p1, v1}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->G(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method
