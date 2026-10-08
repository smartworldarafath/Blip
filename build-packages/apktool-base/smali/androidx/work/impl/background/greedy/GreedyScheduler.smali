.class public Landroidx/work/impl/background/greedy/GreedyScheduler;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/work/impl/Scheduler;
.implements Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;
.implements Landroidx/work/impl/ExecutionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;
    }
.end annotation


# static fields
.field public static final x:Ljava/lang/String;


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Ljava/util/HashMap;

.field public final l:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

.field public m:Z

.field public final n:Ljava/lang/Object;

.field public final o:Landroidx/work/impl/StartStopTokens;

.field public final p:Landroidx/work/impl/Processor;

.field public final q:Landroidx/work/impl/WorkLauncherImpl;

.field public final r:Landroidx/work/Configuration;

.field public final s:Ljava/util/HashMap;

.field public t:Ljava/lang/Boolean;

.field public final u:Landroidx/work/impl/constraints/WorkConstraintsTracker;

.field public final v:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field public final w:Landroidx/work/impl/background/greedy/TimeLimiter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "GreedyScheduler"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/background/greedy/GreedyScheduler;->x:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;Landroidx/work/impl/WorkLauncherImpl;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->k:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->n:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-static {v0}, Landroidx/work/impl/StartStopTokens$Companion;->a(Z)Landroidx/work/impl/StartStopTokens;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->o:Landroidx/work/impl/StartStopTokens;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->s:Ljava/util/HashMap;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->j:Landroid/content/Context;

    .line 33
    .line 34
    iget-object p1, p2, Landroidx/work/Configuration;->g:Landroidx/work/impl/DefaultRunnableScheduler;

    .line 35
    .line 36
    new-instance v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    .line 37
    .line 38
    iget-object v1, p2, Landroidx/work/Configuration;->d:Landroidx/work/SystemClock;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1, v1}, Landroidx/work/impl/background/greedy/DelayedWorkTracker;-><init>(Landroidx/work/impl/background/greedy/GreedyScheduler;Landroidx/work/impl/DefaultRunnableScheduler;Landroidx/work/SystemClock;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->l:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    .line 44
    .line 45
    new-instance v0, Landroidx/work/impl/background/greedy/TimeLimiter;

    .line 46
    .line 47
    invoke-direct {v0, p1, p5}, Landroidx/work/impl/background/greedy/TimeLimiter;-><init>(Landroidx/work/impl/DefaultRunnableScheduler;Landroidx/work/impl/WorkLauncherImpl;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->w:Landroidx/work/impl/background/greedy/TimeLimiter;

    .line 51
    .line 52
    iput-object p6, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->v:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 53
    .line 54
    new-instance p1, Landroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 55
    .line 56
    invoke-direct {p1, p3}, Landroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Landroidx/work/impl/constraints/trackers/Trackers;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->u:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 60
    .line 61
    iput-object p2, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->r:Landroidx/work/Configuration;

    .line 62
    .line 63
    iput-object p4, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->p:Landroidx/work/impl/Processor;

    .line 64
    .line 65
    iput-object p5, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->q:Landroidx/work/impl/WorkLauncherImpl;

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final varargs a([Landroidx/work/impl/model/WorkSpec;)V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->t:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->j:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->r:Landroidx/work/Configuration;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/work/impl/utils/ProcessUtils;->a(Landroid/content/Context;Landroidx/work/Configuration;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->t:Ljava/lang/Boolean;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->t:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget-object p1, Landroidx/work/impl/background/greedy/GreedyScheduler;->x:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Ignoring schedule request in a secondary process"

    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-boolean v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->m:Z

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->p:Landroidx/work/impl/Processor;

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Landroidx/work/impl/Processor;->a(Landroidx/work/impl/ExecutionListener;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->m:Z

    .line 50
    .line 51
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v1, Ljava/util/HashSet;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 59
    .line 60
    .line 61
    array-length v2, p1

    .line 62
    const/4 v3, 0x0

    .line 63
    move v4, v3

    .line 64
    :goto_0
    if-ge v4, v2, :cond_b

    .line 65
    .line 66
    aget-object v5, p1, v4

    .line 67
    .line 68
    invoke-static {v5}, Landroidx/work/impl/model/WorkSpecKt;->a(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iget-object v7, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->o:Landroidx/work/impl/StartStopTokens;

    .line 73
    .line 74
    invoke-interface {v7, v6}, Landroidx/work/impl/StartStopTokens;->b(Landroidx/work/impl/model/WorkGenerationalId;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_3

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :cond_3
    iget-object v6, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->n:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter v6

    .line 85
    :try_start_0
    invoke-static {v5}, Landroidx/work/impl/model/WorkSpecKt;->a(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    iget-object v8, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->s:Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    check-cast v8, Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;

    .line 96
    .line 97
    if-nez v8, :cond_4

    .line 98
    .line 99
    new-instance v8, Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;

    .line 100
    .line 101
    iget v9, v5, Landroidx/work/impl/model/WorkSpec;->k:I

    .line 102
    .line 103
    iget-object v10, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->r:Landroidx/work/Configuration;

    .line 104
    .line 105
    iget-object v10, v10, Landroidx/work/Configuration;->d:Landroidx/work/SystemClock;

    .line 106
    .line 107
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v10

    .line 114
    invoke-direct {v8, v9, v10, v11}, Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;-><init>(IJ)V

    .line 115
    .line 116
    .line 117
    iget-object v9, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->s:Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :cond_4
    :goto_1
    iget-wide v9, v8, Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;->b:J

    .line 127
    .line 128
    iget v7, v5, Landroidx/work/impl/model/WorkSpec;->k:I

    .line 129
    .line 130
    iget v8, v8, Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;->a:I

    .line 131
    .line 132
    sub-int/2addr v7, v8

    .line 133
    add-int/lit8 v7, v7, -0x5

    .line 134
    .line 135
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    int-to-long v7, v7

    .line 140
    const-wide/16 v11, 0x7530

    .line 141
    .line 142
    mul-long/2addr v7, v11

    .line 143
    add-long/2addr v7, v9

    .line 144
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v5}, Landroidx/work/impl/model/WorkSpec;->a()J

    .line 146
    .line 147
    .line 148
    move-result-wide v9

    .line 149
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 150
    .line 151
    .line 152
    move-result-wide v6

    .line 153
    iget-object v8, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->r:Landroidx/work/Configuration;

    .line 154
    .line 155
    iget-object v8, v8, Landroidx/work/Configuration;->d:Landroidx/work/SystemClock;

    .line 156
    .line 157
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 161
    .line 162
    .line 163
    move-result-wide v8

    .line 164
    iget-object v10, v5, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 165
    .line 166
    sget-object v11, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 167
    .line 168
    if-ne v10, v11, :cond_a

    .line 169
    .line 170
    cmp-long v8, v8, v6

    .line 171
    .line 172
    if-gez v8, :cond_6

    .line 173
    .line 174
    iget-object v8, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->l:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    .line 175
    .line 176
    if-eqz v8, :cond_a

    .line 177
    .line 178
    iget-object v9, v8, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->b:Landroidx/work/RunnableScheduler;

    .line 179
    .line 180
    iget-object v10, v8, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->d:Ljava/util/HashMap;

    .line 181
    .line 182
    iget-object v11, v5, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    check-cast v11, Ljava/lang/Runnable;

    .line 189
    .line 190
    if-eqz v11, :cond_5

    .line 191
    .line 192
    move-object v12, v9

    .line 193
    check-cast v12, Landroidx/work/impl/DefaultRunnableScheduler;

    .line 194
    .line 195
    iget-object v12, v12, Landroidx/work/impl/DefaultRunnableScheduler;->a:Landroid/os/Handler;

    .line 196
    .line 197
    invoke-virtual {v12, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    .line 199
    .line 200
    :cond_5
    new-instance v11, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;

    .line 201
    .line 202
    invoke-direct {v11, v8, v5}, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;-><init>(Landroidx/work/impl/background/greedy/DelayedWorkTracker;Landroidx/work/impl/model/WorkSpec;)V

    .line 203
    .line 204
    .line 205
    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v10, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    iget-object v5, v8, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->c:Landroidx/work/Clock;

    .line 211
    .line 212
    check-cast v5, Landroidx/work/SystemClock;

    .line 213
    .line 214
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 218
    .line 219
    .line 220
    move-result-wide v12

    .line 221
    sub-long/2addr v6, v12

    .line 222
    check-cast v9, Landroidx/work/impl/DefaultRunnableScheduler;

    .line 223
    .line 224
    iget-object v5, v9, Landroidx/work/impl/DefaultRunnableScheduler;->a:Landroid/os/Handler;

    .line 225
    .line 226
    invoke-virtual {v5, v11, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :cond_6
    sget-object v6, Landroidx/work/Constraints;->j:Landroidx/work/Constraints;

    .line 232
    .line 233
    iget-object v7, v5, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 234
    .line 235
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    if-nez v6, :cond_9

    .line 240
    .line 241
    iget-object v6, v5, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 242
    .line 243
    iget-boolean v7, v6, Landroidx/work/Constraints;->d:Z

    .line 244
    .line 245
    if-eqz v7, :cond_7

    .line 246
    .line 247
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    sget-object v7, Landroidx/work/impl/background/greedy/GreedyScheduler;->x:Ljava/lang/String;

    .line 252
    .line 253
    new-instance v8, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v9, "Ignoring "

    .line 256
    .line 257
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v5, ". Requires device idle."

    .line 264
    .line 265
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    invoke-virtual {v6, v7, v5}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_2

    .line 276
    .line 277
    :cond_7
    iget-object v6, v6, Landroidx/work/Constraints;->i:Ljava/util/Set;

    .line 278
    .line 279
    check-cast v6, Ljava/util/Collection;

    .line 280
    .line 281
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    if-nez v6, :cond_8

    .line 286
    .line 287
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    sget-object v7, Landroidx/work/impl/background/greedy/GreedyScheduler;->x:Ljava/lang/String;

    .line 292
    .line 293
    new-instance v8, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v9, "Ignoring "

    .line 296
    .line 297
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v5, ". Requires ContentUri triggers."

    .line 304
    .line 305
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-virtual {v6, v7, v5}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    goto :goto_2

    .line 316
    :cond_8
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 320
    .line 321
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_9
    iget-object v6, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->o:Landroidx/work/impl/StartStopTokens;

    .line 326
    .line 327
    invoke-static {v5}, Landroidx/work/impl/model/WorkSpecKt;->a(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-interface {v6, v7}, Landroidx/work/impl/StartStopTokens;->b(Landroidx/work/impl/model/WorkGenerationalId;)Z

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    if-nez v6, :cond_a

    .line 336
    .line 337
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    sget-object v7, Landroidx/work/impl/background/greedy/GreedyScheduler;->x:Ljava/lang/String;

    .line 342
    .line 343
    new-instance v8, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    const-string v9, "Starting work for "

    .line 346
    .line 347
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    iget-object v9, v5, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v8

    .line 359
    invoke-virtual {v6, v7, v8}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget-object v6, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->o:Landroidx/work/impl/StartStopTokens;

    .line 363
    .line 364
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    invoke-static {v5}, Landroidx/work/impl/model/WorkSpecKt;->a(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    invoke-interface {v6, v5}, Landroidx/work/impl/StartStopTokens;->a(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    iget-object v6, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->w:Landroidx/work/impl/background/greedy/TimeLimiter;

    .line 376
    .line 377
    invoke-virtual {v6, v5}, Landroidx/work/impl/background/greedy/TimeLimiter;->b(Landroidx/work/impl/StartStopToken;)V

    .line 378
    .line 379
    .line 380
    iget-object v6, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->q:Landroidx/work/impl/WorkLauncherImpl;

    .line 381
    .line 382
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    iget-object v7, v6, Landroidx/work/impl/WorkLauncherImpl;->b:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 386
    .line 387
    new-instance v8, Landroidx/work/impl/a;

    .line 388
    .line 389
    const/4 v9, 0x0

    .line 390
    invoke-direct {v8, v6, v5, v9}, Landroidx/work/impl/a;-><init>(Landroidx/work/impl/WorkLauncherImpl;Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    check-cast v7, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 397
    .line 398
    iget-object v5, v7, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->a:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 399
    .line 400
    invoke-interface {v5, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 401
    .line 402
    .line 403
    :cond_a
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 404
    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :goto_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    throw p0

    .line 409
    :cond_b
    iget-object p1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->n:Ljava/lang/Object;

    .line 410
    .line 411
    monitor-enter p1

    .line 412
    :try_start_2
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    if-nez v2, :cond_d

    .line 417
    .line 418
    const-string v2, ","

    .line 419
    .line 420
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    sget-object v3, Landroidx/work/impl/background/greedy/GreedyScheduler;->x:Ljava/lang/String;

    .line 429
    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .line 434
    .line 435
    const-string v5, "Starting tracking for "

    .line 436
    .line 437
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-virtual {v2, v3, v1}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    if-eqz v1, :cond_d

    .line 459
    .line 460
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    check-cast v1, Landroidx/work/impl/model/WorkSpec;

    .line 465
    .line 466
    invoke-static {v1}, Landroidx/work/impl/model/WorkSpecKt;->a(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    iget-object v3, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->k:Ljava/util/HashMap;

    .line 471
    .line 472
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    if-nez v3, :cond_c

    .line 477
    .line 478
    iget-object v3, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->u:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 479
    .line 480
    iget-object v4, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->v:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 481
    .line 482
    check-cast v4, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 483
    .line 484
    iget-object v4, v4, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 485
    .line 486
    invoke-static {v3, v1, v4, p0}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->a(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;)Lkotlinx/coroutines/Job;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    iget-object v3, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->k:Ljava/util/HashMap;

    .line 491
    .line 492
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    goto :goto_4

    .line 496
    :catchall_1
    move-exception p0

    .line 497
    goto :goto_5

    .line 498
    :cond_d
    monitor-exit p1

    .line 499
    return-void

    .line 500
    :goto_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 501
    throw p0
.end method

.method public final b(Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->o:Landroidx/work/impl/StartStopTokens;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/work/impl/StartStopTokens;->c(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->w:Landroidx/work/impl/background/greedy/TimeLimiter;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroidx/work/impl/background/greedy/TimeLimiter;->a(Landroidx/work/impl/StartStopToken;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->n:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->k:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v2, Landroidx/work/impl/background/greedy/GreedyScheduler;->x:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v4, "Stopping tracking for "

    .line 37
    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0, v2, v3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-interface {v1, v0}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    if-nez p2, :cond_2

    .line 56
    .line 57
    iget-object p2, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->n:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter p2

    .line 60
    :try_start_1
    iget-object p0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->s:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    monitor-exit p2

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0

    .line 70
    :cond_2
    return-void

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    throw p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final d(Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/constraints/ConstraintsState;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroidx/work/impl/model/WorkSpecKt;->a(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p2, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->q:Landroidx/work/impl/WorkLauncherImpl;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->w:Landroidx/work/impl/background/greedy/TimeLimiter;

    .line 10
    .line 11
    sget-object v3, Landroidx/work/impl/background/greedy/GreedyScheduler;->x:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->o:Landroidx/work/impl/StartStopTokens;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0, p1}, Landroidx/work/impl/StartStopTokens;->b(Landroidx/work/impl/model/WorkGenerationalId;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v4, "Constraints met: Scheduling work ID "

    .line 30
    .line 31
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p2, v3, v0}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0, p1}, Landroidx/work/impl/StartStopTokens;->a(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v2, p0}, Landroidx/work/impl/background/greedy/TimeLimiter;->b(Landroidx/work/impl/StartStopToken;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object p1, v1, Landroidx/work/impl/WorkLauncherImpl;->b:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 55
    .line 56
    new-instance p2, Landroidx/work/impl/a;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-direct {p2, v1, p0, v0}, Landroidx/work/impl/a;-><init>(Landroidx/work/impl/WorkLauncherImpl;Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    check-cast p1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 66
    .line 67
    iget-object p0, p1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->a:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 68
    .line 69
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v5, "Constraints not met: Cancelling work ID "

    .line 80
    .line 81
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v0, v3, v4}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p0, p1}, Landroidx/work/impl/StartStopTokens;->c(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    if-eqz p0, :cond_1

    .line 99
    .line 100
    invoke-virtual {v2, p0}, Landroidx/work/impl/background/greedy/TimeLimiter;->a(Landroidx/work/impl/StartStopToken;)V

    .line 101
    .line 102
    .line 103
    check-cast p2, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 104
    .line 105
    iget p1, p2, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;->a:I

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p0, p1}, Landroidx/work/impl/WorkLauncherImpl;->a(Landroidx/work/impl/StartStopToken;I)V

    .line 111
    .line 112
    .line 113
    :cond_1
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->t:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->j:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->r:Landroidx/work/Configuration;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/work/impl/utils/ProcessUtils;->a(Landroid/content/Context;Landroidx/work/Configuration;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->t:Ljava/lang/Boolean;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->t:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget-object v1, Landroidx/work/impl/background/greedy/GreedyScheduler;->x:Ljava/lang/String;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "Ignoring schedule request in non-main process"

    .line 34
    .line 35
    invoke-virtual {p0, v1, p1}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-boolean v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->m:Z

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->p:Landroidx/work/impl/Processor;

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Landroidx/work/impl/Processor;->a(Landroidx/work/impl/ExecutionListener;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->m:Z

    .line 50
    .line 51
    :cond_2
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v3, "Cancelling work ID "

    .line 58
    .line 59
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->l:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    iget-object v1, v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->d:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Ljava/lang/Runnable;

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    iget-object v0, v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->b:Landroidx/work/RunnableScheduler;

    .line 87
    .line 88
    check-cast v0, Landroidx/work/impl/DefaultRunnableScheduler;

    .line 89
    .line 90
    iget-object v0, v0, Landroidx/work/impl/DefaultRunnableScheduler;->a:Landroid/os/Handler;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object v0, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->o:Landroidx/work/impl/StartStopTokens;

    .line 96
    .line 97
    invoke-interface {v0, p1}, Landroidx/work/impl/StartStopTokens;->remove(Ljava/lang/String;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroidx/work/impl/StartStopToken;

    .line 116
    .line 117
    iget-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->w:Landroidx/work/impl/background/greedy/TimeLimiter;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroidx/work/impl/background/greedy/TimeLimiter;->a(Landroidx/work/impl/StartStopToken;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler;->q:Landroidx/work/impl/WorkLauncherImpl;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    const/16 v2, -0x200

    .line 128
    .line 129
    invoke-virtual {v1, v0, v2}, Landroidx/work/impl/WorkLauncherImpl;->a(Landroidx/work/impl/StartStopToken;I)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    return-void
.end method
