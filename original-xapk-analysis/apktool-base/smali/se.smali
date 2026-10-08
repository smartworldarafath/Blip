.class public final synthetic Lse;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lse;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lse;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lse;->l:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lse;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lse;->n:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lse;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lse;->n:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lse;->m:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lse;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lse;->k:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Landroid/view/Window;

    .line 15
    .line 16
    check-cast v3, Landroid/view/Window$Callback;

    .line 17
    .line 18
    check-cast v2, Ljava/lang/Runnable;

    .line 19
    .line 20
    check-cast v1, Lio/sentry/android/core/BuildInfoProvider;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 29
    .line 30
    .line 31
    new-instance p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;

    .line 32
    .line 33
    invoke-direct {p0, v0, v2}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :pswitch_0
    check-cast p0, Lio/sentry/android/core/ScreenshotEventProcessor;

    .line 48
    .line 49
    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    .line 51
    check-cast v2, Landroid/app/Activity;

    .line 52
    .line 53
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 54
    .line 55
    :try_start_0
    invoke-virtual {p0, v2}, Lio/sentry/android/core/ScreenshotEventProcessor;->b(Landroid/app/Activity;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :pswitch_1
    check-cast p0, Ljava/util/List;

    .line 72
    .line 73
    check-cast v3, Landroidx/work/impl/model/WorkGenerationalId;

    .line 74
    .line 75
    check-cast v2, Landroidx/work/Configuration;

    .line 76
    .line 77
    check-cast v1, Landroidx/work/impl/WorkDatabase;

    .line 78
    .line 79
    sget-object v0, Landroidx/work/impl/Schedulers;->a:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_1

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Landroidx/work/impl/Scheduler;

    .line 96
    .line 97
    iget-object v5, v3, Landroidx/work/impl/model/WorkGenerationalId;->a:Ljava/lang/String;

    .line 98
    .line 99
    invoke-interface {v4, v5}, Landroidx/work/impl/Scheduler;->e(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-static {v2, v1, p0}, Landroidx/work/impl/Schedulers;->b(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
