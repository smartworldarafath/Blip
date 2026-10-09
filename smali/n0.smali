.class public final synthetic Ln0;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V
    .locals 0

    .line 1
    iput p2, p0, Ln0;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Ln0;->k:Landroidx/compose/ui/platform/AndroidComposeView;

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
    .locals 9

    .line 1
    iget v0, p0, Ln0;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object p0, p0, Ln0;->k:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->w0:Landroid/view/MotionEvent;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x9

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v4, 0x7

    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/16 v5, 0x8

    .line 27
    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    filled-new-array {v1, v4, v5}, [Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->w0:Landroid/view/MotionEvent;

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    move v2, v3

    .line 63
    :cond_0
    if-eqz v0, :cond_1

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->x0:J

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->E0:Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->K0:Ln0;

    .line 79
    .line 80
    invoke-virtual {p0}, Ln0;->a()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeView;->R0:Ljava/lang/Class;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getConfiguration()Landroid/content/res/Configuration;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Landroidx/core/os/LocaleListCompat;->d(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->b()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {p0}, Landroidx/core/os/LocaleListCompat;->d(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    :cond_2
    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->c()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .line 122
    .line 123
    :goto_0
    if-ge v2, v0, :cond_3

    .line 124
    .line 125
    new-instance v3, Landroidx/compose/ui/text/intl/Locale;

    .line 126
    .line 127
    invoke-virtual {p0, v2}, Landroidx/core/os/LocaleListCompat;->a(I)Ljava/util/Locale;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-direct {v3, v4}, Landroidx/compose/ui/text/intl/Locale;-><init>(Ljava/util/Locale;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    add-int/lit8 v2, v2, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    new-instance p0, Landroidx/compose/ui/text/intl/LocaleList;

    .line 144
    .line 145
    invoke-direct {p0, v1}, Landroidx/compose/ui/text/intl/LocaleList;-><init>(Ljava/util/List;)V

    .line 146
    .line 147
    .line 148
    return-object p0

    .line 149
    :pswitch_1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->y:Landroidx/compose/runtime/MutableState;

    .line 150
    .line 151
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Ljava/lang/Boolean;

    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    return-object p0

    .line 163
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeView;->R0:Ljava/lang/Class;

    .line 164
    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 166
    .line 167
    const/16 v4, 0x1c

    .line 168
    .line 169
    if-le v0, v4, :cond_a

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-nez v0, :cond_4

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_4
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeView;->V0:Lr;

    .line 179
    .line 180
    if-nez v0, :cond_9

    .line 181
    .line 182
    new-instance v0, Lr;

    .line 183
    .line 184
    invoke-direct {v0, v3}, Lr;-><init>(I)V

    .line 185
    .line 186
    .line 187
    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeView;->V0:Lr;

    .line 188
    .line 189
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    :try_start_0
    sget-object v5, Landroidx/compose/ui/platform/AndroidComposeView;->R0:Ljava/lang/Class;

    .line 194
    .line 195
    if-nez v5, :cond_5

    .line 196
    .line 197
    const-string v5, "android.os.SystemProperties"

    .line 198
    .line 199
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    sput-object v5, Landroidx/compose/ui/platform/AndroidComposeView;->R0:Ljava/lang/Class;

    .line 204
    .line 205
    :cond_5
    sget-object v5, Landroidx/compose/ui/platform/AndroidComposeView;->T0:Ljava/lang/reflect/Method;

    .line 206
    .line 207
    if-nez v5, :cond_7

    .line 208
    .line 209
    sget-object v5, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    .line 210
    .line 211
    invoke-static {v5}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 212
    .line 213
    .line 214
    sget-object v5, Landroidx/compose/ui/platform/AndroidComposeView;->R0:Ljava/lang/Class;

    .line 215
    .line 216
    if-eqz v5, :cond_6

    .line 217
    .line 218
    const-string v6, "addChangeCallback"

    .line 219
    .line 220
    new-array v7, v3, [Ljava/lang/Class;

    .line 221
    .line 222
    const-class v8, Ljava/lang/Runnable;

    .line 223
    .line 224
    aput-object v8, v7, v2

    .line 225
    .line 226
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    goto :goto_1

    .line 231
    :cond_6
    move-object v5, v1

    .line 232
    :goto_1
    sput-object v5, Landroidx/compose/ui/platform/AndroidComposeView;->T0:Ljava/lang/reflect/Method;

    .line 233
    .line 234
    :cond_7
    sget-object v5, Landroidx/compose/ui/platform/AndroidComposeView;->T0:Ljava/lang/reflect/Method;

    .line 235
    .line 236
    if-eqz v5, :cond_8

    .line 237
    .line 238
    new-array v3, v3, [Ljava/lang/Object;

    .line 239
    .line 240
    aput-object v0, v3, v2

    .line 241
    .line 242
    invoke-virtual {v5, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .line 244
    .line 245
    :catchall_0
    :cond_8
    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 246
    .line 247
    .line 248
    :cond_9
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeView;->U0:Landroidx/collection/MutableObjectList;

    .line 249
    .line 250
    monitor-enter v0

    .line 251
    :try_start_1
    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    .line 253
    .line 254
    monitor-exit v0

    .line 255
    goto :goto_2

    .line 256
    :catchall_1
    move-exception p0

    .line 257
    monitor-exit v0

    .line 258
    throw p0

    .line 259
    :cond_a
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 260
    .line 261
    return-object p0

    .line 262
    :pswitch_3
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->W:Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 263
    .line 264
    if-eqz p0, :cond_e

    .line 265
    .line 266
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    :goto_3
    if-ge v2, v0, :cond_e

    .line 271
    .line 272
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    instance-of v4, v3, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 277
    .line 278
    if-eqz v4, :cond_b

    .line 279
    .line 280
    check-cast v3, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_b
    move-object v3, v1

    .line 284
    :goto_4
    if-nez v3, :cond_c

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_c
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    if-eqz v4, :cond_d

    .line 292
    .line 293
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 310
    .line 311
    .line 312
    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_e
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 316
    .line 317
    return-object p0

    .line 318
    nop

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
