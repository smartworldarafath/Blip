.class public final synthetic Landroidx/media3/common/util/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/util/b;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/common/util/b;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/common/util/b;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object p0, p0, Landroidx/media3/common/util/b;->k:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroidx/media3/common/util/StuckPlayerDetector;

    .line 11
    .line 12
    iget p1, p1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    if-eq p1, v2, :cond_3

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p1, v0, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object p0, p0, Landroidx/media3/common/util/StuckPlayerDetector;->j:Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->a()V

    .line 29
    .line 30
    .line 31
    :goto_0
    move v1, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object p0, p0, Landroidx/media3/common/util/StuckPlayerDetector;->i:Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->a()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object p0, p0, Landroidx/media3/common/util/StuckPlayerDetector;->h:Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->a()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-object p0, p0, Landroidx/media3/common/util/StuckPlayerDetector;->g:Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->a()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :goto_1
    return v1

    .line 52
    :pswitch_0
    check-cast p0, Landroidx/media3/common/util/ListenerSet;

    .line 53
    .line 54
    iget-object p1, p0, Landroidx/media3/common/util/ListenerSet;->c:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_6

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    .line 76
    .line 77
    iget-boolean v4, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->d:Z

    .line 78
    .line 79
    if-nez v4, :cond_5

    .line 80
    .line 81
    iget-boolean v4, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->c:Z

    .line 82
    .line 83
    if-eqz v4, :cond_5

    .line 84
    .line 85
    iget-object v4, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->b:Landroidx/media3/common/FlagSet$Builder;

    .line 86
    .line 87
    invoke-virtual {v4}, Landroidx/media3/common/FlagSet$Builder;->b()Landroidx/media3/common/FlagSet;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    new-instance v5, Landroidx/media3/common/FlagSet$Builder;

    .line 92
    .line 93
    invoke-direct {v5}, Landroidx/media3/common/FlagSet$Builder;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v5, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->b:Landroidx/media3/common/FlagSet$Builder;

    .line 97
    .line 98
    iput-boolean v1, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->c:Z

    .line 99
    .line 100
    iget-object v3, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->a:Ljava/lang/Object;

    .line 101
    .line 102
    invoke-interface {p1, v3, v4}, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;->f(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    iget-object v3, p0, Landroidx/media3/common/util/ListenerSet;->b:Landroidx/media3/common/util/HandlerWrapper;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    check-cast v3, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 111
    .line 112
    iget-object v3, v3, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 113
    .line 114
    invoke-virtual {v3, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_4

    .line 119
    .line 120
    :cond_6
    return v2

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
