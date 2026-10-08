.class public final Landroidx/media3/common/util/StuckPlayerDetector;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/StuckPlayerDetector$Callback;,
        Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;,
        Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;,
        Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;,
        Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/Player;

.field public final b:Landroidx/media3/common/Player$Listener;

.field public final c:Landroidx/media3/common/util/StuckPlayerDetector$Callback;

.field public final d:Landroidx/media3/common/util/Clock;

.field public final e:Landroidx/media3/common/Timeline$Period;

.field public final f:Landroidx/media3/common/util/HandlerWrapper;

.field public final g:Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;

.field public final h:Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;

.field public final i:Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;

.field public final j:Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Player;Landroidx/media3/common/util/StuckPlayerDetector$Callback;Landroidx/media3/common/util/SystemClock;IIII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/common/util/StuckPlayerDetector;->c:Landroidx/media3/common/util/StuckPlayerDetector$Callback;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/common/util/StuckPlayerDetector;->d:Landroidx/media3/common/util/Clock;

    .line 9
    .line 10
    new-instance p2, Landroidx/media3/common/Timeline$Period;

    .line 11
    .line 12
    invoke-direct {p2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Landroidx/media3/common/util/StuckPlayerDetector;->e:Landroidx/media3/common/Timeline$Period;

    .line 16
    .line 17
    invoke-interface {p1}, Landroidx/media3/common/Player;->L()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance v0, Landroidx/media3/common/util/b;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-direct {v0, v1, p0}, Landroidx/media3/common/util/b;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p2, v0}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iput-object p2, p0, Landroidx/media3/common/util/StuckPlayerDetector;->f:Landroidx/media3/common/util/HandlerWrapper;

    .line 32
    .line 33
    new-instance p2, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;

    .line 34
    .line 35
    invoke-direct {p2, p0, p4}, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;-><init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Landroidx/media3/common/util/StuckPlayerDetector;->g:Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;

    .line 39
    .line 40
    new-instance p2, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;

    .line 41
    .line 42
    invoke-direct {p2, p0, p5}, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;-><init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Landroidx/media3/common/util/StuckPlayerDetector;->h:Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;

    .line 46
    .line 47
    new-instance p2, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;

    .line 48
    .line 49
    invoke-direct {p2, p0, p6}, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;-><init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Landroidx/media3/common/util/StuckPlayerDetector;->i:Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;

    .line 53
    .line 54
    new-instance p2, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;

    .line 55
    .line 56
    invoke-direct {p2, p0, p7}, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;-><init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Landroidx/media3/common/util/StuckPlayerDetector;->j:Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;

    .line 60
    .line 61
    new-instance p2, Landroidx/media3/common/util/StuckPlayerDetector$1;

    .line 62
    .line 63
    invoke-direct {p2, p0}, Landroidx/media3/common/util/StuckPlayerDetector$1;-><init>(Landroidx/media3/common/util/StuckPlayerDetector;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Landroidx/media3/common/util/StuckPlayerDetector;->b:Landroidx/media3/common/Player$Listener;

    .line 67
    .line 68
    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->H(Landroidx/media3/common/Player$Listener;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector;->f:Landroidx/media3/common/util/HandlerWrapper;

    .line 2
    .line 3
    check-cast v0, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->f()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/media3/common/util/StuckPlayerDetector;->b:Landroidx/media3/common/Player$Listener;

    .line 11
    .line 12
    invoke-interface {v0, p0}, Landroidx/media3/common/Player;->B(Landroidx/media3/common/Player$Listener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
