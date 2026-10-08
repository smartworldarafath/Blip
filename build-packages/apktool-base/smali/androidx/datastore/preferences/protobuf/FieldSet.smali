.class final Landroidx/datastore/preferences/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/FieldSet;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->f()Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldSet;->a:Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->f()Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/FieldSet;->a:Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->b()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->b()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static a(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget-object v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->m:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    mul-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x4

    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    packed-switch p0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    const-string p0, "There is no way to get here, but the compiler thinks otherwise."

    .line 24
    .line 25
    invoke-static {p0}, Lu2;->n(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    shl-long v0, v2, v1

    .line 38
    .line 39
    const/16 p0, 0x3f

    .line 40
    .line 41
    shr-long/2addr v2, p0

    .line 42
    xor-long/2addr v0, v2

    .line 43
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    shl-int/lit8 p2, p0, 0x1

    .line 56
    .line 57
    shr-int/lit8 p0, p0, 0x1f

    .line 58
    .line 59
    xor-int/2addr p0, p2

    .line 60
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    sget-object p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 72
    .line 73
    :goto_0
    move v1, v3

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    sget-object p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 82
    .line 83
    :goto_1
    move v1, v2

    .line 84
    goto/16 :goto_3

    .line 85
    .line 86
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    int-to-long v0, p0

    .line 93
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    goto/16 :goto_3

    .line 98
    .line 99
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    goto/16 :goto_3

    .line 110
    .line 111
    :pswitch_6
    instance-of p0, p2, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 112
    .line 113
    if-eqz p0, :cond_1

    .line 114
    .line 115
    check-cast p2, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 116
    .line 117
    sget-object p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 118
    .line 119
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    :goto_2
    add-int v1, p2, p0

    .line 128
    .line 129
    goto/16 :goto_3

    .line 130
    .line 131
    :cond_1
    check-cast p2, [B

    .line 132
    .line 133
    sget-object p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 134
    .line 135
    array-length p0, p2

    .line 136
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    goto :goto_2

    .line 141
    :pswitch_7
    check-cast p2, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 142
    .line 143
    sget-object p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 144
    .line 145
    check-cast p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 146
    .line 147
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->b(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    goto :goto_2

    .line 156
    :pswitch_8
    check-cast p2, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 157
    .line 158
    sget-object p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 159
    .line 160
    check-cast p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 161
    .line 162
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->b(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    goto :goto_3

    .line 167
    :pswitch_9
    instance-of p0, p2, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 168
    .line 169
    if-eqz p0, :cond_2

    .line 170
    .line 171
    check-cast p2, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 172
    .line 173
    sget-object p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 174
    .line 175
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    goto :goto_2

    .line 184
    :cond_2
    check-cast p2, Ljava/lang/String;

    .line 185
    .line 186
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->c(Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    goto :goto_3

    .line 191
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    .line 192
    .line 193
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    sget-object p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    sget-object p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    .line 208
    .line 209
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    sget-object p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    .line 217
    .line 218
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 219
    .line 220
    .line 221
    move-result p0

    .line 222
    int-to-long v0, p0

    .line 223
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    goto :goto_3

    .line 228
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    .line 229
    .line 230
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 231
    .line 232
    .line 233
    move-result-wide v0

    .line 234
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    goto :goto_3

    .line 239
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 242
    .line 243
    .line 244
    move-result-wide v0

    .line 245
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(J)I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    goto :goto_3

    .line 250
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    .line 251
    .line 252
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    sget-object p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    .line 260
    .line 261
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    sget-object p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :goto_3
    add-int/2addr p1, v1

    .line 269
    return p1

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public static c(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->m:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    check-cast p3, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->v(II)V

    .line 9
    .line 10
    .line 11
    check-cast p3, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 12
    .line 13
    invoke-virtual {p3, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->q(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x4

    .line 17
    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->v(II)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget v0, p1, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->k:I

    .line 22
    .line 23
    invoke-virtual {p0, p2, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->v(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    packed-switch p1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide p1

    .line 40
    const/4 p3, 0x1

    .line 41
    shl-long v0, p1, p3

    .line 42
    .line 43
    const/16 p3, 0x3f

    .line 44
    .line 45
    shr-long/2addr p1, p3

    .line 46
    xor-long/2addr p1, v0

    .line 47
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->z(J)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    shl-int/lit8 p2, p1, 0x1

    .line 58
    .line 59
    shr-int/lit8 p1, p1, 0x1f

    .line 60
    .line 61
    xor-int/2addr p1, p2

    .line 62
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->x(I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide p1

    .line 72
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(J)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->m(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_4
    check-cast p3, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->q(I)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->x(I)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_6
    instance-of p1, p3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 107
    .line 108
    if-eqz p1, :cond_1

    .line 109
    .line 110
    check-cast p3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 111
    .line 112
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->k(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_1
    check-cast p3, [B

    .line 117
    .line 118
    array-length p1, p3

    .line 119
    invoke-virtual {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->i(I[B)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_7
    check-cast p3, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 124
    .line 125
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->s(Landroidx/datastore/preferences/protobuf/MessageLite;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_8
    check-cast p3, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 130
    .line 131
    check-cast p3, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 132
    .line 133
    invoke-virtual {p3, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->q(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_9
    instance-of p1, p3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 138
    .line 139
    if-eqz p1, :cond_2

    .line 140
    .line 141
    check-cast p3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 142
    .line 143
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->k(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_2
    check-cast p3, Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->u(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    .line 154
    .line 155
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    int-to-byte p1, p1

    .line 160
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g(B)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    .line 165
    .line 166
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->m(I)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    .line 175
    .line 176
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 177
    .line 178
    .line 179
    move-result-wide p1

    .line 180
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(J)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    .line 185
    .line 186
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->q(I)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    .line 195
    .line 196
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 197
    .line 198
    .line 199
    move-result-wide p1

    .line 200
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->z(J)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    .line 205
    .line 206
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 207
    .line 208
    .line 209
    move-result-wide p1

    .line 210
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->z(J)V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    .line 215
    .line 216
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->m(I)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    .line 229
    .line 230
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    .line 231
    .line 232
    .line 233
    move-result-wide p1

    .line 234
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 235
    .line 236
    .line 237
    move-result-wide p1

    .line 238
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->o(J)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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


# virtual methods
.method public final b()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/FieldSet;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldSet;->a:Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->j:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->c(I)Ljava/util/Map$Entry;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    instance-of v5, v5, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v5, Landroidx/datastore/preferences/protobuf/Protobuf;->c:Landroidx/datastore/preferences/protobuf/Protobuf;

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v5, v6}, Landroidx/datastore/preferences/protobuf/Protobuf;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v5, v4}, Landroidx/datastore/preferences/protobuf/Schema;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->j()V

    .line 56
    .line 57
    .line 58
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-boolean v1, v0, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->l:Z

    .line 62
    .line 63
    if-nez v1, :cond_5

    .line 64
    .line 65
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->j:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-gtz v1, :cond_4

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->d()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Ljava/util/Map$Entry;

    .line 93
    .line 94
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lio/sentry/d;->i()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_4
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->c(I)Ljava/util/Map$Entry;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lio/sentry/d;->i()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_5
    :goto_1
    iget-boolean v1, v0, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->l:Z

    .line 121
    .line 122
    const/4 v2, 0x1

    .line 123
    if-nez v1, :cond_8

    .line 124
    .line 125
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->k:Ljava/util/Map;

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_6
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->k:Ljava/util/Map;

    .line 137
    .line 138
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :goto_2
    iput-object v1, v0, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->k:Ljava/util/Map;

    .line 143
    .line 144
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->n:Ljava/util/Map;

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_7

    .line 151
    .line 152
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->n:Ljava/util/Map;

    .line 156
    .line 157
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    :goto_3
    iput-object v1, v0, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->n:Ljava/util/Map;

    .line 162
    .line 163
    iput-boolean v2, v0, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->l:Z

    .line 164
    .line 165
    :cond_8
    iput-boolean v2, p0, Landroidx/datastore/preferences/protobuf/FieldSet;->b:Z

    .line 166
    .line 167
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/FieldSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/FieldSet;->a:Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->j:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-gtz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->d()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lio/sentry/d;->i()V

    .line 45
    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    throw v2

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->c(I)Ljava/util/Map$Entry;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-static {}, Lio/sentry/d;->i()V

    .line 64
    .line 65
    .line 66
    return-object v2

    .line 67
    :cond_3
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/FieldSet;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Landroidx/datastore/preferences/protobuf/FieldSet;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/FieldSet;->a:Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/FieldSet;->a:Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/FieldSet;->a:Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
