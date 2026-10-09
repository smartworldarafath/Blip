.class public final synthetic Ltc;
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

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Ltc;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Ltc;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Ltc;->l:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Ltc;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Ltc;->n:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Ltc;->o:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Ltc;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Ltc;->o:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Ltc;->n:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Ltc;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Ltc;->l:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p0, p0, Ltc;->k:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    check-cast v4, Landroid/view/View;

    .line 19
    .line 20
    check-cast v3, Ljava/util/List;

    .line 21
    .line 22
    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 23
    .line 24
    check-cast v1, Lio/sentry/ILogger;

    .line 25
    .line 26
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v5, Lio/sentry/protocol/ViewHierarchy;

    .line 33
    .line 34
    const-string v6, "android_view_system"

    .line 35
    .line 36
    invoke-direct {v5, v6, v0}, Lio/sentry/protocol/ViewHierarchy;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v4}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->c(Landroid/view/View;)Lio/sentry/protocol/ViewHierarchyNode;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    invoke-static {v4, v6, v3}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->b(Landroid/view/View;Lio/sentry/protocol/ViewHierarchyNode;Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 58
    .line 59
    const-string v2, "Failed to process view hierarchy."

    .line 60
    .line 61
    invoke-interface {v1, v0, v2, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :pswitch_0
    check-cast p0, Landroidx/work/Tracer;

    .line 66
    .line 67
    check-cast v4, Ljava/lang/String;

    .line 68
    .line 69
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 70
    .line 71
    check-cast v2, Landroidx/lifecycle/MutableLiveData;

    .line 72
    .line 73
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 74
    .line 75
    check-cast p0, Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {}, Landroidx/tracing/Trace;->d()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_0

    .line 85
    .line 86
    :try_start_1
    invoke-static {v4}, Landroidx/tracing/Trace;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 91
    .line 92
    .line 93
    :cond_0
    :try_start_2
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    sget-object v0, Landroidx/work/Operation;->a:Landroidx/work/Operation$State$SUCCESS;

    .line 97
    .line 98
    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->b(Landroidx/work/Operation$State;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    :try_start_3
    new-instance v3, Landroidx/work/Operation$State$FAILURE;

    .line 107
    .line 108
    invoke-direct {v3, v0}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->b(Landroidx/work/Operation$State;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->c(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 115
    .line 116
    .line 117
    :goto_1
    if-eqz p0, :cond_1

    .line 118
    .line 119
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 120
    .line 121
    .line 122
    :cond_1
    return-void

    .line 123
    :catchall_2
    move-exception v0

    .line 124
    if-eqz p0, :cond_2

    .line 125
    .line 126
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 127
    .line 128
    .line 129
    :cond_2
    throw v0

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
