.class final Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Landroidx/compose/animation/core/TransitionInstance;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/TransitionInstance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1;->k:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1;->l:Landroidx/compose/animation/core/TransitionInstance;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    .line 4
    .line 5
    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    .line 6
    .line 7
    iget-wide v0, p3, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 8
    .line 9
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->f0()Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    const-wide v0, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const/16 v2, 0x20

    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    iget-object p3, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1;->l:Landroidx/compose/animation/core/TransitionInstance;

    .line 27
    .line 28
    iget-object p3, p3, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 29
    .line 30
    check-cast p3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 31
    .line 32
    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    iget-object p0, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1;->k:Lkotlin/jvm/functions/Function1;

    .line 37
    .line 38
    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_0

    .line 49
    .line 50
    const-wide/16 v3, 0x0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget p0, p2, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 54
    .line 55
    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 56
    .line 57
    int-to-long v3, p0

    .line 58
    shl-long/2addr v3, v2

    .line 59
    int-to-long v5, p3

    .line 60
    and-long/2addr v5, v0

    .line 61
    or-long/2addr v3, v5

    .line 62
    :goto_0
    shr-long v5, v3, v2

    .line 63
    .line 64
    long-to-int p0, v5

    .line 65
    and-long/2addr v0, v3

    .line 66
    long-to-int p3, v0

    .line 67
    new-instance v0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1$1;

    .line 68
    .line 69
    invoke-direct {v0, p2}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-interface {p1, p0, p3, p2, v0}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
