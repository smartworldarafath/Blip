.class final Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:F

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Landroidx/compose/runtime/State;

.field public final synthetic e:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f:Landroidx/compose/foundation/gestures/DraggableState;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(ZFLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->a:Z

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->b:F

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->c:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->d:Landroidx/compose/runtime/State;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->f:Landroidx/compose/foundation/gestures/DraggableState;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->g:Landroidx/compose/runtime/MutableState;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;

    .line 2
    .line 3
    iget-object v4, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->d:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    iget-boolean v1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->a:Z

    .line 7
    .line 8
    iget v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->b:F

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->c:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;-><init>(ZFLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroidx/compose/material/h;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->f:Landroidx/compose/foundation/gestures/DraggableState;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;->g:Landroidx/compose/runtime/MutableState;

    .line 22
    .line 23
    invoke-direct {v1, v2, v3, p0}, Landroidx/compose/material/h;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/runtime/MutableState;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x3

    .line 27
    invoke-static {p1, v0, v1, p2, p0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->e(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    if-ne p0, p1, :cond_0

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method
