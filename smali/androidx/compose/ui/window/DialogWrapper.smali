.class final Landroidx/compose/ui/window/DialogWrapper;
.super Landroidx/activity/ComponentDialog;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public o:Lkotlin/jvm/functions/Function0;

.field public p:Landroidx/compose/ui/window/DialogProperties;

.field public final q:Landroid/view/View;

.field public final r:Landroidx/compose/ui/window/DialogLayout;

.field public s:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-boolean v2, p2, Landroidx/compose/ui/window/DialogProperties;->e:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const v2, 0x7f1200e7

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v2, 0x7f120109

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Landroidx/activity/ComponentDialog;-><init>(Landroid/view/ContextThemeWrapper;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->o:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->p:Landroidx/compose/ui/window/DialogProperties;

    .line 27
    .line 28
    iput-object p3, p0, Landroidx/compose/ui/window/DialogWrapper;->q:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 p2, 0x0

    .line 35
    if-eqz p1, :cond_6

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->p:Landroidx/compose/ui/window/DialogProperties;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget v0, v0, Landroidx/compose/ui/window/DialogProperties;->g:I

    .line 50
    .line 51
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 58
    .line 59
    .line 60
    const v1, 0x106000d

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->p:Landroidx/compose/ui/window/DialogProperties;

    .line 67
    .line 68
    iget-boolean v1, v1, Landroidx/compose/ui/window/DialogProperties;->e:Z

    .line 69
    .line 70
    invoke-static {p1, v1}, Landroidx/core/view/WindowCompat;->a(Landroid/view/Window;Z)V

    .line 71
    .line 72
    .line 73
    const/16 v1, 0x11

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->p:Landroidx/compose/ui/window/DialogProperties;

    .line 79
    .line 80
    iget-boolean v1, v1, Landroidx/compose/ui/window/DialogProperties;->e:Z

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    if-nez v1, :cond_3

    .line 84
    .line 85
    const v1, 0x10100

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget-object v3, Landroidx/compose/ui/window/Api28Impl;->a:Landroidx/compose/ui/window/Api28Impl;

    .line 96
    .line 97
    invoke-virtual {v3, v1}, Landroidx/compose/ui/window/Api28Impl;->a(Landroid/view/WindowManager$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 101
    .line 102
    const/16 v4, 0x1e

    .line 103
    .line 104
    if-lt v3, v4, :cond_2

    .line 105
    .line 106
    sget-object v3, Landroidx/compose/ui/window/Api30Impl;->a:Landroidx/compose/ui/window/Api30Impl;

    .line 107
    .line 108
    invoke-virtual {v3, v1, v2}, Landroidx/compose/ui/window/Api30Impl;->b(Landroid/view/WindowManager$LayoutParams;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v1, v2}, Landroidx/compose/ui/window/Api30Impl;->c(Landroid/view/WindowManager$LayoutParams;I)V

    .line 112
    .line 113
    .line 114
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    new-instance v1, Landroidx/compose/ui/window/DialogLayout;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-direct {v1, v3, p1}, Landroidx/compose/ui/window/DialogLayout;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Landroidx/compose/ui/window/DialogWrapper;->p:Landroidx/compose/ui/window/DialogProperties;

    .line 127
    .line 128
    iget-object v3, v3, Landroidx/compose/ui/window/DialogProperties;->f:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v4, "Dialog:"

    .line 136
    .line 137
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p6

    .line 147
    const v3, 0x7f0a0079

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v3, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 154
    .line 155
    .line 156
    const/high16 p6, 0x41000000    # 8.0f

    .line 157
    .line 158
    invoke-interface {p5, p6}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 159
    .line 160
    .line 161
    move-result p5

    .line 162
    invoke-virtual {v1, p5}, Landroid/view/View;->setElevation(F)V

    .line 163
    .line 164
    .line 165
    new-instance p5, Landroidx/compose/ui/window/DialogWrapper$1$2;

    .line 166
    .line 167
    invoke-direct {p5}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, p5}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 171
    .line 172
    .line 173
    iput-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->r:Landroidx/compose/ui/window/DialogLayout;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    instance-of p5, p1, Landroid/view/ViewGroup;

    .line 180
    .line 181
    if-eqz p5, :cond_4

    .line 182
    .line 183
    move-object p2, p1

    .line 184
    check-cast p2, Landroid/view/ViewGroup;

    .line 185
    .line 186
    :cond_4
    if-eqz p2, :cond_5

    .line 187
    .line 188
    invoke-static {p2}, Landroidx/compose/ui/window/DialogWrapper;->h(Landroid/view/ViewGroup;)V

    .line 189
    .line 190
    .line 191
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/activity/ComponentDialog;->setContentView(Landroid/view/View;)V

    .line 192
    .line 193
    .line 194
    invoke-static {p3}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    const p2, 0x7f0a0206

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-static {p3}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->a(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    const p2, 0x7f0a020a

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-static {p3}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->a(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    const p2, 0x7f0a0209

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->o:Lkotlin/jvm/functions/Function0;

    .line 225
    .line 226
    iget-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->p:Landroidx/compose/ui/window/DialogProperties;

    .line 227
    .line 228
    invoke-virtual {p0, p1, p2, p4}, Landroidx/compose/ui/window/DialogWrapper;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Landroidx/activity/ComponentDialog;->a()Landroidx/activity/OnBackPressedDispatcher;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    new-instance p2, Landroidx/compose/ui/window/a;

    .line 236
    .line 237
    invoke-direct {p2, p0, v0}, Landroidx/compose/ui/window/a;-><init>(Landroidx/compose/ui/window/DialogWrapper;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    new-instance p3, Landroidx/activity/OnBackPressedDispatcherKt$addCallback$callback$1;

    .line 244
    .line 245
    invoke-direct {p3, p2}, Landroidx/activity/OnBackPressedDispatcherKt$addCallback$callback$1;-><init>(Landroidx/compose/ui/window/a;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, p0, p3}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedDispatcherKt$addCallback$callback$1;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_6
    const-string p0, "Dialog has no window"

    .line 253
    .line 254
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw p2
.end method

.method public static final h(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3
    .line 4
    .line 5
    instance-of v1, p0, Landroidx/compose/ui/window/DialogLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    :goto_0
    if-ge v0, v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    check-cast v2, Landroid/view/ViewGroup;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    :goto_1
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-static {v2}, Landroidx/compose/ui/window/DialogWrapper;->h(Landroid/view/ViewGroup;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final i(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 6

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->o:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->p:Landroidx/compose/ui/window/DialogProperties;

    .line 4
    .line 5
    iget-object p1, p2, Landroidx/compose/ui/window/DialogProperties;->c:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->q:Landroid/view/View;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->b(Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    if-eq p1, v2, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lk8;->e()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    move v0, v2

    .line 33
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/16 v3, 0x2000

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    move v0, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const/16 v0, -0x2001

    .line 47
    .line 48
    :goto_1
    invoke-virtual {p1, v0, v3}, Landroid/view/Window;->setFlags(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    if-ne p1, v2, :cond_4

    .line 58
    .line 59
    move p1, v2

    .line 60
    goto :goto_2

    .line 61
    :cond_4
    invoke-static {}, Lk8;->e()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    move p1, v1

    .line 66
    :goto_2
    iget-object p3, p0, Landroidx/compose/ui/window/DialogWrapper;->r:Landroidx/compose/ui/window/DialogLayout;

    .line 67
    .line 68
    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 69
    .line 70
    .line 71
    iget-boolean p1, p2, Landroidx/compose/ui/window/DialogProperties;->e:Z

    .line 72
    .line 73
    iget-boolean v0, p2, Landroidx/compose/ui/window/DialogProperties;->d:Z

    .line 74
    .line 75
    iget-object v3, p3, Landroidx/compose/ui/window/DialogLayout;->t:Landroid/view/Window;

    .line 76
    .line 77
    iget-boolean v4, p3, Landroidx/compose/ui/window/DialogLayout;->x:Z

    .line 78
    .line 79
    if-eqz v4, :cond_7

    .line 80
    .line 81
    iget-boolean v4, p3, Landroidx/compose/ui/window/DialogLayout;->v:Z

    .line 82
    .line 83
    if-ne v0, v4, :cond_7

    .line 84
    .line 85
    iget-boolean v4, p3, Landroidx/compose/ui/window/DialogLayout;->w:Z

    .line 86
    .line 87
    if-eq p1, v4, :cond_6

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    move v4, v1

    .line 91
    goto :goto_4

    .line 92
    :cond_7
    :goto_3
    move v4, v2

    .line 93
    :goto_4
    iput-boolean v0, p3, Landroidx/compose/ui/window/DialogLayout;->v:Z

    .line 94
    .line 95
    iput-boolean p1, p3, Landroidx/compose/ui/window/DialogLayout;->w:Z

    .line 96
    .line 97
    if-eqz v4, :cond_a

    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    const/4 v5, -0x2

    .line 104
    if-eqz v0, :cond_8

    .line 105
    .line 106
    move v0, v5

    .line 107
    goto :goto_5

    .line 108
    :cond_8
    const/4 v0, -0x1

    .line 109
    :goto_5
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 110
    .line 111
    if-ne v0, v4, :cond_9

    .line 112
    .line 113
    iget-boolean v4, p3, Landroidx/compose/ui/window/DialogLayout;->x:Z

    .line 114
    .line 115
    if-nez v4, :cond_a

    .line 116
    .line 117
    :cond_9
    invoke-virtual {v3, v0, v5}, Landroid/view/Window;->setLayout(II)V

    .line 118
    .line 119
    .line 120
    iput-boolean v2, p3, Landroidx/compose/ui/window/DialogLayout;->x:Z

    .line 121
    .line 122
    :cond_a
    iget-boolean p2, p2, Landroidx/compose/ui/window/DialogProperties;->b:Z

    .line 123
    .line 124
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    if-eqz p0, :cond_d

    .line 132
    .line 133
    if-eqz p1, :cond_b

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 137
    .line 138
    const/16 p2, 0x1f

    .line 139
    .line 140
    if-ge p1, p2, :cond_c

    .line 141
    .line 142
    const/16 v1, 0x10

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_c
    const/16 v1, 0x30

    .line 146
    .line 147
    :goto_6
    invoke-virtual {p0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 148
    .line 149
    .line 150
    :cond_d
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->p:Landroidx/compose/ui/window/DialogProperties;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/compose/ui/window/DialogProperties;->a:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0x6f

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->o:Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->p:Landroidx/compose/ui/window/DialogProperties;

    .line 6
    .line 7
    iget-boolean v1, v1, Landroidx/compose/ui/window/DialogProperties;->b:Z

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->r:Landroidx/compose/ui/window/DialogLayout;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 28
    .line 29
    .line 30
    cmpg-float v5, v5, v6

    .line 31
    .line 32
    if-gtz v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    cmpg-float v5, v5, v6

    .line 43
    .line 44
    if-gtz v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    if-nez v5, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    add-int/2addr v7, v6

    .line 62
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    add-int/2addr v6, v7

    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    add-int/2addr v8, v1

    .line 76
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    add-int/2addr v1, v8

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-static {v5}, Lkotlin/math/MathKt;->b(F)I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-gt v7, v5, :cond_1

    .line 90
    .line 91
    if-gt v5, v6, :cond_1

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-static {v5}, Lkotlin/math/MathKt;->b(F)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-gt v8, v5, :cond_1

    .line 102
    .line 103
    if-gt v5, v1, :cond_1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    if-eq p1, v4, :cond_3

    .line 113
    .line 114
    if-eq p1, v2, :cond_2

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_2
    iput-boolean v3, p0, Landroidx/compose/ui/window/DialogWrapper;->s:Z

    .line 118
    .line 119
    return v0

    .line 120
    :cond_3
    iget-boolean p1, p0, Landroidx/compose/ui/window/DialogWrapper;->s:Z

    .line 121
    .line 122
    if-eqz p1, :cond_6

    .line 123
    .line 124
    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->o:Lkotlin/jvm/functions/Function0;

    .line 125
    .line 126
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    iput-boolean v3, p0, Landroidx/compose/ui/window/DialogWrapper;->s:Z

    .line 130
    .line 131
    return v4

    .line 132
    :cond_4
    iput-boolean v4, p0, Landroidx/compose/ui/window/DialogWrapper;->s:Z

    .line 133
    .line 134
    return v4

    .line 135
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_7

    .line 140
    .line 141
    if-eq p1, v4, :cond_7

    .line 142
    .line 143
    if-eq p1, v2, :cond_7

    .line 144
    .line 145
    :cond_6
    :goto_2
    return v0

    .line 146
    :cond_7
    iput-boolean v3, p0, Landroidx/compose/ui/window/DialogWrapper;->s:Z

    .line 147
    .line 148
    return v0
.end method
