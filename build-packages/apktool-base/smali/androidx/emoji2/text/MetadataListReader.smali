.class abstract Landroidx/emoji2/text/MetadataListReader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;
    }
.end annotation


# direct methods
.method public static a(Ljava/nio/MappedByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    invoke-virtual {v1, v2}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->a(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const v4, 0xffff

    .line 19
    .line 20
    .line 21
    and-int/2addr v3, v4

    .line 22
    const/16 v4, 0x64

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const-string v6, "Cannot read metadata."

    .line 26
    .line 27
    if-gt v3, v4, :cond_5

    .line 28
    .line 29
    const/4 v4, 0x6

    .line 30
    invoke-virtual {v1, v4}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->a(I)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    move v7, v4

    .line 35
    :goto_0
    const-wide v8, 0xffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    iget-object v10, v1, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->a:Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    const-wide/16 v11, -0x1

    .line 43
    .line 44
    if-ge v7, v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 47
    .line 48
    .line 49
    move-result v13

    .line 50
    invoke-virtual {v1, v2}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->a(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    .line 54
    .line 55
    .line 56
    move-result v14

    .line 57
    int-to-long v14, v14

    .line 58
    and-long/2addr v14, v8

    .line 59
    invoke-virtual {v1, v2}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->a(I)V

    .line 60
    .line 61
    .line 62
    const v2, 0x6d657461

    .line 63
    .line 64
    .line 65
    if-ne v2, v13, :cond_0

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 69
    .line 70
    const/4 v2, 0x4

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move-wide v14, v11

    .line 73
    :goto_1
    cmp-long v2, v14, v11

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    int-to-long v2, v2

    .line 82
    sub-long v2, v14, v2

    .line 83
    .line 84
    long-to-int v2, v2

    .line 85
    invoke-virtual {v1, v2}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->a(I)V

    .line 86
    .line 87
    .line 88
    const/16 v2, 0xc

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;->a(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    int-to-long v1, v1

    .line 98
    and-long/2addr v1, v8

    .line 99
    :goto_2
    int-to-long v11, v4

    .line 100
    cmp-long v3, v11, v1

    .line 101
    .line 102
    if-gez v3, :cond_4

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    int-to-long v11, v7

    .line 113
    and-long/2addr v11, v8

    .line 114
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    .line 115
    .line 116
    .line 117
    const v7, 0x456d6a69

    .line 118
    .line 119
    .line 120
    if-eq v7, v3, :cond_3

    .line 121
    .line 122
    const v7, 0x656d6a69

    .line 123
    .line 124
    .line 125
    if-ne v7, v3, :cond_2

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    :goto_3
    add-long/2addr v11, v14

    .line 132
    long-to-int v1, v11

    .line 133
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    .line 135
    .line 136
    new-instance v1, Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 137
    .line 138
    invoke-direct {v1}, Landroidx/emoji2/text/flatbuffer/Table;-><init>()V

    .line 139
    .line 140
    .line 141
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    add-int/2addr v3, v2

    .line 159
    iput-object v0, v1, Landroidx/emoji2/text/flatbuffer/Table;->b:Ljava/nio/ByteBuffer;

    .line 160
    .line 161
    iput v3, v1, Landroidx/emoji2/text/flatbuffer/Table;->a:I

    .line 162
    .line 163
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    sub-int/2addr v3, v0

    .line 168
    iput v3, v1, Landroidx/emoji2/text/flatbuffer/Table;->c:I

    .line 169
    .line 170
    iget-object v0, v1, Landroidx/emoji2/text/flatbuffer/Table;->b:Ljava/nio/ByteBuffer;

    .line 171
    .line 172
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iput v0, v1, Landroidx/emoji2/text/flatbuffer/Table;->d:I

    .line 177
    .line 178
    return-object v1

    .line 179
    :cond_4
    invoke-static {v6}, Lk8;->j(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-object v5

    .line 183
    :cond_5
    invoke-static {v6}, Lk8;->j(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-object v5
.end method
