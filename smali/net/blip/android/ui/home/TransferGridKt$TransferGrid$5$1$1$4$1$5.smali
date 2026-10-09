.class final Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Z

.field public final synthetic k:Landroidx/compose/runtime/MutableState;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lnet/blip/libblip/frontend/Transfer;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/frontend/Transfer;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5;->j:Z

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5;->k:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5;->l:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5;->m:Lnet/blip/libblip/frontend/Transfer;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5;->n:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    and-int/lit8 p1, p3, 0x11

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v2

    .line 25
    :goto_0
    and-int/2addr p3, v1

    .line 26
    move-object v8, p2

    .line 27
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 28
    .line 29
    invoke-virtual {v8, p3, p1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_6

    .line 34
    .line 35
    iget-boolean p1, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5;->j:Z

    .line 36
    .line 37
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 38
    .line 39
    iget-object p3, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5;->m:Lnet/blip/libblip/frontend/Transfer;

    .line 40
    .line 41
    iget-object v0, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5;->k:Landroidx/compose/runtime/MutableState;

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    const p1, 0x71b67adc

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-object v1, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5;->l:Lkotlin/jvm/functions/Function1;

    .line 56
    .line 57
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    or-int/2addr p1, v3

    .line 62
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    or-int/2addr p1, v3

    .line 67
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    if-ne v3, p2, :cond_2

    .line 74
    .line 75
    :cond_1
    new-instance v3, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5$1$1;

    .line 76
    .line 77
    invoke-direct {v3, v0, v1, p3}, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/frontend/Transfer;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 84
    .line 85
    const/high16 v9, 0x30000

    .line 86
    .line 87
    const/16 v10, 0x1e

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v6, 0x0

    .line 92
    sget-object v7, Lnet/blip/android/ui/home/ComposableSingletons$TransferGridKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 93
    .line 94
    invoke-static/range {v3 .. v10}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    const p1, 0x71bb285b

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iget-object p0, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5;->n:Lkotlin/jvm/functions/Function1;

    .line 115
    .line 116
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    or-int/2addr p1, v1

    .line 121
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    or-int/2addr p1, v1

    .line 126
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-nez p1, :cond_4

    .line 131
    .line 132
    if-ne v1, p2, :cond_5

    .line 133
    .line 134
    :cond_4
    new-instance v1, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5$2$1;

    .line 135
    .line 136
    invoke-direct {v1, v0, p0, p3}, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5$2$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/frontend/Transfer;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    move-object v3, v1

    .line 143
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 144
    .line 145
    const/high16 v9, 0x30000

    .line 146
    .line 147
    const/16 v10, 0x1e

    .line 148
    .line 149
    const/4 v4, 0x0

    .line 150
    const/4 v5, 0x0

    .line 151
    const/4 v6, 0x0

    .line 152
    sget-object v7, Lnet/blip/android/ui/home/ComposableSingletons$TransferGridKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 153
    .line 154
    invoke-static/range {v3 .. v10}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_6
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 159
    .line 160
    .line 161
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    return-object p0
.end method
