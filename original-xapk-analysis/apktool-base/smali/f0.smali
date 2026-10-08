.class public final synthetic Lf0;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/material/AnchoredDraggableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material/AnchoredDraggableState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf0;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lf0;->k:Landroidx/compose/material/AnchoredDraggableState;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lf0;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lf0;->k:Landroidx/compose/material/AnchoredDraggableState;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/material/AnchoredDraggableState;->g:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_0
    sget v0, Landroidx/compose/material/SwitchKt;->a:F

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->f()F

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_1
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object p0, p0, Landroidx/compose/material/AnchoredDraggableState;->h:Landroidx/compose/runtime/State;

    .line 38
    .line 39
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance v1, Lkotlin/Pair;

    .line 44
    .line 45
    invoke-direct {v1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :pswitch_2
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_3
    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState;->l:Landroidx/compose/runtime/MutableState;

    .line 55
    .line 56
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget-object v2, p0, Landroidx/compose/material/AnchoredDraggableState;->g:Landroidx/compose/runtime/MutableState;

    .line 73
    .line 74
    if-nez v1, :cond_0

    .line 75
    .line 76
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 77
    .line 78
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0, v0, v2, v1}, Landroidx/compose/material/AnchoredDraggableState;->c(FFLjava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 89
    .line 90
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :cond_1
    :goto_0
    return-object v0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
