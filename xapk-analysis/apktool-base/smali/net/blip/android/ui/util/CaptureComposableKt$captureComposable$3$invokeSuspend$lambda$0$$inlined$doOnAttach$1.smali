.class public final Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$3$invokeSuspend$lambda$0$$inlined$doOnAttach$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic j:Landroid/view/View;

.field public final synthetic k:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$3$invokeSuspend$lambda$0$$inlined$doOnAttach$1;->j:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$3$invokeSuspend$lambda$0$$inlined$doOnAttach$1;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$3$invokeSuspend$lambda$0$$inlined$doOnAttach$1;->j:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$3$invokeSuspend$lambda$0$$inlined$doOnAttach$1;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 7
    .line 8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
