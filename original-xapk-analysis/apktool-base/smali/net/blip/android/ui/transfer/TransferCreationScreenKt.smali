.class public abstract Lnet/blip/android/ui/transfer/TransferCreationScreenKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(ZLnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x3dd20559

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p4

    .line 19
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v1, 0x10

    .line 29
    .line 30
    :goto_1
    or-int/2addr v0, v1

    .line 31
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/16 v1, 0x100

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v1, 0x80

    .line 41
    .line 42
    :goto_2
    or-int/2addr v0, v1

    .line 43
    and-int/lit16 v1, v0, 0x93

    .line 44
    .line 45
    const/16 v2, 0x92

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    if-eq v1, v2, :cond_3

    .line 49
    .line 50
    move v1, v3

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    const/4 v1, 0x0

    .line 53
    :goto_3
    and-int/2addr v0, v3

    .line 54
    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iget-object v0, p1, Lnet/blip/libblip/PeerPickerViewModel;->c:Lnet/blip/libblip/DerivedStateFlow;

    .line 61
    .line 62
    invoke-static {v0, p3}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    xor-int/lit8 v1, p0, 0x1

    .line 67
    .line 68
    new-instance v2, Lu;

    .line 69
    .line 70
    const/16 v3, 0xf

    .line 71
    .line 72
    invoke-direct {v2, v0, p1, p2, v3}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 73
    .line 74
    .line 75
    const v0, -0x7e2e528d

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v2, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/16 v2, 0x180

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-static {v3, v1, v0, p3, v2}, Lnet/blip/shared/DisabledContentKt;->b(Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_4
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 90
    .line 91
    .line 92
    :goto_4
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    if-eqz p3, :cond_5

    .line 97
    .line 98
    new-instance v0, Lv7;

    .line 99
    .line 100
    invoke-direct {v0, p0, p1, p2, p4}, Lv7;-><init>(ZLnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function1;I)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 104
    .line 105
    :cond_5
    return-void
.end method

.method public static final b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, -0x32d6a07f

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x4

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 25
    :goto_0
    or-int/2addr v0, p3

    .line 26
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const/16 v2, 0x20

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v2, 0x10

    .line 36
    .line 37
    :goto_1
    or-int/2addr v0, v2

    .line 38
    and-int/lit8 v2, v0, 0x13

    .line 39
    .line 40
    const/16 v3, 0x12

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x1

    .line 44
    if-eq v2, v3, :cond_2

    .line 45
    .line 46
    move v2, v5

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v2, v4

    .line 49
    :goto_2
    and-int/lit8 v3, v0, 0x1

    .line 50
    .line 51
    invoke-virtual {p2, v3, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_8

    .line 56
    .line 57
    sget-object v2, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 58
    .line 59
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lnet/blip/libblip/Core;

    .line 64
    .line 65
    and-int/lit8 v3, v0, 0xe

    .line 66
    .line 67
    xor-int/lit8 v3, v3, 0x6

    .line 68
    .line 69
    if-le v3, v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_4

    .line 76
    .line 77
    :cond_3
    and-int/lit8 v3, v0, 0x6

    .line 78
    .line 79
    if-ne v3, v1, :cond_5

    .line 80
    .line 81
    :cond_4
    move v4, v5

    .line 82
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-nez v4, :cond_6

    .line 87
    .line 88
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 89
    .line 90
    if-ne v1, v3, :cond_7

    .line 91
    .line 92
    :cond_6
    new-instance v1, Lnet/blip/libblip/TransferChoosePeerViewModel;

    .line 93
    .line 94
    invoke-direct {v1, v2, p0}, Lnet/blip/libblip/TransferChoosePeerViewModel;-><init>(Lnet/blip/libblip/Core;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_7
    check-cast v1, Lnet/blip/libblip/TransferChoosePeerViewModel;

    .line 101
    .line 102
    invoke-static {p2}, Lnet/blip/shared/RememberViewModelsKt;->a(Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/PeerPickerViewModel;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    shl-int/lit8 v0, v0, 0x3

    .line 107
    .line 108
    and-int/lit16 v0, v0, 0x380

    .line 109
    .line 110
    invoke-static {v1, v2, p1, p2, v0}, Lnet/blip/android/ui/transfer/TransferCreationScreenKt;->c(Lnet/blip/libblip/TransferChoosePeerViewModel;Lnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_8
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 115
    .line 116
    .line 117
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    if-eqz p2, :cond_9

    .line 122
    .line 123
    new-instance v0, Lzc;

    .line 124
    .line 125
    const/16 v1, 0x9

    .line 126
    .line 127
    invoke-direct {v0, p3, v1, p0, p1}, Lzc;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 131
    .line 132
    :cond_9
    return-void
.end method

.method public static final c(Lnet/blip/libblip/TransferChoosePeerViewModel;Lnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move/from16 v9, p4

    .line 8
    .line 9
    move-object/from16 v10, p3

    .line 10
    .line 11
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, -0x3c130e0e

    .line 14
    .line 15
    .line 16
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, v9, 0x6

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int/2addr v0, v9

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, v9

    .line 35
    :goto_1
    and-int/lit8 v4, v9, 0x30

    .line 36
    .line 37
    if-nez v4, :cond_3

    .line 38
    .line 39
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    const/16 v4, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v4, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v0, v4

    .line 51
    :cond_3
    and-int/lit16 v4, v9, 0x180

    .line 52
    .line 53
    const/16 v5, 0x100

    .line 54
    .line 55
    if-nez v4, :cond_5

    .line 56
    .line 57
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    move v4, v5

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    const/16 v4, 0x80

    .line 66
    .line 67
    :goto_3
    or-int/2addr v0, v4

    .line 68
    :cond_5
    and-int/lit16 v4, v0, 0x93

    .line 69
    .line 70
    const/16 v6, 0x92

    .line 71
    .line 72
    const/4 v7, 0x1

    .line 73
    const/4 v8, 0x0

    .line 74
    if-eq v4, v6, :cond_6

    .line 75
    .line 76
    move v4, v7

    .line 77
    goto :goto_4

    .line 78
    :cond_6
    move v4, v8

    .line 79
    :goto_4
    and-int/lit8 v6, v0, 0x1

    .line 80
    .line 81
    invoke-virtual {v10, v6, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_f

    .line 86
    .line 87
    iget-object v4, v1, Lnet/blip/libblip/TransferChoosePeerViewModel;->c:Lnet/blip/libblip/DerivedStateFlow;

    .line 88
    .line 89
    invoke-static {v4, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget-object v6, v2, Lnet/blip/libblip/PeerPickerViewModel;->c:Lnet/blip/libblip/DerivedStateFlow;

    .line 94
    .line 95
    invoke-static {v6, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    iget-object v6, v1, Lnet/blip/libblip/TransferChoosePeerViewModel;->d:Lnet/blip/libblip/DerivedStateFlow;

    .line 100
    .line 101
    invoke-static {v6, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    iget-object v6, v2, Lnet/blip/libblip/PeerPickerViewModel;->e:Lkotlinx/coroutines/flow/StateFlow;

    .line 106
    .line 107
    invoke-static {v6, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    or-int/2addr v6, v14

    .line 120
    and-int/lit16 v0, v0, 0x380

    .line 121
    .line 122
    if-ne v0, v5, :cond_7

    .line 123
    .line 124
    move v14, v7

    .line 125
    goto :goto_5

    .line 126
    :cond_7
    move v14, v8

    .line 127
    :goto_5
    or-int/2addr v6, v14

    .line 128
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 133
    .line 134
    if-nez v6, :cond_8

    .line 135
    .line 136
    if-ne v14, v15, :cond_9

    .line 137
    .line 138
    :cond_8
    new-instance v14, Ln1;

    .line 139
    .line 140
    const/16 v6, 0x9

    .line 141
    .line 142
    invoke-direct {v14, v2, v3, v13, v6}, Ln1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_9
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 149
    .line 150
    invoke-static {v8, v14, v10, v8, v7}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    if-nez v6, :cond_a

    .line 162
    .line 163
    if-ne v14, v15, :cond_b

    .line 164
    .line 165
    :cond_a
    new-instance v14, Lkb;

    .line 166
    .line 167
    const/16 v6, 0x17

    .line 168
    .line 169
    invoke-direct {v14, v6, v1}, Lkb;-><init>(ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_b
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 176
    .line 177
    const/4 v6, 0x0

    .line 178
    invoke-static {v6, v14, v10, v8}, Lnet/blip/shared/OnDisposeKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 179
    .line 180
    .line 181
    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 182
    .line 183
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    check-cast v6, Landroid/content/Context;

    .line 188
    .line 189
    invoke-static {v10}, Lnet/blip/android/ui/util/NuancedPermissionStateKt;->b(Landroidx/compose/runtime/Composer;)Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 190
    .line 191
    .line 192
    move-result-object v14

    .line 193
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v16

    .line 197
    move-object/from16 v8, v16

    .line 198
    .line 199
    check-cast v8, Lnet/blip/libblip/frontend/Transfer;

    .line 200
    .line 201
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v16

    .line 205
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v17

    .line 209
    or-int v16, v16, v17

    .line 210
    .line 211
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v17

    .line 215
    or-int v16, v16, v17

    .line 216
    .line 217
    if-ne v0, v5, :cond_c

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_c
    const/4 v7, 0x0

    .line 221
    :goto_6
    or-int v0, v16, v7

    .line 222
    .line 223
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    if-nez v0, :cond_e

    .line 228
    .line 229
    if-ne v5, v15, :cond_d

    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_d
    move-object v0, v8

    .line 233
    goto :goto_8

    .line 234
    :cond_e
    :goto_7
    new-instance v3, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;

    .line 235
    .line 236
    move-object/from16 v16, v8

    .line 237
    .line 238
    const/4 v8, 0x0

    .line 239
    move-object v7, v4

    .line 240
    move-object v5, v6

    .line 241
    move-object v4, v14

    .line 242
    move-object/from16 v0, v16

    .line 243
    .line 244
    move-object/from16 v6, p2

    .line 245
    .line 246
    invoke-direct/range {v3 .. v8}, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;-><init>(Lnet/blip/android/ui/util/NuancedPermissionState;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 247
    .line 248
    .line 249
    move-object v4, v7

    .line 250
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    move-object v5, v3

    .line 254
    :goto_8
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 255
    .line 256
    invoke-static {v10, v0, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 257
    .line 258
    .line 259
    new-instance v0, Lu8;

    .line 260
    .line 261
    move-object v3, v1

    .line 262
    move-object v1, v2

    .line 263
    move-object v6, v11

    .line 264
    move-object v5, v12

    .line 265
    move-object v7, v13

    .line 266
    move-object/from16 v2, p2

    .line 267
    .line 268
    invoke-direct/range {v0 .. v7}, Lu8;-><init>(Lnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function0;Lnet/blip/libblip/TransferChoosePeerViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 269
    .line 270
    .line 271
    const v1, -0x4f8163ad

    .line 272
    .line 273
    .line 274
    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    const/16 v5, 0x180

    .line 279
    .line 280
    const/4 v6, 0x3

    .line 281
    const-wide/16 v0, 0x0

    .line 282
    .line 283
    const/4 v2, 0x0

    .line 284
    move-object v4, v10

    .line 285
    invoke-static/range {v0 .. v6}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->b(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 286
    .line 287
    .line 288
    goto :goto_9

    .line 289
    :cond_f
    move-object v4, v10

    .line 290
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 291
    .line 292
    .line 293
    :goto_9
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    if-eqz v6, :cond_10

    .line 298
    .line 299
    new-instance v0, Lb1;

    .line 300
    .line 301
    const/16 v5, 0x10

    .line 302
    .line 303
    move-object/from16 v1, p0

    .line 304
    .line 305
    move-object/from16 v2, p1

    .line 306
    .line 307
    move-object/from16 v3, p2

    .line 308
    .line 309
    move v4, v9

    .line 310
    invoke-direct/range {v0 .. v5}, Lb1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;II)V

    .line 311
    .line 312
    .line 313
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 314
    .line 315
    :cond_10
    return-void
.end method
