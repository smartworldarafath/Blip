.class final Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:J

.field public final synthetic k:Z

.field public final synthetic l:Lkotlinx/coroutines/CancellableContinuationImpl;

.field public final synthetic m:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(JZLkotlinx/coroutines/CancellableContinuationImpl;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1;->j:J

    .line 5
    .line 6
    iput-boolean p3, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1;->k:Z

    .line 7
    .line 8
    iput-object p4, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1;->l:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 9
    .line 10
    iput-object p5, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1;->m:Lkotlin/jvm/functions/Function3;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_0

    .line 15
    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    and-int/2addr p2, v1

    .line 20
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_5

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 33
    .line 34
    if-ne p2, v0, :cond_1

    .line 35
    .line 36
    iget-boolean p2, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1;->k:Z

    .line 37
    .line 38
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    check-cast p2, Landroidx/compose/runtime/MutableState;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    if-ne v4, v0, :cond_2

    .line 56
    .line 57
    new-instance v4, Lnet/blip/android/ui/util/CaptureScope;

    .line 58
    .line 59
    new-instance v0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1$scope$1$1;

    .line 60
    .line 61
    invoke-direct {v0, p2}, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1$scope$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v4, v0}, Lnet/blip/android/ui/util/CaptureScope;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    check-cast v4, Lnet/blip/android/ui/util/CaptureScope;

    .line 71
    .line 72
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 73
    .line 74
    iget-wide v5, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1;->j:J

    .line 75
    .line 76
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/DpSize;->b(J)F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/DpSize;->a(J)F

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 85
    .line 86
    invoke-static {v6, v0, v5}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_3

    .line 101
    .line 102
    new-instance p2, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1$1$1;

    .line 103
    .line 104
    iget-object v5, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1;->l:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 105
    .line 106
    invoke-direct {p2, v5}, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1$1$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    new-instance v5, Lnet/blip/android/ui/util/a;

    .line 113
    .line 114
    invoke-direct {v5, v3, p2}, Lnet/blip/android/ui/util/a;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v5}, Landroidx/compose/ui/draw/DrawModifierKt;->d(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    :cond_3
    sget-object p2, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 122
    .line 123
    invoke-static {p2, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    iget-wide v5, p1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 128
    .line 129
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-static {p1, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 142
    .line 143
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 147
    .line 148
    .line 149
    iget-boolean v6, p1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 150
    .line 151
    if-eqz v6, :cond_4

    .line 152
    .line 153
    sget-object v6, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 154
    .line 155
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 160
    .line 161
    .line 162
    :goto_1
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 163
    .line 164
    invoke-static {p1, p2, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 165
    .line 166
    .line 167
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 168
    .line 169
    invoke-static {p1, v5, p2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 177
    .line 178
    invoke-static {p1, p2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 179
    .line 180
    .line 181
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 182
    .line 183
    .line 184
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 185
    .line 186
    invoke-static {p1, v0, p2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 187
    .line 188
    .line 189
    const p2, 0x176b2e71

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 193
    .line 194
    .line 195
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    iget-object p0, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$4$imageBitmap$1$1;->m:Lkotlin/jvm/functions/Function3;

    .line 200
    .line 201
    invoke-interface {p0, v4, p1, p2}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 212
    .line 213
    .line 214
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 215
    .line 216
    return-object p0
.end method
