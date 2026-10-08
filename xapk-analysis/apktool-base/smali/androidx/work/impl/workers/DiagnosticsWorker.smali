.class public final Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c()Landroidx/work/ListenableWorker$Result$Success;
    .locals 9

    .line 1
    iget-object p0, p0, Landroidx/work/ListenableWorker;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/work/impl/WorkManagerImpl;->a(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Landroidx/work/impl/model/WorkNameDao;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->w()Landroidx/work/impl/model/WorkTagDao;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->s()Landroidx/work/impl/model/SystemIdInfoDao;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/work/Configuration;->d:Landroidx/work/SystemClock;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    const-wide/32 v6, 0x5265c00

    .line 40
    .line 41
    .line 42
    sub-long/2addr v4, v6

    .line 43
    move-object p0, v1

    .line 44
    check-cast p0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 47
    .line 48
    new-instance v6, Ly0;

    .line 49
    .line 50
    const/4 v7, 0x2

    .line 51
    invoke-direct {v6, v7, v4, v5}, Ly0;-><init>(IJ)V

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-static {p0, v4, v5, v6}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Ljava/util/List;

    .line 61
    .line 62
    check-cast v1, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 63
    .line 64
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 65
    .line 66
    new-instance v6, Lii;

    .line 67
    .line 68
    const/16 v7, 0xf

    .line 69
    .line 70
    invoke-direct {v6, v7}, Lii;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v4, v5, v6}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Ljava/util/List;

    .line 78
    .line 79
    new-instance v7, Lii;

    .line 80
    .line 81
    const/16 v8, 0x13

    .line 82
    .line 83
    invoke-direct {v7, v8}, Lii;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v4, v5, v7}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_0

    .line 97
    .line 98
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    sget-object v5, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->a:Ljava/lang/String;

    .line 103
    .line 104
    const-string v7, "Recently completed work:\n\n"

    .line 105
    .line 106
    invoke-virtual {v4, v5, v7}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v2, v3, v0, p0}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->a(Landroidx/work/impl/model/WorkNameDao;Landroidx/work/impl/model/WorkTagDao;Landroidx/work/impl/model/SystemIdInfoDao;Ljava/util/List;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v4, v5, p0}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_0
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-nez p0, :cond_1

    .line 125
    .line 126
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    sget-object v4, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->a:Ljava/lang/String;

    .line 131
    .line 132
    const-string v5, "Running work:\n\n"

    .line 133
    .line 134
    invoke-virtual {p0, v4, v5}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {v2, v3, v0, v6}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->a(Landroidx/work/impl/model/WorkNameDao;Landroidx/work/impl/model/WorkTagDao;Landroidx/work/impl/model/SystemIdInfoDao;Ljava/util/List;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {p0, v4, v5}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-nez p0, :cond_2

    .line 153
    .line 154
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    sget-object v4, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->a:Ljava/lang/String;

    .line 159
    .line 160
    const-string v5, "Enqueued work:\n\n"

    .line 161
    .line 162
    invoke-virtual {p0, v4, v5}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {v2, v3, v0, v1}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->a(Landroidx/work/impl/model/WorkNameDao;Landroidx/work/impl/model/WorkTagDao;Landroidx/work/impl/model/SystemIdInfoDao;Ljava/util/List;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p0, v4, v0}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_2
    new-instance p0, Landroidx/work/ListenableWorker$Result$Success;

    .line 177
    .line 178
    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result$Success;-><init>()V

    .line 179
    .line 180
    .line 181
    return-object p0
.end method
