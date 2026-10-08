.class public final synthetic Ldc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lkotlin/Function;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZLkotlin/Function;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Ldc;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Ldc;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p2, p0, Ldc;->k:Z

    .line 6
    .line 7
    iput-object p3, p0, Ldc;->m:Lkotlin/Function;

    .line 8
    .line 9
    iput-object p4, p0, Ldc;->n:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ldc;->j:I

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
    iget-object v6, v0, Ldc;->n:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, v0, Ldc;->m:Lkotlin/Function;

    .line 14
    .line 15
    iget-boolean v8, v0, Ldc;->k:Z

    .line 16
    .line 17
    iget-object v0, v0, Ldc;->l:Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v9, 0x1

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v0, Lnet/blip/libblip/Peer;

    .line 24
    .line 25
    check-cast v7, Lkotlin/jvm/functions/Function4;

    .line 26
    .line 27
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 28
    .line 29
    move-object/from16 v1, p1

    .line 30
    .line 31
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 32
    .line 33
    move-object/from16 v10, p2

    .line 34
    .line 35
    check-cast v10, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    and-int/lit8 v11, v10, 0x3

    .line 42
    .line 43
    if-eq v11, v4, :cond_0

    .line 44
    .line 45
    move v4, v9

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v4, v5

    .line 48
    :goto_0
    and-int/2addr v10, v9

    .line 49
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 50
    .line 51
    invoke-virtual {v1, v10, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_6

    .line 56
    .line 57
    invoke-virtual {v0}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    instance-of v4, v0, Lnet/blip/libblip/Peer$User;

    .line 62
    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    check-cast v0, Lnet/blip/libblip/Peer$User;

    .line 66
    .line 67
    iget-object v0, v0, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object v0, v0, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 73
    .line 74
    const/16 v4, 0x2a

    .line 75
    .line 76
    const/16 v8, 0x2022

    .line 77
    .line 78
    invoke-static {v0, v4, v8}, Lkotlin/text/StringsKt;->E(Ljava/lang/String;CC)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_1
    move-object v13, v0

    .line 83
    goto :goto_2

    .line 84
    :cond_1
    instance-of v4, v0, Lnet/blip/libblip/Peer$Device;

    .line 85
    .line 86
    const/4 v10, 0x0

    .line 87
    if-eqz v4, :cond_5

    .line 88
    .line 89
    if-eqz v8, :cond_2

    .line 90
    .line 91
    invoke-virtual {v0}, Lnet/blip/libblip/Peer;->a()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move-object v13, v10

    .line 97
    :goto_2
    const/16 v17, 0x0

    .line 98
    .line 99
    const/16 v18, 0x9

    .line 100
    .line 101
    const/4 v11, 0x0

    .line 102
    const-wide/16 v14, 0x0

    .line 103
    .line 104
    move-object/from16 v16, v1

    .line 105
    .line 106
    invoke-static/range {v11 .. v18}, Lnet/blip/android/ui/list/ListRowKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 107
    .line 108
    .line 109
    if-nez v7, :cond_3

    .line 110
    .line 111
    const v0, -0x7cb3a61b

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    const v0, -0x7cb3a61a

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-ne v0, v3, :cond_4

    .line 142
    .line 143
    new-instance v0, Lvh;

    .line 144
    .line 145
    invoke-direct {v0, v6, v9}, Lvh;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    move-object v12, v0

    .line 152
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 153
    .line 154
    new-instance v0, Li0;

    .line 155
    .line 156
    const/4 v3, 0x6

    .line 157
    invoke-direct {v0, v3, v7, v6}, Li0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    const v3, 0x77156c03

    .line 161
    .line 162
    .line 163
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 164
    .line 165
    .line 166
    move-result-object v18

    .line 167
    const v20, 0x180030

    .line 168
    .line 169
    .line 170
    const/16 v21, 0x3c

    .line 171
    .line 172
    const/4 v13, 0x0

    .line 173
    const-wide/16 v14, 0x0

    .line 174
    .line 175
    const/16 v16, 0x0

    .line 176
    .line 177
    const/16 v17, 0x0

    .line 178
    .line 179
    move-object/from16 v19, v1

    .line 180
    .line 181
    invoke-static/range {v11 .. v21}, Landroidx/compose/material/AndroidMenu_androidKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_5
    invoke-static {}, Lk8;->e()V

    .line 189
    .line 190
    .line 191
    move-object v2, v10

    .line 192
    goto :goto_3

    .line 193
    :cond_6
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 194
    .line 195
    .line 196
    :goto_3
    return-object v2

    .line 197
    :pswitch_0
    check-cast v0, Ljava/lang/String;

    .line 198
    .line 199
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 200
    .line 201
    check-cast v6, Landroidx/navigation/NavHostController;

    .line 202
    .line 203
    move-object/from16 v1, p1

    .line 204
    .line 205
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 206
    .line 207
    move-object/from16 v10, p2

    .line 208
    .line 209
    check-cast v10, Ljava/lang/Integer;

    .line 210
    .line 211
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    sget-object v11, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 216
    .line 217
    and-int/lit8 v11, v10, 0x3

    .line 218
    .line 219
    if-eq v11, v4, :cond_7

    .line 220
    .line 221
    move v4, v9

    .line 222
    goto :goto_4

    .line 223
    :cond_7
    move v4, v5

    .line 224
    :goto_4
    and-int/2addr v10, v9

    .line 225
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 226
    .line 227
    invoke-virtual {v1, v10, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_a

    .line 232
    .line 233
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v10

    .line 241
    or-int/2addr v4, v10

    .line 242
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    or-int/2addr v4, v10

    .line 247
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    if-nez v4, :cond_8

    .line 252
    .line 253
    if-ne v10, v3, :cond_9

    .line 254
    .line 255
    :cond_8
    new-instance v10, Lx7;

    .line 256
    .line 257
    invoke-direct {v10, v9, v7, v6, v8}, Lx7;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    :cond_9
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 264
    .line 265
    invoke-static {v0, v10, v1, v5}, Lnet/blip/android/ui/transfer/TransferCreationScreenKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_a
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 270
    .line 271
    .line 272
    :goto_5
    return-object v2

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
