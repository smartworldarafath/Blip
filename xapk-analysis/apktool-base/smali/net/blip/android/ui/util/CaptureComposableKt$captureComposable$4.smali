.class final Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroidx/compose/ui/graphics/ImageBitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.util.CaptureComposableKt$captureComposable$4"
    f = "CaptureComposable.kt"
    l = {
        0x9b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:Landroid/view/WindowManager;

.field public o:Landroidx/compose/ui/platform/ComposeView;

.field public p:I

.field public final synthetic q:Landroidx/activity/ComponentActivity;

.field public final synthetic r:J

.field public final synthetic s:J

.field public final synthetic t:Z

.field public final synthetic u:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;JJZLkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->q:Landroidx/activity/ComponentActivity;

    .line 2
    .line 3
    iput-wide p2, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->r:J

    .line 4
    .line 5
    iput-wide p4, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->s:J

    .line 6
    .line 7
    iput-boolean p6, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->t:Z

    .line 8
    .line 9
    iput-object p7, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->u:Lkotlin/jvm/functions/Function3;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    new-instance v0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;

    .line 2
    .line 3
    iget-boolean v6, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->t:Z

    .line 4
    .line 5
    iget-object v7, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->u:Lkotlin/jvm/functions/Function3;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->q:Landroidx/activity/ComponentActivity;

    .line 8
    .line 9
    iget-wide v2, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->r:J

    .line 10
    .line 11
    iget-wide v4, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->s:J

    .line 12
    .line 13
    move-object v8, p2

    .line 14
    invoke-direct/range {v0 .. v8}, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;-><init>(Landroidx/activity/ComponentActivity;JJZLkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->p:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v5, :cond_0

    .line 13
    .line 14
    iget-object v1, v0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->o:Landroidx/compose/ui/platform/ComposeView;

    .line 15
    .line 16
    iget-object v0, v0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->n:Landroid/view/WindowManager;

    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    move-object v3, v0

    .line 22
    move-object/from16 v0, p1

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v3

    .line 32
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->q:Landroidx/activity/ComponentActivity;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_3

    .line 48
    .line 49
    const-string v3, "window"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    check-cast v3, Landroid/view/WindowManager;

    .line 59
    .line 60
    new-instance v6, Landroidx/compose/ui/platform/ComposeView;

    .line 61
    .line 62
    invoke-direct {v6, v2}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    const v7, 0x7f0a0206

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v7, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const v7, 0x7f0a020a

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v7, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const v7, 0x7f0a0209

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v7, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 84
    .line 85
    iget-wide v7, v0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->r:J

    .line 86
    .line 87
    const/16 v9, 0x20

    .line 88
    .line 89
    shr-long v9, v7, v9

    .line 90
    .line 91
    long-to-int v12, v9

    .line 92
    const-wide v9, 0xffffffffL

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    and-long/2addr v7, v9

    .line 98
    long-to-int v13, v7

    .line 99
    invoke-direct {v2, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 109
    .line 110
    .line 111
    :try_start_0
    new-instance v11, Landroid/view/WindowManager$LayoutParams;

    .line 112
    .line 113
    const/16 v15, 0x200

    .line 114
    .line 115
    const/16 v16, 0x1

    .line 116
    .line 117
    const/16 v14, 0x3e9

    .line 118
    .line 119
    invoke-direct/range {v11 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v3, v6, v11}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .line 124
    .line 125
    iput-object v3, v0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->n:Landroid/view/WindowManager;

    .line 126
    .line 127
    iput-object v6, v0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->o:Landroidx/compose/ui/platform/ComposeView;

    .line 128
    .line 129
    iput v5, v0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->p:I

    .line 130
    .line 131
    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 132
    .line 133
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-direct {v2, v5, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->v()V

    .line 141
    .line 142
    .line 143
    new-instance v12, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1;

    .line 144
    .line 145
    iget-wide v13, v0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->s:J

    .line 146
    .line 147
    iget-boolean v15, v0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->t:Z

    .line 148
    .line 149
    iget-object v0, v0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;->u:Lkotlin/jvm/functions/Function3;

    .line 150
    .line 151
    move-object/from16 v17, v0

    .line 152
    .line 153
    move-object/from16 v16, v2

    .line 154
    .line 155
    invoke-direct/range {v12 .. v17}, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1;-><init>(JZLkotlinx/coroutines/CancellableContinuationImpl;Lkotlin/jvm/functions/Function3;)V

    .line 156
    .line 157
    .line 158
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 159
    .line 160
    const v2, 0x8895b5e

    .line 161
    .line 162
    .line 163
    invoke-direct {v0, v2, v5, v12}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-ne v0, v1, :cond_2

    .line 174
    .line 175
    return-object v1

    .line 176
    :cond_2
    move-object v1, v6

    .line 177
    :goto_0
    move-object v2, v0

    .line 178
    check-cast v2, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 179
    .line 180
    :try_start_1
    invoke-interface {v3, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    .line 182
    .line 183
    return-object v2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    sget-object v1, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 186
    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v5, "removing view: "

    .line 190
    .line 191
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    new-array v3, v4, [Lkotlin/Pair;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    const-string v1, "captureComposable"

    .line 207
    .line 208
    invoke-static {v1, v0, v3}, Lnet/blip/libblip/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 209
    .line 210
    .line 211
    return-object v2

    .line 212
    :catch_1
    move-exception v0

    .line 213
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 214
    .line 215
    const-string v2, "Failed to add view to window manager"

    .line 216
    .line 217
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    throw v1

    .line 221
    :cond_3
    const-string v0, "Activity is finishing or destroyed"

    .line 222
    .line 223
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    return-object v3
.end method
