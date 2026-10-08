.class public final Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$WhenMappings;
    }
.end annotation


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/internal/ContextScope;

.field public final synthetic k:Landroidx/compose/runtime/PausableMonotonicFrameClock;

.field public final synthetic l:Landroidx/compose/runtime/Recomposer;

.field public final synthetic m:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/PausableMonotonicFrameClock;Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->j:Lkotlinx/coroutines/internal/ContextScope;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->k:Landroidx/compose/runtime/PausableMonotonicFrameClock;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->l:Landroidx/compose/runtime/Recomposer;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final h(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 9

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$WhenMappings;->a:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    aget p2, v0, p2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    packed-switch p2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lk8;->e()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->l:Landroidx/compose/runtime/Recomposer;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->x()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-object p0, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->l:Landroidx/compose/runtime/Recomposer;

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter p1

    .line 29
    :try_start_0
    iput-boolean v1, p0, Landroidx/compose/runtime/Recomposer;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    monitor-exit p1

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    move-object p0, v0

    .line 35
    monitor-exit p1

    .line 36
    throw p0

    .line 37
    :pswitch_2
    iget-object p1, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->k:Landroidx/compose/runtime/PausableMonotonicFrameClock;

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-object p1, p1, Landroidx/compose/runtime/PausableMonotonicFrameClock;->k:Landroidx/compose/runtime/Latch;

    .line 43
    .line 44
    iget-object v2, p1, Landroidx/compose/runtime/Latch;->a:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v2

    .line 47
    :try_start_1
    iget-object v3, p1, Landroidx/compose/runtime/Latch;->a:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    :try_start_2
    iget-boolean v4, p1, Landroidx/compose/runtime/Latch;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 51
    .line 52
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    :goto_0
    monitor-exit v2

    .line 56
    goto :goto_3

    .line 57
    :cond_0
    :try_start_4
    iget-object v3, p1, Landroidx/compose/runtime/Latch;->b:Ljava/util/ArrayList;

    .line 58
    .line 59
    iget-object v4, p1, Landroidx/compose/runtime/Latch;->c:Ljava/util/ArrayList;

    .line 60
    .line 61
    iput-object v4, p1, Landroidx/compose/runtime/Latch;->b:Ljava/util/ArrayList;

    .line 62
    .line 63
    iput-object v3, p1, Landroidx/compose/runtime/Latch;->c:Ljava/util/ArrayList;

    .line 64
    .line 65
    iput-boolean v1, p1, Landroidx/compose/runtime/Latch;->d:Z

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    move v1, p2

    .line 72
    :goto_1
    if-ge v1, p1, :cond_1

    .line 73
    .line 74
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Lkotlin/coroutines/Continuation;

    .line 79
    .line 80
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->g(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_1
    move-exception v0

    .line 89
    move-object p0, v0

    .line 90
    goto :goto_2

    .line 91
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_2
    move-exception v0

    .line 96
    move-object p0, v0

    .line 97
    monitor-exit v3

    .line 98
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 99
    :goto_2
    monitor-exit v2

    .line 100
    throw p0

    .line 101
    :cond_2
    :goto_3
    iget-object p0, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->l:Landroidx/compose/runtime/Recomposer;

    .line 102
    .line 103
    iget-object p1, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 104
    .line 105
    monitor-enter p1

    .line 106
    :try_start_5
    iget-boolean v1, p0, Landroidx/compose/runtime/Recomposer;->t:Z

    .line 107
    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    iput-boolean p2, p0, Landroidx/compose/runtime/Recomposer;->t:Z

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->y()Lkotlinx/coroutines/CancellableContinuation;

    .line 113
    .line 114
    .line 115
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 116
    goto :goto_4

    .line 117
    :catchall_3
    move-exception v0

    .line 118
    move-object p0, v0

    .line 119
    goto :goto_5

    .line 120
    :cond_3
    :goto_4
    monitor-exit p1

    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 124
    .line 125
    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 126
    .line 127
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    :pswitch_3
    return-void

    .line 131
    :goto_5
    monitor-exit p1

    .line 132
    throw p0

    .line 133
    :pswitch_4
    iget-object p2, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->j:Lkotlinx/coroutines/internal/ContextScope;

    .line 134
    .line 135
    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->m:Lkotlinx/coroutines/CoroutineStart;

    .line 136
    .line 137
    new-instance v3, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1;

    .line 138
    .line 139
    iget-object v4, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 140
    .line 141
    iget-object v5, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->l:Landroidx/compose/runtime/Recomposer;

    .line 142
    .line 143
    const/4 v8, 0x0

    .line 144
    move-object v7, p0

    .line 145
    move-object v6, p1

    .line 146
    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/runtime/Recomposer;Landroidx/lifecycle/LifecycleOwner;Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;Lkotlin/coroutines/Continuation;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p2, v0, v2, v3, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
