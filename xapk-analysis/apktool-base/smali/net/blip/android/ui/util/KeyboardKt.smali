.class public abstract Lnet/blip/android/ui/util/KeyboardKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->u:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 5
    .line 6
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/compose/ui/platform/WindowInfo;

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/platform/LazyWindowInfo;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_8

    .line 22
    .line 23
    const v0, -0x3ea6582f

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 27
    .line 28
    .line 29
    const v0, 0x2e936d88

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 40
    .line 41
    if-ne v0, v2, :cond_0

    .line 42
    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-ne v3, v2, :cond_1

    .line 59
    .line 60
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 70
    .line 71
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_6

    .line 82
    .line 83
    const v4, -0x399728df

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 87
    .line 88
    .line 89
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 90
    .line 91
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Landroid/view/View;

    .line 96
    .line 97
    invoke-static {v4}, Lnet/blip/android/ui/util/KeyboardKt;->b(Landroid/view/View;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    const/4 v8, 0x0

    .line 114
    if-nez v6, :cond_2

    .line 115
    .line 116
    if-ne v7, v2, :cond_3

    .line 117
    .line 118
    :cond_2
    new-instance v7, Lnet/blip/android/ui/util/KeyboardKt$rememberIsKeyboardOpen$1$1;

    .line 119
    .line 120
    invoke-direct {v7, v4, v8}, Lnet/blip/android/ui/util/KeyboardKt$rememberIsKeyboardOpen$1$1;-><init>(Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 127
    .line 128
    invoke-static {p0, v5, v7}, Landroidx/compose/runtime/SnapshotStateKt;->i(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/MutableState;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->i:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 133
    .line 134
    invoke-virtual {p0, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Landroidx/compose/ui/focus/FocusManager;

    .line 139
    .line 140
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    check-cast v6, Ljava/lang/Boolean;

    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    invoke-virtual {p0, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    or-int/2addr v7, v9

    .line 158
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    if-nez v7, :cond_4

    .line 163
    .line 164
    if-ne v9, v2, :cond_5

    .line 165
    .line 166
    :cond_4
    new-instance v9, Lnet/blip/android/ui/util/KeyboardKt$clearFocusOnKeyboardDismissRegardless$1$1;

    .line 167
    .line 168
    invoke-direct {v9, v5, v4, v3, v8}, Lnet/blip/android/ui/util/KeyboardKt$clearFocusOnKeyboardDismissRegardless$1$1;-><init>(Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_5
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 175
    .line 176
    invoke-static {p0, v6, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_6
    const v4, -0x3991b46b

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 190
    .line 191
    .line 192
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    if-ne v4, v2, :cond_7

    .line 197
    .line 198
    new-instance v4, Lb;

    .line 199
    .line 200
    const/16 v2, 0x14

    .line 201
    .line 202
    invoke-direct {v4, v2, v0, v3}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_7
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 209
    .line 210
    invoke-static {p1, v4}, Landroidx/compose/ui/focus/FocusEventModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 215
    .line 216
    .line 217
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 218
    .line 219
    .line 220
    return-object p1

    .line 221
    :cond_8
    const v0, -0x3ea65692

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 225
    .line 226
    .line 227
    goto :goto_1
.end method

.method public static final b(Landroid/view/View;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 21
    .line 22
    sub-int v0, p0, v0

    .line 23
    .line 24
    int-to-double v0, v0

    .line 25
    int-to-double v2, p0

    .line 26
    const-wide v4, 0x3fc3333333333333L    # 0.15

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    mul-double/2addr v2, v4

    .line 32
    cmpl-double p0, v0, v2

    .line 33
    .line 34
    if-lez p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method
