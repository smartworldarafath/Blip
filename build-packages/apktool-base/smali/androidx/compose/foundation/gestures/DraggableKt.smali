.class public abstract Landroidx/compose/foundation/gestures/DraggableKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lkotlin/jvm/functions/Function3;

.field public static final b:Lkotlin/jvm/functions/Function3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/foundation/gestures/DraggableKt;->a:Lkotlin/jvm/functions/Function3;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStopped$1;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/foundation/gestures/DraggableKt;->b:Lkotlin/jvm/functions/Function3;

    .line 16
    .line 17
    return-void
.end method

.method public static a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Z)Landroidx/compose/ui/Modifier;
    .locals 9

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableElement;

    .line 4
    .line 5
    sget-object v6, Landroidx/compose/foundation/gestures/DraggableKt;->a:Lkotlin/jvm/functions/Function3;

    .line 6
    .line 7
    move-object v2, p1

    .line 8
    move v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move v5, p4

    .line 11
    move-object v7, p5

    .line 12
    move v8, p6

    .line 13
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/gestures/DraggableElement;-><init>(Landroidx/compose/foundation/gestures/DraggableState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static final b(J)J
    .locals 3

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->b(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->b(J)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->c(J)F

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->c(J)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_1
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    return-wide p0
.end method
