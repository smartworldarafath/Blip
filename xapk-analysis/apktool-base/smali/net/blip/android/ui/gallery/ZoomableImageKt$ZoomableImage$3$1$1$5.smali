.class final Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;
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
    c = "net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$5"
    f = "ZoomableImage.kt"
    l = {
        0xe6
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/compose/animation/core/Animatable;

.field public final synthetic p:J

.field public final synthetic q:Landroidx/compose/animation/core/DecayAnimationSpec;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Animatable;JLandroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;->o:Landroidx/compose/animation/core/Animatable;

    .line 2
    .line 3
    iput-wide p2, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;->p:J

    .line 4
    .line 5
    iput-object p4, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;->q:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;

    .line 2
    .line 3
    iget-wide v2, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;->p:J

    .line 4
    .line 5
    iget-object v4, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;->q:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;->o:Landroidx/compose/animation/core/Animatable;

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;-><init>(Landroidx/compose/animation/core/Animatable;JLandroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;->n:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-wide v3, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;->p:J

    .line 25
    .line 26
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Velocity;->b(J)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    new-instance v1, Ljava/lang/Float;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    .line 33
    .line 34
    .line 35
    iput v2, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;->n:I

    .line 36
    .line 37
    iget-object p1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;->o:Landroidx/compose/animation/core/Animatable;

    .line 38
    .line 39
    iget-object v2, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1$5;->q:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 40
    .line 41
    invoke-static {p1, v1, v2, p0}, Landroidx/compose/animation/core/Animatable;->b(Landroidx/compose/animation/core/Animatable;Ljava/lang/Float;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-ne p0, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method
