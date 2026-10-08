.class public final synthetic Lp1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lnet/blip/android/ui/navigation/AuthScope;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lp1;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lp1;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lp1;->m:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lp1;->n:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lp1;->k:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/work/impl/utils/WorkForegroundUpdater;Ljava/util/UUID;Landroidx/work/ForegroundInfo;Landroid/content/Context;)V
    .locals 1

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lp1;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1;->m:Ljava/lang/Object;

    iput-object p2, p0, Lp1;->k:Ljava/lang/Object;

    iput-object p3, p0, Lp1;->n:Ljava/lang/Object;

    iput-object p4, p0, Lp1;->l:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 17
    iput p5, p0, Lp1;->j:I

    iput-object p1, p0, Lp1;->l:Ljava/lang/Object;

    iput-object p2, p0, Lp1;->m:Ljava/lang/Object;

    iput-object p3, p0, Lp1;->k:Ljava/lang/Object;

    iput-object p4, p0, Lp1;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lp1;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1;->k:Ljava/lang/Object;

    iput-object p2, p0, Lp1;->l:Ljava/lang/Object;

    iput-object p3, p0, Lp1;->m:Ljava/lang/Object;

    iput-object p4, p0, Lp1;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lp1;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp1;->m:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 9
    .line 10
    iget-object v1, p0, Lp1;->k:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/UUID;

    .line 13
    .line 14
    iget-object v2, p0, Lp1;->n:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroidx/work/ForegroundInfo;

    .line 17
    .line 18
    iget-object p0, p0, Lp1;->l:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/content/Context;

    .line 21
    .line 22
    sget v3, Landroidx/work/impl/utils/WorkForegroundUpdater;->d:I

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v3, v0, Landroidx/work/impl/utils/WorkForegroundUpdater;->c:Landroidx/work/impl/model/WorkSpecDao;

    .line 29
    .line 30
    check-cast v3, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->b(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    iget-object v4, v3, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroidx/work/WorkInfo$State;->a()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/work/impl/utils/WorkForegroundUpdater;->b:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 47
    .line 48
    check-cast v0, Landroidx/work/impl/Processor;

    .line 49
    .line 50
    const-string v4, "Moving WorkSpec ("

    .line 51
    .line 52
    iget-object v5, v0, Landroidx/work/impl/Processor;->k:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter v5

    .line 55
    :try_start_0
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    sget-object v7, Landroidx/work/impl/Processor;->l:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v4, ") to the foreground"

    .line 70
    .line 71
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v6, v7, v4}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v4, v0, Landroidx/work/impl/Processor;->g:Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Landroidx/work/impl/WorkerWrapper;

    .line 88
    .line 89
    if-eqz v4, :cond_1

    .line 90
    .line 91
    iget-object v6, v0, Landroidx/work/impl/Processor;->a:Landroid/os/PowerManager$WakeLock;

    .line 92
    .line 93
    if-nez v6, :cond_0

    .line 94
    .line 95
    iget-object v6, v0, Landroidx/work/impl/Processor;->b:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {v6}, Landroidx/work/impl/utils/WakeLocks;->a(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    iput-object v6, v0, Landroidx/work/impl/Processor;->a:Landroid/os/PowerManager$WakeLock;

    .line 102
    .line 103
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    move-object p0, v0

    .line 109
    goto :goto_1

    .line 110
    :cond_0
    :goto_0
    iget-object v6, v0, Landroidx/work/impl/Processor;->f:Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {v6, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Landroidx/work/impl/Processor;->b:Landroid/content/Context;

    .line 116
    .line 117
    iget-object v4, v4, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    .line 118
    .line 119
    invoke-static {v4}, Landroidx/work/impl/model/WorkSpecKt;->a(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {v1, v4, v2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->a(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/ForegroundInfo;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget-object v0, v0, Landroidx/work/impl/Processor;->b:Landroid/content/Context;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 130
    .line 131
    .line 132
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-static {v3}, Landroidx/work/impl/model/WorkSpecKt;->a(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sget-object v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->s:Ljava/lang/String;

    .line 138
    .line 139
    new-instance v1, Landroid/content/Intent;

    .line 140
    .line 141
    const-class v3, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 142
    .line 143
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .line 145
    .line 146
    const-string v3, "ACTION_NOTIFY"

    .line 147
    .line 148
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    const-string v3, "KEY_NOTIFICATION_ID"

    .line 152
    .line 153
    iget v4, v2, Landroidx/work/ForegroundInfo;->a:I

    .line 154
    .line 155
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    const-string v3, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 159
    .line 160
    iget v4, v2, Landroidx/work/ForegroundInfo;->b:I

    .line 161
    .line 162
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    const-string v3, "KEY_NOTIFICATION"

    .line 166
    .line 167
    iget-object v2, v2, Landroidx/work/ForegroundInfo;->c:Landroid/app/Notification;

    .line 168
    .line 169
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    const-string v2, "KEY_WORKSPEC_ID"

    .line 173
    .line 174
    iget-object v3, v0, Landroidx/work/impl/model/WorkGenerationalId;->a:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    const-string v2, "KEY_GENERATION"

    .line 180
    .line 181
    iget v0, v0, Landroidx/work/impl/model/WorkGenerationalId;->b:I

    .line 182
    .line 183
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    throw p0

    .line 192
    :cond_2
    const-string p0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 193
    .line 194
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :goto_2
    const/4 p0, 0x0

    .line 198
    return-object p0

    .line 199
    :pswitch_0
    iget-object v0, p0, Lp1;->l:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v0, Landroid/content/Context;

    .line 202
    .line 203
    iget-object v1, p0, Lp1;->m:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v1, Lnet/blip/android/ui/navigation/AuthScope;

    .line 206
    .line 207
    iget-object v2, p0, Lp1;->n:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v2, Ljava/lang/String;

    .line 210
    .line 211
    iget-object p0, p0, Lp1;->k:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 214
    .line 215
    new-instance v3, Lnet/blip/libblip/PeerId;

    .line 216
    .line 217
    iget-object v1, v1, Lnet/blip/android/ui/navigation/AuthScope;->a:Lnet/blip/libblip/User;

    .line 218
    .line 219
    iget-object v1, v1, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 220
    .line 221
    const/4 v4, 0x4

    .line 222
    invoke-direct {v3, v1, v4, v2}, Lnet/blip/libblip/PeerId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v0, v3}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->b(Landroid/content/Context;Lnet/blip/libblip/PeerId;)V

    .line 226
    .line 227
    .line 228
    new-instance v0, Lnet/blip/libblip/event/RemoveDevice;

    .line 229
    .line 230
    invoke-direct {v0, v2}, Lnet/blip/libblip/event/RemoveDevice;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 237
    .line 238
    return-object p0

    .line 239
    :pswitch_1
    iget-object v0, p0, Lp1;->l:Ljava/lang/Object;

    .line 240
    .line 241
    move-object v4, v0

    .line 242
    check-cast v4, Ljava/lang/Number;

    .line 243
    .line 244
    iget-object v0, p0, Lp1;->m:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 247
    .line 248
    iget-object v1, p0, Lp1;->k:Ljava/lang/Object;

    .line 249
    .line 250
    move-object v5, v1

    .line 251
    check-cast v5, Ljava/lang/Number;

    .line 252
    .line 253
    iget-object p0, p0, Lp1;->n:Ljava/lang/Object;

    .line 254
    .line 255
    move-object v2, p0

    .line 256
    check-cast v2, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 257
    .line 258
    iget-object p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->j:Ljava/lang/Number;

    .line 259
    .line 260
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    if-eqz p0, :cond_3

    .line 265
    .line 266
    iget-object p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->k:Ljava/lang/Number;

    .line 267
    .line 268
    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result p0

    .line 272
    if-nez p0, :cond_4

    .line 273
    .line 274
    :cond_3
    iput-object v4, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->j:Ljava/lang/Number;

    .line 275
    .line 276
    iput-object v5, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->k:Ljava/lang/Number;

    .line 277
    .line 278
    new-instance v1, Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 279
    .line 280
    iget-object v3, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->l:Landroidx/compose/animation/core/TwoWayConverter;

    .line 281
    .line 282
    const/4 v6, 0x0

    .line 283
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 284
    .line 285
    .line 286
    iput-object v1, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->n:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 287
    .line 288
    iget-object p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->r:Landroidx/compose/animation/core/InfiniteTransition;

    .line 289
    .line 290
    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransition;->b:Landroidx/compose/runtime/MutableState;

    .line 291
    .line 292
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 293
    .line 294
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 295
    .line 296
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    const/4 p0, 0x0

    .line 300
    iput-boolean p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->o:Z

    .line 301
    .line 302
    const/4 p0, 0x1

    .line 303
    iput-boolean p0, v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->p:Z

    .line 304
    .line 305
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 306
    .line 307
    return-object p0

    .line 308
    :pswitch_2
    iget-object v0, p0, Lp1;->k:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 311
    .line 312
    iget-object v1, p0, Lp1;->l:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v1, Ljava/util/List;

    .line 315
    .line 316
    iget-object v2, p0, Lp1;->m:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v2, Landroidx/compose/foundation/pager/PagerState;

    .line 319
    .line 320
    iget-object p0, p0, Lp1;->n:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 323
    .line 324
    iget-object v2, v2, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 325
    .line 326
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 345
    .line 346
    return-object p0

    .line 347
    :pswitch_3
    iget-object v0, p0, Lp1;->l:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v0, Landroid/content/Context;

    .line 350
    .line 351
    iget-object v1, p0, Lp1;->m:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v1, Lnet/blip/libblip/Peer;

    .line 354
    .line 355
    iget-object v2, p0, Lp1;->k:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 358
    .line 359
    iget-object p0, p0, Lp1;->n:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 362
    .line 363
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 364
    .line 365
    invoke-interface {p0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    invoke-static {v0, p0}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->b(Landroid/content/Context;Lnet/blip/libblip/PeerId;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 383
    .line 384
    return-object p0

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
