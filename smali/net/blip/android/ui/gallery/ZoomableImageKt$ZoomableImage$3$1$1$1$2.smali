.class final Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;
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
    c = "net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$1$2"
    f = "ZoomableImage.kt"
    l = {
        0xae,
        0xaf,
        0xb0
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/compose/animation/core/Animatable;

.field public final synthetic p:J

.field public final synthetic q:Landroidx/compose/animation/core/Animatable;

.field public final synthetic r:Landroidx/compose/animation/core/Animatable;

.field public final synthetic s:F


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Animatable;JLandroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;FLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->o:Landroidx/compose/animation/core/Animatable;

    .line 2
    .line 3
    iput-wide p2, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->p:J

    .line 4
    .line 5
    iput-object p4, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->q:Landroidx/compose/animation/core/Animatable;

    .line 6
    .line 7
    iput-object p5, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->r:Landroidx/compose/animation/core/Animatable;

    .line 8
    .line 9
    iput p6, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->s:F

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    new-instance v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;

    .line 2
    .line 3
    iget-object v5, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->r:Landroidx/compose/animation/core/Animatable;

    .line 4
    .line 5
    iget v6, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->s:F

    .line 6
    .line 7
    iget-object v1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->o:Landroidx/compose/animation/core/Animatable;

    .line 8
    .line 9
    iget-wide v2, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->p:J

    .line 10
    .line 11
    iget-object v4, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->q:Landroidx/compose/animation/core/Animatable;

    .line 12
    .line 13
    move-object v7, p2

    .line 14
    invoke-direct/range {v0 .. v7}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;-><init>(Landroidx/compose/animation/core/Animatable;JLandroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;FLkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->n:I

    .line 4
    .line 5
    iget-wide v2, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->p:J

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v6, :cond_2

    .line 13
    .line 14
    if-eq v1, v5, :cond_1

    .line 15
    .line 16
    if-ne v1, v4, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->o:Landroidx/compose/animation/core/Animatable;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/Number;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/16 v7, 0x20

    .line 53
    .line 54
    shr-long v7, v2, v7

    .line 55
    .line 56
    long-to-int v7, v7

    .line 57
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    add-float/2addr v7, v1

    .line 62
    new-instance v1, Ljava/lang/Float;

    .line 63
    .line 64
    invoke-direct {v1, v7}, Ljava/lang/Float;-><init>(F)V

    .line 65
    .line 66
    .line 67
    iput v6, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->n:I

    .line 68
    .line 69
    invoke-virtual {p1, v1, p0}, Landroidx/compose/animation/core/Animatable;->h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v0, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    :goto_0
    iget-object p1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->q:Landroidx/compose/animation/core/Animatable;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Ljava/lang/Number;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const-wide v6, 0xffffffffL

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    and-long/2addr v2, v6

    .line 94
    long-to-int v2, v2

    .line 95
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    add-float/2addr v2, v1

    .line 100
    new-instance v1, Ljava/lang/Float;

    .line 101
    .line 102
    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    .line 103
    .line 104
    .line 105
    iput v5, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->n:I

    .line 106
    .line 107
    invoke-virtual {p1, v1, p0}, Landroidx/compose/animation/core/Animatable;->h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-ne p1, v0, :cond_5

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/Float;

    .line 115
    .line 116
    iget v1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->s:F

    .line 117
    .line 118
    invoke-direct {p1, v1}, Ljava/lang/Float;-><init>(F)V

    .line 119
    .line 120
    .line 121
    iput v4, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->n:I

    .line 122
    .line 123
    iget-object v1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$1$2;->r:Landroidx/compose/animation/core/Animatable;

    .line 124
    .line 125
    invoke-virtual {v1, p1, p0}, Landroidx/compose/animation/core/Animatable;->h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    if-ne p0, v0, :cond_6

    .line 130
    .line 131
    :goto_2
    return-object v0

    .line 132
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p0
.end method
