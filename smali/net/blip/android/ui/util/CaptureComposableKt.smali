.class public abstract Lnet/blip/android/ui/util/CaptureComposableKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/activity/ComponentActivity;JLandroidx/compose/ui/unit/Density;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p6

    .line 6
    .line 7
    instance-of v4, v3, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;

    .line 8
    .line 9
    if-eqz v4, :cond_0

    .line 10
    .line 11
    move-object v4, v3

    .line 12
    check-cast v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;

    .line 13
    .line 14
    iget v5, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->s:I

    .line 15
    .line 16
    const/high16 v6, -0x80000000

    .line 17
    .line 18
    and-int v7, v5, v6

    .line 19
    .line 20
    if-eqz v7, :cond_0

    .line 21
    .line 22
    sub-int/2addr v5, v6

    .line 23
    iput v5, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->s:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;

    .line 27
    .line 28
    invoke-direct {v4, v3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v3, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->r:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v6, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->s:I

    .line 36
    .line 37
    const/4 v7, 0x2

    .line 38
    const/4 v8, 0x1

    .line 39
    const/4 v9, 0x0

    .line 40
    if-eqz v6, :cond_3

    .line 41
    .line 42
    if-eq v6, v8, :cond_2

    .line 43
    .line 44
    if-ne v6, v7, :cond_1

    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v9

    .line 56
    :cond_2
    iget-wide v0, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->p:J

    .line 57
    .line 58
    iget-boolean v2, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->q:Z

    .line 59
    .line 60
    iget-wide v10, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->o:J

    .line 61
    .line 62
    iget-object v6, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 63
    .line 64
    iget-object v8, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->m:Landroidx/activity/ComponentActivity;

    .line 65
    .line 66
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    move-wide v14, v0

    .line 70
    move/from16 v18, v2

    .line 71
    .line 72
    move-object v13, v8

    .line 73
    move-wide/from16 v16, v10

    .line 74
    .line 75
    :goto_1
    move-object/from16 v19, v6

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    move-object/from16 v3, p3

    .line 82
    .line 83
    invoke-interface {v3, v1, v2}, Landroidx/compose/ui/unit/Density;->D0(J)J

    .line 84
    .line 85
    .line 86
    move-result-wide v10

    .line 87
    invoke-static {v10, v11}, Lnet/blip/shared/GeometryKt;->a(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v10

    .line 91
    const/16 v3, 0x20

    .line 92
    .line 93
    shr-long v12, v10, v3

    .line 94
    .line 95
    long-to-int v3, v12

    .line 96
    if-lez v3, :cond_6

    .line 97
    .line 98
    const-wide v12, 0xffffffffL

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    and-long/2addr v12, v10

    .line 104
    long-to-int v3, v12

    .line 105
    if-lez v3, :cond_6

    .line 106
    .line 107
    :try_start_1
    new-instance v3, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$3;

    .line 108
    .line 109
    invoke-direct {v3, v0, v9}, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$3;-><init>(Landroidx/activity/ComponentActivity;Lkotlin/coroutines/Continuation;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->m:Landroidx/activity/ComponentActivity;

    .line 113
    .line 114
    move-object/from16 v6, p5

    .line 115
    .line 116
    iput-object v6, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 117
    .line 118
    iput-wide v1, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->o:J

    .line 119
    .line 120
    move/from16 v12, p4

    .line 121
    .line 122
    iput-boolean v12, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->q:Z

    .line 123
    .line 124
    iput-wide v10, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->p:J

    .line 125
    .line 126
    iput v8, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->s:I

    .line 127
    .line 128
    const-wide/16 v13, 0x3e8

    .line 129
    .line 130
    invoke-static {v13, v14, v3, v4}, Lkotlinx/coroutines/TimeoutKt;->b(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    if-ne v3, v5, :cond_4

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_4
    move-object v13, v0

    .line 138
    move-wide/from16 v16, v1

    .line 139
    .line 140
    move-wide v14, v10

    .line 141
    move/from16 v18, v12

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :goto_2
    check-cast v3, Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .line 146
    sget-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->v:Lkotlin/Lazy;

    .line 147
    .line 148
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 153
    .line 154
    new-instance v12, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;

    .line 155
    .line 156
    const/16 v20, 0x0

    .line 157
    .line 158
    invoke-direct/range {v12 .. v20}, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4;-><init>(Landroidx/activity/ComponentActivity;JJZLkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    .line 159
    .line 160
    .line 161
    move-object v1, v12

    .line 162
    move-wide/from16 v10, v16

    .line 163
    .line 164
    move/from16 v12, v18

    .line 165
    .line 166
    iput-object v9, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->m:Landroidx/activity/ComponentActivity;

    .line 167
    .line 168
    iput-object v9, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 169
    .line 170
    iput-wide v10, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->o:J

    .line 171
    .line 172
    iput-boolean v12, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->q:Z

    .line 173
    .line 174
    iput-wide v14, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->p:J

    .line 175
    .line 176
    iput v7, v4, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->s:I

    .line 177
    .line 178
    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-ne v0, v5, :cond_5

    .line 183
    .line 184
    :goto_3
    return-object v5

    .line 185
    :cond_5
    return-object v0

    .line 186
    :catch_0
    const-string v0, "Timed out waiting for activity window token"

    .line 187
    .line 188
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-object v9

    .line 192
    :cond_6
    const-string v0, "pixel size must not have zero dimension"

    .line 193
    .line 194
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-object v9
.end method
