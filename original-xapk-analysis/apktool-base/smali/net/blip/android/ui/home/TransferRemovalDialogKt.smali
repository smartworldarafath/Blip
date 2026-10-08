.class public abstract Lnet/blip/android/ui/home/TransferRemovalDialogKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v14, p2

    .line 11
    .line 12
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v3, -0x503e1349

    .line 15
    .line 16
    .line 17
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    const/16 v3, 0x20

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v3, 0x10

    .line 30
    .line 31
    :goto_0
    or-int/2addr v3, v2

    .line 32
    and-int/lit8 v4, v3, 0x13

    .line 33
    .line 34
    const/16 v5, 0x12

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x1

    .line 38
    if-eq v4, v5, :cond_1

    .line 39
    .line 40
    move v4, v7

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v4, v6

    .line 43
    :goto_1
    and-int/2addr v3, v7

    .line 44
    invoke-virtual {v14, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    new-instance v4, Lsh;

    .line 69
    .line 70
    invoke-direct {v4, v0, v1, v2, v7}, Lsh;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;II)V

    .line 71
    .line 72
    .line 73
    :goto_2
    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    sget-object v3, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 77
    .line 78
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lnet/blip/libblip/Core;

    .line 83
    .line 84
    iget-object v3, v3, Lnet/blip/libblip/Core;->b:Lc;

    .line 85
    .line 86
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 87
    .line 88
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {v1, v14}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 103
    .line 104
    if-ne v7, v8, :cond_3

    .line 105
    .line 106
    new-instance v7, Lcd;

    .line 107
    .line 108
    const/16 v8, 0x1b

    .line 109
    .line 110
    invoke-direct {v7, v0, v8}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 117
    .line 118
    new-instance v8, Ld4;

    .line 119
    .line 120
    invoke-direct {v8, v5, v3, v0, v4}, Ld4;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    const v3, 0x74f7076f

    .line 124
    .line 125
    .line 126
    invoke-static {v3, v8, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    const/16 v15, 0x6c30

    .line 131
    .line 132
    const/16 v16, 0x1e4

    .line 133
    .line 134
    const/4 v5, 0x0

    .line 135
    move v3, v6

    .line 136
    sget-object v6, Lnet/blip/android/ui/home/ComposableSingletons$TransferRemovalDialogKt;->h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 137
    .line 138
    move v8, v3

    .line 139
    move-object v3, v7

    .line 140
    sget-object v7, Lnet/blip/android/ui/home/ComposableSingletons$TransferRemovalDialogKt;->i:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 141
    .line 142
    move v9, v8

    .line 143
    const/4 v8, 0x0

    .line 144
    move v11, v9

    .line 145
    const-wide/16 v9, 0x0

    .line 146
    .line 147
    move v13, v11

    .line 148
    const-wide/16 v11, 0x0

    .line 149
    .line 150
    move/from16 v17, v13

    .line 151
    .line 152
    const/4 v13, 0x0

    .line 153
    invoke-static/range {v3 .. v16}, Landroidx/compose/material/AndroidAlertDialog_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_4
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 158
    .line 159
    .line 160
    :goto_3
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    if-eqz v3, :cond_5

    .line 165
    .line 166
    new-instance v4, Lsh;

    .line 167
    .line 168
    const/4 v13, 0x0

    .line 169
    invoke-direct {v4, v0, v1, v2, v13}, Lsh;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;II)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_5
    return-void
.end method

.method public static final b(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    move/from16 v7, p2

    .line 4
    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v8, p1

    .line 9
    .line 10
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, 0x43d7fa99

    .line 13
    .line 14
    .line 15
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    and-int/lit8 v0, v7, 0x3

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    and-int/lit8 v1, v7, 0x1

    .line 27
    .line 28
    invoke-virtual {v8, v1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    sget-object v0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 35
    .line 36
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lnet/blip/libblip/Core;

    .line 41
    .line 42
    iget-object v1, v1, Lnet/blip/libblip/Core;->b:Lc;

    .line 43
    .line 44
    invoke-static {v0, v8}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 49
    .line 50
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    move-object v4, v2

    .line 55
    check-cast v4, Landroid/content/Context;

    .line 56
    .line 57
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/String;

    .line 62
    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    new-instance v1, La1;

    .line 72
    .line 73
    const/4 v2, 0x4

    .line 74
    invoke-direct {v1, v3, v7, v2}, La1;-><init>(Landroidx/compose/runtime/MutableState;II)V

    .line 75
    .line 76
    .line 77
    :goto_1
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    iget-object v0, v0, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 81
    .line 82
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lnet/blip/libblip/frontend/Transfer;

    .line 87
    .line 88
    const/4 v9, 0x5

    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    new-instance v1, La1;

    .line 98
    .line 99
    invoke-direct {v1, v3, v7, v9}, La1;-><init>(Landroidx/compose/runtime/MutableState;II)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    sget-object v5, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v0}, Lnet/blip/shared/StringsKt;->e(Lnet/blip/libblip/frontend/Transfer;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 114
    .line 115
    if-ne v0, v6, :cond_3

    .line 116
    .line 117
    new-instance v0, Lcd;

    .line 118
    .line 119
    const/16 v6, 0x1d

    .line 120
    .line 121
    invoke-direct {v0, v3, v6}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    move-object v10, v0

    .line 128
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 129
    .line 130
    new-instance v0, Lr7;

    .line 131
    .line 132
    const/16 v6, 0x8

    .line 133
    .line 134
    invoke-direct/range {v0 .. v6}, Lr7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 135
    .line 136
    .line 137
    const v1, -0x7cb08f1f

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v1, Lw;

    .line 145
    .line 146
    invoke-direct {v1, v5, v9}, Lw;-><init>(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    const v2, -0x5f998d1d

    .line 150
    .line 151
    .line 152
    invoke-static {v2, v1, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    const/16 v20, 0x6c30

    .line 157
    .line 158
    const/16 v21, 0x1e4

    .line 159
    .line 160
    move-object/from16 v19, v8

    .line 161
    .line 162
    move-object v8, v10

    .line 163
    const/4 v10, 0x0

    .line 164
    sget-object v12, Lnet/blip/android/ui/home/ComposableSingletons$TransferRemovalDialogKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 165
    .line 166
    const/4 v13, 0x0

    .line 167
    const-wide/16 v14, 0x0

    .line 168
    .line 169
    const-wide/16 v16, 0x0

    .line 170
    .line 171
    const/16 v18, 0x0

    .line 172
    .line 173
    move-object v9, v0

    .line 174
    invoke-static/range {v8 .. v21}, Landroidx/compose/material/AndroidAlertDialog_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_4
    move-object/from16 v19, v8

    .line 179
    .line 180
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 181
    .line 182
    .line 183
    :goto_2
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    if-eqz v0, :cond_5

    .line 188
    .line 189
    new-instance v1, La1;

    .line 190
    .line 191
    const/4 v2, 0x6

    .line 192
    invoke-direct {v1, v3, v7, v2}, La1;-><init>(Landroidx/compose/runtime/MutableState;II)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_5
    return-void
.end method
