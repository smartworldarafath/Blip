.class public final synthetic Ldh;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

.field public final synthetic k:Z

.field public final synthetic l:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldh;->j:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 5
    .line 6
    iput-boolean p2, p0, Ldh;->k:Z

    .line 7
    .line 8
    iput-object p3, p0, Ldh;->l:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ldh;->j:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->f:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 8
    .line 9
    check-cast p3, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    const p1, -0x7f685f60

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object p3, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    if-ne p1, p3, :cond_0

    .line 33
    .line 34
    move p1, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move p1, v3

    .line 37
    :goto_0
    move-object p3, v1

    .line 38
    check-cast p3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 39
    .line 40
    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    check-cast p3, Landroidx/compose/foundation/gestures/Orientation;

    .line 45
    .line 46
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 47
    .line 48
    if-eq p3, v4, :cond_2

    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move p1, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    move p1, v2

    .line 56
    :goto_2
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 65
    .line 66
    if-nez p3, :cond_3

    .line 67
    .line 68
    if-ne v4, v5, :cond_4

    .line 69
    .line 70
    :cond_3
    new-instance v4, Lma;

    .line 71
    .line 72
    const/16 p3, 0x1d

    .line 73
    .line 74
    invoke-direct {v4, p3, v0}, Lma;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 81
    .line 82
    invoke-static {v4, p2}, Landroidx/compose/foundation/gestures/ScrollableStateKt;->b(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/gestures/ScrollableState;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    or-int/2addr v4, v6

    .line 95
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    if-nez v4, :cond_5

    .line 100
    .line 101
    if-ne v6, v5, :cond_6

    .line 102
    .line 103
    :cond_5
    new-instance v6, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;

    .line 104
    .line 105
    invoke-direct {v6, p3, v0}, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/text/TextFieldScrollerPosition;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_6
    check-cast v6, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;

    .line 112
    .line 113
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    check-cast p3, Landroidx/compose/foundation/gestures/Orientation;

    .line 120
    .line 121
    iget-boolean v1, p0, Ldh;->k:Z

    .line 122
    .line 123
    if-eqz v1, :cond_7

    .line 124
    .line 125
    iget-object v0, v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->b:Landroidx/compose/runtime/MutableFloatState;

    .line 126
    .line 127
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    const/4 v1, 0x0

    .line 134
    cmpg-float v0, v0, v1

    .line 135
    .line 136
    if-nez v0, :cond_8

    .line 137
    .line 138
    :cond_7
    move v2, v3

    .line 139
    :cond_8
    iget-object p0, p0, Ldh;->l:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 140
    .line 141
    invoke-static {v6, p3, v2, p1, p0}, Landroidx/compose/foundation/gestures/ScrollableKt;->b(Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 146
    .line 147
    .line 148
    return-object p0
.end method
