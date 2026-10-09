.class public final synthetic Landroidx/compose/ui/node/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/node/a;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget p0, p0, Landroidx/compose/ui/node/a;->j:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Landroidx/compose/ui/node/PlaceableResult;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/node/PlaceableResult;->z()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    iget-object p0, p1, Landroidx/compose/ui/node/PlaceableResult;->l:Landroidx/compose/ui/layout/Ruler;

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/compose/ui/node/PlaceableResult;->k:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 22
    .line 23
    iget-object v2, p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->A:Landroidx/collection/MutableScatterMap;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2, p0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/collection/MutableScatterSet;

    .line 32
    .line 33
    :cond_0
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v2, p1, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->z:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2, p0}, Landroidx/compose/ui/node/RulerTrackingMap;->a(Landroidx/compose/ui/layout/Ruler;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->P0(Landroidx/collection/MutableScatterSet;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->f()V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-object v0

    .line 49
    :pswitch_0
    move-object v4, p1

    .line 50
    check-cast v4, Landroidx/compose/ui/node/PlaceableResult;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroidx/compose/ui/node/PlaceableResult;->z()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_6

    .line 57
    .line 58
    iget-object v3, v4, Landroidx/compose/ui/node/PlaceableResult;->k:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 59
    .line 60
    iget-boolean p0, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 61
    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iget-object p0, v4, Landroidx/compose/ui/node/PlaceableResult;->j:Landroidx/compose/ui/layout/MeasureResult;

    .line 66
    .line 67
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->g()Lkotlin/jvm/functions/Function1;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    iget-object p1, v4, Landroidx/compose/ui/node/PlaceableResult;->j:Landroidx/compose/ui/layout/MeasureResult;

    .line 72
    .line 73
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->f()Lkotlin/jvm/functions/Function2;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    invoke-virtual {v3}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->R0()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    if-nez p0, :cond_5

    .line 84
    .line 85
    iput-object v1, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->q:Lkotlin/jvm/functions/Function2;

    .line 86
    .line 87
    iput-object v1, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->r:Lkotlin/jvm/functions/Function1;

    .line 88
    .line 89
    iput-object v1, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->p:Lkotlin/jvm/functions/Function1;

    .line 90
    .line 91
    invoke-virtual {v3}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->R0()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    iput-object v1, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->q:Lkotlin/jvm/functions/Function2;

    .line 96
    .line 97
    iput-object v1, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->r:Lkotlin/jvm/functions/Function1;

    .line 98
    .line 99
    const-wide v5, 0x7fffffff7fffffffL

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    const-wide/16 v7, 0x0

    .line 105
    .line 106
    invoke-virtual/range {v3 .. v8}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->w0(Landroidx/compose/ui/node/PlaceableResult;JJ)V

    .line 107
    .line 108
    .line 109
    iput-object p0, v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->p:Lkotlin/jvm/functions/Function1;

    .line 110
    .line 111
    :cond_6
    :goto_0
    return-object v0

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
