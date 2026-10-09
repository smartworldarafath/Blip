.class public interface abstract Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/unit/Density;


# direct methods
.method public static synthetic t0(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->q(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public abstract f()J
.end method

.method public abstract g0(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
.end method

.method public abstract getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;
.end method

.method public abstract p0()J
.end method

.method public abstract q(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
.end method

.method public abstract s()Landroidx/compose/ui/input/pointer/PointerEvent;
.end method

.method public abstract z0(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
.end method
