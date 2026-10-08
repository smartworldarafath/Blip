.class public final synthetic Lhf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Landroidx/compose/runtime/MutableState;

.field public final synthetic m:Ljava/util/LinkedHashMap;

.field public final synthetic n:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Landroid/content/Context;

.field public final synthetic r:Lkotlin/jvm/functions/Function1;

.field public final synthetic s:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Ljava/util/LinkedHashMap;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhf;->j:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lhf;->k:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lhf;->l:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    iput-object p4, p0, Lhf;->m:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    iput-object p5, p0, Lhf;->n:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    .line 14
    iput-object p6, p0, Lhf;->o:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    iput-object p7, p0, Lhf;->p:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lhf;->q:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p9, p0, Lhf;->r:Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    iput-object p10, p0, Lhf;->s:Landroidx/compose/runtime/MutableIntState;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

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
    and-int/lit8 v3, v2, 0x3

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    move v3, v6

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v5

    .line 25
    :goto_0
    and-int/2addr v2, v6

    .line 26
    move-object v15, v1

    .line 27
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 28
    .line 29
    invoke-virtual {v15, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_5

    .line 34
    .line 35
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 36
    .line 37
    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-wide v2, v15, Landroidx/compose/runtime/GapComposer;->T:J

    .line 42
    .line 43
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 52
    .line 53
    invoke-static {v15, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 63
    .line 64
    .line 65
    iget-boolean v5, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 66
    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    sget-object v5, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 70
    .line 71
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 76
    .line 77
    .line 78
    :goto_1
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 79
    .line 80
    invoke-static {v15, v1, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 81
    .line 82
    .line 83
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 84
    .line 85
    invoke-static {v15, v3, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 93
    .line 94
    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 98
    .line 99
    .line 100
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 101
    .line 102
    invoke-static {v15, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lhf;->j:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v1, :cond_2

    .line 108
    .line 109
    iget-object v1, v0, Lhf;->k:Ljava/lang/String;

    .line 110
    .line 111
    if-nez v1, :cond_3

    .line 112
    .line 113
    const-string v1, "Download"

    .line 114
    .line 115
    :cond_2
    :goto_2
    move-object v9, v1

    .line 116
    goto :goto_3

    .line 117
    :cond_3
    const-string v1, "Selected folder"

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :goto_3
    const/16 v13, 0x30

    .line 121
    .line 122
    const/16 v14, 0x9

    .line 123
    .line 124
    const/4 v7, 0x0

    .line 125
    const-string v8, "Default save location"

    .line 126
    .line 127
    const-wide/16 v10, 0x0

    .line 128
    .line 129
    move-object v12, v15

    .line 130
    invoke-static/range {v7 .. v14}, Lnet/blip/android/ui/list/ListRowKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lhf;->l:Landroidx/compose/runtime/MutableState;

    .line 134
    .line 135
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 150
    .line 151
    if-ne v2, v3, :cond_4

    .line 152
    .line 153
    new-instance v2, Lcd;

    .line 154
    .line 155
    const/16 v3, 0x17

    .line 156
    .line 157
    invoke-direct {v2, v1, v3}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_4
    move-object v8, v2

    .line 164
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 165
    .line 166
    new-instance v16, Ljf;

    .line 167
    .line 168
    iget-object v2, v0, Lhf;->m:Ljava/util/LinkedHashMap;

    .line 169
    .line 170
    iget-object v3, v0, Lhf;->n:Lkotlinx/coroutines/CoroutineScope;

    .line 171
    .line 172
    iget-object v4, v0, Lhf;->o:Lkotlin/jvm/functions/Function2;

    .line 173
    .line 174
    iget-object v5, v0, Lhf;->p:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v9, v0, Lhf;->q:Landroid/content/Context;

    .line 177
    .line 178
    iget-object v10, v0, Lhf;->r:Lkotlin/jvm/functions/Function1;

    .line 179
    .line 180
    iget-object v0, v0, Lhf;->s:Landroidx/compose/runtime/MutableIntState;

    .line 181
    .line 182
    move-object/from16 v24, v0

    .line 183
    .line 184
    move-object/from16 v23, v1

    .line 185
    .line 186
    move-object/from16 v17, v2

    .line 187
    .line 188
    move-object/from16 v18, v3

    .line 189
    .line 190
    move-object/from16 v19, v4

    .line 191
    .line 192
    move-object/from16 v20, v5

    .line 193
    .line 194
    move-object/from16 v21, v9

    .line 195
    .line 196
    move-object/from16 v22, v10

    .line 197
    .line 198
    invoke-direct/range {v16 .. v24}, Ljf;-><init>(Ljava/util/LinkedHashMap;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)V

    .line 199
    .line 200
    .line 201
    move-object/from16 v0, v16

    .line 202
    .line 203
    const v1, -0x5391d2d2

    .line 204
    .line 205
    .line 206
    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 207
    .line 208
    .line 209
    move-result-object v14

    .line 210
    const v16, 0x180030

    .line 211
    .line 212
    .line 213
    const/16 v17, 0x3c

    .line 214
    .line 215
    const/4 v9, 0x0

    .line 216
    const-wide/16 v10, 0x0

    .line 217
    .line 218
    const/4 v12, 0x0

    .line 219
    const/4 v13, 0x0

    .line 220
    invoke-static/range {v7 .. v17}, Landroidx/compose/material/AndroidMenu_androidKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_5
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 228
    .line 229
    .line 230
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 231
    .line 232
    return-object v0
.end method
