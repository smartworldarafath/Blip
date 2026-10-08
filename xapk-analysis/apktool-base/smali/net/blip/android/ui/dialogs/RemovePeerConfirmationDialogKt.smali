.class public abstract Lnet/blip/android/ui/dialogs/RemovePeerConfirmationDialogKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-object v9, p3

    .line 13
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v4, -0x48439836

    .line 16
    .line 17
    .line 18
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v4, v0, 0x6

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    const/4 v4, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v4, 0x2

    .line 34
    :goto_0
    or-int/2addr v4, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v4, v0

    .line 37
    :goto_1
    and-int/lit8 v5, v0, 0x30

    .line 38
    .line 39
    if-nez v5, :cond_3

    .line 40
    .line 41
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    const/16 v5, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v5, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v4, v5

    .line 53
    :cond_3
    and-int/lit16 v5, v0, 0x180

    .line 54
    .line 55
    if-nez v5, :cond_5

    .line 56
    .line 57
    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_4

    .line 62
    .line 63
    const/16 v5, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v5, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v4, v5

    .line 69
    :cond_5
    and-int/lit16 v5, v4, 0x93

    .line 70
    .line 71
    const/16 v6, 0x92

    .line 72
    .line 73
    if-eq v5, v6, :cond_6

    .line 74
    .line 75
    const/4 v5, 0x1

    .line 76
    goto :goto_4

    .line 77
    :cond_6
    const/4 v5, 0x0

    .line 78
    :goto_4
    and-int/lit8 v6, v4, 0x1

    .line 79
    .line 80
    invoke-virtual {v9, v6, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_b

    .line 85
    .line 86
    instance-of v5, p0, Lnet/blip/libblip/Peer$User;

    .line 87
    .line 88
    const-string v6, "?"

    .line 89
    .line 90
    const-string v7, "Remove "

    .line 91
    .line 92
    if-eqz v5, :cond_7

    .line 93
    .line 94
    invoke-virtual {p0}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    goto :goto_5

    .line 117
    :cond_7
    instance-of v8, p0, Lnet/blip/libblip/Peer$Device;

    .line 118
    .line 119
    if-eqz v8, :cond_a

    .line 120
    .line 121
    invoke-virtual {p0}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    new-instance v10, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    :goto_5
    if-eqz v5, :cond_8

    .line 144
    .line 145
    move-object v5, p0

    .line 146
    check-cast v5, Lnet/blip/libblip/Peer$User;

    .line 147
    .line 148
    iget-object v5, v5, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    iget-object v7, v5, Lnet/blip/libblip/User;->o:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v8, v5, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v5}, Lnet/blip/libblip/User_DerivedKt;->c(Lnet/blip/libblip/User;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    new-instance v10, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v7, " ("

    .line 170
    .line 171
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v7, ") won\'t show up in the list anymore.\r\n"

    .line 178
    .line 179
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v5, " won\u2019t know that you removed them."

    .line 186
    .line 187
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    :goto_6
    move-object v7, v6

    .line 195
    goto :goto_7

    .line 196
    :cond_8
    instance-of v5, p0, Lnet/blip/libblip/Peer$Device;

    .line 197
    .line 198
    if-eqz v5, :cond_9

    .line 199
    .line 200
    const-string v5, "The device will get signed out of Blip and removed from your account."

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :goto_7
    new-instance v6, Lkotlin/Pair;

    .line 204
    .line 205
    const-string v8, "Remove"

    .line 206
    .line 207
    invoke-direct {v6, v8, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    move-object v8, v7

    .line 211
    new-instance v7, Lkotlin/Pair;

    .line 212
    .line 213
    const-string v10, "Cancel"

    .line 214
    .line 215
    invoke-direct {v7, v10, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    shl-int/lit8 v4, v4, 0x9

    .line 219
    .line 220
    const/high16 v10, 0x70000

    .line 221
    .line 222
    and-int/2addr v4, v10

    .line 223
    or-int/lit16 v10, v4, 0x180

    .line 224
    .line 225
    const/4 v11, 0x0

    .line 226
    move-object v4, v5

    .line 227
    const/4 v5, 0x1

    .line 228
    move-object v3, v8

    .line 229
    move-object v8, p2

    .line 230
    invoke-static/range {v3 .. v11}, Lnet/blip/android/ui/components/AlertDialogKt;->a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/Pair;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 231
    .line 232
    .line 233
    goto :goto_8

    .line 234
    :cond_9
    invoke-static {}, Lk8;->e()V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :cond_a
    invoke-static {}, Lk8;->e()V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_b
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 243
    .line 244
    .line 245
    :goto_8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    if-eqz v6, :cond_c

    .line 250
    .line 251
    new-instance v0, Lj1;

    .line 252
    .line 253
    const/4 v5, 0x1

    .line 254
    move-object v1, p0

    .line 255
    move-object v2, p1

    .line 256
    move-object v3, p2

    .line 257
    move/from16 v4, p4

    .line 258
    .line 259
    invoke-direct/range {v0 .. v5}, Lj1;-><init>(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    .line 260
    .line 261
    .line 262
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 263
    .line 264
    :cond_c
    return-void
.end method
