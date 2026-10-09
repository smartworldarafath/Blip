.class public final Landroidx/compose/runtime/internal/RememberEventDispatcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/composer/RememberManager;


# instance fields
.field public a:Ljava/util/Set;

.field public b:Landroidx/compose/runtime/tooling/CompositionErrorContext;

.field public final c:Landroidx/compose/runtime/collection/MutableVector;

.field public d:Landroidx/collection/MutableScatterSet;

.field public e:Landroidx/compose/runtime/collection/MutableVector;

.field public final f:Landroidx/compose/runtime/collection/MutableVector;

.field public final g:Landroidx/compose/runtime/collection/MutableVector;

.field public h:Landroidx/collection/MutableScatterSet;

.field public i:Landroidx/collection/MutableScatterMap;

.field public j:Ljava/util/ArrayList;

.field public k:Landroidx/collection/ScatterSet;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    new-array v2, v1, [Landroidx/compose/runtime/RememberObserverHolder;

    .line 9
    .line 10
    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->c:Landroidx/compose/runtime/collection/MutableVector;

    .line 14
    .line 15
    sget-object v2, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 16
    .line 17
    new-instance v2, Landroidx/collection/MutableScatterSet;

    .line 18
    .line 19
    invoke-direct {v2}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->d:Landroidx/collection/MutableScatterSet;

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->e:Landroidx/compose/runtime/collection/MutableVector;

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 27
    .line 28
    new-array v2, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->f:Landroidx/compose/runtime/collection/MutableVector;

    .line 34
    .line 35
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 36
    .line 37
    new-array v1, v1, [Lkotlin/jvm/functions/Function0;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->g:Landroidx/compose/runtime/collection/MutableVector;

    .line 43
    .line 44
    return-void
.end method

.method public static final f(Landroidx/compose/runtime/RememberObserverHolder;Landroidx/compose/runtime/collection/MutableVector;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, p1, :cond_2

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    check-cast v3, Landroidx/compose/runtime/RememberObserverHolder;

    .line 12
    .line 13
    check-cast v3, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 14
    .line 15
    iget-object v3, v3, Landroidx/compose/runtime/GapRememberObserverHolder;->a:Landroidx/compose/runtime/RememberObserver;

    .line 16
    .line 17
    instance-of v4, v3, Landroidx/compose/runtime/internal/PausedCompositionRemembers;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    check-cast v3, Landroidx/compose/runtime/internal/PausedCompositionRemembers;

    .line 22
    .line 23
    iget-object v3, v3, Landroidx/compose/runtime/internal/PausedCompositionRemembers;->k:Landroidx/compose/runtime/collection/MutableVector;

    .line 24
    .line 25
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/collection/MutableVector;->j(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-static {p0, v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->f(Landroidx/compose/runtime/RememberObserverHolder;Landroidx/compose/runtime/collection/MutableVector;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    :goto_1
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a:Ljava/util/Set;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b:Landroidx/compose/runtime/tooling/CompositionErrorContext;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->c:Landroidx/compose/runtime/collection/MutableVector;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->d:Landroidx/collection/MutableScatterSet;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->f()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->e:Landroidx/compose/runtime/collection/MutableVector;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->f:Landroidx/compose/runtime/collection/MutableVector;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->g:Landroidx/compose/runtime/collection/MutableVector;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->h:Landroidx/collection/MutableScatterSet;

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->i:Landroidx/collection/MutableScatterMap;

    .line 31
    .line 32
    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->j:Ljava/util/ArrayList;

    .line 33
    .line 34
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a:Ljava/util/Set;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    move-object v0, p0

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    const-string v0, "Compose:abandons"

    .line 16
    .line 17
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_7

    .line 6
    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->k:Landroidx/collection/ScatterSet;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->f:Landroidx/compose/runtime/collection/MutableVector;

    .line 11
    .line 12
    iget v2, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 13
    .line 14
    const/16 v3, 0x9

    .line 15
    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    const-string v2, "Compose:onForgotten"

    .line 19
    .line 20
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->h:Landroidx/collection/MutableScatterSet;

    .line 24
    .line 25
    iget v4, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 26
    .line 27
    add-int/lit8 v4, v4, -0x1

    .line 28
    .line 29
    :goto_0
    const/4 v5, -0x1

    .line 30
    if-ge v5, v4, :cond_5

    .line 31
    .line 32
    iget-object v5, v1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 33
    .line 34
    aget-object v5, v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    .line 36
    :try_start_1
    instance-of v6, v5, Landroidx/compose/runtime/RememberObserverHolder;

    .line 37
    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    move-object v6, v5

    .line 41
    check-cast v6, Landroidx/compose/runtime/RememberObserverHolder;

    .line 42
    .line 43
    check-cast v6, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 44
    .line 45
    iget-object v6, v6, Landroidx/compose/runtime/GapRememberObserverHolder;->a:Landroidx/compose/runtime/RememberObserver;

    .line 46
    .line 47
    invoke-interface {v0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-interface {v6}, Landroidx/compose/runtime/RememberObserver;->b()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    :goto_1
    instance-of v6, v5, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 57
    .line 58
    if-eqz v6, :cond_3

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {v2, v5}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_2

    .line 67
    .line 68
    move-object v6, v5

    .line 69
    check-cast v6, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 70
    .line 71
    invoke-interface {v6}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->a()V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move-object v6, v5

    .line 76
    check-cast v6, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 77
    .line 78
    invoke-interface {v6}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :goto_3
    :try_start_2
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b:Landroidx/compose/runtime/tooling/CompositionErrorContext;

    .line 85
    .line 86
    if-eqz p0, :cond_4

    .line 87
    .line 88
    check-cast p0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 89
    .line 90
    new-instance v1, Lp0;

    .line 91
    .line 92
    invoke-direct {v1, v3, p0, v5}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1}, Landroidx/compose/runtime/tooling/ComposeStackTraceKt;->a(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z

    .line 96
    .line 97
    .line 98
    :cond_4
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_6
    :goto_4
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->c:Landroidx/compose/runtime/collection/MutableVector;

    .line 109
    .line 110
    iget v1, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 111
    .line 112
    if-eqz v1, :cond_a

    .line 113
    .line 114
    const-string v1, "Compose:onRemembered"

    .line 115
    .line 116
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :try_start_3
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a:Ljava/util/Set;

    .line 120
    .line 121
    if-nez v1, :cond_7

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_7
    iget-object v2, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 125
    .line 126
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 127
    .line 128
    const/4 v4, 0x0

    .line 129
    :goto_5
    if-ge v4, v0, :cond_9

    .line 130
    .line 131
    aget-object v5, v2, v4

    .line 132
    .line 133
    check-cast v5, Landroidx/compose/runtime/RememberObserverHolder;

    .line 134
    .line 135
    move-object v6, v5

    .line 136
    check-cast v6, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 137
    .line 138
    iget-object v6, v6, Landroidx/compose/runtime/GapRememberObserverHolder;->a:Landroidx/compose/runtime/RememberObserver;

    .line 139
    .line 140
    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 141
    .line 142
    .line 143
    :try_start_4
    invoke-interface {v6}, Landroidx/compose/runtime/RememberObserver;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 144
    .line 145
    .line 146
    add-int/lit8 v4, v4, 0x1

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :catchall_2
    move-exception v0

    .line 150
    :try_start_5
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b:Landroidx/compose/runtime/tooling/CompositionErrorContext;

    .line 151
    .line 152
    if-eqz p0, :cond_8

    .line 153
    .line 154
    check-cast p0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 155
    .line 156
    new-instance v1, Lp0;

    .line 157
    .line 158
    invoke-direct {v1, v3, p0, v5}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v1}, Landroidx/compose/runtime/tooling/ComposeStackTraceKt;->a(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z

    .line 162
    .line 163
    .line 164
    :cond_8
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 165
    :cond_9
    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :catchall_3
    move-exception p0

    .line 170
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :cond_a
    :goto_7
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->g:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v0, "Compose:sideeffects"

    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 13
    .line 14
    iget v1, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_0

    .line 18
    .line 19
    aget-object v3, v0, v2

    .line 20
    .line 21
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 22
    .line 23
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_1
    return-void
.end method

.method public final e(Landroidx/compose/runtime/RememberObserverHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->d:Landroidx/collection/MutableScatterSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->d:Landroidx/collection/MutableScatterSet;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->m(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->e:Landroidx/compose/runtime/collection/MutableVector;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->j(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->c:Landroidx/compose/runtime/collection/MutableVector;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->j(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p1, v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->f(Landroidx/compose/runtime/RememberObserverHolder;Landroidx/compose/runtime/collection/MutableVector;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a:Ljava/util/Set;

    .line 35
    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    check-cast p1, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 40
    .line 41
    iget-object p1, p1, Landroidx/compose/runtime/GapRememberObserverHolder;->a:Landroidx/compose/runtime/RememberObserver;

    .line 42
    .line 43
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->k:Landroidx/collection/ScatterSet;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    :goto_1
    return-void

    .line 59
    :cond_5
    :goto_2
    iget-object p0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->f:Landroidx/compose/runtime/collection/MutableVector;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final g(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->a:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->b:Landroidx/compose/runtime/tooling/CompositionErrorContext;

    .line 7
    .line 8
    return-void
.end method
