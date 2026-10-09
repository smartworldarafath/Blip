.class public final synthetic Landroidx/compose/material/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic k:Ljava/util/List;

.field public final synthetic l:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic m:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic n:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic o:Landroidx/compose/material/SliderDraggableState;

.field public final synthetic p:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableFloatState;Ljava/util/List;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material/SliderDraggableState;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/f;->j:Landroidx/compose/runtime/MutableFloatState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material/f;->k:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material/f;->l:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material/f;->m:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material/f;->n:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material/f;->o:Landroidx/compose/material/SliderDraggableState;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/material/f;->p:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Ljava/lang/Float;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result v4

    .line 7
    sget-object p1, Landroidx/compose/material/SliderKt;->a:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/material/f;->j:Landroidx/compose/runtime/MutableFloatState;

    .line 10
    .line 11
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object p1, p0, Landroidx/compose/material/f;->l:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 18
    .line 19
    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/material/f;->m:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 22
    .line 23
    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/material/f;->k:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v7, 0x0

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    move-object v3, v7

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v3, 0x0

    .line 37
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    move-object v5, v3

    .line 42
    check-cast v5, Ljava/lang/Number;

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-static {p1, v0, v5}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    sub-float/2addr v5, v2

    .line 53
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    const/4 v8, 0x1

    .line 62
    sub-int/2addr v6, v8

    .line 63
    if-gt v8, v6, :cond_2

    .line 64
    .line 65
    :goto_0
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    move-object v10, v9

    .line 70
    check-cast v10, Ljava/lang/Number;

    .line 71
    .line 72
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    invoke-static {p1, v0, v10}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    sub-float/2addr v10, v2

    .line 81
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    invoke-static {v5, v10}, Ljava/lang/Float;->compare(FF)I

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    if-lez v11, :cond_1

    .line 90
    .line 91
    move-object v3, v9

    .line 92
    move v5, v10

    .line 93
    :cond_1
    if-eq v8, v6, :cond_2

    .line 94
    .line 95
    add-int/lit8 v8, v8, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    :goto_1
    check-cast v3, Ljava/lang/Float;

    .line 99
    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    move v3, p1

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    move v3, v2

    .line 113
    :goto_2
    cmpg-float p1, v2, v3

    .line 114
    .line 115
    iget-object v1, p0, Landroidx/compose/material/f;->o:Landroidx/compose/material/SliderDraggableState;

    .line 116
    .line 117
    iget-object v5, p0, Landroidx/compose/material/f;->p:Lkotlin/jvm/functions/Function0;

    .line 118
    .line 119
    if-nez p1, :cond_4

    .line 120
    .line 121
    iget-object p0, v1, Landroidx/compose/material/SliderDraggableState;->b:Landroidx/compose/runtime/MutableState;

    .line 122
    .line 123
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-nez p0, :cond_5

    .line 136
    .line 137
    if-eqz v5, :cond_5

    .line 138
    .line 139
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_4
    new-instance v0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;

    .line 144
    .line 145
    const/4 v6, 0x0

    .line 146
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;-><init>(Landroidx/compose/material/SliderDraggableState;FFFLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 147
    .line 148
    .line 149
    const/4 p1, 0x3

    .line 150
    iget-object p0, p0, Landroidx/compose/material/f;->n:Lkotlinx/coroutines/CoroutineScope;

    .line 151
    .line 152
    invoke-static {p0, v7, v7, v0, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 153
    .line 154
    .line 155
    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 156
    .line 157
    return-object p0
.end method
