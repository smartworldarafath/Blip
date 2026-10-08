.class public abstract Lnet/blip/android/MainActivityKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroid/app/Activity;Landroid/content/Intent;Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 14

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v10, p4

    .line 4
    .line 5
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, -0x273d27c8

    .line 8
    .line 9
    .line 10
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int v0, p5, v0

    .line 23
    .line 24
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x20

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/16 v1, 0x10

    .line 34
    .line 35
    :goto_1
    or-int/2addr v0, v1

    .line 36
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const/16 v1, 0x100

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/16 v1, 0x80

    .line 46
    .line 47
    :goto_2
    or-int/2addr v0, v1

    .line 48
    move-object/from16 v4, p3

    .line 49
    .line 50
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/16 v2, 0x800

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    move v1, v2

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    const/16 v1, 0x400

    .line 61
    .line 62
    :goto_3
    or-int/2addr v0, v1

    .line 63
    and-int/lit16 v1, v0, 0x493

    .line 64
    .line 65
    const/16 v5, 0x492

    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x1

    .line 69
    if-eq v1, v5, :cond_4

    .line 70
    .line 71
    move v1, v7

    .line 72
    goto :goto_4

    .line 73
    :cond_4
    move v1, v6

    .line 74
    :goto_4
    and-int/lit8 v5, v0, 0x1

    .line 75
    .line 76
    invoke-virtual {v10, v5, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_9

    .line 81
    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    if-eqz v7, :cond_a

    .line 89
    .line 90
    new-instance v0, Lxa;

    .line 91
    .line 92
    const/4 v6, 0x0

    .line 93
    move-object v1, p0

    .line 94
    move-object v2, p1

    .line 95
    move/from16 v5, p5

    .line 96
    .line 97
    invoke-direct/range {v0 .. v6}, Lxa;-><init>(Landroid/app/Activity;Landroid/content/Intent;Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;II)V

    .line 98
    .line 99
    .line 100
    :goto_5
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 101
    .line 102
    return-void

    .line 103
    :cond_5
    move-object v4, v3

    .line 104
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    .line 105
    .line 106
    invoke-static {v5, v10}, Lnet/blip/android/ui/util/LaunchersKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;)Lnet/blip/android/ui/util/SuspendingPermissionState;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    sget-object v8, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 111
    .line 112
    invoke-static {v8, v10}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    check-cast v8, Lnet/blip/libblip/Core;

    .line 121
    .line 122
    iget-object v8, v8, Lnet/blip/libblip/Core;->b:Lc;

    .line 123
    .line 124
    sget-object v11, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 125
    .line 126
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    check-cast v11, Lnet/blip/libblip/Flavor;

    .line 131
    .line 132
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    or-int/2addr v12, v13

    .line 141
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    or-int/2addr v12, v13

    .line 146
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v13

    .line 150
    or-int/2addr v12, v13

    .line 151
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    or-int/2addr v12, v13

    .line 156
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    or-int/2addr v12, v13

    .line 161
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    or-int/2addr v12, v13

    .line 166
    and-int/lit16 v0, v0, 0x1c00

    .line 167
    .line 168
    if-ne v0, v2, :cond_6

    .line 169
    .line 170
    move v6, v7

    .line 171
    :cond_6
    or-int v0, v12, v6

    .line 172
    .line 173
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    if-nez v0, :cond_8

    .line 178
    .line 179
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 180
    .line 181
    if-ne v2, v0, :cond_7

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_7
    move-object v0, v2

    .line 185
    goto :goto_7

    .line 186
    :cond_8
    :goto_6
    new-instance v0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;

    .line 187
    .line 188
    move-object v3, v9

    .line 189
    const/4 v9, 0x0

    .line 190
    move-object v2, p0

    .line 191
    move-object v1, p1

    .line 192
    move-object v7, v5

    .line 193
    move-object v6, v8

    .line 194
    move-object v5, v11

    .line 195
    move-object/from16 v8, p3

    .line 196
    .line 197
    invoke-direct/range {v0 .. v9}, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;-><init>(Landroid/content/Intent;Landroid/app/Activity;Lnet/blip/libblip/frontend/State;Landroidx/navigation/NavController;Lnet/blip/libblip/Flavor;Lkotlin/jvm/functions/Function1;Lnet/blip/android/ui/util/SuspendingPermissionState;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :goto_7
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 204
    .line 205
    invoke-static {v10, p1, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 206
    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_9
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 210
    .line 211
    .line 212
    :goto_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    if-eqz v7, :cond_a

    .line 217
    .line 218
    new-instance v0, Lxa;

    .line 219
    .line 220
    const/4 v6, 0x1

    .line 221
    move-object v1, p0

    .line 222
    move-object v2, p1

    .line 223
    move-object/from16 v3, p2

    .line 224
    .line 225
    move-object/from16 v4, p3

    .line 226
    .line 227
    move/from16 v5, p5

    .line 228
    .line 229
    invoke-direct/range {v0 .. v6}, Lxa;-><init>(Landroid/app/Activity;Landroid/content/Intent;Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;II)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_5

    .line 233
    .line 234
    :cond_a
    return-void
.end method

.method public static final b(Landroid/content/Intent;Lnet/blip/shared/ScratchFileWriter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->q:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->q:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->p:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->q:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    sget-object v6, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    if-eq v2, v5, :cond_2

    .line 40
    .line 41
    if-ne v2, v4, :cond_1

    .line 42
    .line 43
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto/16 :goto_8

    .line 47
    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto/16 :goto_9

    .line 50
    .line 51
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v7

    .line 57
    :cond_2
    iget-object p0, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->o:Ljava/lang/String;

    .line 58
    .line 59
    iget-object p1, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->n:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v2, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->m:Lnet/blip/shared/ScratchFileWriter;

    .line 62
    .line 63
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    .line 65
    .line 66
    move-object v9, p2

    .line 67
    move-object p2, p1

    .line 68
    move-object p1, v2

    .line 69
    move-object v2, v9

    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    if-eqz p2, :cond_16

    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const v8, -0x45ee9a33

    .line 86
    .line 87
    .line 88
    if-eq v2, v8, :cond_b

    .line 89
    .line 90
    const p1, -0x37c67be

    .line 91
    .line 92
    .line 93
    if-eq v2, p1, :cond_4

    .line 94
    .line 95
    goto/16 :goto_a

    .line 96
    .line 97
    :cond_4
    const-string p1, "android.intent.action.SEND_MULTIPLE"

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_5

    .line 104
    .line 105
    goto/16 :goto_a

    .line 106
    .line 107
    :cond_5
    invoke-static {p0}, Landroidx/core/content/IntentCompat;->a(Landroid/content/Intent;)Ljava/util/ArrayList;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_9

    .line 112
    .line 113
    new-instance p2, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_8

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_8
    move-object p2, v7

    .line 146
    :goto_2
    if-eqz p2, :cond_9

    .line 147
    .line 148
    return-object p2

    .line 149
    :cond_9
    invoke-static {p0}, Lnet/blip/android/MainActivityKt;->e(Landroid/content/Intent;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_a

    .line 158
    .line 159
    move-object v7, p0

    .line 160
    :cond_a
    if-eqz v7, :cond_16

    .line 161
    .line 162
    return-object v7

    .line 163
    :cond_b
    const-string v2, "android.intent.action.SEND"

    .line 164
    .line 165
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    if-eqz p2, :cond_16

    .line 170
    .line 171
    invoke-static {p0}, Landroidx/core/content/IntentCompat;->b(Landroid/content/Intent;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    check-cast p2, Landroid/net/Uri;

    .line 176
    .line 177
    if-eqz p2, :cond_c

    .line 178
    .line 179
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    return-object p0

    .line 184
    :cond_c
    invoke-static {p0}, Lnet/blip/android/MainActivityKt;->e(Landroid/content/Intent;)Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-nez v2, :cond_d

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_d
    move-object p2, v7

    .line 196
    :goto_3
    if-eqz p2, :cond_e

    .line 197
    .line 198
    return-object p2

    .line 199
    :cond_e
    const-string p2, "android.intent.extra.TEXT"

    .line 200
    .line 201
    invoke-virtual {p0, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    if-nez p2, :cond_11

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    if-eqz p2, :cond_10

    .line 212
    .line 213
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-lez v2, :cond_f

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_f
    move-object p2, v7

    .line 221
    :goto_4
    if-eqz p2, :cond_10

    .line 222
    .line 223
    invoke-virtual {p2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    if-eqz p2, :cond_10

    .line 228
    .line 229
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    if-eqz p2, :cond_10

    .line 234
    .line 235
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    goto :goto_5

    .line 240
    :cond_10
    move-object p2, v7

    .line 241
    :cond_11
    :goto_5
    if-eqz p2, :cond_16

    .line 242
    .line 243
    const-string v2, "android.intent.extra.SUBJECT"

    .line 244
    .line 245
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    :try_start_2
    invoke-static {p2, p0}, Lnet/blip/shared/InternetShortcutKt;->a(Ljava/lang/String;Ljava/lang/String;)Lnet/blip/shared/InternetShortcut;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    if-eqz v2, :cond_13

    .line 254
    .line 255
    iput-object p1, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->m:Lnet/blip/shared/ScratchFileWriter;

    .line 256
    .line 257
    iput-object p2, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->n:Ljava/lang/String;

    .line 258
    .line 259
    iput-object p0, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->o:Ljava/lang/String;

    .line 260
    .line 261
    iput v5, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->q:I

    .line 262
    .line 263
    invoke-static {p1, v2, v0}, Lnet/blip/shared/ScratchFileKt;->a(Lnet/blip/shared/ScratchFileWriter;Lnet/blip/shared/InternetShortcut;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    if-ne v2, v1, :cond_12

    .line 268
    .line 269
    goto :goto_7

    .line 270
    :cond_12
    :goto_6
    check-cast v2, Ljava/lang/String;

    .line 271
    .line 272
    if-nez v2, :cond_15

    .line 273
    .line 274
    :cond_13
    iput-object v7, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->m:Lnet/blip/shared/ScratchFileWriter;

    .line 275
    .line 276
    iput-object v7, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->n:Ljava/lang/String;

    .line 277
    .line 278
    iput-object v7, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->o:Ljava/lang/String;

    .line 279
    .line 280
    iput v4, v0, Lnet/blip/android/MainActivityKt$extractFilesFromSendIntent$1;->q:I

    .line 281
    .line 282
    invoke-static {p1, p2, p0, v0}, Lnet/blip/shared/ScratchFileWriter;->b(Lnet/blip/shared/ScratchFileWriter;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    if-ne p2, v1, :cond_14

    .line 287
    .line 288
    :goto_7
    return-object v1

    .line 289
    :cond_14
    :goto_8
    move-object v2, p2

    .line 290
    check-cast v2, Ljava/lang/String;

    .line 291
    .line 292
    :cond_15
    invoke-static {v2}, Lnet/blip/android/UriUtilKt;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 300
    return-object p0

    .line 301
    :goto_9
    sget-object p1, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 302
    .line 303
    new-array p2, v3, [Lkotlin/Pair;

    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    invoke-static {p0, p2}, Lnet/blip/libblip/Logger;->f(Ljava/lang/Exception;[Lkotlin/Pair;)V

    .line 309
    .line 310
    .line 311
    :cond_16
    :goto_a
    return-object v6
.end method

.method public static final c(Landroid/app/Activity;Lnet/blip/libblip/frontend/State;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/PeerId;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/blip/android/ui/util/SuspendingPermissionState;Landroidx/navigation/NavController;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p6

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    instance-of v3, v2, Lnet/blip/android/MainActivityKt$handleInboundShare$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;

    .line 13
    .line 14
    iget v4, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->u:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->u:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;

    .line 27
    .line 28
    invoke-direct {v3, v2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->t:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->u:I

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    const/4 v8, 0x1

    .line 41
    const/4 v9, 0x0

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    if-ne v5, v8, :cond_1

    .line 45
    .line 46
    iget-object v0, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->s:Landroidx/navigation/NavController;

    .line 47
    .line 48
    iget-object v1, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->r:Ljava/util/ArrayList;

    .line 49
    .line 50
    iget-object v4, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->q:Ljava/util/ArrayList;

    .line 51
    .line 52
    iget-object v5, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->p:Lnet/blip/libblip/PeerId;

    .line 53
    .line 54
    iget-object v10, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->o:Lkotlin/jvm/functions/Function1;

    .line 55
    .line 56
    iget-object v11, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->n:Lnet/blip/libblip/frontend/State;

    .line 57
    .line 58
    iget-object v3, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->m:Landroid/app/Activity;

    .line 59
    .line 60
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    move-object v13, v0

    .line 64
    move-object v12, v1

    .line 65
    move-object v0, v3

    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v6

    .line 74
    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    sget-object v1, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 84
    .line 85
    new-array v2, v9, [Lkotlin/Pair;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    const-string v1, "inbound share contained no supported content"

    .line 91
    .line 92
    invoke-static {v1, v2}, Lnet/blip/libblip/Logger;->l(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 93
    .line 94
    .line 95
    const-string v1, "No shareable content found"

    .line 96
    .line 97
    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    .line 103
    .line 104
    return-object v7

    .line 105
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    .line 107
    const/16 v5, 0x21

    .line 108
    .line 109
    if-ge v2, v5, :cond_4

    .line 110
    .line 111
    iget-object v2, v1, Lnet/blip/android/ui/util/SuspendingPermissionState;->a:Lcom/google/accompanist/permissions/PermissionStatus;

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    sget-object v5, Lcom/google/accompanist/permissions/PermissionStatus$Granted;->a:Lcom/google/accompanist/permissions/PermissionStatus$Granted;

    .line 117
    .line 118
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_4

    .line 123
    .line 124
    iget-object v1, v1, Lnet/blip/android/ui/util/SuspendingPermissionState;->b:Lkotlin/jvm/functions/Function1;

    .line 125
    .line 126
    iput-object v0, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->m:Landroid/app/Activity;

    .line 127
    .line 128
    move-object/from16 v2, p1

    .line 129
    .line 130
    iput-object v2, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->n:Lnet/blip/libblip/frontend/State;

    .line 131
    .line 132
    move-object/from16 v5, p2

    .line 133
    .line 134
    iput-object v5, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->o:Lkotlin/jvm/functions/Function1;

    .line 135
    .line 136
    move-object/from16 v10, p3

    .line 137
    .line 138
    iput-object v10, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->p:Lnet/blip/libblip/PeerId;

    .line 139
    .line 140
    move-object/from16 v11, p4

    .line 141
    .line 142
    iput-object v11, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->q:Ljava/util/ArrayList;

    .line 143
    .line 144
    move-object/from16 v12, p5

    .line 145
    .line 146
    iput-object v12, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->r:Ljava/util/ArrayList;

    .line 147
    .line 148
    move-object/from16 v13, p7

    .line 149
    .line 150
    iput-object v13, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->s:Landroidx/navigation/NavController;

    .line 151
    .line 152
    iput v8, v3, Lnet/blip/android/MainActivityKt$handleInboundShare$1;->u:I

    .line 153
    .line 154
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-ne v1, v4, :cond_5

    .line 159
    .line 160
    return-object v4

    .line 161
    :cond_4
    move-object/from16 v2, p1

    .line 162
    .line 163
    move-object/from16 v5, p2

    .line 164
    .line 165
    move-object/from16 v10, p3

    .line 166
    .line 167
    move-object/from16 v11, p4

    .line 168
    .line 169
    move-object/from16 v12, p5

    .line 170
    .line 171
    move-object/from16 v13, p7

    .line 172
    .line 173
    :cond_5
    move-object v4, v10

    .line 174
    move-object v10, v5

    .line 175
    move-object v5, v4

    .line 176
    move-object v4, v11

    .line 177
    move-object v11, v2

    .line 178
    :goto_1
    if-eqz v5, :cond_6

    .line 179
    .line 180
    invoke-static {v11}, Lnet/blip/libblip/State_DerivedKt;->d(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/frontend/Users;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static {v1, v5}, Lnet/blip/libblip/Users_DerivedKt;->a(Lnet/blip/libblip/frontend/Users;Lnet/blip/libblip/PeerId;)Lnet/blip/libblip/Peer;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-eqz v1, :cond_6

    .line 189
    .line 190
    move v1, v8

    .line 191
    goto :goto_2

    .line 192
    :cond_6
    move v1, v9

    .line 193
    :goto_2
    if-eqz v5, :cond_8

    .line 194
    .line 195
    if-nez v1, :cond_8

    .line 196
    .line 197
    invoke-static {v5}, Lnet/blip/libblip/PeerId_DerivedKt;->c(Lnet/blip/libblip/PeerId;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_7

    .line 202
    .line 203
    const-string v2, "person"

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_7
    const-string v2, "device"

    .line 207
    .line 208
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v11, "Selected "

    .line 211
    .line 212
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v2, " not found"

    .line 219
    .line 220
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-static {v0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 232
    .line 233
    .line 234
    :cond_8
    if-eqz v1, :cond_9

    .line 235
    .line 236
    move-object v6, v5

    .line 237
    :cond_9
    const-string v1, "inbound_share"

    .line 238
    .line 239
    invoke-static {v10, v6, v4, v1}, Lnet/blip/libblip/DispatcherKt;->a(Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/PeerId;Ljava/util/List;Ljava/lang/String;)Ljava/io/Serializable;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    if-nez v3, :cond_c

    .line 248
    .line 249
    check-cast v2, Ljava/lang/String;

    .line 250
    .line 251
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_b

    .line 260
    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    check-cast v1, Lnet/blip/android/InboundShareUriAccess;

    .line 266
    .line 267
    sget-object v3, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 268
    .line 269
    new-instance v14, Lkotlin/Pair;

    .line 270
    .line 271
    const-string v4, "transferId"

    .line 272
    .line 273
    invoke-direct {v14, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    iget v4, v1, Lnet/blip/android/InboundShareUriAccess;->a:I

    .line 277
    .line 278
    new-instance v6, Ljava/lang/Integer;

    .line 279
    .line 280
    invoke-direct {v6, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 281
    .line 282
    .line 283
    new-instance v15, Lkotlin/Pair;

    .line 284
    .line 285
    const-string v4, "itemIndex"

    .line 286
    .line 287
    invoke-direct {v15, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    iget-object v4, v1, Lnet/blip/android/InboundShareUriAccess;->b:Ljava/lang/String;

    .line 291
    .line 292
    new-instance v6, Lkotlin/Pair;

    .line 293
    .line 294
    const-string v10, "authority"

    .line 295
    .line 296
    invoke-direct {v6, v10, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    iget-object v4, v1, Lnet/blip/android/InboundShareUriAccess;->c:Ljava/lang/String;

    .line 300
    .line 301
    new-instance v10, Lkotlin/Pair;

    .line 302
    .line 303
    const-string v11, "scheme"

    .line 304
    .line 305
    invoke-direct {v10, v11, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    iget-boolean v4, v1, Lnet/blip/android/InboundShareUriAccess;->d:Z

    .line 309
    .line 310
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    new-instance v11, Lkotlin/Pair;

    .line 315
    .line 316
    const-string v12, "intentHasReadFlag"

    .line 317
    .line 318
    invoke-direct {v11, v12, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    iget-boolean v4, v1, Lnet/blip/android/InboundShareUriAccess;->e:Z

    .line 322
    .line 323
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    new-instance v12, Lkotlin/Pair;

    .line 328
    .line 329
    const-string v8, "intentHasPersistableFlag"

    .line 330
    .line 331
    invoke-direct {v12, v8, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    iget-boolean v4, v1, Lnet/blip/android/InboundShareUriAccess;->f:Z

    .line 335
    .line 336
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    new-instance v8, Lkotlin/Pair;

    .line 341
    .line 342
    const-string v9, "clipDataContainsUri"

    .line 343
    .line 344
    invoke-direct {v8, v9, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    iget-boolean v4, v1, Lnet/blip/android/InboundShareUriAccess;->g:Z

    .line 348
    .line 349
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    new-instance v9, Lkotlin/Pair;

    .line 354
    .line 355
    move-object/from16 p0, v0

    .line 356
    .line 357
    const-string v0, "readPermissionGranted"

    .line 358
    .line 359
    invoke-direct {v9, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    iget-object v0, v1, Lnet/blip/android/InboundShareUriAccess;->h:Ljava/lang/Boolean;

    .line 363
    .line 364
    new-instance v4, Lkotlin/Pair;

    .line 365
    .line 366
    move-object/from16 p1, v3

    .line 367
    .line 368
    const-string v3, "queryReadableAtReceipt"

    .line 369
    .line 370
    invoke-direct {v4, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    iget-object v0, v1, Lnet/blip/android/InboundShareUriAccess;->i:Ljava/lang/String;

    .line 374
    .line 375
    new-instance v1, Lkotlin/Pair;

    .line 376
    .line 377
    const-string v3, "queryErrorAtReceipt"

    .line 378
    .line 379
    invoke-direct {v1, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    if-eqz v5, :cond_a

    .line 383
    .line 384
    const/4 v0, 0x1

    .line 385
    goto :goto_5

    .line 386
    :cond_a
    const/4 v0, 0x0

    .line 387
    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    new-instance v3, Lkotlin/Pair;

    .line 392
    .line 393
    move-object/from16 v23, v1

    .line 394
    .line 395
    const-string v1, "directShare"

    .line 396
    .line 397
    invoke-direct {v3, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    move-object/from16 v24, v3

    .line 401
    .line 402
    move-object/from16 v22, v4

    .line 403
    .line 404
    move-object/from16 v16, v6

    .line 405
    .line 406
    move-object/from16 v20, v8

    .line 407
    .line 408
    move-object/from16 v21, v9

    .line 409
    .line 410
    move-object/from16 v17, v10

    .line 411
    .line 412
    move-object/from16 v18, v11

    .line 413
    .line 414
    move-object/from16 v19, v12

    .line 415
    .line 416
    filled-new-array/range {v14 .. v24}, [Lkotlin/Pair;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    const-string v1, "InboundShare"

    .line 424
    .line 425
    const-string v3, "inbound share URI received"

    .line 426
    .line 427
    invoke-static {v1, v3, v0}, Lnet/blip/libblip/Logger;->k(Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 428
    .line 429
    .line 430
    move-object/from16 v0, p0

    .line 431
    .line 432
    const/4 v8, 0x1

    .line 433
    const/4 v9, 0x0

    .line 434
    goto/16 :goto_4

    .line 435
    .line 436
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    const-string v1, "createTransfer/"

    .line 439
    .line 440
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const-string v1, "?isFromShareIntent=true"

    .line 447
    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-static {v13, v0}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    return-object v7

    .line 459
    :cond_c
    sget-object v2, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 460
    .line 461
    new-instance v4, Lkotlin/Pair;

    .line 462
    .line 463
    const-string v5, "origin"

    .line 464
    .line 465
    invoke-direct {v4, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    new-instance v1, Lkotlin/Pair;

    .line 469
    .line 470
    const-string v5, "err"

    .line 471
    .line 472
    invoke-direct {v1, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    filled-new-array {v4, v1}, [Lkotlin/Pair;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    const-string v2, "unable to start transfer"

    .line 483
    .line 484
    invoke-static {v2, v1}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 485
    .line 486
    .line 487
    const-string v1, "Unable to start transfer"

    .line 488
    .line 489
    const/4 v2, 0x0

    .line 490
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 495
    .line 496
    .line 497
    return-object v7
.end method

.method public static final d(Landroid/app/Activity;Landroid/content/Intent;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 17

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    move v5, v3

    .line 20
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_f

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    add-int/lit8 v14, v5, 0x1

    .line 31
    .line 32
    if-ltz v5, :cond_e

    .line 33
    .line 34
    move-object v7, v0

    .line 35
    check-cast v7, Landroid/net/Uri;

    .line 36
    .line 37
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const/4 v12, 0x1

    .line 46
    move-object/from16 v15, p0

    .line 47
    .line 48
    invoke-virtual {v15, v7, v0, v6, v12}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v6, "content"

    .line 57
    .line 58
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    move-object v0, v7

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_1
    if-eqz v0, :cond_2

    .line 68
    .line 69
    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    const-string v0, "_display_name"

    .line 74
    .line 75
    filled-new-array {v0}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    const/4 v10, 0x0

    .line 80
    const/4 v11, 0x0

    .line 81
    const/4 v9, 0x0

    .line 82
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 83
    .line 84
    .line 85
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-eqz v6, :cond_1

    .line 87
    .line 88
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 89
    .line 90
    .line 91
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :try_start_2
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_3

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    move-object v8, v0

    .line 100
    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 101
    :catchall_2
    move-exception v0

    .line 102
    :try_start_4
    invoke-static {v6, v8}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_1
    move v0, v3

    .line 107
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 108
    .line 109
    .line 110
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    goto :goto_4

    .line 112
    :goto_3
    new-instance v6, Lkotlin/Result$Failure;

    .line 113
    .line 114
    invoke-direct {v6, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    move-object v0, v6

    .line 118
    :goto_4
    new-instance v6, Lkotlin/Result;

    .line 119
    .line 120
    invoke-direct {v6, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_2
    const/4 v6, 0x0

    .line 125
    :goto_5
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    and-int/2addr v9, v12

    .line 138
    if-eqz v9, :cond_3

    .line 139
    .line 140
    move-object v9, v8

    .line 141
    move v8, v12

    .line 142
    goto :goto_6

    .line 143
    :cond_3
    move-object v9, v8

    .line 144
    move v8, v3

    .line 145
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    and-int/lit8 v10, v10, 0x40

    .line 150
    .line 151
    if-eqz v10, :cond_4

    .line 152
    .line 153
    move-object v10, v9

    .line 154
    move v9, v12

    .line 155
    goto :goto_7

    .line 156
    :cond_4
    move-object v10, v9

    .line 157
    move v9, v3

    .line 158
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    if-eqz v11, :cond_5

    .line 163
    .line 164
    invoke-virtual {v11}, Landroid/content/ClipData;->getItemCount()I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    goto :goto_8

    .line 169
    :cond_5
    move v11, v3

    .line 170
    :goto_8
    invoke-static {v3, v11}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    instance-of v3, v11, Ljava/util/Collection;

    .line 175
    .line 176
    if-eqz v3, :cond_6

    .line 177
    .line 178
    move-object v3, v11

    .line 179
    check-cast v3, Ljava/util/Collection;

    .line 180
    .line 181
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_6

    .line 186
    .line 187
    move-object v7, v10

    .line 188
    const/4 v10, 0x0

    .line 189
    const/16 v16, 0x0

    .line 190
    .line 191
    goto :goto_a

    .line 192
    :cond_6
    invoke-virtual {v11}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    :cond_7
    move-object v11, v3

    .line 197
    check-cast v11, Lkotlin/ranges/IntProgressionIterator;

    .line 198
    .line 199
    iget-boolean v11, v11, Lkotlin/ranges/IntProgressionIterator;->l:Z

    .line 200
    .line 201
    if-eqz v11, :cond_9

    .line 202
    .line 203
    move-object v11, v3

    .line 204
    check-cast v11, Lkotlin/collections/IntIterator;

    .line 205
    .line 206
    invoke-virtual {v11}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    const/16 v16, 0x0

    .line 211
    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    if-eqz v4, :cond_8

    .line 217
    .line 218
    invoke-virtual {v4, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    if-eqz v4, :cond_8

    .line 223
    .line 224
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    goto :goto_9

    .line 229
    :cond_8
    move-object/from16 v4, v16

    .line 230
    .line 231
    :goto_9
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_7

    .line 236
    .line 237
    move-object v7, v10

    .line 238
    move v10, v12

    .line 239
    goto :goto_a

    .line 240
    :cond_9
    const/16 v16, 0x0

    .line 241
    .line 242
    move-object v7, v10

    .line 243
    const/4 v10, 0x0

    .line 244
    :goto_a
    if-nez v13, :cond_a

    .line 245
    .line 246
    move v11, v12

    .line 247
    goto :goto_b

    .line 248
    :cond_a
    const/4 v11, 0x0

    .line 249
    :goto_b
    if-eqz v6, :cond_c

    .line 250
    .line 251
    iget-object v3, v6, Lkotlin/Result;->j:Ljava/lang/Object;

    .line 252
    .line 253
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 254
    .line 255
    instance-of v12, v3, Lkotlin/Result$Failure;

    .line 256
    .line 257
    if-eqz v12, :cond_b

    .line 258
    .line 259
    move-object v3, v4

    .line 260
    :cond_b
    check-cast v3, Ljava/lang/Boolean;

    .line 261
    .line 262
    move-object v12, v3

    .line 263
    goto :goto_c

    .line 264
    :cond_c
    move-object/from16 v12, v16

    .line 265
    .line 266
    :goto_c
    if-eqz v6, :cond_d

    .line 267
    .line 268
    iget-object v3, v6, Lkotlin/Result;->j:Ljava/lang/Object;

    .line 269
    .line 270
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    if-eqz v3, :cond_d

    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    move-object v13, v4

    .line 285
    goto :goto_d

    .line 286
    :cond_d
    move-object/from16 v13, v16

    .line 287
    .line 288
    :goto_d
    new-instance v4, Lnet/blip/android/InboundShareUriAccess;

    .line 289
    .line 290
    move-object v6, v0

    .line 291
    invoke-direct/range {v4 .. v13}, Lnet/blip/android/InboundShareUriAccess;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Boolean;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move v5, v14

    .line 298
    const/4 v3, 0x0

    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_e
    const/16 v16, 0x0

    .line 302
    .line 303
    invoke-static {}, Lkotlin/collections/CollectionsKt;->T()V

    .line 304
    .line 305
    .line 306
    throw v16

    .line 307
    :cond_f
    return-object v1
.end method

.method public static final e(Landroid/content/Intent;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->o()Lkotlin/collections/builders/ListBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->l(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->Z(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
