.class public Landroidx/work/impl/background/systemjob/SystemJobScheduler;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/work/impl/Scheduler;


# static fields
.field public static final o:Ljava/lang/String;


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Landroid/app/job/JobScheduler;

.field public final l:Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;

.field public final m:Landroidx/work/impl/WorkDatabase;

.field public final n:Landroidx/work/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SystemJobScheduler"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->o:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/JobSchedulerExtKt;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;

    .line 6
    .line 7
    iget-object v2, p3, Landroidx/work/Configuration;->d:Landroidx/work/SystemClock;

    .line 8
    .line 9
    iget-boolean v3, p3, Landroidx/work/Configuration;->l:Z

    .line 10
    .line 11
    invoke-direct {v1, p1, v2, v3}, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;-><init>(Landroid/content/Context;Landroidx/work/SystemClock;Z)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->j:Landroid/content/Context;

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->k:Landroid/app/job/JobScheduler;

    .line 20
    .line 21
    iput-object v1, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->l:Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;

    .line 22
    .line 23
    iput-object p2, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->m:Landroidx/work/impl/WorkDatabase;

    .line 24
    .line 25
    iput-object p3, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->n:Landroidx/work/Configuration;

    .line 26
    .line 27
    return-void
.end method

.method public static b(Landroid/app/job/JobScheduler;I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v2, "Exception while trying to cancel job (%d)"

    .line 23
    .line 24
    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->o:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1, p0}, Landroidx/work/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static d(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    sget-object v0, Landroidx/work/impl/background/systemjob/JobSchedulerExtKt;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    sget-object v1, Landroidx/work/impl/background/systemjob/JobSchedulerExtKt;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "getAllPendingJobs() is not reliable on this device."

    .line 23
    .line 24
    invoke-virtual {v2, v1, v3, p1}, Landroidx/work/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    move-object p1, v0

    .line 28
    :goto_0
    if-nez p1, :cond_0

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Landroid/content/ComponentName;

    .line 41
    .line 42
    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    .line 43
    .line 44
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/app/job/JobInfo;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    return-object v0
.end method

.method public static f(Landroid/app/job/JobInfo;)Landroidx/work/impl/model/WorkGenerationalId;
    .locals 3

    .line 1
    const-string v0, "EXTRA_WORK_SPEC_ID"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "EXTRA_WORK_SPEC_GENERATION"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    new-instance v2, Landroidx/work/impl/model/WorkGenerationalId;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v2, p0, v1}, Landroidx/work/impl/model/WorkGenerationalId;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method


# virtual methods
.method public final varargs a([Landroidx/work/impl/model/WorkSpec;)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->n:Landroidx/work/Configuration;

    .line 2
    .line 3
    new-instance v1, Landroidx/work/impl/utils/IdGenerator;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->m:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroidx/work/impl/utils/IdGenerator;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 8
    .line 9
    .line 10
    array-length v3, p1

    .line 11
    const/4 v4, 0x0

    .line 12
    move v5, v4

    .line 13
    :goto_0
    if-ge v5, v3, :cond_4

    .line 14
    .line 15
    aget-object v6, p1, v5

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->b()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    iget-object v8, v6, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 25
    .line 26
    check-cast v7, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 27
    .line 28
    invoke-virtual {v7, v8}, Landroidx/work/impl/model/WorkSpecDao_Impl;->b(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 29
    .line 30
    .line 31
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const-string v9, "Skipping scheduling "

    .line 33
    .line 34
    sget-object v10, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->o:Ljava/lang/String;

    .line 35
    .line 36
    if-nez v7, :cond_0

    .line 37
    .line 38
    :try_start_1
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v8, " because it\'s no longer in the DB"

    .line 54
    .line 55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {v6, v10, v7}, Landroidx/work/Logger;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->l()V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_0
    :try_start_2
    iget-object v7, v7, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 77
    .line 78
    sget-object v11, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 79
    .line 80
    if-eq v7, v11, :cond_1

    .line 81
    .line 82
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    new-instance v7, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v8, " because it is no longer enqueued"

    .line 98
    .line 99
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v6, v10, v7}, Landroidx/work/Logger;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->o()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    invoke-static {v6}, Landroidx/work/impl/model/WorkSpecKt;->a(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->s()Landroidx/work/impl/model/SystemIdInfoDao;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-interface {v8, v7}, Landroidx/work/impl/model/SystemIdInfoDao;->a(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/model/SystemIdInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    if-eqz v8, :cond_2

    .line 126
    .line 127
    iget v9, v8, Landroidx/work/impl/model/SystemIdInfo;->c:I

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget v9, v0, Landroidx/work/Configuration;->i:I

    .line 134
    .line 135
    iget-object v10, v1, Landroidx/work/impl/utils/IdGenerator;->a:Landroidx/work/impl/WorkDatabase;

    .line 136
    .line 137
    new-instance v11, Lt9;

    .line 138
    .line 139
    invoke-direct {v11, v1, v9}, Lt9;-><init>(Landroidx/work/impl/utils/IdGenerator;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10, v11}, Landroidx/room/RoomDatabase;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    check-cast v9, Ljava/lang/Number;

    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    :goto_2
    if-nez v8, :cond_3

    .line 156
    .line 157
    new-instance v8, Landroidx/work/impl/model/SystemIdInfo;

    .line 158
    .line 159
    iget-object v10, v7, Landroidx/work/impl/model/WorkGenerationalId;->a:Ljava/lang/String;

    .line 160
    .line 161
    iget v7, v7, Landroidx/work/impl/model/WorkGenerationalId;->b:I

    .line 162
    .line 163
    invoke-direct {v8, v10, v7, v9}, Landroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;II)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->s()Landroidx/work/impl/model/SystemIdInfoDao;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    check-cast v7, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    iget-object v10, v7, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 176
    .line 177
    new-instance v11, Lec;

    .line 178
    .line 179
    const/16 v12, 0xd

    .line 180
    .line 181
    invoke-direct {v11, v12, v7, v8}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    const/4 v7, 0x1

    .line 185
    invoke-static {v10, v4, v7, v11}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    :cond_3
    invoke-virtual {p0, v6, v9}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->g(Landroidx/work/impl/model/WorkSpec;I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :goto_4
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->l()V

    .line 200
    .line 201
    .line 202
    throw p0

    .line 203
    :cond_4
    return-void
.end method

.method public final c()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->j:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->k:Landroid/app/job/JobScheduler;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->d(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/app/job/JobInfo;

    .line 34
    .line 35
    invoke-static {v3}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->f(Landroid/app/job/JobInfo;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    iget-object v4, v4, Landroidx/work/impl/model/WorkGenerationalId;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move-object v0, v2

    .line 62
    :goto_1
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-static {v1, v2}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->b(Landroid/app/job/JobScheduler;I)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    iget-object p0, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->m:Landroidx/work/impl/WorkDatabase;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->s()Landroidx/work/impl/model/SystemIdInfoDao;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 109
    .line 110
    new-instance v0, Lq7;

    .line 111
    .line 112
    const/4 v1, 0x7

    .line 113
    invoke-direct {v0, p1, v1}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    const/4 p1, 0x0

    .line 117
    const/4 v1, 0x1

    .line 118
    invoke-static {p0, p1, v1, v0}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    :cond_4
    return-void
.end method

.method public final g(Landroidx/work/impl/model/WorkSpec;I)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->l:Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 7
    .line 8
    new-instance v2, Landroid/os/PersistableBundle;

    .line 9
    .line 10
    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string v4, "EXTRA_WORK_SPEC_ID"

    .line 16
    .line 17
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v4, "EXTRA_WORK_SPEC_GENERATION"

    .line 21
    .line 22
    iget v5, p1, Landroidx/work/impl/model/WorkSpec;->t:I

    .line 23
    .line 24
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const-string v4, "EXTRA_IS_PERIODIC"

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    .line 37
    .line 38
    iget-object v5, v0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->a:Landroid/content/ComponentName;

    .line 39
    .line 40
    invoke-direct {v4, p2, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v5, v1, Landroidx/work/Constraints;->c:Z

    .line 44
    .line 45
    iget-object v6, v1, Landroidx/work/Constraints;->i:Ljava/util/Set;

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget-boolean v5, v1, Landroidx/work/Constraints;->d:Z

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1}, Landroidx/work/Constraints;->a()Landroid/net/NetworkRequest;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x1

    .line 67
    if-eqz v4, :cond_0

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    iget-object v4, v1, Landroidx/work/Constraints;->a:Landroidx/work/NetworkType;

    .line 77
    .line 78
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    .line 80
    const/16 v10, 0x1e

    .line 81
    .line 82
    if-lt v9, v10, :cond_1

    .line 83
    .line 84
    sget-object v9, Landroidx/work/NetworkType;->o:Landroidx/work/NetworkType;

    .line 85
    .line 86
    if-ne v4, v9, :cond_1

    .line 87
    .line 88
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    .line 89
    .line 90
    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 91
    .line 92
    .line 93
    const/16 v9, 0x19

    .line 94
    .line 95
    invoke-virtual {v4, v9}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_3

    .line 112
    .line 113
    if-eq v9, v8, :cond_2

    .line 114
    .line 115
    const/4 v10, 0x2

    .line 116
    if-eq v9, v10, :cond_4

    .line 117
    .line 118
    const/4 v10, 0x3

    .line 119
    if-eq v9, v10, :cond_4

    .line 120
    .line 121
    const/4 v10, 0x4

    .line 122
    if-eq v9, v10, :cond_4

    .line 123
    .line 124
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    sget-object v10, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->d:Ljava/lang/String;

    .line 129
    .line 130
    new-instance v11, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v12, "API version too low. Cannot convert network type value "

    .line 133
    .line 134
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v9, v10, v4}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_2
    move v10, v8

    .line 148
    goto :goto_0

    .line 149
    :cond_3
    move v10, v7

    .line 150
    :cond_4
    :goto_0
    invoke-virtual {v2, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 151
    .line 152
    .line 153
    :goto_1
    if-nez v5, :cond_6

    .line 154
    .line 155
    iget-object v4, p1, Landroidx/work/impl/model/WorkSpec;->l:Landroidx/work/BackoffPolicy;

    .line 156
    .line 157
    sget-object v5, Landroidx/work/BackoffPolicy;->k:Landroidx/work/BackoffPolicy;

    .line 158
    .line 159
    if-ne v4, v5, :cond_5

    .line 160
    .line 161
    move v4, v7

    .line 162
    goto :goto_2

    .line 163
    :cond_5
    move v4, v8

    .line 164
    :goto_2
    iget-wide v9, p1, Landroidx/work/impl/model/WorkSpec;->m:J

    .line 165
    .line 166
    invoke-virtual {v2, v9, v10, v4}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 167
    .line 168
    .line 169
    :cond_6
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->a()J

    .line 170
    .line 171
    .line 172
    move-result-wide v4

    .line 173
    iget-object v9, v0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->b:Landroidx/work/Clock;

    .line 174
    .line 175
    check-cast v9, Landroidx/work/SystemClock;

    .line 176
    .line 177
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 181
    .line 182
    .line 183
    move-result-wide v9

    .line 184
    sub-long/2addr v4, v9

    .line 185
    const-wide/16 v9, 0x0

    .line 186
    .line 187
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 188
    .line 189
    .line 190
    move-result-wide v4

    .line 191
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 192
    .line 193
    const/16 v12, 0x1c

    .line 194
    .line 195
    if-gt v11, v12, :cond_7

    .line 196
    .line 197
    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_7
    cmp-long v11, v4, v9

    .line 202
    .line 203
    if-lez v11, :cond_8

    .line 204
    .line 205
    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_8
    iget-boolean v11, p1, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 210
    .line 211
    if-nez v11, :cond_9

    .line 212
    .line 213
    iget-boolean v0, v0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->c:Z

    .line 214
    .line 215
    if-eqz v0, :cond_9

    .line 216
    .line 217
    invoke-virtual {v2, v8}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    .line 218
    .line 219
    .line 220
    :cond_9
    :goto_3
    move-object v0, v6

    .line 221
    check-cast v0, Ljava/util/Collection;

    .line 222
    .line 223
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_b

    .line 228
    .line 229
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    if-eqz v6, :cond_a

    .line 238
    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    check-cast v6, Landroidx/work/Constraints$ContentUriTrigger;

    .line 244
    .line 245
    iget-boolean v11, v6, Landroidx/work/Constraints$ContentUriTrigger;->b:Z

    .line 246
    .line 247
    new-instance v12, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 248
    .line 249
    iget-object v6, v6, Landroidx/work/Constraints$ContentUriTrigger;->a:Landroid/net/Uri;

    .line 250
    .line 251
    invoke-direct {v12, v6, v11}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v12}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_a
    iget-wide v11, v1, Landroidx/work/Constraints;->g:J

    .line 259
    .line 260
    invoke-virtual {v2, v11, v12}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 261
    .line 262
    .line 263
    iget-wide v11, v1, Landroidx/work/Constraints;->h:J

    .line 264
    .line 265
    invoke-virtual {v2, v11, v12}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 266
    .line 267
    .line 268
    :cond_b
    invoke-virtual {v2, v7}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 269
    .line 270
    .line 271
    iget-boolean v0, v1, Landroidx/work/Constraints;->e:Z

    .line 272
    .line 273
    invoke-virtual {v2, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 274
    .line 275
    .line 276
    iget-boolean v0, v1, Landroidx/work/Constraints;->f:Z

    .line 277
    .line 278
    invoke-virtual {v2, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 279
    .line 280
    .line 281
    iget v0, p1, Landroidx/work/impl/model/WorkSpec;->k:I

    .line 282
    .line 283
    if-lez v0, :cond_c

    .line 284
    .line 285
    move v0, v8

    .line 286
    goto :goto_5

    .line 287
    :cond_c
    move v0, v7

    .line 288
    :goto_5
    cmp-long v1, v4, v9

    .line 289
    .line 290
    if-lez v1, :cond_d

    .line 291
    .line 292
    move v1, v8

    .line 293
    goto :goto_6

    .line 294
    :cond_d
    move v1, v7

    .line 295
    :goto_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 296
    .line 297
    const/16 v5, 0x1f

    .line 298
    .line 299
    if-lt v4, v5, :cond_e

    .line 300
    .line 301
    iget-boolean v6, p1, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 302
    .line 303
    if-eqz v6, :cond_e

    .line 304
    .line 305
    if-nez v0, :cond_e

    .line 306
    .line 307
    if-nez v1, :cond_e

    .line 308
    .line 309
    invoke-static {v2}, Lng;->j(Landroid/app/job/JobInfo$Builder;)V

    .line 310
    .line 311
    .line 312
    :cond_e
    const/16 v0, 0x23

    .line 313
    .line 314
    if-lt v4, v0, :cond_f

    .line 315
    .line 316
    iget-object v0, p1, Landroidx/work/impl/model/WorkSpec;->x:Ljava/lang/String;

    .line 317
    .line 318
    if-eqz v0, :cond_f

    .line 319
    .line 320
    invoke-static {v2, v0}, Lb3;->g(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    :cond_f
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    const-string v4, "Scheduling work ID "

    .line 334
    .line 335
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string v4, "Job ID "

    .line 342
    .line 343
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    sget-object v4, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->o:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v1, v4, v2}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->k:Landroid/app/job/JobScheduler;

    .line 359
    .line 360
    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-nez v0, :cond_10

    .line 365
    .line 366
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    const-string v2, "Unable to schedule work ID "

    .line 376
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {v0, v4, v1}, Landroidx/work/Logger;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    iget-boolean v0, p1, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 391
    .line 392
    if-eqz v0, :cond_10

    .line 393
    .line 394
    iget-object v0, p1, Landroidx/work/impl/model/WorkSpec;->r:Landroidx/work/OutOfQuotaPolicy;

    .line 395
    .line 396
    sget-object v1, Landroidx/work/OutOfQuotaPolicy;->j:Landroidx/work/OutOfQuotaPolicy;

    .line 397
    .line 398
    if-ne v0, v1, :cond_10

    .line 399
    .line 400
    iput-boolean v7, p1, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 401
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .line 406
    .line 407
    const-string v1, "Scheduling a non-expedited job (work ID "

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v1, ")"

    .line 416
    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {v1, v4, v0}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->g(Landroidx/work/impl/model/WorkSpec;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :catchall_0
    move-exception v0

    .line 436
    move-object p0, v0

    .line 437
    goto :goto_7

    .line 438
    :catch_0
    move-exception v0

    .line 439
    move-object p1, v0

    .line 440
    goto :goto_8

    .line 441
    :cond_10
    return-void

    .line 442
    :goto_7
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    const-string v1, "Unable to schedule "

    .line 449
    .line 450
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    invoke-virtual {p2, v4, p1, p0}, Landroidx/work/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    .line 462
    .line 463
    return-void

    .line 464
    :goto_8
    sget-object p2, Landroidx/work/impl/background/systemjob/JobSchedulerExtKt;->a:Ljava/lang/String;

    .line 465
    .line 466
    iget-object p2, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->j:Landroid/content/Context;

    .line 467
    .line 468
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->m:Landroidx/work/impl/WorkDatabase;

    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    iget-object p0, p0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->n:Landroidx/work/Configuration;

    .line 477
    .line 478
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 482
    .line 483
    if-lt v1, v5, :cond_11

    .line 484
    .line 485
    const/16 v2, 0x96

    .line 486
    .line 487
    goto :goto_9

    .line 488
    :cond_11
    const/16 v2, 0x64

    .line 489
    .line 490
    :goto_9
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    check-cast v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 495
    .line 496
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 497
    .line 498
    new-instance v3, Lii;

    .line 499
    .line 500
    const/16 v5, 0xe

    .line 501
    .line 502
    invoke-direct {v3, v5}, Lii;-><init>(I)V

    .line 503
    .line 504
    .line 505
    invoke-static {v0, v8, v7, v3}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    check-cast v0, Ljava/util/List;

    .line 510
    .line 511
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    const/16 v0, 0x22

    .line 516
    .line 517
    const-string v5, "<faulty JobScheduler failed to getPendingJobs>"

    .line 518
    .line 519
    if-lt v1, v0, :cond_16

    .line 520
    .line 521
    invoke-static {p2}, Landroidx/work/impl/background/systemjob/JobSchedulerExtKt;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    const/4 v6, 0x0

    .line 526
    :try_start_1
    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 531
    .line 532
    .line 533
    goto :goto_a

    .line 534
    :catchall_1
    move-exception v0

    .line 535
    sget-object v8, Landroidx/work/impl/background/systemjob/JobSchedulerExtKt;->a:Ljava/lang/String;

    .line 536
    .line 537
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 538
    .line 539
    .line 540
    move-result-object v9

    .line 541
    const-string v10, "getAllPendingJobs() is not reliable on this device."

    .line 542
    .line 543
    invoke-virtual {v9, v8, v10, v0}, Landroidx/work/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 544
    .line 545
    .line 546
    move-object v0, v6

    .line 547
    :goto_a
    if-eqz v0, :cond_18

    .line 548
    .line 549
    invoke-static {p2, v1}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->d(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    if-eqz v1, :cond_12

    .line 554
    .line 555
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 556
    .line 557
    .line 558
    move-result v5

    .line 559
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 560
    .line 561
    .line 562
    move-result v1

    .line 563
    sub-int/2addr v5, v1

    .line 564
    goto :goto_b

    .line 565
    :cond_12
    move v5, v7

    .line 566
    :goto_b
    if-nez v5, :cond_13

    .line 567
    .line 568
    move-object v1, v6

    .line 569
    goto :goto_c

    .line 570
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 571
    .line 572
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    const-string v5, " of which are not owned by WorkManager"

    .line 579
    .line 580
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    :goto_c
    const-string v5, "jobscheduler"

    .line 588
    .line 589
    invoke-virtual {p2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    check-cast v5, Landroid/app/job/JobScheduler;

    .line 597
    .line 598
    invoke-static {p2, v5}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->d(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 599
    .line 600
    .line 601
    move-result-object p2

    .line 602
    if-eqz p2, :cond_14

    .line 603
    .line 604
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 605
    .line 606
    .line 607
    move-result v7

    .line 608
    :cond_14
    if-nez v7, :cond_15

    .line 609
    .line 610
    goto :goto_d

    .line 611
    :cond_15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .line 615
    .line 616
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    const-string v5, " from WorkManager in the default namespace"

    .line 620
    .line 621
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v6

    .line 628
    :goto_d
    new-instance p2, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .line 632
    .line 633
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    const-string v0, " jobs in \"androidx.work.systemjobscheduler\" namespace"

    .line 641
    .line 642
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object p2

    .line 649
    filled-new-array {p2, v1, v6}, [Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object p2

    .line 653
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->p([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 654
    .line 655
    .line 656
    move-result-object v5

    .line 657
    const/4 v9, 0x0

    .line 658
    const/16 v10, 0x3e

    .line 659
    .line 660
    const-string v6, ",\n"

    .line 661
    .line 662
    const/4 v7, 0x0

    .line 663
    const/4 v8, 0x0

    .line 664
    invoke-static/range {v5 .. v10}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v5

    .line 668
    goto :goto_e

    .line 669
    :cond_16
    invoke-static {p2}, Landroidx/work/impl/background/systemjob/JobSchedulerExtKt;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    invoke-static {p2, v0}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->d(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 674
    .line 675
    .line 676
    move-result-object p2

    .line 677
    if-nez p2, :cond_17

    .line 678
    .line 679
    goto :goto_e

    .line 680
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 681
    .line 682
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 683
    .line 684
    .line 685
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 686
    .line 687
    .line 688
    move-result p2

    .line 689
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    const-string p2, " jobs from WorkManager"

    .line 693
    .line 694
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v5

    .line 701
    :cond_18
    :goto_e
    new-instance p2, Ljava/lang/StringBuilder;

    .line 702
    .line 703
    const-string v0, "JobScheduler "

    .line 704
    .line 705
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    const-string v0, " job limit exceeded.\nIn JobScheduler there are "

    .line 712
    .line 713
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    const-string v0, ".\nThere are "

    .line 720
    .line 721
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    const-string v0, " jobs tracked by WorkManager\'s database;\nthe Configuration limit is "

    .line 728
    .line 729
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    iget p0, p0, Landroidx/work/Configuration;->k:I

    .line 733
    .line 734
    const/16 v0, 0x2e

    .line 735
    .line 736
    invoke-static {p2, p0, v0}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object p0

    .line 740
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 741
    .line 742
    .line 743
    move-result-object p2

    .line 744
    invoke-virtual {p2, v4, p0}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 748
    .line 749
    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 750
    .line 751
    .line 752
    throw p2
.end method
