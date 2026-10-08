.class public abstract Lnet/blip/android/ui/components/TextFieldDialogKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/text/KeyboardOptions;ZLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v0, p8

    .line 11
    .line 12
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v1, -0x48e00405

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    and-int/lit8 v1, p9, 0x6

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    move v1, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x2

    .line 34
    :goto_0
    or-int v1, p9, v1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move/from16 v1, p9

    .line 38
    .line 39
    :goto_1
    or-int/lit16 v1, v1, 0x1b0

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const/16 v3, 0x800

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v3, 0x400

    .line 51
    .line 52
    :goto_2
    or-int/2addr v1, v3

    .line 53
    move-object/from16 v7, p3

    .line 54
    .line 55
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    const/high16 v3, 0x20000

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/high16 v3, 0x10000

    .line 65
    .line 66
    :goto_3
    or-int/2addr v1, v3

    .line 67
    const/high16 v3, 0x36000000

    .line 68
    .line 69
    or-int/2addr v1, v3

    .line 70
    const v3, 0x12492493

    .line 71
    .line 72
    .line 73
    and-int/2addr v3, v1

    .line 74
    const v4, 0x12492492

    .line 75
    .line 76
    .line 77
    const/4 v10, 0x1

    .line 78
    if-eq v3, v4, :cond_4

    .line 79
    .line 80
    move v3, v10

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    const/4 v3, 0x0

    .line 83
    :goto_4
    and-int/2addr v1, v10

    .line 84
    invoke-virtual {v0, v1, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    new-instance v1, Landroidx/compose/ui/window/DialogProperties;

    .line 91
    .line 92
    invoke-direct {v1}, Landroidx/compose/ui/window/DialogProperties;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 100
    .line 101
    if-ne v3, v4, :cond_5

    .line 102
    .line 103
    new-instance v3, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-static {v4, v4}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 110
    .line 111
    .line 112
    move-result-wide v4

    .line 113
    invoke-direct {v3, v2, v4, v5, p1}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    move-object v6, v3

    .line 124
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 125
    .line 126
    new-instance v3, Lv8;

    .line 127
    .line 128
    move-object v4, p0

    .line 129
    move-object v9, p2

    .line 130
    move-object/from16 v5, p5

    .line 131
    .line 132
    move-object v8, v7

    .line 133
    move-object/from16 v7, p4

    .line 134
    .line 135
    invoke-direct/range {v3 .. v9}, Lv8;-><init>(Ljava/lang/String;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 136
    .line 137
    .line 138
    const v2, 0x3471c944

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    const/16 v3, 0x1b6

    .line 146
    .line 147
    invoke-static {v7, v1, v2, v0, v3}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 148
    .line 149
    .line 150
    move-object v11, v1

    .line 151
    goto :goto_5

    .line 152
    :cond_6
    move-object/from16 v7, p4

    .line 153
    .line 154
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 155
    .line 156
    .line 157
    move/from16 v10, p6

    .line 158
    .line 159
    move-object/from16 v11, p7

    .line 160
    .line 161
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_7

    .line 166
    .line 167
    new-instance v3, Lvg;

    .line 168
    .line 169
    move-object v4, p0

    .line 170
    move-object v5, p1

    .line 171
    move-object v6, p2

    .line 172
    move-object/from16 v9, p5

    .line 173
    .line 174
    move/from16 v12, p9

    .line 175
    .line 176
    move-object v8, v7

    .line 177
    move-object/from16 v7, p3

    .line 178
    .line 179
    invoke-direct/range {v3 .. v12}, Lvg;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/text/KeyboardOptions;ZLandroidx/compose/ui/window/DialogProperties;I)V

    .line 180
    .line 181
    .line 182
    iput-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 183
    .line 184
    :cond_7
    return-void
.end method
