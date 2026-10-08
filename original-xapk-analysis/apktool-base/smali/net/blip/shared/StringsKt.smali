.class public abstract Lnet/blip/shared/StringsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/runtime/Composer;)Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->c:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lnet/blip/libblip/HardwareInfo;

    .line 12
    .line 13
    sget-object v1, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lnet/blip/libblip/Flavor;

    .line 20
    .line 21
    check-cast v1, Lnet/blip/android/FlavorAndroid;

    .line 22
    .line 23
    iget-object v1, v1, Lnet/blip/android/FlavorAndroid;->b:Lnet/blip/libblip/SemanticVersion;

    .line 24
    .line 25
    sget-object v2, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 26
    .line 27
    invoke-static {v2, p0}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lnet/blip/libblip/State_DerivedKt;->b(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/User;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    iget-object p0, p0, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object p0, v2

    .line 42
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    const-string p0, "<logged out>"

    .line 48
    .line 49
    :cond_1
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Lnet/blip/libblip/SemanticVersion;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const-string v1, "missing"

    .line 57
    .line 58
    :goto_1
    check-cast v0, Lnet/blip/android/HardwareInfoAndroid;

    .line 59
    .line 60
    iget-object v3, v0, Lnet/blip/android/HardwareInfoAndroid;->c:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v4, v0, Lnet/blip/android/HardwareInfoAndroid;->d:Ljava/lang/String;

    .line 63
    .line 64
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3}, Lkotlin/collections/ArraysKt;->p([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const/4 v8, 0x0

    .line 73
    const/16 v9, 0x3e

    .line 74
    .line 75
    const-string v5, " "

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    const/4 v7, 0x0

    .line 79
    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v3}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_3

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move-object v3, v2

    .line 91
    :goto_2
    if-nez v3, :cond_4

    .line 92
    .line 93
    const-string v3, "Unknown"

    .line 94
    .line 95
    :cond_4
    iget-object v4, v0, Lnet/blip/android/HardwareInfoAndroid;->e:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v0, v0, Lnet/blip/android/HardwareInfoAndroid;->f:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    const-string v2, " ("

    .line 102
    .line 103
    const-string v5, ")"

    .line 104
    .line 105
    invoke-static {v2, v0, v5}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v2, "\n    App Version: "

    .line 125
    .line 126
    const-string v4, "\n    Device Model: "

    .line 127
    .line 128
    const-string v5, "\n    \n    \n    \n    Email: "

    .line 129
    .line 130
    invoke-static {v5, p0, v2, v1, v4}, Lq;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v1, "\n    Operating System: "

    .line 138
    .line 139
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v0, "\n    "

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {p0}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    sget-object v0, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const-string v2, "Feedback :)"

    .line 165
    .line 166
    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    sget-object v0, Lnet/blip/shared/Strings;->e:Ljava/lang/String;

    .line 179
    .line 180
    const-string v2, "?subject="

    .line 181
    .line 182
    const-string v3, "&body="

    .line 183
    .line 184
    const-string v4, "mailto:"

    .line 185
    .line 186
    invoke-static {v4, v0, v2, v1, v3}, Lq;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    return-object p0
.end method

.method public static final b(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lnet/blip/libblip/Transfer_DerivedKt;->d(Lnet/blip/libblip/frontend/Transfer;)Lnet/blip/libblip/frontend/TransferErr;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p0, "<unknown>"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object p0, p0, Lnet/blip/libblip/frontend/Transfer;->u:Lnet/blip/libblip/frontend/TransferErr;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lnet/blip/libblip/frontend/TransferErr;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object p1, v1

    .line 26
    :goto_0
    iget-object p0, v0, Lnet/blip/libblip/frontend/TransferErr;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    const-string v0, "\'s device"

    .line 33
    .line 34
    packed-switch p0, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lk8;->e()V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :pswitch_0
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "Paused by "

    .line 48
    .line 49
    invoke-static {p1, p0}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_2
    const-string p0, "You paused"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_1
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string p1, "Declined by "

    .line 64
    .line 65
    invoke-static {p1, p0}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_3
    const-string p0, "You declined"

    .line 71
    .line 72
    return-object p0

    .line 73
    :pswitch_2
    if-eqz p1, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string p1, "Cancelled by "

    .line 80
    .line 81
    invoke-static {p1, p0}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_4
    const-string p0, "You cancelled"

    .line 87
    .line 88
    return-object p0

    .line 89
    :pswitch_3
    if-eqz p1, :cond_5

    .line 90
    .line 91
    const-string p0, "Couldn\'t connect. The other side needs to check their network and resume."

    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_5
    const-string p0, "Couldn\u2019t connect. Check networks on both sides and resume."

    .line 95
    .line 96
    return-object p0

    .line 97
    :pswitch_4
    const-string p0, "Connection lost. Will resume when possible."

    .line 98
    .line 99
    return-object p0

    .line 100
    :pswitch_5
    if-eqz p1, :cond_6

    .line 101
    .line 102
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const-string p1, "Files you\'re receiving have been modified or damaged on "

    .line 107
    .line 108
    const-string v0, "\'s device."

    .line 109
    .line 110
    invoke-static {p1, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :cond_6
    const-string p0, "Files you\'re sending have been modified or damaged."

    .line 116
    .line 117
    return-object p0

    .line 118
    :pswitch_6
    if-eqz p1, :cond_7

    .line 119
    .line 120
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p0, "\'s external disk not currently connected"

    .line 133
    .line 134
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    :cond_7
    const-string p0, "The external disk you\'re sending from is not connected"

    .line 143
    .line 144
    return-object p0

    .line 145
    :pswitch_7
    if-eqz p1, :cond_8

    .line 146
    .line 147
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    const-string p1, "Files are missing from "

    .line 152
    .line 153
    invoke-static {p1, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :cond_8
    sget-object p0, Lnet/blip/libblip/Platform;->j:Lnet/blip/libblip/Platform$Companion;

    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    sget-object p0, Lnet/blip/libblip/Platform;->j:Lnet/blip/libblip/Platform$Companion;

    .line 164
    .line 165
    const-string p0, "Files you\'re sending are missing from storage"

    .line 166
    .line 167
    return-object p0

    .line 168
    :pswitch_8
    if-eqz p1, :cond_9

    .line 169
    .line 170
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p0, "\'s device isn\'t allowing Blip to read data"

    .line 183
    .line 184
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    return-object p0

    .line 192
    :cond_9
    const-string p0, "Blip doesn\'t have permission to read the data you\'re sending"

    .line 193
    .line 194
    return-object p0

    .line 195
    :pswitch_9
    if-eqz p1, :cond_a

    .line 196
    .line 197
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    const-string p1, "Previously sent data is corrupted on "

    .line 202
    .line 203
    invoke-static {p1, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    return-object p0

    .line 208
    :cond_a
    const-string p0, "Previously received data is corrupted"

    .line 209
    .line 210
    return-object p0

    .line 211
    :pswitch_a
    if-eqz p1, :cond_b

    .line 212
    .line 213
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string p0, "\'s disk not found. They can resume when they connect it."

    .line 226
    .line 227
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    return-object p0

    .line 235
    :cond_b
    const-string p0, "Destination disk not found. Ensure it\'s connected and try again."

    .line 236
    .line 237
    return-object p0

    .line 238
    :pswitch_b
    if-eqz p1, :cond_c

    .line 239
    .line 240
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string p0, "\'s destination folder not found. They can resume when they create it."

    .line 253
    .line 254
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    return-object p0

    .line 262
    :cond_c
    const-string p0, "Destination folder not found. Ensure it exists and try again."

    .line 263
    .line 264
    return-object p0

    .line 265
    :pswitch_c
    if-eqz p1, :cond_d

    .line 266
    .line 267
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    const-string p1, "Previously sent data is missing on "

    .line 272
    .line 273
    invoke-static {p1, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    return-object p0

    .line 278
    :cond_d
    const-string p0, "Previously received data is missing"

    .line 279
    .line 280
    return-object p0

    .line 281
    :pswitch_d
    if-eqz p1, :cond_e

    .line 282
    .line 283
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string p0, "\'s device is not allowing Blip to save files"

    .line 296
    .line 297
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    return-object p0

    .line 305
    :cond_e
    sget-object p0, Lnet/blip/libblip/Platform;->j:Lnet/blip/libblip/Platform$Companion;

    .line 306
    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    sget-object p0, Lnet/blip/libblip/Platform;->j:Lnet/blip/libblip/Platform$Companion;

    .line 311
    .line 312
    const-string p0, "Blip can\'t access the receive folder. Choose it again in settings, then resume."

    .line 313
    .line 314
    return-object p0

    .line 315
    :pswitch_e
    sget-object p0, Lnet/blip/libblip/Platform;->j:Lnet/blip/libblip/Platform$Companion;

    .line 316
    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    sget-object p0, Lnet/blip/libblip/Platform;->j:Lnet/blip/libblip/Platform$Companion;

    .line 321
    .line 322
    if-eqz p1, :cond_f

    .line 323
    .line 324
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string p0, "\'s storage is currently full"

    .line 337
    .line 338
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    return-object p0

    .line 346
    :cond_f
    const-string p0, "Storage full. Free up space and resume"

    .line 347
    .line 348
    return-object p0

    .line 349
    :pswitch_f
    if-eqz p1, :cond_10

    .line 350
    .line 351
    invoke-virtual {p1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    const-string p1, "Unknown error occurred on "

    .line 356
    .line 357
    invoke-static {p1, p0, v0}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    return-object p0

    .line 362
    :cond_10
    const-string p0, "Unknown error occurred on your device"

    .line 363
    .line 364
    return-object p0

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Lnet/blip/libblip/TransferTitleData;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v0, p0, Lnet/blip/libblip/TransferTitleData;->a:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "No Items"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lnet/blip/libblip/TransferTitleData;->b:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " Items"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static d(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnet/blip/libblip/TransferTitleData;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->r(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v0, v1, p0}, Lnet/blip/libblip/TransferTitleData;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lnet/blip/shared/StringsKt;->c(Lnet/blip/libblip/TransferTitleData;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static e(Lnet/blip/libblip/frontend/Transfer;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lnet/blip/libblip/frontend/Transfer;->p:Lbsarchive/Metadata;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    new-instance p0, Lbsarchive/Metadata;

    .line 11
    .line 12
    invoke-direct {p0}, Lbsarchive/Metadata;-><init>()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p0}, Lnet/blip/libblip/Metadata_DerivedKt;->c(Lbsarchive/Metadata;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Iterable;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v0, Lnet/blip/libblip/TransferTitleData;

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v0, v1, p0}, Lnet/blip/libblip/TransferTitleData;-><init>(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lnet/blip/shared/StringsKt;->c(Lnet/blip/libblip/TransferTitleData;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
