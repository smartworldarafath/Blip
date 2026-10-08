.class final Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.UpdatableAnimationState"
    f = "UpdatableAnimationState.kt"
    l = {
        0x64,
        0x97
    }
    m = "animateToZero"
    v = 0x1
.end annotation


# instance fields
.field public m:Lkotlin/Function;

.field public n:Lkotlin/jvm/functions/Function0;

.field public o:F

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

.field public r:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/UpdatableAnimationState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->q:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->r:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->r:I

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState$animateToZero$1;->q:Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, v0, p0}, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->a(Lp2;Ln1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
