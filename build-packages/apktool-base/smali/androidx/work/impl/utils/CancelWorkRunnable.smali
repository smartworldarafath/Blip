.class public abstract Landroidx/work/impl/utils/CancelWorkRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->q()Landroidx/work/impl/model/DependencyDao;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    filled-new-array {p1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->E([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->L(Ljava/util/List;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    move-object v5, v1

    .line 36
    check-cast v5, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 37
    .line 38
    invoke-virtual {v5, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->a(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    sget-object v7, Landroidx/work/WorkInfo$State;->l:Landroidx/work/WorkInfo$State;

    .line 43
    .line 44
    if-eq v6, v7, :cond_0

    .line 45
    .line 46
    sget-object v7, Landroidx/work/WorkInfo$State;->m:Landroidx/work/WorkInfo$State;

    .line 47
    .line 48
    if-eq v6, v7, :cond_0

    .line 49
    .line 50
    iget-object v5, v5, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 51
    .line 52
    new-instance v6, Lq7;

    .line 53
    .line 54
    const/16 v7, 0xd

    .line 55
    .line 56
    invoke-direct {v6, v3, v7}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    const/4 v7, 0x0

    .line 60
    invoke-static {v5, v7, v4, v6}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/Number;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 67
    .line 68
    .line 69
    :cond_0
    move-object v4, v0

    .line 70
    check-cast v4, Landroidx/work/impl/model/DependencyDao_Impl;

    .line 71
    .line 72
    invoke-virtual {v4, v3}, Landroidx/work/impl/model/DependencyDao_Impl;->a(Ljava/lang/String;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->f:Landroidx/work/impl/Processor;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    const-string v1, "Processor cancelling "

    .line 86
    .line 87
    iget-object v2, v0, Landroidx/work/impl/Processor;->k:Ljava/lang/Object;

    .line 88
    .line 89
    monitor-enter v2

    .line 90
    :try_start_0
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    sget-object v5, Landroidx/work/impl/Processor;->l:Ljava/lang/String;

    .line 95
    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v3, v5, v1}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Landroidx/work/impl/Processor;->i:Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Landroidx/work/impl/Processor;->b(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-static {p1, v0, v4}, Landroidx/work/impl/Processor;->d(Ljava/lang/String;Landroidx/work/impl/WorkerWrapper;I)Z

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->e:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroidx/work/impl/Scheduler;

    .line 141
    .line 142
    invoke-interface {v0, p1}, Landroidx/work/impl/Scheduler;->e(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    return-void

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    throw p0
.end method
