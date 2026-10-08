.class public final synthetic Lea;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lea;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lea;->k:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lea;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    iget-object v0, v0, Lea;->k:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 20
    .line 21
    move-object/from16 v7, p2

    .line 22
    .line 23
    check-cast v7, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    and-int/lit8 v8, v7, 0x3

    .line 30
    .line 31
    if-eq v8, v4, :cond_0

    .line 32
    .line 33
    move v4, v6

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v4, v5

    .line 36
    :goto_0
    and-int/2addr v7, v6

    .line 37
    move-object v15, v1

    .line 38
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 39
    .line 40
    invoke-virtual {v15, v7, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    new-array v1, v5, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-ne v4, v3, :cond_1

    .line 53
    .line 54
    new-instance v4, Lvc;

    .line 55
    .line 56
    const/16 v5, 0x13

    .line 57
    .line 58
    invoke-direct {v4, v5}, Lvc;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 65
    .line 66
    invoke-static {v1, v4, v15}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->c([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 71
    .line 72
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-nez v4, :cond_2

    .line 81
    .line 82
    if-ne v5, v3, :cond_3

    .line 83
    .line 84
    :cond_2
    new-instance v5, Lcd;

    .line 85
    .line 86
    const/16 v3, 0x12

    .line 87
    .line 88
    invoke-direct {v5, v1, v3}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    move-object v12, v5

    .line 95
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 96
    .line 97
    new-instance v3, Lef;

    .line 98
    .line 99
    invoke-direct {v3, v6, v1, v0}, Lef;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 100
    .line 101
    .line 102
    const v0, 0x43d4d74d

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v3, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    const/high16 v16, 0x180000

    .line 110
    .line 111
    const/16 v17, 0x2f

    .line 112
    .line 113
    const/4 v8, 0x0

    .line 114
    const/4 v9, 0x0

    .line 115
    const/4 v10, 0x0

    .line 116
    const/4 v11, 0x0

    .line 117
    const/4 v13, 0x0

    .line 118
    invoke-static/range {v8 .. v17}, Lnet/blip/android/ui/list/ListRowKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 123
    .line 124
    .line 125
    :goto_1
    return-object v2

    .line 126
    :pswitch_0
    move-object/from16 v1, p1

    .line 127
    .line 128
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 129
    .line 130
    move-object/from16 v7, p2

    .line 131
    .line 132
    check-cast v7, Ljava/lang/Integer;

    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    and-int/lit8 v8, v7, 0x3

    .line 139
    .line 140
    if-eq v8, v4, :cond_5

    .line 141
    .line 142
    move v5, v6

    .line 143
    :cond_5
    and-int/lit8 v4, v7, 0x1

    .line 144
    .line 145
    move-object v10, v1

    .line 146
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 147
    .line 148
    invoke-virtual {v10, v4, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_8

    .line 153
    .line 154
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    if-nez v1, :cond_6

    .line 163
    .line 164
    if-ne v4, v3, :cond_7

    .line 165
    .line 166
    :cond_6
    new-instance v4, Lb8;

    .line 167
    .line 168
    const/16 v1, 0xd

    .line 169
    .line 170
    invoke-direct {v4, v0, v1}, Lb8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :cond_7
    move-object v6, v4

    .line 177
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 178
    .line 179
    sget-object v9, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsScreenKt;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 180
    .line 181
    const/16 v11, 0x1fe

    .line 182
    .line 183
    const/4 v7, 0x0

    .line 184
    const/4 v8, 0x0

    .line 185
    invoke-static/range {v6 .. v11}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 190
    .line 191
    .line 192
    :goto_2
    return-object v2

    .line 193
    :pswitch_1
    move-object/from16 v1, p1

    .line 194
    .line 195
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;

    .line 196
    .line 197
    move-object/from16 v2, p2

    .line 198
    .line 199
    check-cast v2, Ljava/lang/Integer;

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 209
    .line 210
    return-object v0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
