.class final Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$1"
    f = "ZoomableImage.kt"
    l = {
        0x61
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic A:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

.field public final synthetic B:Landroidx/compose/runtime/MutableState;

.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic o:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic p:Landroidx/compose/animation/core/Animatable;

.field public final synthetic q:Landroidx/compose/animation/core/Animatable;

.field public final synthetic r:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic s:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic t:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic u:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic v:Landroidx/compose/animation/core/Animatable;

.field public final synthetic w:F

.field public final synthetic x:Landroid/util/Size;

.field public final synthetic y:J

.field public final synthetic z:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/animation/core/Animatable;FLandroid/util/Size;JLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->o:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->p:Landroidx/compose/animation/core/Animatable;

    .line 6
    .line 7
    iput-object p4, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->q:Landroidx/compose/animation/core/Animatable;

    .line 8
    .line 9
    iput-object p5, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->r:Lkotlin/jvm/internal/Ref$LongRef;

    .line 10
    .line 11
    iput-object p6, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->s:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 12
    .line 13
    iput-object p7, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->t:Lkotlin/jvm/internal/Ref$LongRef;

    .line 14
    .line 15
    iput-object p8, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->u:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 16
    .line 17
    iput-object p9, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->v:Landroidx/compose/animation/core/Animatable;

    .line 18
    .line 19
    iput p10, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->w:F

    .line 20
    .line 21
    iput-object p11, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->x:Landroid/util/Size;

    .line 22
    .line 23
    iput-wide p12, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->y:J

    .line 24
    .line 25
    iput-object p14, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->z:Lkotlinx/coroutines/CoroutineScope;

    .line 26
    .line 27
    iput-object p15, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->A:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 28
    .line 29
    move-object/from16 p1, p16

    .line 30
    .line 31
    iput-object p1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->B:Landroidx/compose/runtime/MutableState;

    .line 32
    .line 33
    const/4 p1, 0x2

    .line 34
    move-object/from16 p2, p17

    .line 35
    .line 36
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;

    .line 4
    .line 5
    iget-object v15, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->A:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 6
    .line 7
    iget-object v2, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->B:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    move-object v3, v1

    .line 10
    iget-object v1, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 11
    .line 12
    move-object/from16 v16, v2

    .line 13
    .line 14
    iget-object v2, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->o:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 15
    .line 16
    move-object v4, v3

    .line 17
    iget-object v3, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->p:Landroidx/compose/animation/core/Animatable;

    .line 18
    .line 19
    move-object v5, v4

    .line 20
    iget-object v4, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->q:Landroidx/compose/animation/core/Animatable;

    .line 21
    .line 22
    move-object v6, v5

    .line 23
    iget-object v5, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->r:Lkotlin/jvm/internal/Ref$LongRef;

    .line 24
    .line 25
    move-object v7, v6

    .line 26
    iget-object v6, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->s:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 27
    .line 28
    move-object v8, v7

    .line 29
    iget-object v7, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->t:Lkotlin/jvm/internal/Ref$LongRef;

    .line 30
    .line 31
    move-object v9, v8

    .line 32
    iget-object v8, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->u:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 33
    .line 34
    move-object v10, v9

    .line 35
    iget-object v9, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->v:Landroidx/compose/animation/core/Animatable;

    .line 36
    .line 37
    move-object v11, v10

    .line 38
    iget v10, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->w:F

    .line 39
    .line 40
    move-object v12, v11

    .line 41
    iget-object v11, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->x:Landroid/util/Size;

    .line 42
    .line 43
    move-object v14, v12

    .line 44
    iget-wide v12, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->y:J

    .line 45
    .line 46
    iget-object v0, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->z:Lkotlinx/coroutines/CoroutineScope;

    .line 47
    .line 48
    move-object/from16 v17, v14

    .line 49
    .line 50
    move-object v14, v0

    .line 51
    move-object/from16 v0, v17

    .line 52
    .line 53
    move-object/from16 v17, p2

    .line 54
    .line 55
    invoke-direct/range {v0 .. v17}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/animation/core/Animatable;FLandroid/util/Size;JLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 56
    .line 57
    .line 58
    move-object v14, v0

    .line 59
    move-object/from16 v0, p1

    .line 60
    .line 61
    iput-object v0, v14, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->m:Ljava/lang/Object;

    .line 62
    .line 63
    return-object v14
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->m:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 6
    .line 7
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v3, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->l:I

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    if-ne v3, v5, :cond_0

    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    move-object/from16 v3, p1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v4

    .line 29
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iput-object v1, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->m:Ljava/lang/Object;

    .line 33
    .line 34
    iput v5, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->l:I

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->t0(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-ne v3, v2, :cond_2

    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_2
    :goto_1
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 44
    .line 45
    iget-object v6, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 46
    .line 47
    iget-boolean v7, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 48
    .line 49
    iget-object v8, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->o:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 50
    .line 51
    iget-object v9, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->q:Landroidx/compose/animation/core/Animatable;

    .line 52
    .line 53
    iget-object v10, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->p:Landroidx/compose/animation/core/Animatable;

    .line 54
    .line 55
    const/4 v11, 0x0

    .line 56
    if-eqz v7, :cond_5

    .line 57
    .line 58
    iput-boolean v11, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 59
    .line 60
    invoke-virtual {v10}, Landroidx/compose/animation/core/Animatable;->g()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-nez v6, :cond_4

    .line 65
    .line 66
    invoke-virtual {v9}, Landroidx/compose/animation/core/Animatable;->g()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move v6, v11

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    :goto_2
    move v6, v5

    .line 76
    :goto_3
    iput-boolean v6, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 77
    .line 78
    :cond_5
    invoke-static {v3, v5}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->a(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    iget-object v12, v3, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 83
    .line 84
    const-wide v13, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    invoke-static {v6, v7, v13, v14}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    if-eqz v13, :cond_6

    .line 94
    .line 95
    const-wide/16 v18, 0x0

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_6
    invoke-static {v3, v11}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->a(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    .line 99
    .line 100
    .line 101
    move-result-wide v14

    .line 102
    invoke-static {v6, v7, v14, v15}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide v6

    .line 106
    move-wide/from16 v18, v6

    .line 107
    .line 108
    :goto_4
    invoke-static {v3, v5}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    invoke-static {v3, v11}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    const/4 v7, 0x0

    .line 117
    cmpg-float v13, v6, v7

    .line 118
    .line 119
    if-nez v13, :cond_7

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_7
    cmpg-float v7, v3, v7

    .line 123
    .line 124
    if-nez v7, :cond_8

    .line 125
    .line 126
    :goto_5
    const/high16 v6, 0x3f800000    # 1.0f

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_8
    div-float/2addr v6, v3

    .line 130
    :goto_6
    iget-object v3, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->r:Lkotlin/jvm/internal/Ref$LongRef;

    .line 131
    .line 132
    move/from16 p1, v11

    .line 133
    .line 134
    move-object v7, v12

    .line 135
    iget-wide v11, v3, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 136
    .line 137
    const/high16 v15, 0x3f800000    # 1.0f

    .line 138
    .line 139
    const/16 v24, 0x20

    .line 140
    .line 141
    shr-long v13, v18, v24

    .line 142
    .line 143
    long-to-int v13, v13

    .line 144
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 145
    .line 146
    .line 147
    move-result v13

    .line 148
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 149
    .line 150
    .line 151
    move-result v13

    .line 152
    const-wide v25, 0xffffffffL

    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    and-long v4, v18, v25

    .line 158
    .line 159
    long-to-int v4, v4

    .line 160
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    move v13, v15

    .line 173
    int-to-long v14, v5

    .line 174
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    int-to-long v4, v4

    .line 179
    shl-long v14, v14, v24

    .line 180
    .line 181
    and-long v4, v4, v25

    .line 182
    .line 183
    or-long/2addr v4, v14

    .line 184
    invoke-static {v11, v12, v4, v5}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    .line 185
    .line 186
    .line 187
    move-result-wide v4

    .line 188
    iput-wide v4, v3, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 189
    .line 190
    iget-object v4, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->s:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 191
    .line 192
    iget v5, v4, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 193
    .line 194
    sub-float v11, v6, v13

    .line 195
    .line 196
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    add-float/2addr v11, v5

    .line 201
    iput v11, v4, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 202
    .line 203
    iget-wide v11, v3, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 204
    .line 205
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    const/high16 v5, 0x42c80000    # 100.0f

    .line 210
    .line 211
    cmpl-float v3, v3, v5

    .line 212
    .line 213
    if-gtz v3, :cond_a

    .line 214
    .line 215
    iget v3, v4, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 216
    .line 217
    const v4, 0x3d4ccccd    # 0.05f

    .line 218
    .line 219
    .line 220
    cmpl-float v3, v3, v4

    .line 221
    .line 222
    if-lez v3, :cond_9

    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_9
    move/from16 v3, p1

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_a
    :goto_7
    const/4 v3, 0x1

    .line 229
    :goto_8
    iget-object v4, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->B:Landroidx/compose/runtime/MutableState;

    .line 230
    .line 231
    iget-object v5, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->u:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 232
    .line 233
    if-eqz v7, :cond_b

    .line 234
    .line 235
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v11

    .line 239
    if-eqz v11, :cond_b

    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_b
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v11

    .line 246
    :cond_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v12

    .line 250
    if-eqz v12, :cond_e

    .line 251
    .line 252
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 257
    .line 258
    invoke-static {v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    if-nez v12, :cond_c

    .line 263
    .line 264
    :cond_d
    const/4 v8, 0x1

    .line 265
    goto :goto_a

    .line 266
    :cond_e
    :goto_9
    iget-boolean v8, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 267
    .line 268
    if-nez v8, :cond_d

    .line 269
    .line 270
    if-nez v3, :cond_d

    .line 271
    .line 272
    iget-object v3, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->t:Lkotlin/jvm/internal/Ref$LongRef;

    .line 273
    .line 274
    iget-wide v11, v3, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 275
    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 277
    .line 278
    .line 279
    move-result-wide v14

    .line 280
    invoke-interface {v1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    invoke-interface {v8}, Landroidx/compose/ui/platform/ViewConfiguration;->a()J

    .line 285
    .line 286
    .line 287
    move-result-wide v16

    .line 288
    sub-long v14, v14, v16

    .line 289
    .line 290
    cmp-long v8, v11, v14

    .line 291
    .line 292
    if-lez v8, :cond_f

    .line 293
    .line 294
    const-wide/16 v11, 0x0

    .line 295
    .line 296
    iput-wide v11, v3, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 297
    .line 298
    const/4 v8, 0x1

    .line 299
    iput-boolean v8, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 300
    .line 301
    goto :goto_a

    .line 302
    :cond_f
    const/4 v8, 0x1

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 304
    .line 305
    .line 306
    move-result-wide v11

    .line 307
    iput-wide v11, v3, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 308
    .line 309
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 310
    .line 311
    invoke-interface {v4, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    :goto_a
    iget-boolean v3, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 315
    .line 316
    if-eqz v3, :cond_10

    .line 317
    .line 318
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 319
    .line 320
    invoke-interface {v4, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_16

    .line 332
    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 338
    .line 339
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 340
    .line 341
    .line 342
    goto :goto_b

    .line 343
    :cond_10
    iget-object v3, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->v:Landroidx/compose/animation/core/Animatable;

    .line 344
    .line 345
    invoke-virtual {v3}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    check-cast v3, Ljava/lang/Number;

    .line 350
    .line 351
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    mul-float/2addr v3, v6

    .line 356
    iget v4, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->w:F

    .line 357
    .line 358
    move v15, v13

    .line 359
    invoke-static {v3, v15, v4}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 360
    .line 361
    .line 362
    move-result v22

    .line 363
    iget-object v3, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->x:Landroid/util/Size;

    .line 364
    .line 365
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    int-to-float v4, v4

    .line 370
    mul-float v4, v4, v22

    .line 371
    .line 372
    invoke-static {v4}, Lkotlin/math/MathKt;->b(F)I

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    int-to-float v3, v3

    .line 381
    mul-float v3, v3, v22

    .line 382
    .line 383
    invoke-static {v3}, Lkotlin/math/MathKt;->b(F)I

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    int-to-long v4, v4

    .line 388
    shl-long v4, v4, v24

    .line 389
    .line 390
    int-to-long v11, v3

    .line 391
    and-long v11, v11, v25

    .line 392
    .line 393
    or-long v3, v4, v11

    .line 394
    .line 395
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    shr-long v11, v3, v24

    .line 400
    .line 401
    long-to-int v6, v11

    .line 402
    iget-wide v11, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->y:J

    .line 403
    .line 404
    shr-long v13, v11, v24

    .line 405
    .line 406
    long-to-int v13, v13

    .line 407
    const/high16 v14, 0x3f000000    # 0.5f

    .line 408
    .line 409
    if-ge v6, v13, :cond_11

    .line 410
    .line 411
    new-instance v6, Lkotlin/Pair;

    .line 412
    .line 413
    invoke-direct {v6, v5, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    goto :goto_c

    .line 417
    :cond_11
    sub-int/2addr v13, v6

    .line 418
    int-to-float v6, v13

    .line 419
    mul-float/2addr v6, v14

    .line 420
    invoke-static {v6}, Lkotlin/math/MathKt;->b(F)I

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    new-instance v13, Lkotlin/Pair;

    .line 425
    .line 426
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object v15

    .line 430
    neg-int v6, v6

    .line 431
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    invoke-direct {v13, v15, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    move-object v6, v13

    .line 439
    :goto_c
    iget-object v13, v6, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v13, Ljava/lang/Number;

    .line 442
    .line 443
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 444
    .line 445
    .line 446
    move-result v13

    .line 447
    iget-object v6, v6, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v6, Ljava/lang/Number;

    .line 450
    .line 451
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    and-long v3, v3, v25

    .line 456
    .line 457
    long-to-int v3, v3

    .line 458
    and-long v11, v11, v25

    .line 459
    .line 460
    long-to-int v4, v11

    .line 461
    if-ge v3, v4, :cond_12

    .line 462
    .line 463
    new-instance v3, Lkotlin/Pair;

    .line 464
    .line 465
    invoke-direct {v3, v5, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    goto :goto_d

    .line 469
    :cond_12
    sub-int/2addr v4, v3

    .line 470
    int-to-float v3, v4

    .line 471
    mul-float/2addr v3, v14

    .line 472
    invoke-static {v3}, Lkotlin/math/MathKt;->b(F)I

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    new-instance v4, Lkotlin/Pair;

    .line 477
    .line 478
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    neg-int v3, v3

    .line 483
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-direct {v4, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    move-object v3, v4

    .line 491
    :goto_d
    iget-object v4, v3, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 492
    .line 493
    check-cast v4, Ljava/lang/Number;

    .line 494
    .line 495
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    iget-object v3, v3, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 500
    .line 501
    check-cast v3, Ljava/lang/Number;

    .line 502
    .line 503
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    int-to-float v5, v13

    .line 508
    new-instance v11, Ljava/lang/Float;

    .line 509
    .line 510
    invoke-direct {v11, v5}, Ljava/lang/Float;-><init>(F)V

    .line 511
    .line 512
    .line 513
    int-to-float v5, v6

    .line 514
    new-instance v6, Ljava/lang/Float;

    .line 515
    .line 516
    invoke-direct {v6, v5}, Ljava/lang/Float;-><init>(F)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v10, v11, v6}, Landroidx/compose/animation/core/Animatable;->j(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 520
    .line 521
    .line 522
    int-to-float v4, v4

    .line 523
    new-instance v5, Ljava/lang/Float;

    .line 524
    .line 525
    invoke-direct {v5, v4}, Ljava/lang/Float;-><init>(F)V

    .line 526
    .line 527
    .line 528
    int-to-float v3, v3

    .line 529
    new-instance v4, Ljava/lang/Float;

    .line 530
    .line 531
    invoke-direct {v4, v3}, Ljava/lang/Float;-><init>(F)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v9, v5, v4}, Landroidx/compose/animation/core/Animatable;->j(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 535
    .line 536
    .line 537
    new-instance v16, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;

    .line 538
    .line 539
    iget-object v3, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->v:Landroidx/compose/animation/core/Animatable;

    .line 540
    .line 541
    const/16 v23, 0x0

    .line 542
    .line 543
    iget-object v4, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->p:Landroidx/compose/animation/core/Animatable;

    .line 544
    .line 545
    iget-object v5, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->q:Landroidx/compose/animation/core/Animatable;

    .line 546
    .line 547
    move-object/from16 v21, v3

    .line 548
    .line 549
    move-object/from16 v17, v4

    .line 550
    .line 551
    move-object/from16 v20, v5

    .line 552
    .line 553
    invoke-direct/range {v16 .. v23}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;-><init>(Landroidx/compose/animation/core/Animatable;JLandroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;FLkotlin/coroutines/Continuation;)V

    .line 554
    .line 555
    .line 556
    move-object/from16 v3, v16

    .line 557
    .line 558
    const/4 v4, 0x3

    .line 559
    iget-object v5, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->z:Lkotlinx/coroutines/CoroutineScope;

    .line 560
    .line 561
    const/4 v14, 0x0

    .line 562
    invoke-static {v5, v14, v14, v3, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v10}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    check-cast v3, Ljava/lang/Number;

    .line 570
    .line 571
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    iget-object v4, v10, Landroidx/compose/animation/core/Animatable;->f:Ljava/lang/Float;

    .line 576
    .line 577
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 581
    .line 582
    .line 583
    move-result v4

    .line 584
    cmpl-float v3, v3, v4

    .line 585
    .line 586
    if-lez v3, :cond_13

    .line 587
    .line 588
    invoke-virtual {v10}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    check-cast v3, Ljava/lang/Number;

    .line 593
    .line 594
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    iget-object v4, v10, Landroidx/compose/animation/core/Animatable;->g:Ljava/lang/Float;

    .line 599
    .line 600
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 604
    .line 605
    .line 606
    move-result v4

    .line 607
    cmpg-float v3, v3, v4

    .line 608
    .line 609
    if-gez v3, :cond_13

    .line 610
    .line 611
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 616
    .line 617
    .line 618
    move-result v4

    .line 619
    if-eqz v4, :cond_13

    .line 620
    .line 621
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 626
    .line 627
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 628
    .line 629
    .line 630
    goto :goto_e

    .line 631
    :cond_13
    if-eqz v7, :cond_14

    .line 632
    .line 633
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 634
    .line 635
    .line 636
    move-result v3

    .line 637
    if-eqz v3, :cond_14

    .line 638
    .line 639
    goto :goto_f

    .line 640
    :cond_14
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 641
    .line 642
    .line 643
    move-result-object v3

    .line 644
    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 645
    .line 646
    .line 647
    move-result v4

    .line 648
    if-eqz v4, :cond_16

    .line 649
    .line 650
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 655
    .line 656
    iget-boolean v4, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 657
    .line 658
    if-eqz v4, :cond_15

    .line 659
    .line 660
    move/from16 v4, p1

    .line 661
    .line 662
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 667
    .line 668
    iget-wide v3, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    .line 669
    .line 670
    invoke-virtual {v10}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    check-cast v5, Ljava/lang/Number;

    .line 675
    .line 676
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 677
    .line 678
    .line 679
    move-result v5

    .line 680
    invoke-virtual {v9}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v6

    .line 684
    check-cast v6, Ljava/lang/Number;

    .line 685
    .line 686
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 687
    .line 688
    .line 689
    move-result v6

    .line 690
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 691
    .line 692
    .line 693
    move-result v5

    .line 694
    int-to-long v9, v5

    .line 695
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 696
    .line 697
    .line 698
    move-result v5

    .line 699
    int-to-long v5, v5

    .line 700
    shl-long v9, v9, v24

    .line 701
    .line 702
    and-long v5, v5, v25

    .line 703
    .line 704
    or-long/2addr v5, v9

    .line 705
    iget-object v7, v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1;->A:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 706
    .line 707
    iget-object v7, v7, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;

    .line 708
    .line 709
    invoke-virtual {v7, v3, v4, v5, v6}, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->a(JJ)V

    .line 710
    .line 711
    .line 712
    move v5, v8

    .line 713
    move-object v4, v14

    .line 714
    goto/16 :goto_0

    .line 715
    .line 716
    :cond_16
    :goto_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 717
    .line 718
    return-object v0
.end method
