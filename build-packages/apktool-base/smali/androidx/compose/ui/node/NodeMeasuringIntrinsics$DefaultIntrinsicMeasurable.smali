.class final Landroidx/compose/ui/node/NodeMeasuringIntrinsics$DefaultIntrinsicMeasurable;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;


# instance fields
.field public final j:Landroidx/compose/ui/layout/IntrinsicMeasurable;

.field public final k:Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicMinMax;

.field public final l:Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicWidthHeight;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicMinMax;Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicWidthHeight;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$DefaultIntrinsicMeasurable;->j:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$DefaultIntrinsicMeasurable;->k:Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicMinMax;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$DefaultIntrinsicMeasurable;->l:Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicWidthHeight;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final V(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$DefaultIntrinsicMeasurable;->j:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final a()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$DefaultIntrinsicMeasurable;->j:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final b(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$DefaultIntrinsicMeasurable;->j:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final m(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$DefaultIntrinsicMeasurable;->j:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->m(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final p(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$DefaultIntrinsicMeasurable;->j:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->p(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final w(J)Landroidx/compose/ui/layout/Placeable;
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicWidthHeight;->j:Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicWidthHeight;

    .line 2
    .line 3
    const/16 v1, 0x7fff

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$DefaultIntrinsicMeasurable;->j:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$DefaultIntrinsicMeasurable;->l:Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicWidthHeight;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$DefaultIntrinsicMeasurable;->k:Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicMinMax;

    .line 10
    .line 11
    if-ne v3, v0, :cond_2

    .line 12
    .line 13
    sget-object v0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicMinMax;->k:Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicMinMax;

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-interface {v2, p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->p(I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-interface {v2, p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->m(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->c(J)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    :cond_1
    new-instance p1, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$EmptyPlaceable;

    .line 45
    .line 46
    invoke-direct {p1, p0, v1}, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$EmptyPlaceable;-><init>(II)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_2
    sget-object v0, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicMinMax;->k:Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicMinMax;

    .line 51
    .line 52
    if-ne p0, v0, :cond_3

    .line 53
    .line 54
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-interface {v2, p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->b(I)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-interface {v2, p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    :goto_1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->d(J)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    :cond_4
    new-instance p1, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$EmptyPlaceable;

    .line 82
    .line 83
    invoke-direct {p1, v1, p0}, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$EmptyPlaceable;-><init>(II)V

    .line 84
    .line 85
    .line 86
    return-object p1
.end method
