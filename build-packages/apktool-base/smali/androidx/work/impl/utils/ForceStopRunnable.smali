.class public Landroidx/work/impl/utils/ForceStopRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
    }
.end annotation


# static fields
.field public static final n:Ljava/lang/String;

.field public static final o:J


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Landroidx/work/impl/WorkManagerImpl;

.field public final l:Landroidx/work/impl/utils/PreferenceUtils;

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ForceStopRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable;->n:Ljava/lang/String;

    .line 8
    .line 9
    const-wide v0, 0x496cebb800L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    sput-wide v0, Landroidx/work/impl/utils/ForceStopRunnable;->o:J

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->j:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->k:Landroidx/work/impl/WorkManagerImpl;

    .line 11
    .line 12
    iget-object p1, p2, Landroidx/work/impl/WorkManagerImpl;->g:Landroidx/work/impl/utils/PreferenceUtils;

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->l:Landroidx/work/impl/utils/PreferenceUtils;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->m:I

    .line 18
    .line 19
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string v0, "alarm"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/AlarmManager;

    .line 8
    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    const/high16 v1, 0xa000000

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v1, 0x8000000

    .line 19
    .line 20
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/content/ComponentName;

    .line 26
    .line 27
    const-class v4, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    .line 28
    .line 29
    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string v3, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const/4 v3, -0x1

    .line 41
    invoke-static {p0, v3, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    sget-wide v3, Landroidx/work/impl/utils/ForceStopRunnable;->o:J

    .line 50
    .line 51
    add-long/2addr v1, v3

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "last_force_stop_ms"

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/work/impl/utils/ForceStopRunnable;->l:Landroidx/work/impl/utils/PreferenceUtils;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/work/impl/utils/ForceStopRunnable;->k:Landroidx/work/impl/WorkManagerImpl;

    .line 8
    .line 9
    iget-object v4, v3, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 10
    .line 11
    iget-object v5, v3, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 12
    .line 13
    iget-object v6, v3, Landroidx/work/impl/WorkManagerImpl;->g:Landroidx/work/impl/utils/PreferenceUtils;

    .line 14
    .line 15
    iget-object v7, v3, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 16
    .line 17
    sget-object v8, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->o:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/work/impl/utils/ForceStopRunnable;->j:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/work/impl/background/systemjob/JobSchedulerExtKt;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    invoke-static {v0, v8}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->d(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->s()Landroidx/work/impl/model/SystemIdInfoDao;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    check-cast v10, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    .line 34
    .line 35
    iget-object v10, v10, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 36
    .line 37
    new-instance v11, Lle;

    .line 38
    .line 39
    const/16 v12, 0x1d

    .line 40
    .line 41
    invoke-direct {v11, v12}, Lle;-><init>(I)V

    .line 42
    .line 43
    .line 44
    const/4 v12, 0x1

    .line 45
    const/4 v13, 0x0

    .line 46
    invoke-static {v10, v12, v13, v11}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    check-cast v10, Ljava/util/List;

    .line 51
    .line 52
    if-eqz v9, :cond_0

    .line 53
    .line 54
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v11, v13

    .line 60
    :goto_0
    new-instance v14, Ljava/util/HashSet;

    .line 61
    .line 62
    invoke-direct {v14, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 63
    .line 64
    .line 65
    if-eqz v9, :cond_2

    .line 66
    .line 67
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-nez v11, :cond_2

    .line 72
    .line 73
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    if-eqz v11, :cond_2

    .line 82
    .line 83
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    check-cast v11, Landroid/app/job/JobInfo;

    .line 88
    .line 89
    invoke-static {v11}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->f(Landroid/app/job/JobInfo;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    if-eqz v15, :cond_1

    .line 94
    .line 95
    iget-object v11, v15, Landroidx/work/impl/model/WorkGenerationalId;->a:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v14, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getId()I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    invoke-static {v8, v11}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->b(Landroid/app/job/JobScheduler;I)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-eqz v9, :cond_4

    .line 118
    .line 119
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    check-cast v9, Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v14, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-nez v9, :cond_3

    .line 130
    .line 131
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    sget-object v9, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->o:Ljava/lang/String;

    .line 136
    .line 137
    const-string v11, "Reconciling jobs"

    .line 138
    .line 139
    invoke-virtual {v8, v9, v11}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    move v8, v12

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    move v8, v13

    .line 145
    :goto_2
    const-wide/16 v14, -0x1

    .line 146
    .line 147
    if-eqz v8, :cond_6

    .line 148
    .line 149
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->b()V

    .line 150
    .line 151
    .line 152
    :try_start_0
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    if-eqz v11, :cond_5

    .line 165
    .line 166
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    check-cast v11, Ljava/lang/String;

    .line 171
    .line 172
    move-object v12, v9

    .line 173
    check-cast v12, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 174
    .line 175
    invoke-virtual {v12, v14, v15, v11}, Landroidx/work/impl/model/WorkSpecDao_Impl;->c(JLjava/lang/String;)I

    .line 176
    .line 177
    .line 178
    const/4 v12, 0x1

    .line 179
    goto :goto_3

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    goto :goto_4

    .line 182
    :cond_5
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->l()V

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :goto_4
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->l()V

    .line 190
    .line 191
    .line 192
    throw v0

    .line 193
    :cond_6
    :goto_5
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->u()Landroidx/work/impl/model/WorkProgressDao;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->b()V

    .line 202
    .line 203
    .line 204
    :try_start_1
    check-cast v4, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 205
    .line 206
    iget-object v10, v4, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 207
    .line 208
    new-instance v11, Lii;

    .line 209
    .line 210
    const/16 v12, 0xf

    .line 211
    .line 212
    invoke-direct {v11, v12}, Lii;-><init>(I)V

    .line 213
    .line 214
    .line 215
    const/4 v12, 0x1

    .line 216
    invoke-static {v10, v12, v13, v11}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    check-cast v10, Ljava/util/List;

    .line 221
    .line 222
    if-eqz v10, :cond_7

    .line 223
    .line 224
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    if-nez v11, :cond_7

    .line 229
    .line 230
    const/4 v11, 0x1

    .line 231
    goto :goto_6

    .line 232
    :catchall_1
    move-exception v0

    .line 233
    goto/16 :goto_f

    .line 234
    .line 235
    :cond_7
    move v11, v13

    .line 236
    :goto_6
    if-eqz v11, :cond_8

    .line 237
    .line 238
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    if-eqz v12, :cond_8

    .line 247
    .line 248
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v12

    .line 252
    check-cast v12, Landroidx/work/impl/model/WorkSpec;

    .line 253
    .line 254
    sget-object v13, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 255
    .line 256
    iget-object v12, v12, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v4, v13, v12}, Landroidx/work/impl/model/WorkSpecDao_Impl;->f(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    const/16 v13, -0x200

    .line 262
    .line 263
    invoke-virtual {v4, v13, v12}, Landroidx/work/impl/model/WorkSpecDao_Impl;->g(ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4, v14, v15, v12}, Landroidx/work/impl/model/WorkSpecDao_Impl;->c(JLjava/lang/String;)I

    .line 267
    .line 268
    .line 269
    const/4 v13, 0x0

    .line 270
    goto :goto_7

    .line 271
    :cond_8
    check-cast v9, Landroidx/work/impl/model/WorkProgressDao_Impl;

    .line 272
    .line 273
    iget-object v4, v9, Landroidx/work/impl/model/WorkProgressDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 274
    .line 275
    new-instance v9, Lii;

    .line 276
    .line 277
    const/16 v10, 0xd

    .line 278
    .line 279
    invoke-direct {v9, v10}, Lii;-><init>(I)V

    .line 280
    .line 281
    .line 282
    const/4 v10, 0x0

    .line 283
    const/4 v12, 0x1

    .line 284
    invoke-static {v4, v10, v12, v9}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->l()V

    .line 291
    .line 292
    .line 293
    if-nez v11, :cond_a

    .line 294
    .line 295
    if-eqz v8, :cond_9

    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_9
    const/4 v12, 0x0

    .line 299
    goto :goto_9

    .line 300
    :cond_a
    :goto_8
    const/4 v12, 0x1

    .line 301
    :goto_9
    iget-object v4, v6, Landroidx/work/impl/utils/PreferenceUtils;->a:Landroidx/work/impl/WorkDatabase;

    .line 302
    .line 303
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->r()Landroidx/work/impl/model/PreferenceDao;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    check-cast v4, Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 308
    .line 309
    const-string v8, "reschedule_needed"

    .line 310
    .line 311
    invoke-virtual {v4, v8}, Landroidx/work/impl/model/PreferenceDao_Impl;->a(Ljava/lang/String;)Ljava/lang/Long;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    const/4 v9, 0x7

    .line 316
    const-wide/16 v10, 0x0

    .line 317
    .line 318
    sget-object v13, Landroidx/work/impl/utils/ForceStopRunnable;->n:Ljava/lang/String;

    .line 319
    .line 320
    if-eqz v4, :cond_b

    .line 321
    .line 322
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 323
    .line 324
    .line 325
    move-result-wide v14

    .line 326
    const-wide/16 v16, 0x1

    .line 327
    .line 328
    cmp-long v4, v14, v16

    .line 329
    .line 330
    if-nez v4, :cond_b

    .line 331
    .line 332
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    const-string v1, "Rescheduling Workers."

    .line 337
    .line 338
    invoke-virtual {v0, v13, v1}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3}, Landroidx/work/impl/WorkManagerImpl;->c()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    new-instance v0, Landroidx/work/impl/model/Preference;

    .line 348
    .line 349
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-direct {v0, v8, v1}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 354
    .line 355
    .line 356
    iget-object v1, v6, Landroidx/work/impl/utils/PreferenceUtils;->a:Landroidx/work/impl/WorkDatabase;

    .line 357
    .line 358
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->r()Landroidx/work/impl/model/PreferenceDao;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    check-cast v1, Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 363
    .line 364
    iget-object v2, v1, Landroidx/work/impl/model/PreferenceDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 365
    .line 366
    new-instance v3, Lec;

    .line 367
    .line 368
    invoke-direct {v3, v9, v1, v0}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    const/4 v10, 0x0

    .line 372
    const/4 v12, 0x1

    .line 373
    invoke-static {v2, v10, v12, v3}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    return-void

    .line 377
    :cond_b
    :try_start_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 378
    .line 379
    const/16 v6, 0x1f

    .line 380
    .line 381
    if-lt v4, v6, :cond_c

    .line 382
    .line 383
    const/high16 v6, 0x22000000

    .line 384
    .line 385
    goto :goto_a

    .line 386
    :cond_c
    const/high16 v6, 0x20000000

    .line 387
    .line 388
    :goto_a
    new-instance v8, Landroid/content/Intent;

    .line 389
    .line 390
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 391
    .line 392
    .line 393
    new-instance v14, Landroid/content/ComponentName;

    .line 394
    .line 395
    const-class v15, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    .line 396
    .line 397
    invoke-direct {v14, v0, v15}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v8, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 401
    .line 402
    .line 403
    const-string v14, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 404
    .line 405
    invoke-virtual {v8, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    .line 407
    .line 408
    const/4 v14, -0x1

    .line 409
    invoke-static {v0, v14, v8, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    const/16 v8, 0x1e

    .line 414
    .line 415
    if-lt v4, v8, :cond_10

    .line 416
    .line 417
    if-eqz v6, :cond_d

    .line 418
    .line 419
    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    .line 420
    .line 421
    .line 422
    goto :goto_b

    .line 423
    :catch_0
    move-exception v0

    .line 424
    goto :goto_d

    .line 425
    :catch_1
    move-exception v0

    .line 426
    goto :goto_d

    .line 427
    :cond_d
    :goto_b
    const-string v4, "activity"

    .line 428
    .line 429
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    check-cast v0, Landroid/app/ActivityManager;

    .line 434
    .line 435
    invoke-static {v0}, Lj;->n(Landroid/app/ActivityManager;)Ljava/util/List;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    if-eqz v0, :cond_11

    .line 440
    .line 441
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 442
    .line 443
    .line 444
    move-result v4

    .line 445
    if-nez v4, :cond_11

    .line 446
    .line 447
    iget-object v4, v2, Landroidx/work/impl/utils/PreferenceUtils;->a:Landroidx/work/impl/WorkDatabase;

    .line 448
    .line 449
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->r()Landroidx/work/impl/model/PreferenceDao;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    check-cast v4, Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 454
    .line 455
    invoke-virtual {v4, v1}, Landroidx/work/impl/model/PreferenceDao_Impl;->a(Ljava/lang/String;)Ljava/lang/Long;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    if-eqz v4, :cond_e

    .line 460
    .line 461
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 462
    .line 463
    .line 464
    move-result-wide v10

    .line 465
    :cond_e
    const/4 v4, 0x0

    .line 466
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 467
    .line 468
    .line 469
    move-result v6

    .line 470
    if-ge v4, v6, :cond_11

    .line 471
    .line 472
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v6

    .line 476
    invoke-static {v6}, Lj;->e(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 477
    .line 478
    .line 479
    move-result-object v6

    .line 480
    invoke-static {v6}, Lj;->b(Landroid/app/ApplicationExitInfo;)I

    .line 481
    .line 482
    .line 483
    move-result v8

    .line 484
    const/16 v14, 0xa

    .line 485
    .line 486
    if-ne v8, v14, :cond_f

    .line 487
    .line 488
    invoke-static {v6}, Lj;->d(Landroid/app/ApplicationExitInfo;)J

    .line 489
    .line 490
    .line 491
    move-result-wide v14

    .line 492
    cmp-long v6, v14, v10

    .line 493
    .line 494
    if-ltz v6, :cond_f

    .line 495
    .line 496
    goto :goto_e

    .line 497
    :cond_f
    add-int/lit8 v4, v4, 0x1

    .line 498
    .line 499
    goto :goto_c

    .line 500
    :cond_10
    if-nez v6, :cond_11

    .line 501
    .line 502
    invoke-static {v0}, Landroidx/work/impl/utils/ForceStopRunnable;->c(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 503
    .line 504
    .line 505
    goto :goto_e

    .line 506
    :cond_11
    if-eqz v12, :cond_12

    .line 507
    .line 508
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    const-string v1, "Found unfinished work, scheduling it."

    .line 513
    .line 514
    invoke-virtual {v0, v13, v1}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    iget-object v0, v3, Landroidx/work/impl/WorkManagerImpl;->e:Ljava/util/List;

    .line 518
    .line 519
    invoke-static {v5, v7, v0}, Landroidx/work/impl/Schedulers;->b(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 520
    .line 521
    .line 522
    :cond_12
    return-void

    .line 523
    :goto_d
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 524
    .line 525
    .line 526
    move-result-object v4

    .line 527
    check-cast v4, Landroidx/work/Logger$LogcatLogger;

    .line 528
    .line 529
    iget v4, v4, Landroidx/work/Logger$LogcatLogger;->c:I

    .line 530
    .line 531
    const/4 v6, 0x5

    .line 532
    if-gt v4, v6, :cond_13

    .line 533
    .line 534
    const-string v4, "Ignoring exception"

    .line 535
    .line 536
    invoke-static {v13, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    .line 538
    .line 539
    :cond_13
    :goto_e
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    const-string v4, "Application was force-stopped, rescheduling."

    .line 544
    .line 545
    invoke-virtual {v0, v13, v4}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v3}, Landroidx/work/impl/WorkManagerImpl;->c()V

    .line 549
    .line 550
    .line 551
    iget-object v0, v5, Landroidx/work/Configuration;->d:Landroidx/work/SystemClock;

    .line 552
    .line 553
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 557
    .line 558
    .line 559
    move-result-wide v3

    .line 560
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    .line 562
    .line 563
    new-instance v0, Landroidx/work/impl/model/Preference;

    .line 564
    .line 565
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    invoke-direct {v0, v1, v3}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 570
    .line 571
    .line 572
    iget-object v1, v2, Landroidx/work/impl/utils/PreferenceUtils;->a:Landroidx/work/impl/WorkDatabase;

    .line 573
    .line 574
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->r()Landroidx/work/impl/model/PreferenceDao;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    check-cast v1, Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 579
    .line 580
    iget-object v2, v1, Landroidx/work/impl/model/PreferenceDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 581
    .line 582
    new-instance v3, Lec;

    .line 583
    .line 584
    invoke-direct {v3, v9, v1, v0}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 585
    .line 586
    .line 587
    const/4 v10, 0x0

    .line 588
    const/4 v12, 0x1

    .line 589
    invoke-static {v2, v10, v12, v3}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    return-void

    .line 593
    :goto_f
    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->l()V

    .line 594
    .line 595
    .line 596
    throw v0
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->k:Landroidx/work/impl/WorkManagerImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget-object v2, Landroidx/work/impl/utils/ForceStopRunnable;->n:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "The default process name was not specified."

    .line 22
    .line 23
    invoke-virtual {p0, v2, v0}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    iget-object p0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->j:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p0, v0}, Landroidx/work/impl/utils/ProcessUtils;->a(Landroid/content/Context;Landroidx/work/Configuration;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, "Is default app process = "

    .line 41
    .line 42
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v2, v1}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return p0
.end method

.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->j:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->n:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->k:Landroidx/work/impl/WorkManagerImpl;

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/work/impl/WorkManagerImpl;->b()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v0}, Landroidx/work/impl/WorkDatabasePathHelper;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    :try_start_2
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "Performing cleanup operations."

    .line 25
    .line 26
    invoke-virtual {v3, v1, v4}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_3
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->a()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/work/impl/WorkManagerImpl;->b()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :catch_1
    move-exception v3

    .line 40
    goto :goto_1

    .line 41
    :catch_2
    move-exception v3

    .line 42
    goto :goto_1

    .line 43
    :catch_3
    move-exception v3

    .line 44
    goto :goto_1

    .line 45
    :catch_4
    move-exception v3

    .line 46
    goto :goto_1

    .line 47
    :catch_5
    move-exception v3

    .line 48
    goto :goto_1

    .line 49
    :catch_6
    move-exception v3

    .line 50
    goto :goto_1

    .line 51
    :catch_7
    move-exception v3

    .line 52
    goto :goto_1

    .line 53
    :catch_8
    move-exception v3

    .line 54
    :goto_1
    :try_start_4
    iget v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->m:I

    .line 55
    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    iput v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->m:I

    .line 59
    .line 60
    const/4 v5, 0x3

    .line 61
    if-lt v4, v5, :cond_2

    .line 62
    .line 63
    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->a(Landroid/content/Context;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_1

    .line 68
    .line 69
    const-string p0, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    const-string p0, "WorkManager can\'t be accessed from direct boot, because credential encrypted storage isn\'t accessible.\nDon\'t access or initialise WorkManager from directAware components. See https://developer.android.com/training/articles/direct-boot"

    .line 73
    .line 74
    :goto_2
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, v1, p0, v3}, Landroidx/work/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    invoke-direct {v0, p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, v2, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_2
    int-to-long v6, v4

    .line 93
    const-wide/16 v8, 0x12c

    .line 94
    .line 95
    mul-long/2addr v6, v8

    .line 96
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    new-instance v10, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v11, "Retrying after "

    .line 106
    .line 107
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v4, Landroidx/work/Logger$LogcatLogger;

    .line 118
    .line 119
    iget v4, v4, Landroidx/work/Logger$LogcatLogger;->c:I

    .line 120
    .line 121
    if-gt v4, v5, :cond_3

    .line 122
    .line 123
    invoke-static {v1, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    :cond_3
    iget v3, p0, Landroidx/work/impl/utils/ForceStopRunnable;->m:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    .line 128
    int-to-long v3, v3

    .line 129
    mul-long/2addr v3, v8

    .line 130
    :try_start_5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catch_9
    move-exception p0

    .line 135
    :try_start_6
    const-string v0, "Unexpected SQLite exception during migrations"

    .line 136
    .line 137
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v3, v1, v0}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 145
    .line 146
    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    iget-object p0, v2, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 155
    :goto_3
    invoke-virtual {v2}, Landroidx/work/impl/WorkManagerImpl;->b()V

    .line 156
    .line 157
    .line 158
    throw p0
.end method
