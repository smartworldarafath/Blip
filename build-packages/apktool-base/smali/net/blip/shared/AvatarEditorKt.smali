.class public abstract Lnet/blip/shared/AvatarEditorKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const v0, 0x1ce7a4d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    and-int/lit8 v0, p4, 0x6

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 25
    :goto_0
    or-int/2addr v0, p4

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v0, p4

    .line 28
    :goto_1
    and-int/lit8 v1, p4, 0x30

    .line 29
    .line 30
    const/16 v2, 0x20

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    move v1, v2

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/16 v1, 0x10

    .line 43
    .line 44
    :goto_2
    or-int/2addr v0, v1

    .line 45
    :cond_3
    and-int/lit16 v1, p4, 0x180

    .line 46
    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    const/16 v1, 0x100

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    const/16 v1, 0x80

    .line 59
    .line 60
    :goto_3
    or-int/2addr v0, v1

    .line 61
    :cond_5
    and-int/lit16 v1, v0, 0x93

    .line 62
    .line 63
    const/16 v3, 0x92

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x1

    .line 67
    if-eq v1, v3, :cond_6

    .line 68
    .line 69
    move v1, v5

    .line 70
    goto :goto_4

    .line 71
    :cond_6
    move v1, v4

    .line 72
    :goto_4
    and-int/lit8 v3, v0, 0x1

    .line 73
    .line 74
    invoke-virtual {p3, v3, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_f

    .line 79
    .line 80
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 81
    .line 82
    .line 83
    and-int/lit8 v1, p4, 0x1

    .line 84
    .line 85
    if-eqz v1, :cond_8

    .line 86
    .line 87
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_7

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_7
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 95
    .line 96
    .line 97
    :cond_8
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 105
    .line 106
    if-ne v1, v3, :cond_9

    .line 107
    .line 108
    invoke-static {p3}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_9
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 116
    .line 117
    invoke-static {p3}, Lnet/blip/shared/ContentPicker_androidKt;->b(Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function2;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    iget-object v7, p0, Lnet/blip/libblip/User;->p:Lokio/ByteString;

    .line 122
    .line 123
    invoke-virtual {p3, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    if-nez v7, :cond_a

    .line 132
    .line 133
    if-ne v8, v3, :cond_b

    .line 134
    .line 135
    :cond_a
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {p3, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_b
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 145
    .line 146
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    check-cast v7, Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    invoke-virtual {p3, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    or-int/2addr v9, v10

    .line 165
    invoke-virtual {p3, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    or-int/2addr v9, v10

    .line 170
    and-int/lit8 v10, v0, 0x70

    .line 171
    .line 172
    if-ne v10, v2, :cond_c

    .line 173
    .line 174
    move v4, v5

    .line 175
    :cond_c
    or-int v2, v9, v4

    .line 176
    .line 177
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    if-nez v2, :cond_d

    .line 182
    .line 183
    if-ne v4, v3, :cond_e

    .line 184
    .line 185
    :cond_d
    new-instance v4, Lnet/blip/shared/a;

    .line 186
    .line 187
    invoke-direct {v4, v1, v8, v6, p1}, Lnet/blip/shared/a;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_e
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 194
    .line 195
    new-instance v1, Lnet/blip/shared/AvatarEditorScope;

    .line 196
    .line 197
    invoke-direct {v1, v7, v4}, Lnet/blip/shared/AvatarEditorScope;-><init>(ZLkotlin/jvm/functions/Function0;)V

    .line 198
    .line 199
    .line 200
    shr-int/lit8 v0, v0, 0x3

    .line 201
    .line 202
    and-int/lit8 v0, v0, 0x70

    .line 203
    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {p2, v1, p3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_f
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 213
    .line 214
    .line 215
    :goto_6
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    if-eqz p3, :cond_10

    .line 220
    .line 221
    new-instance v0, Lb1;

    .line 222
    .line 223
    const/4 v5, 0x2

    .line 224
    move-object v1, p0

    .line 225
    move-object v2, p1

    .line 226
    move-object v3, p2

    .line 227
    move v4, p4

    .line 228
    invoke-direct/range {v0 .. v5}, Lb1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 229
    .line 230
    .line 231
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 232
    .line 233
    :cond_10
    return-void
.end method
