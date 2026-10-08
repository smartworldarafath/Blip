.class public final Lnet/blip/libblip/UserAgent$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/UserAgent;",
        ">;"
    }
.end annotation


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lnet/blip/libblip/DeviceKind;->m:Lnet/blip/libblip/DeviceKind;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const-string v4, ""

    .line 13
    .line 14
    move-object v6, v4

    .line 15
    move-object v7, v6

    .line 16
    move-object v9, v7

    .line 17
    move-object v10, v9

    .line 18
    move-object v11, v10

    .line 19
    move-object v12, v11

    .line 20
    move-object v13, v12

    .line 21
    move-object v14, v13

    .line 22
    :goto_0
    move-object v4, v0

    .line 23
    :goto_1
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v0, -0x1

    .line 28
    if-eq v5, v0, :cond_3

    .line 29
    .line 30
    const/16 v0, 0xc8

    .line 31
    .line 32
    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 33
    .line 34
    if-eq v5, v0, :cond_2

    .line 35
    .line 36
    const/16 v0, 0xc9

    .line 37
    .line 38
    if-eq v5, v0, :cond_1

    .line 39
    .line 40
    const/16 v0, 0x130

    .line 41
    .line 42
    if-eq v5, v0, :cond_0

    .line 43
    .line 44
    packed-switch v5, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    packed-switch v5, :pswitch_data_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v5}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 51
    .line 52
    .line 53
    move-object/from16 p0, v6

    .line 54
    .line 55
    move-object v15, v7

    .line 56
    goto :goto_2

    .line 57
    :pswitch_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v13, v0

    .line 65
    goto :goto_1

    .line 66
    :pswitch_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v12, v0

    .line 74
    goto :goto_1

    .line 75
    :pswitch_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    move-object v11, v0

    .line 83
    goto :goto_1

    .line 84
    :pswitch_3
    :try_start_0
    sget-object v0, Lnet/blip/libblip/DeviceKind;->l:Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/squareup/wire/EnumAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    sget-object v8, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 93
    .line 94
    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->j:I

    .line 95
    .line 96
    move-object/from16 p0, v6

    .line 97
    .line 98
    move-object v15, v7

    .line 99
    int-to-long v6, v0

    .line 100
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v1, v5, v8, v0}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :goto_2
    move-object/from16 v6, p0

    .line 108
    .line 109
    move-object v7, v15

    .line 110
    goto :goto_1

    .line 111
    :pswitch_4
    move-object/from16 p0, v6

    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    move-object v7, v0

    .line 121
    goto :goto_1

    .line 122
    :pswitch_5
    move-object v15, v7

    .line 123
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    move-object v6, v0

    .line 131
    goto :goto_1

    .line 132
    :cond_0
    move-object/from16 p0, v6

    .line 133
    .line 134
    move-object v15, v7

    .line 135
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    move-object v14, v0

    .line 143
    goto :goto_1

    .line 144
    :cond_1
    move-object/from16 p0, v6

    .line 145
    .line 146
    move-object v15, v7

    .line 147
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    move-object v10, v0

    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :cond_2
    move-object/from16 p0, v6

    .line 158
    .line 159
    move-object v15, v7

    .line 160
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    move-object v9, v0

    .line 168
    goto/16 :goto_1

    .line 169
    .line 170
    :cond_3
    move-object/from16 p0, v6

    .line 171
    .line 172
    move-object v15, v7

    .line 173
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    new-instance v5, Lnet/blip/libblip/UserAgent;

    .line 178
    .line 179
    move-object v8, v4

    .line 180
    check-cast v8, Lnet/blip/libblip/DeviceKind;

    .line 181
    .line 182
    move-object v15, v0

    .line 183
    invoke-direct/range {v5 .. v15}, Lnet/blip/libblip/UserAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/blip/libblip/DeviceKind;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    .line 184
    .line 185
    .line 186
    return-object v5

    .line 187
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :pswitch_data_1
    .packed-switch 0x12c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p2, Lnet/blip/libblip/UserAgent;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p2, Lnet/blip/libblip/UserAgent;->u:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p2, Lnet/blip/libblip/UserAgent;->t:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p2, Lnet/blip/libblip/UserAgent;->s:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p2, Lnet/blip/libblip/UserAgent;->r:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, p2, Lnet/blip/libblip/UserAgent;->q:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v4, p2, Lnet/blip/libblip/UserAgent;->p:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v5, p2, Lnet/blip/libblip/UserAgent;->n:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v6, p2, Lnet/blip/libblip/UserAgent;->m:Ljava/lang/String;

    .line 24
    .line 25
    const-string v7, ""

    .line 26
    .line 27
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    sget-object v9, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 32
    .line 33
    if-nez v8, :cond_0

    .line 34
    .line 35
    const/16 v8, 0x64

    .line 36
    .line 37
    invoke-virtual {v9, p1, v8, v6}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-nez v6, :cond_1

    .line 45
    .line 46
    const/16 v6, 0x65

    .line 47
    .line 48
    invoke-virtual {v9, p1, v6, v5}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v5, p2, Lnet/blip/libblip/UserAgent;->o:Lnet/blip/libblip/DeviceKind;

    .line 52
    .line 53
    sget-object v6, Lnet/blip/libblip/DeviceKind;->m:Lnet/blip/libblip/DeviceKind;

    .line 54
    .line 55
    if-eq v5, v6, :cond_2

    .line 56
    .line 57
    sget-object v6, Lnet/blip/libblip/DeviceKind;->l:Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

    .line 58
    .line 59
    const/16 v8, 0x66

    .line 60
    .line 61
    invoke-virtual {v6, p1, v8, v5}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_3

    .line 69
    .line 70
    const/16 v5, 0xc8

    .line 71
    .line 72
    invoke-virtual {v9, p1, v5, v4}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_4

    .line 80
    .line 81
    const/16 v4, 0xc9

    .line 82
    .line 83
    invoke-virtual {v9, p1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_5

    .line 91
    .line 92
    const/16 v3, 0x12c

    .line 93
    .line 94
    invoke-virtual {v9, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_6

    .line 102
    .line 103
    const/16 v2, 0x12d

    .line 104
    .line 105
    invoke-virtual {v9, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_7

    .line 113
    .line 114
    const/16 v1, 0x12e

    .line 115
    .line 116
    invoke-virtual {v9, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_7
    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_8

    .line 124
    .line 125
    const/16 v0, 0x130

    .line 126
    .line 127
    invoke-virtual {v9, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_8
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p2, Lnet/blip/libblip/UserAgent;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p2, Lnet/blip/libblip/UserAgent;->m:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p2, Lnet/blip/libblip/UserAgent;->n:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p2, Lnet/blip/libblip/UserAgent;->p:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p2, Lnet/blip/libblip/UserAgent;->q:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, p2, Lnet/blip/libblip/UserAgent;->r:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v4, p2, Lnet/blip/libblip/UserAgent;->s:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v5, p2, Lnet/blip/libblip/UserAgent;->t:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {p1, v6}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    .line 28
    .line 29
    .line 30
    iget-object v6, p2, Lnet/blip/libblip/UserAgent;->u:Ljava/lang/String;

    .line 31
    .line 32
    const-string v7, ""

    .line 33
    .line 34
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    sget-object v9, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 39
    .line 40
    if-nez v8, :cond_0

    .line 41
    .line 42
    const/16 v8, 0x130

    .line 43
    .line 44
    invoke-virtual {v9, p1, v8, v6}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-nez v6, :cond_1

    .line 52
    .line 53
    const/16 v6, 0x12e

    .line 54
    .line 55
    invoke-virtual {v9, p1, v6, v5}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_2

    .line 63
    .line 64
    const/16 v5, 0x12d

    .line 65
    .line 66
    invoke-virtual {v9, p1, v5, v4}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_3

    .line 74
    .line 75
    const/16 v4, 0x12c

    .line 76
    .line 77
    invoke-virtual {v9, p1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_4

    .line 85
    .line 86
    const/16 v3, 0xc9

    .line 87
    .line 88
    invoke-virtual {v9, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_5

    .line 96
    .line 97
    const/16 v2, 0xc8

    .line 98
    .line 99
    invoke-virtual {v9, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    iget-object p2, p2, Lnet/blip/libblip/UserAgent;->o:Lnet/blip/libblip/DeviceKind;

    .line 103
    .line 104
    sget-object v1, Lnet/blip/libblip/DeviceKind;->m:Lnet/blip/libblip/DeviceKind;

    .line 105
    .line 106
    if-eq p2, v1, :cond_6

    .line 107
    .line 108
    sget-object v1, Lnet/blip/libblip/DeviceKind;->l:Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

    .line 109
    .line 110
    const/16 v2, 0x66

    .line 111
    .line 112
    invoke-virtual {v1, p1, v2, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-nez p2, :cond_7

    .line 120
    .line 121
    const/16 p2, 0x65

    .line 122
    .line 123
    invoke-virtual {v9, p1, p2, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-nez p2, :cond_8

    .line 131
    .line 132
    const/16 p2, 0x64

    .line 133
    .line 134
    invoke-virtual {v9, p1, p2, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_8
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 11

    .line 1
    check-cast p1, Lnet/blip/libblip/UserAgent;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lnet/blip/libblip/UserAgent;->u:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p1, Lnet/blip/libblip/UserAgent;->t:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p1, Lnet/blip/libblip/UserAgent;->s:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p1, Lnet/blip/libblip/UserAgent;->r:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p1, Lnet/blip/libblip/UserAgent;->q:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v4, p1, Lnet/blip/libblip/UserAgent;->p:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v5, p1, Lnet/blip/libblip/UserAgent;->n:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v6}, Lokio/ByteString;->e()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    iget-object v7, p1, Lnet/blip/libblip/UserAgent;->m:Ljava/lang/String;

    .line 29
    .line 30
    const-string v8, ""

    .line 31
    .line 32
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    sget-object v10, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 37
    .line 38
    if-nez v9, :cond_0

    .line 39
    .line 40
    const/16 v9, 0x64

    .line 41
    .line 42
    invoke-virtual {v10, v9, v7}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    add-int/2addr v6, v7

    .line 47
    :cond_0
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-nez v7, :cond_1

    .line 52
    .line 53
    const/16 v7, 0x65

    .line 54
    .line 55
    invoke-virtual {v10, v7, v5}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    add-int/2addr v6, v5

    .line 60
    :cond_1
    iget-object p1, p1, Lnet/blip/libblip/UserAgent;->o:Lnet/blip/libblip/DeviceKind;

    .line 61
    .line 62
    sget-object v5, Lnet/blip/libblip/DeviceKind;->m:Lnet/blip/libblip/DeviceKind;

    .line 63
    .line 64
    if-eq p1, v5, :cond_2

    .line 65
    .line 66
    sget-object v5, Lnet/blip/libblip/DeviceKind;->l:Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

    .line 67
    .line 68
    const/16 v7, 0x66

    .line 69
    .line 70
    invoke-virtual {v5, v7, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    add-int/2addr v6, p1

    .line 75
    :cond_2
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    const/16 p1, 0xc8

    .line 82
    .line 83
    invoke-virtual {v10, p1, v4}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    add-int/2addr v6, p1

    .line 88
    :cond_3
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    const/16 p1, 0xc9

    .line 95
    .line 96
    invoke-virtual {v10, p1, v3}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    add-int/2addr v6, p1

    .line 101
    :cond_4
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_5

    .line 106
    .line 107
    const/16 p1, 0x12c

    .line 108
    .line 109
    invoke-virtual {v10, p1, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    add-int/2addr v6, p1

    .line 114
    :cond_5
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_6

    .line 119
    .line 120
    const/16 p1, 0x12d

    .line 121
    .line 122
    invoke-virtual {v10, p1, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    add-int/2addr v6, p1

    .line 127
    :cond_6
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-nez p1, :cond_7

    .line 132
    .line 133
    const/16 p1, 0x12e

    .line 134
    .line 135
    invoke-virtual {v10, p1, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    add-int/2addr v6, p1

    .line 140
    :cond_7
    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_8

    .line 145
    .line 146
    const/16 p1, 0x130

    .line 147
    .line 148
    invoke-virtual {v10, p1, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    add-int/2addr p0, v6

    .line 153
    return p0

    .line 154
    :cond_8
    return v6
.end method
