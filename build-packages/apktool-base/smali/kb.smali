.class public final synthetic Lkb;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkb;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lkb;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lkb;->j:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object p0, p0, Lkb;->k:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Landroidx/work/Worker;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/work/Worker;->c()Landroidx/work/ListenableWorker$Result$Success;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    check-cast p0, Landroidx/work/impl/WorkManagerImpl;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->a:Landroid/content/Context;

    .line 26
    .line 27
    sget-object v3, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->o:Ljava/lang/String;

    .line 28
    .line 29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v6, 0x22

    .line 32
    .line 33
    if-lt v3, v6, :cond_0

    .line 34
    .line 35
    invoke-static {v1}, Landroidx/work/impl/background/systemjob/JobSchedulerExtKt;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Landroid/app/job/JobScheduler;->cancelAll()V

    .line 40
    .line 41
    .line 42
    :cond_0
    const-string v3, "jobscheduler"

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Landroid/app/job/JobScheduler;

    .line 49
    .line 50
    invoke-static {v1, v3}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->d(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-nez v6, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_1

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Landroid/app/job/JobInfo;

    .line 77
    .line 78
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getId()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-static {v3, v6}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->b(Landroid/app/job/JobScheduler;I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 91
    .line 92
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 93
    .line 94
    new-instance v3, Lii;

    .line 95
    .line 96
    const/16 v6, 0x14

    .line 97
    .line 98
    invoke-direct {v3, v6}, Lii;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v4, v2, v3}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Ljava/lang/Number;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 111
    .line 112
    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->e:Ljava/util/List;

    .line 113
    .line 114
    invoke-static {v1, v0, p0}, Landroidx/work/impl/Schedulers;->b(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    return-object v5

    .line 118
    :pswitch_1
    check-cast p0, Landroidx/work/impl/WorkContinuationImpl;

    .line 119
    .line 120
    sget-object v0, Landroidx/work/impl/WorkContinuationImpl;->h:Ljava/lang/String;

    .line 121
    .line 122
    sget-object v0, Landroidx/work/impl/utils/EnqueueRunnable;->a:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v0, p0, Landroidx/work/impl/WorkContinuationImpl;->a:Landroidx/work/impl/WorkManagerImpl;

    .line 125
    .line 126
    new-instance v1, Ljava/util/HashSet;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 129
    .line 130
    .line 131
    iget-object v3, p0, Landroidx/work/impl/WorkContinuationImpl;->d:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 134
    .line 135
    .line 136
    invoke-static {p0}, Landroidx/work/impl/WorkContinuationImpl;->b(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/HashSet;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_3

    .line 149
    .line 150
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    check-cast v7, Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_2

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    iget-object v2, p0, Landroidx/work/impl/WorkContinuationImpl;->d:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 166
    .line 167
    .line 168
    move v2, v4

    .line 169
    :goto_1
    if-nez v2, :cond_5

    .line 170
    .line 171
    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 172
    .line 173
    iget-object v2, v0, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 174
    .line 175
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->b()V

    .line 176
    .line 177
    .line 178
    :try_start_0
    invoke-static {v1, v2, p0}, Landroidx/work/impl/utils/EnqueueUtilsKt;->a(Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Landroidx/work/impl/WorkContinuationImpl;)V

    .line 179
    .line 180
    .line 181
    invoke-static {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->a(Landroidx/work/impl/WorkContinuationImpl;)Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->l()V

    .line 189
    .line 190
    .line 191
    if-eqz p0, :cond_4

    .line 192
    .line 193
    iget-object p0, v0, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 194
    .line 195
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->e:Ljava/util/List;

    .line 196
    .line 197
    invoke-static {v2, p0, v0}, Landroidx/work/impl/Schedulers;->b(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 198
    .line 199
    .line 200
    :cond_4
    return-object v5

    .line 201
    :catchall_0
    move-exception p0

    .line 202
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->l()V

    .line 203
    .line 204
    .line 205
    throw p0

    .line 206
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 207
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v2, "WorkContinuation has cycles ("

    .line 211
    .line 212
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string p0, ")"

    .line 219
    .line 220
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v0

    .line 231
    :pswitch_2
    check-cast p0, Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 232
    .line 233
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter;->r:Landroidx/compose/runtime/MutableState;

    .line 234
    .line 235
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 236
    .line 237
    invoke-virtual {p0, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    return-object v5

    .line 241
    :pswitch_3
    check-cast p0, Lnet/blip/libblip/TransferChoosePeerViewModel;

    .line 242
    .line 243
    iget-object v0, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->c:Lnet/blip/libblip/DerivedStateFlow;

    .line 244
    .line 245
    iget-object v0, v0, Lnet/blip/libblip/DerivedStateFlow;->j:Lp0;

    .line 246
    .line 247
    invoke-virtual {v0}, Lp0;->a()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    check-cast v0, Lnet/blip/libblip/frontend/Transfer;

    .line 252
    .line 253
    if-eqz v0, :cond_6

    .line 254
    .line 255
    iget-object v0, v0, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 256
    .line 257
    sget-object v2, Lnet/blip/libblip/frontend/Transfer$Status;->n:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 258
    .line 259
    if-ne v0, v2, :cond_6

    .line 260
    .line 261
    iget-object v0, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->a:Lnet/blip/libblip/Core;

    .line 262
    .line 263
    iget-object v0, v0, Lnet/blip/libblip/Core;->b:Lc;

    .line 264
    .line 265
    new-instance v2, Lnet/blip/libblip/event/TransferRemoveRequested;

    .line 266
    .line 267
    iget-object p0, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->b:Ljava/lang/String;

    .line 268
    .line 269
    invoke-direct {v2, v1, p0, v4}, Lnet/blip/libblip/event/TransferRemoveRequested;-><init>(ILjava/lang/String;Z)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v2}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    :cond_6
    return-object v5

    .line 276
    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    .line 277
    .line 278
    iput-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->I:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 279
    .line 280
    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 281
    .line 282
    .line 283
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->a(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 284
    .line 285
    .line 286
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 287
    .line 288
    .line 289
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 290
    .line 291
    return-object p0

    .line 292
    :pswitch_5
    check-cast p0, Landroidx/compose/ui/unit/IntRect;

    .line 293
    .line 294
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->b()J

    .line 295
    .line 296
    .line 297
    move-result-wide v0

    .line 298
    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    .line 299
    .line 300
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 301
    .line 302
    .line 303
    return-object p0

    .line 304
    :pswitch_6
    check-cast p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 305
    .line 306
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    .line 307
    .line 308
    iget-object p0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->a:Landroid/view/View;

    .line 309
    .line 310
    invoke-direct {v0, p0, v4}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 311
    .line 312
    .line 313
    return-object v0

    .line 314
    :pswitch_7
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    .line 315
    .line 316
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 317
    .line 318
    if-eqz v0, :cond_7

    .line 319
    .line 320
    invoke-static {p0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->a(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    goto :goto_2

    .line 325
    :cond_7
    sget-object p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;->b:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 326
    .line 327
    :goto_2
    return-object p0

    .line 328
    :pswitch_8
    check-cast p0, Landroid/app/RemoteAction;

    .line 329
    .line 330
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    invoke-static {p0}, Landroidx/compose/foundation/text/contextmenu/internal/TextClassificationHelperApi28;->a(Landroid/app/PendingIntent;)V

    .line 335
    .line 336
    .line 337
    return-object v5

    .line 338
    :pswitch_9
    check-cast p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    .line 339
    .line 340
    iput-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    .line 341
    .line 342
    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 343
    .line 344
    .line 345
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->a(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 346
    .line 347
    .line 348
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 349
    .line 350
    .line 351
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 352
    .line 353
    return-object p0

    .line 354
    :pswitch_a
    check-cast p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 355
    .line 356
    sget v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->n:I

    .line 357
    .line 358
    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->l:Landroidx/compose/runtime/MutableState;

    .line 359
    .line 360
    move-object v1, v0

    .line 361
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 362
    .line 363
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    check-cast v1, Landroidx/compose/ui/geometry/Size;

    .line 368
    .line 369
    iget-wide v1, v1, Landroidx/compose/ui/geometry/Size;->a:J

    .line 370
    .line 371
    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    cmp-long v1, v1, v4

    .line 377
    .line 378
    if-nez v1, :cond_8

    .line 379
    .line 380
    goto :goto_3

    .line 381
    :cond_8
    move-object v1, v0

    .line 382
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 383
    .line 384
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    check-cast v1, Landroidx/compose/ui/geometry/Size;

    .line 389
    .line 390
    iget-wide v1, v1, Landroidx/compose/ui/geometry/Size;->a:J

    .line 391
    .line 392
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->e(J)Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-eqz v1, :cond_9

    .line 397
    .line 398
    goto :goto_3

    .line 399
    :cond_9
    iget-object p0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->j:Landroidx/compose/ui/graphics/ShaderBrush;

    .line 400
    .line 401
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 402
    .line 403
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    check-cast v0, Landroidx/compose/ui/geometry/Size;

    .line 408
    .line 409
    iget-wide v0, v0, Landroidx/compose/ui/geometry/Size;->a:J

    .line 410
    .line 411
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/ShaderBrush;->b(J)Landroid/graphics/Shader;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    :goto_3
    return-object v3

    .line 416
    :pswitch_b
    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 417
    .line 418
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->j:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 419
    .line 420
    invoke-static {p0, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;[Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 421
    .line 422
    .line 423
    move-result p0

    .line 424
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    :pswitch_c
    return-object p0

    .line 429
    :pswitch_d
    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 430
    .line 431
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->e:Landroidx/compose/animation/core/Transition;

    .line 432
    .line 433
    if-eqz v0, :cond_a

    .line 434
    .line 435
    iget-object v0, v0, Landroidx/compose/animation/core/Transition;->m:Landroidx/compose/runtime/State;

    .line 436
    .line 437
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    check-cast v0, Ljava/lang/Number;

    .line 442
    .line 443
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 444
    .line 445
    .line 446
    move-result-wide v0

    .line 447
    goto :goto_4

    .line 448
    :cond_a
    const-wide/16 v0, 0x0

    .line 449
    .line 450
    :goto_4
    iput-wide v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->f:J

    .line 451
    .line 452
    return-object v5

    .line 453
    :pswitch_e
    check-cast p0, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 454
    .line 455
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    new-instance v1, Landroidx/savedstate/Recreator;

    .line 460
    .line 461
    invoke-direct {v1, p0}, Landroidx/savedstate/Recreator;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 465
    .line 466
    .line 467
    return-object v5

    .line 468
    :pswitch_f
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 469
    .line 470
    invoke-static {p0}, Landroidx/lifecycle/SavedStateHandleSupport;->c(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;

    .line 471
    .line 472
    .line 473
    move-result-object p0

    .line 474
    return-object p0

    .line 475
    :pswitch_10
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;

    .line 476
    .line 477
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;->l:Landroidx/savedstate/SavedStateRegistryController;

    .line 478
    .line 479
    if-eqz p0, :cond_c

    .line 480
    .line 481
    new-array v0, v4, [Lkotlin/Pair;

    .line 482
    .line 483
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    check-cast v0, [Lkotlin/Pair;

    .line 488
    .line 489
    invoke-static {v0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {p0, v0}, Landroidx/savedstate/SavedStateRegistryController;->c(Landroid/os/Bundle;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 497
    .line 498
    .line 499
    move-result p0

    .line 500
    if-eqz p0, :cond_b

    .line 501
    .line 502
    goto :goto_5

    .line 503
    :cond_b
    move-object v3, v0

    .line 504
    :cond_c
    :goto_5
    return-object v3

    .line 505
    :pswitch_11
    check-cast p0, Lcom/squareup/wire/ReverseProtoWriter;

    .line 506
    .line 507
    new-instance v0, Lcom/squareup/wire/ProtoWriter;

    .line 508
    .line 509
    iget-object p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->f:Lkotlin/Lazy;

    .line 510
    .line 511
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object p0

    .line 515
    check-cast p0, Lokio/Buffer;

    .line 516
    .line 517
    invoke-direct {v0, p0}, Lcom/squareup/wire/ProtoWriter;-><init>(Lokio/BufferedSink;)V

    .line 518
    .line 519
    .line 520
    return-object v0

    .line 521
    :pswitch_12
    check-cast p0, Lokio/internal/ResourceFileSystem;

    .line 522
    .line 523
    iget-object v0, p0, Lokio/internal/ResourceFileSystem;->l:Ljava/lang/ClassLoader;

    .line 524
    .line 525
    iget-object p0, p0, Lokio/internal/ResourceFileSystem;->m:Lokio/FileSystem;

    .line 526
    .line 527
    const-string v2, ""

    .line 528
    .line 529
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    .line 542
    .line 543
    new-instance v5, Ljava/util/ArrayList;

    .line 544
    .line 545
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .line 547
    .line 548
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    :cond_d
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 553
    .line 554
    .line 555
    move-result v6

    .line 556
    if-eqz v6, :cond_f

    .line 557
    .line 558
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    check-cast v6, Ljava/net/URL;

    .line 563
    .line 564
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v7

    .line 571
    const-string v8, "file"

    .line 572
    .line 573
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v7

    .line 577
    if-nez v7, :cond_e

    .line 578
    .line 579
    move-object v7, v3

    .line 580
    goto :goto_7

    .line 581
    :cond_e
    sget-object v7, Lokio/Path;->k:Ljava/lang/String;

    .line 582
    .line 583
    new-instance v7, Ljava/io/File;

    .line 584
    .line 585
    invoke-virtual {v6}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 586
    .line 587
    .line 588
    move-result-object v6

    .line 589
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    invoke-static {v6}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 600
    .line 601
    .line 602
    move-result-object v6

    .line 603
    new-instance v7, Lkotlin/Pair;

    .line 604
    .line 605
    invoke-direct {v7, p0, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    :goto_7
    if-eqz v7, :cond_d

    .line 609
    .line 610
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    goto :goto_6

    .line 614
    :cond_f
    const-string v2, "META-INF/MANIFEST.MF"

    .line 615
    .line 616
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    new-instance v2, Ljava/util/ArrayList;

    .line 631
    .line 632
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .line 634
    .line 635
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    :cond_10
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 640
    .line 641
    .line 642
    move-result v6

    .line 643
    if-eqz v6, :cond_13

    .line 644
    .line 645
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v6

    .line 649
    check-cast v6, Ljava/net/URL;

    .line 650
    .line 651
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v6

    .line 658
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    const-string v7, "jar:file:"

    .line 662
    .line 663
    invoke-static {v6, v7, v4}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 664
    .line 665
    .line 666
    move-result v7

    .line 667
    if-nez v7, :cond_11

    .line 668
    .line 669
    :goto_9
    move-object v8, v3

    .line 670
    goto :goto_a

    .line 671
    :cond_11
    const-string v7, "!"

    .line 672
    .line 673
    invoke-static {v6, v1, v7}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;ILjava/lang/String;)I

    .line 674
    .line 675
    .line 676
    move-result v7

    .line 677
    const/4 v8, -0x1

    .line 678
    if-ne v7, v8, :cond_12

    .line 679
    .line 680
    goto :goto_9

    .line 681
    :cond_12
    sget-object v8, Lokio/Path;->k:Ljava/lang/String;

    .line 682
    .line 683
    new-instance v8, Ljava/io/File;

    .line 684
    .line 685
    const/4 v9, 0x4

    .line 686
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v6

    .line 690
    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 691
    .line 692
    .line 693
    move-result-object v6

    .line 694
    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v6

    .line 701
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    invoke-static {v6}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 705
    .line 706
    .line 707
    move-result-object v6

    .line 708
    new-instance v7, Lokio/internal/a;

    .line 709
    .line 710
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 711
    .line 712
    .line 713
    invoke-static {v6, p0, v7}, Lokio/internal/ZipFilesKt;->c(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;

    .line 714
    .line 715
    .line 716
    move-result-object v6

    .line 717
    sget-object v7, Lokio/internal/ResourceFileSystem;->o:Lokio/Path;

    .line 718
    .line 719
    new-instance v8, Lkotlin/Pair;

    .line 720
    .line 721
    invoke-direct {v8, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    :goto_a
    if-eqz v8, :cond_10

    .line 725
    .line 726
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    goto :goto_8

    .line 730
    :cond_13
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 731
    .line 732
    .line 733
    move-result-object p0

    .line 734
    return-object p0

    .line 735
    :pswitch_13
    check-cast p0, Lnet/blip/libblip/PeerPickerViewModel;

    .line 736
    .line 737
    iget-object v0, p0, Lnet/blip/libblip/PeerPickerViewModel;->a:Lnet/blip/libblip/Core;

    .line 738
    .line 739
    iget-object v0, v0, Lnet/blip/libblip/Core;->b:Lc;

    .line 740
    .line 741
    new-instance v1, Lnet/blip/libblip/event/AbandonSearch;

    .line 742
    .line 743
    iget-object p0, p0, Lnet/blip/libblip/PeerPickerViewModel;->b:Ljava/lang/String;

    .line 744
    .line 745
    sget-object v2, Lokio/ByteString;->m:Lokio/ByteString;

    .line 746
    .line 747
    invoke-direct {v1, p0, v2}, Lnet/blip/libblip/event/AbandonSearch;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0, v1}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    return-object v5

    .line 754
    :pswitch_14
    check-cast p0, Landroidx/compose/ui/spatial/RectManager;

    .line 755
    .line 756
    iput-object v3, p0, Landroidx/compose/ui/spatial/RectManager;->i:Lq0;

    .line 757
    .line 758
    const-string v0, "OnPositionedDispatch"

    .line 759
    .line 760
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/ui/spatial/RectManager;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 764
    .line 765
    .line 766
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 767
    .line 768
    .line 769
    return-object v5

    .line 770
    :catchall_1
    move-exception p0

    .line 771
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 772
    .line 773
    .line 774
    throw p0

    .line 775
    :pswitch_15
    check-cast p0, Landroidx/compose/ui/window/PopupLayout;

    .line 776
    .line 777
    invoke-static {p0}, Landroidx/compose/ui/window/PopupLayout;->m(Landroidx/compose/ui/window/PopupLayout;)Z

    .line 778
    .line 779
    .line 780
    move-result p0

    .line 781
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 782
    .line 783
    .line 784
    move-result-object p0

    .line 785
    return-object p0

    .line 786
    :pswitch_16
    check-cast p0, Lcoil3/RealImageLoader;

    .line 787
    .line 788
    iget-object p0, p0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    .line 789
    .line 790
    iget-object p0, p0, Lcoil3/RealImageLoader$Options;->e:Lkotlin/Lazy;

    .line 791
    .line 792
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object p0

    .line 796
    check-cast p0, Lcoil3/disk/DiskCache;

    .line 797
    .line 798
    return-object p0

    .line 799
    :pswitch_17
    check-cast p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    .line 800
    .line 801
    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->Y0()Lkotlinx/coroutines/CoroutineScope;

    .line 802
    .line 803
    .line 804
    move-result-object p0

    .line 805
    return-object p0

    .line 806
    :pswitch_18
    check-cast p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 807
    .line 808
    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 809
    .line 810
    return-object p0

    .line 811
    :pswitch_19
    check-cast p0, Ljava/lang/String;

    .line 812
    .line 813
    new-instance v0, Landroidx/navigation/NavDeepLink$Builder;

    .line 814
    .line 815
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 816
    .line 817
    .line 818
    iput-object p0, v0, Landroidx/navigation/NavDeepLink$Builder;->a:Ljava/lang/String;

    .line 819
    .line 820
    new-instance p0, Landroidx/navigation/NavDeepLink;

    .line 821
    .line 822
    iget-object v0, v0, Landroidx/navigation/NavDeepLink$Builder;->a:Ljava/lang/String;

    .line 823
    .line 824
    invoke-direct {p0, v0}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    return-object p0

    .line 828
    :pswitch_1a
    check-cast p0, Landroidx/compose/ui/modifier/ModifierLocalManager;

    .line 829
    .line 830
    iput-boolean v4, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->f:Z

    .line 831
    .line 832
    new-instance v0, Ljava/util/HashSet;

    .line 833
    .line 834
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 835
    .line 836
    .line 837
    iget-object v1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->d:Landroidx/collection/MutableObjectList;

    .line 838
    .line 839
    if-eqz v1, :cond_17

    .line 840
    .line 841
    iget-object v2, v1, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 842
    .line 843
    iget v3, v1, Landroidx/collection/ObjectList;->b:I

    .line 844
    .line 845
    move v6, v4

    .line 846
    :goto_b
    if-ge v6, v3, :cond_16

    .line 847
    .line 848
    aget-object v7, v2, v6

    .line 849
    .line 850
    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 851
    .line 852
    iget-object v8, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->e:Landroidx/collection/MutableObjectList;

    .line 853
    .line 854
    if-nez v8, :cond_14

    .line 855
    .line 856
    new-instance v8, Landroidx/collection/MutableObjectList;

    .line 857
    .line 858
    invoke-direct {v8}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 859
    .line 860
    .line 861
    iput-object v8, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->e:Landroidx/collection/MutableObjectList;

    .line 862
    .line 863
    :cond_14
    invoke-virtual {v8, v6}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v8

    .line 867
    check-cast v8, Landroidx/compose/ui/modifier/ModifierLocal;

    .line 868
    .line 869
    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 870
    .line 871
    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 872
    .line 873
    iget-boolean v9, v7, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 874
    .line 875
    if-eqz v9, :cond_15

    .line 876
    .line 877
    invoke-static {v7, v8}, Landroidx/compose/ui/modifier/ModifierLocalManager;->b(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/modifier/ModifierLocal;)V

    .line 878
    .line 879
    .line 880
    :cond_15
    add-int/lit8 v6, v6, 0x1

    .line 881
    .line 882
    goto :goto_b

    .line 883
    :cond_16
    invoke-virtual {v1}, Landroidx/collection/MutableObjectList;->k()V

    .line 884
    .line 885
    .line 886
    iget-object v1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->e:Landroidx/collection/MutableObjectList;

    .line 887
    .line 888
    if-eqz v1, :cond_17

    .line 889
    .line 890
    invoke-virtual {v1}, Landroidx/collection/MutableObjectList;->k()V

    .line 891
    .line 892
    .line 893
    :cond_17
    iget-object v1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->b:Landroidx/collection/MutableObjectList;

    .line 894
    .line 895
    if-eqz v1, :cond_1b

    .line 896
    .line 897
    iget-object v2, v1, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 898
    .line 899
    iget v3, v1, Landroidx/collection/ObjectList;->b:I

    .line 900
    .line 901
    :goto_c
    if-ge v4, v3, :cond_1a

    .line 902
    .line 903
    aget-object v6, v2, v4

    .line 904
    .line 905
    check-cast v6, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 906
    .line 907
    iget-object v7, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->c:Landroidx/collection/MutableObjectList;

    .line 908
    .line 909
    if-nez v7, :cond_18

    .line 910
    .line 911
    new-instance v7, Landroidx/collection/MutableObjectList;

    .line 912
    .line 913
    invoke-direct {v7}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 914
    .line 915
    .line 916
    iput-object v7, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->c:Landroidx/collection/MutableObjectList;

    .line 917
    .line 918
    :cond_18
    invoke-virtual {v7, v4}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object v7

    .line 922
    check-cast v7, Landroidx/compose/ui/modifier/ModifierLocal;

    .line 923
    .line 924
    iget-boolean v8, v6, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 925
    .line 926
    if-eqz v8, :cond_19

    .line 927
    .line 928
    invoke-static {v6, v7}, Landroidx/compose/ui/modifier/ModifierLocalManager;->b(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/modifier/ModifierLocal;)V

    .line 929
    .line 930
    .line 931
    :cond_19
    add-int/lit8 v4, v4, 0x1

    .line 932
    .line 933
    goto :goto_c

    .line 934
    :cond_1a
    invoke-virtual {v1}, Landroidx/collection/MutableObjectList;->k()V

    .line 935
    .line 936
    .line 937
    iget-object p0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->c:Landroidx/collection/MutableObjectList;

    .line 938
    .line 939
    if-eqz p0, :cond_1b

    .line 940
    .line 941
    invoke-virtual {p0}, Landroidx/collection/MutableObjectList;->k()V

    .line 942
    .line 943
    .line 944
    :cond_1b
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 945
    .line 946
    .line 947
    move-result-object p0

    .line 948
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 949
    .line 950
    .line 951
    move-result v0

    .line 952
    if-eqz v0, :cond_1c

    .line 953
    .line 954
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    check-cast v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 959
    .line 960
    invoke-virtual {v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->a1()V

    .line 961
    .line 962
    .line 963
    goto :goto_d

    .line 964
    :cond_1c
    return-object v5

    .line 965
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
