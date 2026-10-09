.class public final synthetic Landroidx/compose/ui/viewinterop/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/Modifier$Node;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier$Node;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/ui/viewinterop/a;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/a;->k:Landroidx/compose/ui/Modifier$Node;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Landroidx/compose/ui/viewinterop/a;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/a;->k:Landroidx/compose/ui/Modifier$Node;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/ui/geometry/Rect;

    .line 14
    .line 15
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v3, Landroidx/compose/ui/viewinterop/BringIntoViewNode$requester$1$1;

    .line 24
    .line 25
    invoke-direct {v3, p0, p1, v1}, Landroidx/compose/ui/viewinterop/BringIntoViewNode$requester$1$1;-><init>(Landroidx/compose/ui/viewinterop/BringIntoViewNode;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x3

    .line 29
    invoke-static {v0, v1, v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-object v2

    .line 33
    :pswitch_0
    check-cast p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;

    .line 34
    .line 35
    check-cast p1, Landroidx/compose/ui/focus/FocusEnterExitScope;

    .line 36
    .line 37
    invoke-static {p0}, Landroidx/compose/ui/viewinterop/FocusGroupNode_androidKt;->a(Landroidx/compose/ui/Modifier$Node;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    return-object v2

    .line 41
    :pswitch_1
    check-cast p0, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesNode;

    .line 42
    .line 43
    check-cast p1, Landroidx/compose/ui/focus/FocusEnterExitScope;

    .line 44
    .line 45
    invoke-static {p0}, Landroidx/compose/ui/viewinterop/FocusGroupNode_androidKt;->a(Landroidx/compose/ui/Modifier$Node;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-interface {v3}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNode_androidKt;->a(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    move-object v4, p1

    .line 74
    check-cast v4, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    .line 75
    .line 76
    iget v4, v4, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->a:I

    .line 77
    .line 78
    invoke-static {v4}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->c(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/4 v5, 0x2

    .line 83
    new-array v6, v5, [I

    .line 84
    .line 85
    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 86
    .line 87
    .line 88
    new-array p0, v5, [I

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 91
    .line 92
    .line 93
    check-cast v3, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 94
    .line 95
    iget-object v3, v3, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 96
    .line 97
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusTraversalKt;->a(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusTraversalKt;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    move-object v3, v1

    .line 109
    :goto_0
    const/4 v5, 0x1

    .line 110
    if-nez v3, :cond_2

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    .line 114
    .line 115
    iget v7, v3, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 116
    .line 117
    float-to-int v7, v7

    .line 118
    const/4 v8, 0x0

    .line 119
    aget v9, v6, v8

    .line 120
    .line 121
    add-int/2addr v7, v9

    .line 122
    aget v8, p0, v8

    .line 123
    .line 124
    sub-int/2addr v7, v8

    .line 125
    iget v10, v3, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 126
    .line 127
    float-to-int v10, v10

    .line 128
    aget v6, v6, v5

    .line 129
    .line 130
    add-int/2addr v10, v6

    .line 131
    aget p0, p0, v5

    .line 132
    .line 133
    sub-int/2addr v10, p0

    .line 134
    iget v11, v3, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 135
    .line 136
    float-to-int v11, v11

    .line 137
    add-int/2addr v11, v9

    .line 138
    sub-int/2addr v11, v8

    .line 139
    iget v3, v3, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 140
    .line 141
    float-to-int v3, v3

    .line 142
    add-int/2addr v3, v6

    .line 143
    sub-int/2addr v3, p0

    .line 144
    invoke-direct {v1, v7, v10, v11, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    .line 146
    .line 147
    :goto_1
    invoke-static {v0, v4, v1}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->b(Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/Rect;)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-nez p0, :cond_3

    .line 152
    .line 153
    check-cast p1, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    .line 154
    .line 155
    iput-boolean v5, p1, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->b:Z

    .line 156
    .line 157
    :cond_3
    return-object v2

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
