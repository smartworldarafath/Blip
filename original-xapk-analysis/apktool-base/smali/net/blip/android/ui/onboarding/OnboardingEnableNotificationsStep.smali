.class public final Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStep;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStep;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStep;->a:Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStep;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v7, p2

    .line 9
    .line 10
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v2, -0x732529b7

    .line 13
    .line 14
    .line 15
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v10, 0x4

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    move v2, v10

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v2, v3

    .line 29
    :goto_0
    or-int v11, v1, v2

    .line 30
    .line 31
    and-int/lit8 v2, v11, 0x3

    .line 32
    .line 33
    const/4 v13, 0x0

    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v2, v13

    .line 39
    :goto_1
    and-int/lit8 v3, v11, 0x1

    .line 40
    .line 41
    invoke-virtual {v7, v3, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/16 v14, 0x1a

    .line 46
    .line 47
    if-eqz v2, :cond_b

    .line 48
    .line 49
    new-array v2, v13, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 56
    .line 57
    if-ne v3, v15, :cond_2

    .line 58
    .line 59
    new-instance v3, Lx9;

    .line 60
    .line 61
    const/16 v4, 0x1d

    .line 62
    .line 63
    invoke-direct {v3, v4}, Lx9;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 70
    .line 71
    invoke-static {v2, v3, v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->c([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 76
    .line 77
    invoke-static {v7}, Lnet/blip/android/ui/util/NuancedPermissionStateKt;->b(Landroidx/compose/runtime/Composer;)Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    new-instance v4, La0;

    .line 82
    .line 83
    const/16 v5, 0x19

    .line 84
    .line 85
    invoke-direct {v4, v5, v3, v2}, La0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const v3, 0x7b6e3d77

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v4, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const/16 v8, 0x6db6

    .line 96
    .line 97
    const/4 v9, 0x0

    .line 98
    move-object v3, v2

    .line 99
    sget-object v2, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingEnableNotificationsStepKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 100
    .line 101
    move-object v4, v3

    .line 102
    sget-object v3, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingEnableNotificationsStepKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 103
    .line 104
    move-object/from16 v16, v4

    .line 105
    .line 106
    sget-object v4, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingEnableNotificationsStepKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 107
    .line 108
    move/from16 v17, v5

    .line 109
    .line 110
    sget-object v5, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingEnableNotificationsStepKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 111
    .line 112
    move-object/from16 p2, v16

    .line 113
    .line 114
    move/from16 v12, v17

    .line 115
    .line 116
    invoke-static/range {v2 .. v9}, Lnet/blip/android/ui/onboarding/ComposablesKt;->c(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 117
    .line 118
    .line 119
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_a

    .line 130
    .line 131
    const v2, 0x6e6a861c

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 135
    .line 136
    .line 137
    move-object/from16 v3, p2

    .line 138
    .line 139
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    and-int/lit8 v4, v11, 0xe

    .line 144
    .line 145
    if-ne v4, v10, :cond_3

    .line 146
    .line 147
    const/16 v16, 0x1

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    move/from16 v16, v13

    .line 151
    .line 152
    :goto_2
    or-int v2, v2, v16

    .line 153
    .line 154
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    if-nez v2, :cond_4

    .line 159
    .line 160
    if-ne v4, v15, :cond_5

    .line 161
    .line 162
    :cond_4
    new-instance v4, Lk1;

    .line 163
    .line 164
    const/4 v2, 0x5

    .line 165
    invoke-direct {v4, v0, v3, v2}, Lk1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_5
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 172
    .line 173
    new-instance v5, Lkotlin/Pair;

    .line 174
    .line 175
    const-string v2, "I understand"

    .line 176
    .line 177
    invoke-direct {v5, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    if-nez v2, :cond_6

    .line 189
    .line 190
    if-ne v4, v15, :cond_7

    .line 191
    .line 192
    :cond_6
    new-instance v4, Lo1;

    .line 193
    .line 194
    invoke-direct {v4, v3, v12}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_7
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 201
    .line 202
    new-instance v6, Lkotlin/Pair;

    .line 203
    .line 204
    const-string v2, "Cancel"

    .line 205
    .line 206
    invoke-direct {v6, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    if-nez v2, :cond_8

    .line 218
    .line 219
    if-ne v4, v15, :cond_9

    .line 220
    .line 221
    :cond_8
    new-instance v4, Lo1;

    .line 222
    .line 223
    invoke-direct {v4, v3, v14}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    :cond_9
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 230
    .line 231
    const/16 v9, 0x36

    .line 232
    .line 233
    const/4 v10, 0x4

    .line 234
    const-string v2, "Continue without notifications?"

    .line 235
    .line 236
    const-string v3, "You won\u2019t be able to accept incoming content on this device"

    .line 237
    .line 238
    move-object v8, v7

    .line 239
    move-object v7, v4

    .line 240
    const/4 v4, 0x0

    .line 241
    invoke-static/range {v2 .. v10}, Lnet/blip/android/ui/components/AlertDialogKt;->a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/Pair;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 242
    .line 243
    .line 244
    move-object v7, v8

    .line 245
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_a
    const v2, 0x6e7274f9

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_b
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 260
    .line 261
    .line 262
    :goto_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    if-eqz v2, :cond_c

    .line 267
    .line 268
    new-instance v3, La0;

    .line 269
    .line 270
    move-object/from16 v4, p0

    .line 271
    .line 272
    invoke-direct {v3, v1, v14, v4, v0}, La0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 276
    .line 277
    :cond_c
    return-void
.end method
