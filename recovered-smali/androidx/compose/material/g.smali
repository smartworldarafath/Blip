.class public final synthetic Landroidx/compose/material/g;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Z

.field public final synthetic k:Landroidx/compose/foundation/gestures/DraggableState;

.field public final synthetic l:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic m:F

.field public final synthetic n:Z

.field public final synthetic o:Landroidx/compose/runtime/MutableState;

.field public final synthetic p:Landroidx/compose/runtime/State;

.field public final synthetic q:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/material/g;->j:Z

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material/g;->k:Landroidx/compose/foundation/gestures/DraggableState;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material/g;->l:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/material/g;->m:F

    .line 11
    .line 12
    iput-boolean p5, p0, Landroidx/compose/material/g;->n:Z

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material/g;->o:Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/material/g;->p:Landroidx/compose/runtime/State;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/material/g;->q:Landroidx/compose/runtime/MutableState;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    move-object/from16 v3, p3

    .line 12
    .line 13
    check-cast v3, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v3, Landroidx/compose/material/SliderKt;->a:Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    const v3, 0x73f1d65a

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 26
    .line 27
    .line 28
    iget-boolean v3, v0, Landroidx/compose/material/g;->j:Z

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    const v3, -0x641fbb22

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 44
    .line 45
    if-ne v3, v5, :cond_0

    .line 46
    .line 47
    invoke-static {v2}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    move-object v11, v3

    .line 55
    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    .line 56
    .line 57
    iget v8, v0, Landroidx/compose/material/g;->m:F

    .line 58
    .line 59
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-boolean v7, v0, Landroidx/compose/material/g;->n:Z

    .line 64
    .line 65
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    iget-object v12, v0, Landroidx/compose/material/g;->k:Landroidx/compose/foundation/gestures/DraggableState;

    .line 70
    .line 71
    iget-object v9, v0, Landroidx/compose/material/g;->l:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 72
    .line 73
    filled-new-array {v12, v9, v3, v6}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v16

    .line 77
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    or-int/2addr v3, v6

    .line 86
    iget-object v9, v0, Landroidx/compose/material/g;->o:Landroidx/compose/runtime/MutableState;

    .line 87
    .line 88
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    or-int/2addr v3, v6

    .line 93
    iget-object v10, v0, Landroidx/compose/material/g;->p:Landroidx/compose/runtime/State;

    .line 94
    .line 95
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    or-int/2addr v3, v6

    .line 100
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    or-int/2addr v3, v6

    .line 105
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    or-int/2addr v3, v6

    .line 110
    iget-object v13, v0, Landroidx/compose/material/g;->q:Landroidx/compose/runtime/MutableState;

    .line 111
    .line 112
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    or-int/2addr v0, v3

    .line 117
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-nez v0, :cond_1

    .line 122
    .line 123
    if-ne v3, v5, :cond_2

    .line 124
    .line 125
    :cond_1
    new-instance v6, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;

    .line 126
    .line 127
    invoke-direct/range {v6 .. v13}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;-><init>(ZFLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/runtime/MutableState;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    move-object v3, v6

    .line 134
    :cond_2
    move-object/from16 v17, v3

    .line 135
    .line 136
    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 137
    .line 138
    sget-object v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 139
    .line 140
    new-instance v13, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 141
    .line 142
    const/4 v15, 0x0

    .line 143
    const/16 v18, 0x3

    .line 144
    .line 145
    const/4 v14, 0x0

    .line 146
    invoke-direct/range {v13 .. v18}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v1, v13}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_3
    const v0, -0x640f0d9c

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 164
    .line 165
    .line 166
    :goto_0
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 167
    .line 168
    .line 169
    return-object v1
.end method
