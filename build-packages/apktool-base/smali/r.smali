.class public final synthetic Lr;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lr;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget p0, p0, Lr;->j:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lio/sentry/android/ndk/SentryNdk;->a()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    sget-object p0, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->a:Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    int-to-long v0, p0

    .line 17
    sput-wide v0, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->b:J

    .line 18
    .line 19
    :pswitch_1
    return-void

    .line 20
    :pswitch_2
    sget-object p0, Landroidx/compose/ui/platform/AndroidComposeView;->U0:Landroidx/collection/MutableObjectList;

    .line 21
    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 26
    .line 27
    iget v2, p0, Landroidx/collection/ObjectList;->b:I

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/16 v4, 0x1e

    .line 31
    .line 32
    if-ge v0, v4, :cond_1

    .line 33
    .line 34
    :goto_0
    if-ge v3, v2, :cond_2

    .line 35
    .line 36
    :try_start_1
    aget-object v0, v1, v3

    .line 37
    .line 38
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getShowLayoutBounds()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    sget-object v5, Landroidx/compose/ui/platform/AndroidComposeView;->R0:Ljava/lang/Class;

    .line 45
    .line 46
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->b()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {v0, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->setShowLayoutBounds(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getShowLayoutBounds()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eq v4, v5, :cond_0

    .line 58
    .line 59
    new-instance v4, Ls0;

    .line 60
    .line 61
    const/4 v5, 0x2

    .line 62
    invoke-direct {v4, v0, v5}, Ls0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto :goto_3

    .line 71
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    :goto_2
    if-ge v3, v2, :cond_2

    .line 75
    .line 76
    aget-object v0, v1, v3

    .line 77
    .line 78
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 79
    .line 80
    new-instance v4, Ls0;

    .line 81
    .line 82
    const/4 v5, 0x3

    .line 83
    invoke-direct {v4, v0, v5}, Ls0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    monitor-exit p0

    .line 93
    return-void

    .line 94
    :goto_3
    monitor-exit p0

    .line 95
    throw v0

    .line 96
    :pswitch_3
    sget p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;->a:I

    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
