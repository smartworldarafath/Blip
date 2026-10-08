.class public final synthetic Lnet/blip/android/ui/navigation/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Lnet/blip/libblip/frontend/State;

.field public final synthetic k:Landroidx/navigation/NavHostController;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Landroidx/compose/runtime/MutableState;

.field public final synthetic n:Landroidx/compose/animation/core/CubicBezierEasing;

.field public final synthetic o:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/libblip/frontend/State;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/CubicBezierEasing;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/navigation/a;->j:Lnet/blip/libblip/frontend/State;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/navigation/a;->k:Landroidx/navigation/NavHostController;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/navigation/a;->l:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/android/ui/navigation/a;->m:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/blip/android/ui/navigation/a;->n:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/blip/android/ui/navigation/a;->o:Landroidx/compose/runtime/State;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sget-object v3, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 16
    .line 17
    and-int/lit8 v3, v2, 0x3

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x1

    .line 22
    if-eq v3, v4, :cond_0

    .line 23
    .line 24
    move v3, v6

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v3, v5

    .line 27
    :goto_0
    and-int/2addr v2, v6

    .line 28
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_a

    .line 35
    .line 36
    iget-object v2, v0, Lnet/blip/android/ui/navigation/a;->m:Landroidx/compose/runtime/MutableState;

    .line 37
    .line 38
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 43
    .line 44
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->a:J

    .line 45
    .line 46
    sget-object v7, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 47
    .line 48
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 49
    .line 50
    invoke-static {v8, v3, v4, v7}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const/high16 v4, 0x3f800000    # 1.0f

    .line 55
    .line 56
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    iget-object v3, v0, Lnet/blip/android/ui/navigation/a;->j:Lnet/blip/libblip/frontend/State;

    .line 61
    .line 62
    invoke-static {v3}, Lnet/blip/libblip/State_DerivedKt;->c(Lnet/blip/libblip/frontend/State;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    const-string v3, "onboarding"

    .line 69
    .line 70
    :goto_1
    move-object v8, v3

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    const-string v3, "home"

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget-object v4, v0, Lnet/blip/android/ui/navigation/a;->n:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 80
    .line 81
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 82
    .line 83
    if-ne v3, v7, :cond_2

    .line 84
    .line 85
    new-instance v3, Lbc;

    .line 86
    .line 87
    invoke-direct {v3, v4, v5}, Lbc;-><init>(Landroidx/compose/animation/core/CubicBezierEasing;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    move-object v11, v3

    .line 94
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-ne v3, v7, :cond_3

    .line 101
    .line 102
    new-instance v3, Lbc;

    .line 103
    .line 104
    invoke-direct {v3, v4, v6}, Lbc;-><init>(Landroidx/compose/animation/core/CubicBezierEasing;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    move-object v12, v3

    .line 111
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 112
    .line 113
    iget-object v3, v0, Lnet/blip/android/ui/navigation/a;->k:Landroidx/navigation/NavHostController;

    .line 114
    .line 115
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    iget-object v5, v0, Lnet/blip/android/ui/navigation/a;->l:Lkotlin/jvm/functions/Function0;

    .line 120
    .line 121
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    or-int/2addr v4, v6

    .line 126
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    if-nez v4, :cond_4

    .line 131
    .line 132
    if-ne v6, v7, :cond_5

    .line 133
    .line 134
    :cond_4
    new-instance v6, Lb;

    .line 135
    .line 136
    const/16 v4, 0x1d

    .line 137
    .line 138
    invoke-direct {v6, v4, v3, v5}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    move-object/from16 v17, v6

    .line 145
    .line 146
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 147
    .line 148
    const/high16 v19, 0x1b0000

    .line 149
    .line 150
    const/4 v10, 0x0

    .line 151
    const/4 v13, 0x0

    .line 152
    const/4 v14, 0x0

    .line 153
    const/4 v15, 0x0

    .line 154
    const/16 v16, 0x0

    .line 155
    .line 156
    move-object/from16 v18, v1

    .line 157
    .line 158
    move-object v1, v7

    .line 159
    move-object v7, v3

    .line 160
    invoke-static/range {v7 .. v19}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 161
    .line 162
    .line 163
    move-object/from16 v3, v18

    .line 164
    .line 165
    iget-object v0, v0, Lnet/blip/android/ui/navigation/a;->o:Landroidx/compose/runtime/State;

    .line 166
    .line 167
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 172
    .line 173
    const/4 v4, 0x0

    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 177
    .line 178
    if-eqz v0, :cond_6

    .line 179
    .line 180
    iget-object v0, v0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 181
    .line 182
    iget-object v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->e:Ljava/lang/String;

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_6
    move-object v0, v4

    .line 186
    :goto_3
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    if-ne v5, v1, :cond_7

    .line 191
    .line 192
    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_7
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 200
    .line 201
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    if-nez v6, :cond_8

    .line 210
    .line 211
    if-ne v7, v1, :cond_9

    .line 212
    .line 213
    :cond_8
    new-instance v7, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;

    .line 214
    .line 215
    invoke-direct {v7, v0, v5, v2, v4}, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;-><init>(Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_9
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 222
    .line 223
    invoke-static {v3, v0, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_a
    move-object v3, v1

    .line 228
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 229
    .line 230
    .line 231
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 232
    .line 233
    return-object v0
.end method
