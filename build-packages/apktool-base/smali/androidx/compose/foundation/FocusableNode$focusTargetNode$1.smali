.class final synthetic Landroidx/compose/foundation/FocusableNode$focusTargetNode$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/focus/FocusState;",
        "Landroidx/compose/ui/focus/FocusState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroidx/compose/ui/focus/FocusState;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/focus/FocusState;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->k:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/compose/foundation/FocusableNode;

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    check-cast p2, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    check-cast p1, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ne p2, p1, :cond_1

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/FocusableNode;->A:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    if-eqz p2, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->m:Lkotlinx/coroutines/CoroutineStart;

    .line 50
    .line 51
    new-instance v2, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;

    .line 52
    .line 53
    invoke-direct {v2, p0, p1}, Landroidx/compose/foundation/FocusableNode$onFocusStateChange$1;-><init>(Landroidx/compose/foundation/FocusableNode;Lkotlin/coroutines/Continuation;)V

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    invoke-static {v0, p1, v1, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 58
    .line 59
    .line 60
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lp0;

    .line 66
    .line 67
    const/16 v2, 0x10

    .line 68
    .line 69
    invoke-direct {v1, v2, v0, p0}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v1}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Landroidx/compose/ui/layout/PinnableContainer;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-interface {v0}, Landroidx/compose/ui/layout/PinnableContainer;->b()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    move-object v0, p1

    .line 87
    :goto_0
    iput-object v0, p0, Landroidx/compose/foundation/FocusableNode;->C:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 88
    .line 89
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->D:Landroidx/compose/ui/node/NodeCoordinator;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusableNode;->c1()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->C:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    invoke-interface {v0}, Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;->a()V

    .line 110
    .line 111
    .line 112
    :cond_5
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->C:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusableNode;->c1()V

    .line 115
    .line 116
    .line 117
    :cond_6
    :goto_1
    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->z:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 121
    .line 122
    if-eqz v0, :cond_9

    .line 123
    .line 124
    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->B:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 125
    .line 126
    if-eqz p2, :cond_8

    .line 127
    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    new-instance p2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 131
    .line 132
    invoke-direct {p2, v1}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0, p2}, Landroidx/compose/foundation/FocusableNode;->b1(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;)V

    .line 136
    .line 137
    .line 138
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->B:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 139
    .line 140
    :cond_7
    new-instance p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 141
    .line 142
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0, p1}, Landroidx/compose/foundation/FocusableNode;->b1(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;)V

    .line 146
    .line 147
    .line 148
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->B:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_8
    if-eqz v1, :cond_9

    .line 152
    .line 153
    new-instance p2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 154
    .line 155
    invoke-direct {p2, v1}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0, p2}, Landroidx/compose/foundation/FocusableNode;->b1(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/Interaction;)V

    .line 159
    .line 160
    .line 161
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->B:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 162
    .line 163
    :cond_9
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 164
    .line 165
    return-object p0
.end method
