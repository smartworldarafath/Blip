.class public final synthetic Lnet/blip/android/ui/util/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/blip/android/ui/util/a;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/util/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lnet/blip/android/ui/util/a;->j:I

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    iget-object v0, v0, Lnet/blip/android/ui/util/a;->k:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v2, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 24
    .line 25
    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 26
    .line 27
    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    const/16 v8, 0x20

    .line 32
    .line 33
    shr-long/2addr v6, v8

    .line 34
    long-to-int v6, v6

    .line 35
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    float-to-int v6, v6

    .line 40
    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 41
    .line 42
    .line 43
    move-result-wide v7

    .line 44
    const-wide v9, 0xffffffffL

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    and-long/2addr v7, v9

    .line 50
    long-to-int v7, v7

    .line 51
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    float-to-int v7, v7

    .line 56
    new-instance v8, Landroid/graphics/Picture;

    .line 57
    .line 58
    invoke-direct {v8}, Landroid/graphics/Picture;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, v6, v7}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    sget-object v7, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->a:Landroid/graphics/Canvas;

    .line 69
    .line 70
    new-instance v7, Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 71
    .line 72
    invoke-direct {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v6, v7, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 82
    .line 83
    .line 84
    move-result-wide v9

    .line 85
    iget-object v11, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 86
    .line 87
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b()Landroidx/compose/ui/unit/Density;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    iget-object v12, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 92
    .line 93
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c()Landroidx/compose/ui/unit/LayoutDirection;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    iget-object v13, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 98
    .line 99
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    iget-object v14, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 104
    .line 105
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 106
    .line 107
    .line 108
    move-result-wide v14

    .line 109
    iget-object v5, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 110
    .line 111
    move-object/from16 p0, v2

    .line 112
    .line 113
    iget-object v2, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 114
    .line 115
    invoke-virtual {v5, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v9, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 125
    .line 126
    .line 127
    const/4 v1, 0x0

    .line 128
    iput-object v1, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 129
    .line 130
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;->g()V

    .line 131
    .line 132
    .line 133
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 137
    .line 138
    .line 139
    iget-object v1, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 140
    .line 141
    invoke-virtual {v1, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 151
    .line 152
    .line 153
    iput-object v2, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 154
    .line 155
    invoke-virtual {v8}, Landroid/graphics/Picture;->endRecording()V

    .line 156
    .line 157
    .line 158
    check-cast v0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1$1$1;

    .line 159
    .line 160
    invoke-virtual {v0, v8}, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1$1$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    return-object v4

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 166
    .line 167
    .line 168
    iget-object v1, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 169
    .line 170
    invoke-virtual {v1, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 180
    .line 181
    .line 182
    iput-object v2, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 183
    .line 184
    throw v0

    .line 185
    :pswitch_0
    check-cast v0, Lkotlinx/coroutines/channels/Channel;

    .line 186
    .line 187
    check-cast v1, Ljava/lang/Boolean;

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 194
    .line 195
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    new-instance v5, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$permissionState$1$1$1;

    .line 200
    .line 201
    const/4 v6, 0x0

    .line 202
    invoke-direct {v5, v0, v1, v6}, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$permissionState$1$1$1;-><init>(Lkotlinx/coroutines/channels/Channel;ZLkotlin/coroutines/Continuation;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v2, v6, v6, v5, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 206
    .line 207
    .line 208
    return-object v4

    .line 209
    :pswitch_1
    const/4 v6, 0x0

    .line 210
    check-cast v0, Lkotlinx/coroutines/channels/Channel;

    .line 211
    .line 212
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 213
    .line 214
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    new-instance v5, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$launcher$1$1$1;

    .line 219
    .line 220
    invoke-direct {v5, v0, v1, v6}, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$launcher$1$1$1;-><init>(Lkotlinx/coroutines/channels/Channel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v2, v6, v6, v5, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 224
    .line 225
    .line 226
    return-object v4

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
