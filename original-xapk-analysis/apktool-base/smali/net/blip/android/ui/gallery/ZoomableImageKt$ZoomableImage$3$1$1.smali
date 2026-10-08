.class final Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1"
    f = "ZoomableImage.kt"
    l = {
        0x5f
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic A:Landroidx/compose/runtime/MutableState;

.field public final synthetic B:Landroidx/compose/animation/core/DecayAnimationSpec;

.field public n:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

.field public o:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Landroid/util/Size;

.field public final synthetic s:J

.field public final synthetic t:Landroidx/compose/ui/input/pointer/PointerInputScope;

.field public final synthetic u:Landroidx/compose/animation/core/Animatable;

.field public final synthetic v:Landroidx/compose/animation/core/Animatable;

.field public final synthetic w:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic x:Landroidx/compose/animation/core/Animatable;

.field public final synthetic y:F

.field public final synthetic z:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Landroid/util/Size;JLandroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/animation/core/Animatable;FLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->r:Landroid/util/Size;

    .line 2
    .line 3
    iput-wide p2, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->s:J

    .line 4
    .line 5
    iput-object p4, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->t:Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 6
    .line 7
    iput-object p5, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->u:Landroidx/compose/animation/core/Animatable;

    .line 8
    .line 9
    iput-object p6, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->v:Landroidx/compose/animation/core/Animatable;

    .line 10
    .line 11
    iput-object p7, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->w:Lkotlin/jvm/internal/Ref$LongRef;

    .line 12
    .line 13
    iput-object p8, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->x:Landroidx/compose/animation/core/Animatable;

    .line 14
    .line 15
    iput p9, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->y:F

    .line 16
    .line 17
    iput-object p10, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->z:Lkotlinx/coroutines/CoroutineScope;

    .line 18
    .line 19
    iput-object p11, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->A:Landroidx/compose/runtime/MutableState;

    .line 20
    .line 21
    iput-object p12, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->B:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    invoke-direct {p0, p1, p13}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 14

    .line 1
    new-instance v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;

    .line 2
    .line 3
    iget-object v11, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->A:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iget-object v12, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->B:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->r:Landroid/util/Size;

    .line 8
    .line 9
    iget-wide v2, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->s:J

    .line 10
    .line 11
    iget-object v4, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->t:Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 12
    .line 13
    iget-object v5, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->u:Landroidx/compose/animation/core/Animatable;

    .line 14
    .line 15
    iget-object v6, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->v:Landroidx/compose/animation/core/Animatable;

    .line 16
    .line 17
    iget-object v7, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->w:Lkotlin/jvm/internal/Ref$LongRef;

    .line 18
    .line 19
    iget-object v8, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->x:Landroidx/compose/animation/core/Animatable;

    .line 20
    .line 21
    iget v9, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->y:F

    .line 22
    .line 23
    iget-object v10, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->z:Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    move-object/from16 v13, p2

    .line 26
    .line 27
    invoke-direct/range {v0 .. v13}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;-><init>(Landroid/util/Size;JLandroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/animation/core/Animatable;FLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->q:Ljava/lang/Object;

    .line 31
    .line 32
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->q:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v3, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->p:I

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    if-ne v3, v4, :cond_0

    .line 16
    .line 17
    iget-object v3, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->o:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 18
    .line 19
    iget-object v6, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->n:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_1

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
    return-object v5

    .line 32
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    new-instance v21, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 36
    .line 37
    invoke-direct/range {v21 .. v21}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v11, Lkotlin/jvm/internal/Ref$LongRef;

    .line 41
    .line 42
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    const-wide/16 v6, 0x0

    .line 46
    .line 47
    iput-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 48
    .line 49
    new-instance v12, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 50
    .line 51
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 55
    .line 56
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 60
    .line 61
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-boolean v4, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 65
    .line 66
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 67
    .line 68
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    const/16 v3, 0x20

    .line 72
    .line 73
    iget-wide v9, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->s:J

    .line 74
    .line 75
    shr-long v5, v9, v3

    .line 76
    .line 77
    long-to-int v3, v5

    .line 78
    const-wide v5, 0xffffffffL

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    and-long/2addr v5, v9

    .line 84
    long-to-int v5, v5

    .line 85
    int-to-float v3, v3

    .line 86
    iget-object v6, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->r:Landroid/util/Size;

    .line 87
    .line 88
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    int-to-float v9, v9

    .line 93
    div-float/2addr v3, v9

    .line 94
    int-to-float v5, v5

    .line 95
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    int-to-float v9, v9

    .line 100
    div-float/2addr v5, v9

    .line 101
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    new-instance v5, Landroid/util/Size;

    .line 106
    .line 107
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    int-to-float v9, v9

    .line 112
    mul-float/2addr v9, v3

    .line 113
    invoke-static {v9}, Lkotlin/math/MathKt;->b(F)I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    int-to-float v6, v6

    .line 122
    mul-float/2addr v6, v3

    .line 123
    invoke-static {v6}, Lkotlin/math/MathKt;->b(F)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-direct {v5, v9, v3}, Landroid/util/Size;-><init>(II)V

    .line 128
    .line 129
    .line 130
    new-instance v6, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;

    .line 131
    .line 132
    iget-object v3, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->A:Landroidx/compose/runtime/MutableState;

    .line 133
    .line 134
    const/16 v23, 0x0

    .line 135
    .line 136
    iget-object v9, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->u:Landroidx/compose/animation/core/Animatable;

    .line 137
    .line 138
    iget-object v10, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->v:Landroidx/compose/animation/core/Animatable;

    .line 139
    .line 140
    iget-object v13, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->w:Lkotlin/jvm/internal/Ref$LongRef;

    .line 141
    .line 142
    iget-object v15, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->x:Landroidx/compose/animation/core/Animatable;

    .line 143
    .line 144
    iget v4, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->y:F

    .line 145
    .line 146
    move-object/from16 v22, v3

    .line 147
    .line 148
    move/from16 v16, v4

    .line 149
    .line 150
    iget-wide v3, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->s:J

    .line 151
    .line 152
    move-wide/from16 v18, v3

    .line 153
    .line 154
    iget-object v3, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->z:Lkotlinx/coroutines/CoroutineScope;

    .line 155
    .line 156
    move-object/from16 v20, v3

    .line 157
    .line 158
    move-object/from16 v17, v5

    .line 159
    .line 160
    invoke-direct/range {v6 .. v23}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/animation/core/Animatable;FLandroid/util/Size;JLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 161
    .line 162
    .line 163
    move-object v3, v6

    .line 164
    move-object/from16 v6, v21

    .line 165
    .line 166
    iput-object v1, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->q:Ljava/lang/Object;

    .line 167
    .line 168
    iput-object v6, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->n:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 169
    .line 170
    iput-object v14, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->o:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 171
    .line 172
    const/4 v4, 0x1

    .line 173
    iput v4, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->p:I

    .line 174
    .line 175
    iget-object v5, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->t:Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 176
    .line 177
    check-cast v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 178
    .line 179
    invoke-virtual {v5, v3, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->Y0(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    if-ne v3, v2, :cond_2

    .line 184
    .line 185
    return-object v2

    .line 186
    :cond_2
    move-object v3, v14

    .line 187
    :goto_1
    iget-boolean v3, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 188
    .line 189
    const/4 v5, 0x3

    .line 190
    if-eqz v3, :cond_3

    .line 191
    .line 192
    new-instance v3, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$2;

    .line 193
    .line 194
    iget-object v6, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->u:Landroidx/compose/animation/core/Animatable;

    .line 195
    .line 196
    const/4 v7, 0x0

    .line 197
    invoke-direct {v3, v6, v7}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$2;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v1, v7, v7, v3, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 201
    .line 202
    .line 203
    new-instance v3, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$3;

    .line 204
    .line 205
    iget-object v6, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->v:Landroidx/compose/animation/core/Animatable;

    .line 206
    .line 207
    invoke-direct {v3, v6, v7}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$3;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v1, v7, v7, v3, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 211
    .line 212
    .line 213
    new-instance v3, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$4;

    .line 214
    .line 215
    iget-object v6, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->x:Landroidx/compose/animation/core/Animatable;

    .line 216
    .line 217
    invoke-direct {v3, v6, v7}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$4;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v1, v7, v7, v3, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_3
    const/4 v7, 0x0

    .line 225
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 229
    .line 230
    .line 231
    invoke-static {v3, v3}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 232
    .line 233
    .line 234
    move-result-wide v8

    .line 235
    invoke-virtual {v6, v8, v9}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a(J)J

    .line 236
    .line 237
    .line 238
    move-result-wide v12

    .line 239
    new-instance v10, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;

    .line 240
    .line 241
    iget-object v11, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->u:Landroidx/compose/animation/core/Animatable;

    .line 242
    .line 243
    const/4 v15, 0x0

    .line 244
    iget-object v14, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->B:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 245
    .line 246
    invoke-direct/range {v10 .. v15}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;-><init>(Landroidx/compose/animation/core/Animatable;JLandroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v1, v7, v7, v10, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 250
    .line 251
    .line 252
    new-instance v10, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$6;

    .line 253
    .line 254
    iget-object v11, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;->v:Landroidx/compose/animation/core/Animatable;

    .line 255
    .line 256
    invoke-direct/range {v10 .. v15}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$6;-><init>(Landroidx/compose/animation/core/Animatable;JLandroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v1, v7, v7, v10, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 260
    .line 261
    .line 262
    :goto_2
    move-object v5, v7

    .line 263
    goto/16 :goto_0
.end method
