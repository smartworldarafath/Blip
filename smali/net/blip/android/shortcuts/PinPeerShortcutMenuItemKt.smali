.class public abstract Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v5, p2

    .line 8
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const p2, 0x18f30f64

    .line 11
    .line 12
    .line 13
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 p2, p3, 0x6

    .line 17
    .line 18
    const/4 v8, 0x2

    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    const/4 p2, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p2, v8

    .line 30
    :goto_0
    or-int/2addr p2, p3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move p2, p3

    .line 33
    :goto_1
    and-int/lit8 v0, p3, 0x30

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    move v0, v1

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v0, 0x10

    .line 48
    .line 49
    :goto_2
    or-int/2addr p2, v0

    .line 50
    :cond_3
    and-int/lit8 v0, p2, 0x13

    .line 51
    .line 52
    const/16 v2, 0x12

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    const/4 v4, 0x1

    .line 56
    if-eq v0, v2, :cond_4

    .line 57
    .line 58
    move v0, v4

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    move v0, v3

    .line 61
    :goto_3
    and-int/lit8 v2, p2, 0x1

    .line 62
    .line 63
    invoke-virtual {v5, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_e

    .line 68
    .line 69
    sget-object v0, Landroidx/activity/compose/LocalActivityKt;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 70
    .line 71
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    instance-of v2, v0, Lnet/blip/android/MainActivity;

    .line 76
    .line 77
    if-eqz v2, :cond_5

    .line 78
    .line 79
    check-cast v0, Lnet/blip/android/MainActivity;

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_5
    const/4 v0, 0x0

    .line 83
    :goto_4
    if-nez v0, :cond_6

    .line 84
    .line 85
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    if-eqz p2, :cond_f

    .line 90
    .line 91
    new-instance v0, Lpd;

    .line 92
    .line 93
    invoke-direct {v0, p0, p1, p3, v3}, Lpd;-><init>(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;II)V

    .line 94
    .line 95
    .line 96
    :goto_5
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 97
    .line 98
    return-void

    .line 99
    :cond_6
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 108
    .line 109
    if-nez v2, :cond_7

    .line 110
    .line 111
    if-ne v6, v7, :cond_8

    .line 112
    .line 113
    :cond_7
    const-class v2, Landroid/content/pm/ShortcutManager;

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Landroid/content/pm/ShortcutManager;

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_8
    check-cast v6, Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-nez v2, :cond_9

    .line 139
    .line 140
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-eqz p2, :cond_f

    .line 145
    .line 146
    new-instance v0, Lpd;

    .line 147
    .line 148
    invoke-direct {v0, p0, p1, p3, v4}, Lpd;-><init>(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;II)V

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_9
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    if-ne v2, v7, :cond_a

    .line 157
    .line 158
    invoke-static {v5}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_a
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 166
    .line 167
    and-int/lit8 p2, p2, 0x70

    .line 168
    .line 169
    if-ne p2, v1, :cond_b

    .line 170
    .line 171
    move v3, v4

    .line 172
    :cond_b
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    or-int/2addr p2, v3

    .line 177
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    or-int/2addr p2, v1

    .line 182
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    or-int/2addr p2, v1

    .line 187
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    if-nez p2, :cond_c

    .line 192
    .line 193
    if-ne v1, v7, :cond_d

    .line 194
    .line 195
    :cond_c
    new-instance v1, Lnet/blip/android/shortcuts/a;

    .line 196
    .line 197
    invoke-direct {v1, p1, v2, v0, p0}, Lnet/blip/android/shortcuts/a;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lnet/blip/android/MainActivity;Lnet/blip/libblip/Peer;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_d
    move-object v0, v1

    .line 204
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 205
    .line 206
    const/high16 v6, 0x30000

    .line 207
    .line 208
    const/16 v7, 0x1e

    .line 209
    .line 210
    const/4 v1, 0x0

    .line 211
    const/4 v2, 0x0

    .line 212
    const/4 v3, 0x0

    .line 213
    sget-object v4, Lnet/blip/android/shortcuts/ComposableSingletons$PinPeerShortcutMenuItemKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 214
    .line 215
    invoke-static/range {v0 .. v7}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 216
    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_e
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 220
    .line 221
    .line 222
    :goto_6
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    if-eqz p2, :cond_f

    .line 227
    .line 228
    new-instance v0, Lpd;

    .line 229
    .line 230
    invoke-direct {v0, p0, p1, p3, v8}, Lpd;-><init>(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;II)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_5

    .line 234
    .line 235
    :cond_f
    return-void
.end method
