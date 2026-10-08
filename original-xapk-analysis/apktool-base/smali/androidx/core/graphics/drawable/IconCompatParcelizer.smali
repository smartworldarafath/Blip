.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 7

    .line 1
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 11
    .line 12
    iput-object v2, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput v3, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 16
    .line 17
    iput v3, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 18
    .line 19
    iput-object v2, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    sget-object v4, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 22
    .line 23
    iput-object v4, v0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 24
    .line 25
    iput-object v2, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-virtual {p0, v1, v4}, Landroidx/versionedparcelable/VersionedParcel;->i(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iput v4, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 33
    .line 34
    iget-object v4, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 35
    .line 36
    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->f([B)[B

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iput-object v4, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 41
    .line 42
    iget-object v4, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 43
    .line 44
    const/4 v5, 0x3

    .line 45
    invoke-virtual {p0, v4, v5}, Landroidx/versionedparcelable/VersionedParcel;->j(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput-object v4, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 50
    .line 51
    iget v4, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 52
    .line 53
    const/4 v6, 0x4

    .line 54
    invoke-virtual {p0, v4, v6}, Landroidx/versionedparcelable/VersionedParcel;->i(II)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iput v4, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 59
    .line 60
    iget v4, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 61
    .line 62
    const/4 v6, 0x5

    .line 63
    invoke-virtual {p0, v4, v6}, Landroidx/versionedparcelable/VersionedParcel;->i(II)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    iput v4, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 68
    .line 69
    iget-object v4, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 70
    .line 71
    const/4 v6, 0x6

    .line 72
    invoke-virtual {p0, v4, v6}, Landroidx/versionedparcelable/VersionedParcel;->j(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Landroid/content/res/ColorStateList;

    .line 77
    .line 78
    iput-object v4, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 79
    .line 80
    iget-object v4, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 81
    .line 82
    const/4 v6, 0x7

    .line 83
    invoke-virtual {p0, v6, v4}, Landroidx/versionedparcelable/VersionedParcel;->k(ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iput-object v4, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v4, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 90
    .line 91
    const/16 v6, 0x8

    .line 92
    .line 93
    invoke-virtual {p0, v6, v4}, Landroidx/versionedparcelable/VersionedParcel;->k(ILjava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 98
    .line 99
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {p0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 106
    .line 107
    iget p0, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 108
    .line 109
    packed-switch p0, :pswitch_data_0

    .line 110
    .line 111
    .line 112
    :pswitch_0
    goto :goto_0

    .line 113
    :pswitch_1
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 114
    .line 115
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 116
    .line 117
    return-object v0

    .line 118
    :pswitch_2
    new-instance p0, Ljava/lang/String;

    .line 119
    .line 120
    iget-object v2, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 121
    .line 122
    const-string v4, "UTF-16"

    .line 123
    .line 124
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-direct {p0, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 129
    .line 130
    .line 131
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 132
    .line 133
    iget v2, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 134
    .line 135
    const/4 v4, 0x2

    .line 136
    if-ne v2, v4, :cond_0

    .line 137
    .line 138
    iget-object v2, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 139
    .line 140
    if-nez v2, :cond_0

    .line 141
    .line 142
    const-string v2, ":"

    .line 143
    .line 144
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    aget-object p0, p0, v3

    .line 149
    .line 150
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 151
    .line 152
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :pswitch_3
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 154
    .line 155
    if-eqz p0, :cond_1

    .line 156
    .line 157
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_1
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 161
    .line 162
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 163
    .line 164
    iput v5, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 165
    .line 166
    iput v3, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 167
    .line 168
    array-length p0, p0

    .line 169
    iput p0, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 170
    .line 171
    return-object v0

    .line 172
    :pswitch_4
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 173
    .line 174
    if-eqz p0, :cond_2

    .line 175
    .line 176
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 177
    .line 178
    return-object v0

    .line 179
    :cond_2
    const-string p0, "Invalid icon"

    .line 180
    .line 181
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-object v2

    .line 185
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 11
    .line 12
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 13
    .line 14
    const-string v1, "UTF-16"

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    :pswitch_0
    goto :goto_0

    .line 20
    :pswitch_1
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_2
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, [B

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_3
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_4
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Landroid/os/Parcelable;

    .line 62
    .line 63
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_5
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Landroid/os/Parcelable;

    .line 69
    .line 70
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 71
    .line 72
    :goto_0
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 73
    .line 74
    const/4 v1, -0x1

    .line 75
    if-eq v1, v0, :cond_0

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->q(II)V

    .line 79
    .line 80
    .line 81
    :cond_0
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->o([B)V

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    const/4 v1, 0x3

    .line 93
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->r(Landroid/os/Parcelable;I)V

    .line 94
    .line 95
    .line 96
    :cond_2
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    const/4 v1, 0x4

    .line 101
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->q(II)V

    .line 102
    .line 103
    .line 104
    :cond_3
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    const/4 v1, 0x5

    .line 109
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->q(II)V

    .line 110
    .line 111
    .line 112
    :cond_4
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 113
    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    const/4 v1, 0x6

    .line 117
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->r(Landroid/os/Parcelable;I)V

    .line 118
    .line 119
    .line 120
    :cond_5
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 121
    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    const/4 v1, 0x7

    .line 125
    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->s(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 129
    .line 130
    if-eqz p0, :cond_7

    .line 131
    .line 132
    const/16 v0, 0x8

    .line 133
    .line 134
    invoke-virtual {p1, v0, p0}, Landroidx/versionedparcelable/VersionedParcel;->s(ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
