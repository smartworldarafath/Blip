.class public abstract Lcom/abovevacant/epitaph/wire/TombstoneDecoder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/BacktraceFrame;
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    move-object v3, v2

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    ushr-int/lit8 v5, v4, 0x3

    .line 13
    .line 14
    and-int/lit8 v4, v4, 0x7

    .line 15
    .line 16
    const/4 v6, 0x2

    .line 17
    const/4 v7, 0x0

    .line 18
    packed-switch v5, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v4}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    invoke-static {v5, v6, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_1
    invoke-static {v5, v7, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_2
    invoke-static {v5, v6, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_0

    .line 47
    :pswitch_3
    invoke-static {v5, v7, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_4
    invoke-static {v5, v6, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    goto :goto_0

    .line 62
    :pswitch_5
    invoke-static {v5, v7, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_6
    invoke-static {v5, v7, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    goto :goto_0

    .line 77
    :pswitch_7
    invoke-static {v5, v7, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    new-instance p0, Lcom/abovevacant/epitaph/core/BacktraceFrame;

    .line 85
    .line 86
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/abovevacant/epitaph/core/BacktraceFrame;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object p0

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/MemoryDump;
    .locals 5

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    ushr-int/lit8 v1, v0, 0x3

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x7

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq v1, v2, :cond_6

    .line 14
    .line 15
    if-eq v1, v3, :cond_5

    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    if-eq v1, v4, :cond_4

    .line 19
    .line 20
    const/4 v4, 0x4

    .line 21
    if-eq v1, v4, :cond_3

    .line 22
    .line 23
    const/4 v4, 0x6

    .line 24
    if-eq v1, v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {v1, v3, v0}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_1
    invoke-virtual {v0}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    ushr-int/lit8 v4, v1, 0x3

    .line 44
    .line 45
    and-int/lit8 v1, v1, 0x7

    .line 46
    .line 47
    if-eq v4, v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-static {v4, v3, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/abovevacant/epitaph/io/WireReader;->c()[B

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {v1, v3, v0}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->c()[B

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const/4 v2, 0x0

    .line 68
    invoke-static {v1, v2, v0}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    invoke-static {v1, v3, v0}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_6
    invoke-static {v1, v3, v0}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_7
    new-instance p0, Lcom/abovevacant/epitaph/core/MemoryDump;

    .line 90
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    return-object p0
.end method

.method public static c(Lcom/abovevacant/epitaph/io/WireReader;Ljava/util/HashMap;)V
    .locals 21

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v0

    .line 4
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-eqz v3, :cond_6

    .line 9
    .line 10
    ushr-int/lit8 v4, v3, 0x3

    .line 11
    .line 12
    and-int/lit8 v3, v3, 0x7

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-eq v4, v5, :cond_5

    .line 16
    .line 17
    const/4 v6, 0x2

    .line 18
    if-eq v4, v6, :cond_0

    .line 19
    .line 20
    move-object/from16 v7, p0

    .line 21
    .line 22
    invoke-virtual {v7, v3}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 23
    .line 24
    .line 25
    move v5, v0

    .line 26
    goto/16 :goto_8

    .line 27
    .line 28
    :cond_0
    move-object/from16 v7, p0

    .line 29
    .line 30
    invoke-static {v4, v6, v3}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v11, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v12, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v13, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v14, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v15, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v3, ""

    .line 63
    .line 64
    move v9, v0

    .line 65
    move-object v10, v3

    .line 66
    :goto_1
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    ushr-int/lit8 v8, v4, 0x3

    .line 73
    .line 74
    and-int/lit8 v4, v4, 0x7

    .line 75
    .line 76
    packed-switch v8, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v4}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 80
    .line 81
    .line 82
    :goto_2
    move-object/from16 v20, v1

    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :pswitch_0
    invoke-static {v8, v6, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :pswitch_1
    invoke-static {v8, v0, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 101
    .line 102
    .line 103
    :goto_3
    move v5, v0

    .line 104
    move-object/from16 v20, v1

    .line 105
    .line 106
    goto/16 :goto_7

    .line 107
    .line 108
    :pswitch_2
    invoke-static {v8, v6, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :pswitch_3
    invoke-static {v8, v0, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :pswitch_4
    invoke-static {v8, v6, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-static {v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->b(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/MemoryDump;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :pswitch_5
    invoke-static {v8, v6, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-static {v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->a(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/BacktraceFrame;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :pswitch_6
    invoke-static {v8, v6, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    const-wide/16 v16, 0x0

    .line 164
    .line 165
    move-object v8, v3

    .line 166
    move-wide/from16 v18, v16

    .line 167
    .line 168
    :goto_4
    invoke-virtual {v4}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 169
    .line 170
    .line 171
    move-result v16

    .line 172
    if-eqz v16, :cond_3

    .line 173
    .line 174
    ushr-int/lit8 v0, v16, 0x3

    .line 175
    .line 176
    move-object/from16 v20, v1

    .line 177
    .line 178
    and-int/lit8 v1, v16, 0x7

    .line 179
    .line 180
    if-eq v0, v5, :cond_2

    .line 181
    .line 182
    if-eq v0, v6, :cond_1

    .line 183
    .line 184
    invoke-virtual {v4, v1}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 185
    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_1
    const/4 v5, 0x0

    .line 189
    invoke-static {v0, v5, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 193
    .line 194
    .line 195
    move-result-wide v0

    .line 196
    move-wide/from16 v18, v0

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_2
    invoke-static {v0, v6, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    :goto_5
    move-object/from16 v1, v20

    .line 207
    .line 208
    const/4 v0, 0x0

    .line 209
    const/4 v5, 0x1

    .line 210
    goto :goto_4

    .line 211
    :cond_3
    move-object/from16 v20, v1

    .line 212
    .line 213
    new-instance v0, Lcom/abovevacant/epitaph/core/Register;

    .line 214
    .line 215
    move-wide/from16 v4, v18

    .line 216
    .line 217
    invoke-direct {v0, v4, v5, v8}, Lcom/abovevacant/epitaph/core/Register;-><init>(JLjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    :goto_6
    const/4 v5, 0x0

    .line 224
    goto :goto_7

    .line 225
    :pswitch_7
    move-object/from16 v20, v1

    .line 226
    .line 227
    invoke-static {v8, v6, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 228
    .line 229
    .line 230
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    goto :goto_6

    .line 235
    :pswitch_8
    move v5, v0

    .line 236
    move-object/from16 v20, v1

    .line 237
    .line 238
    invoke-static {v8, v5, v4}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 239
    .line 240
    .line 241
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 242
    .line 243
    .line 244
    move-result-wide v0

    .line 245
    long-to-int v9, v0

    .line 246
    :goto_7
    move v0, v5

    .line 247
    move-object/from16 v1, v20

    .line 248
    .line 249
    const/4 v5, 0x1

    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :cond_4
    move v5, v0

    .line 253
    new-instance v8, Lcom/abovevacant/epitaph/core/TombstoneThread;

    .line 254
    .line 255
    invoke-direct/range {v8 .. v15}, Lcom/abovevacant/epitaph/core/TombstoneThread;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 256
    .line 257
    .line 258
    move-object v1, v8

    .line 259
    goto :goto_8

    .line 260
    :cond_5
    move-object/from16 v7, p0

    .line 261
    .line 262
    move v5, v0

    .line 263
    invoke-static {v4, v5, v3}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 267
    .line 268
    .line 269
    move-result-wide v2

    .line 270
    long-to-int v2, v2

    .line 271
    :goto_8
    move v0, v5

    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :cond_6
    if-eqz v1, :cond_7

    .line 275
    .line 276
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    move-object/from16 v2, p1

    .line 281
    .line 282
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    :cond_7
    return-void

    .line 286
    nop

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
