.class final Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:Landroid/util/Size;

.field public final synthetic b:Landroidx/compose/animation/core/Animatable;

.field public final synthetic c:Landroidx/compose/animation/core/Animatable;

.field public final synthetic d:Landroidx/compose/animation/core/Animatable;

.field public final synthetic e:F

.field public final synthetic f:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;FLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;->a:Landroid/util/Size;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;->b:Landroidx/compose/animation/core/Animatable;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;->c:Landroidx/compose/animation/core/Animatable;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;->d:Landroidx/compose/animation/core/Animatable;

    .line 11
    .line 12
    iput p5, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;->e:F

    .line 13
    .line 14
    iput-object p6, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;->f:Lkotlinx/coroutines/CoroutineScope;

    .line 15
    .line 16
    iput-object p7, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;->g:Landroidx/compose/runtime/MutableState;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    .line 1
    new-instance v0, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->b(Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;)Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 7
    .line 8
    .line 9
    move-result-object v12

    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 12
    .line 13
    iget-wide v2, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->H:J

    .line 14
    .line 15
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;

    .line 21
    .line 22
    iget-object v11, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;->g:Landroidx/compose/runtime/MutableState;

    .line 23
    .line 24
    const/4 v13, 0x0

    .line 25
    iget-object v1, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;->a:Landroid/util/Size;

    .line 26
    .line 27
    iget-object v5, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;->b:Landroidx/compose/animation/core/Animatable;

    .line 28
    .line 29
    iget-object v6, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;->c:Landroidx/compose/animation/core/Animatable;

    .line 30
    .line 31
    iget-object v8, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;->d:Landroidx/compose/animation/core/Animatable;

    .line 32
    .line 33
    iget v9, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;->e:F

    .line 34
    .line 35
    iget-object v10, p0, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;->f:Lkotlinx/coroutines/CoroutineScope;

    .line 36
    .line 37
    move-object v4, p1

    .line 38
    invoke-direct/range {v0 .. v13}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1$1;-><init>(Landroid/util/Size;JLandroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/animation/core/Animatable;FLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    move-object/from16 p0, p2

    .line 42
    .line 43
    invoke-static {v0, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 48
    .line 49
    if-ne p0, v0, :cond_0

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0
.end method
