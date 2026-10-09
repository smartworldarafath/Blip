.class public final Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic a:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

.field public final synthetic b:Landroidx/activity/compose/ComposeBackHandler;


# direct methods
.method public constructor <init>(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;->a:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;->b:Landroidx/activity/compose/ComposeBackHandler;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;->a:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->a:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;->b:Landroidx/activity/compose/ComposeBackHandler;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->b:Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->e()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, v0, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->b:Landroidx/activity/OnBackPressedDispatcher;

    .line 16
    .line 17
    if-eqz v0, :cond_b

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->a:Landroidx/activity/compose/internal/BackHandlerCompat$onBackPressedCallback$1;

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/activity/OnBackPressedCallback;->a:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/activity/OnBackPressedCallback;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_9

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/AutoCloseable;

    .line 43
    .line 44
    instance-of v3, v2, Ljava/lang/AutoCloseable;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    instance-of v3, v2, Ljava/util/concurrent/ExecutorService;

    .line 53
    .line 54
    if-eqz v3, :cond_6

    .line 55
    .line 56
    check-cast v2, Ljava/util/concurrent/ExecutorService;

    .line 57
    .line 58
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-ne v2, v3, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_1

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 72
    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    :cond_4
    :goto_1
    if-nez v3, :cond_5

    .line 76
    .line 77
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 78
    .line 79
    const-wide/16 v6, 0x1

    .line 80
    .line 81
    invoke-interface {v2, v6, v7, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 82
    .line 83
    .line 84
    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_1

    .line 86
    :catch_0
    if-nez v4, :cond_4

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    const/4 v4, 0x1

    .line 92
    goto :goto_1

    .line 93
    :cond_5
    if-eqz v4, :cond_1

    .line 94
    .line 95
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    instance-of v3, v2, Landroid/content/res/TypedArray;

    .line 104
    .line 105
    if-eqz v3, :cond_7

    .line 106
    .line 107
    check-cast v2, Landroid/content/res/TypedArray;

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    instance-of v3, v2, Landroid/media/MediaMetadataRetriever;

    .line 114
    .line 115
    if-eqz v3, :cond_8

    .line 116
    .line 117
    check-cast v2, Landroid/media/MediaMetadataRetriever;

    .line 118
    .line 119
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_8
    invoke-static {}, Lfe;->h()V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_a

    .line 139
    .line 140
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroidx/navigationevent/NavigationEventHandler;->e()V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_b
    const-string p0, "Unreachable"

    .line 155
    .line 156
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method
