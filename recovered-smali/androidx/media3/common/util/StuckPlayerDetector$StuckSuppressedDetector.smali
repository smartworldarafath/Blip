.class final Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/StuckPlayerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StuckSuppressedDetector"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:Z

.field public d:J

.field public final synthetic e:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->e:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->e:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector;->f:Landroidx/media3/common/util/HandlerWrapper;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    .line 6
    .line 7
    invoke-interface {v2}, Landroidx/media3/common/Player;->I()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-interface {v2}, Landroidx/media3/common/Player;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x4

    .line 16
    if-eqz v4, :cond_3

    .line 17
    .line 18
    invoke-interface {v2}, Landroidx/media3/common/Player;->y()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v6, 0x1

    .line 23
    if-eq v4, v6, :cond_3

    .line 24
    .line 25
    invoke-interface {v2}, Landroidx/media3/common/Player;->y()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eq v2, v5, :cond_3

    .line 30
    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    if-ne v3, v6, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v2, v0, Landroidx/media3/common/util/StuckPlayerDetector;->d:Landroidx/media3/common/util/Clock;

    .line 37
    .line 38
    check-cast v2, Landroidx/media3/common/util/SystemClock;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    iget-boolean v2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->c:Z

    .line 48
    .line 49
    iget v4, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->a:I

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget v2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->b:I

    .line 54
    .line 55
    if-ne v2, v3, :cond_2

    .line 56
    .line 57
    iget-wide v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->d:J

    .line 58
    .line 59
    sub-long/2addr v7, v1

    .line 60
    int-to-long v1, v4

    .line 61
    cmp-long p0, v7, v1

    .line 62
    .line 63
    if-ltz p0, :cond_1

    .line 64
    .line 65
    iget-object p0, v0, Landroidx/media3/common/util/StuckPlayerDetector;->c:Landroidx/media3/common/util/StuckPlayerDetector$Callback;

    .line 66
    .line 67
    new-instance v0, Landroidx/media3/common/util/StuckPlayerException;

    .line 68
    .line 69
    invoke-direct {v0, v5, v4}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p0, v0}, Landroidx/media3/common/util/StuckPlayerDetector$Callback;->t(Landroidx/media3/common/util/StuckPlayerException;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void

    .line 76
    :cond_2
    iput-boolean v6, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->c:Z

    .line 77
    .line 78
    iput-wide v7, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->d:J

    .line 79
    .line 80
    iput v3, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->b:I

    .line 81
    .line 82
    move-object p0, v1

    .line 83
    check-cast p0, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 84
    .line 85
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/SystemHandlerWrapper;->j(I)V

    .line 86
    .line 87
    .line 88
    check-cast v1, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 89
    .line 90
    iget-object p0, v1, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 91
    .line 92
    int-to-long v0, v4

    .line 93
    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    :goto_0
    iget-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->c:Z

    .line 98
    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    check-cast v1, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 102
    .line 103
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/SystemHandlerWrapper;->j(I)V

    .line 104
    .line 105
    .line 106
    :cond_4
    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->c:Z

    .line 108
    .line 109
    return-void
.end method
