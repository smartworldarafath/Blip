.class public final synthetic Landroidx/compose/foundation/gestures/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

.field public final synthetic k:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic l:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic m:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public final synthetic n:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/gestures/c;->j:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/gestures/c;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/gestures/c;->l:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/gestures/c;->m:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/gestures/c;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Ljava/lang/Float;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/gestures/c;->j:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->g:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->g(Lkotlinx/coroutines/channels/BufferedChannel;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->e:Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;

    .line 19
    .line 20
    iget-wide v3, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->b:J

    .line 21
    .line 22
    iget-wide v5, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->a:J

    .line 23
    .line 24
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 25
    .line 26
    const/16 v8, 0x20

    .line 27
    .line 28
    shr-long v8, v5, v8

    .line 29
    .line 30
    long-to-int v8, v8

    .line 31
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    invoke-virtual {v7, v3, v4, v8}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 39
    .line 40
    const-wide v7, 0xffffffffL

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    and-long/2addr v5, v7

    .line 46
    long-to-int v5, v5

    .line 47
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-virtual {v0, v3, v4, v5}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroidx/compose/foundation/gestures/c;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 59
    .line 60
    invoke-virtual {v3, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->a(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 65
    .line 66
    iget-wide v3, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->a:J

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/compose/foundation/gestures/c;->m:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 69
    .line 70
    invoke-virtual {v0, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    invoke-virtual {v0, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->j(J)F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget-object v3, p0, Landroidx/compose/foundation/gestures/c;->l:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 79
    .line 80
    iput v0, v3, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 81
    .line 82
    sub-float/2addr v0, p1

    .line 83
    invoke-static {v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogicKt;->a(F)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    xor-int/2addr p1, v2

    .line 88
    iget-object p0, p0, Landroidx/compose/foundation/gestures/c;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 89
    .line 90
    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 91
    .line 92
    :cond_0
    if-eqz v1, :cond_1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const/4 v2, 0x0

    .line 96
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method
