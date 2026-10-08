.class public final Landroidx/datastore/preferences/core/PreferencesFileSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/core/PreferencesFileSerializer$WhenMappings;
    }
.end annotation


# static fields
.field public static final a:Landroidx/datastore/preferences/core/PreferencesFileSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/preferences/core/PreferencesFileSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/datastore/preferences/core/PreferencesFileSerializer;->a:Landroidx/datastore/preferences/core/PreferencesFileSerializer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/FileInputStream;)Landroidx/datastore/preferences/core/MutablePreferences;
    .locals 6

    .line 1
    :try_start_0
    invoke-static {p1}, Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;->u(Ljava/io/FileInputStream;)Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    const/4 p1, 0x0

    .line 6
    new-array v0, p1, [Landroidx/datastore/preferences/core/Preferences$Pair;

    .line 7
    .line 8
    new-instance v1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Landroidx/datastore/preferences/core/MutablePreferences;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [Landroidx/datastore/preferences/core/Preferences$Pair;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/datastore/preferences/core/MutablePreferences;->b()V

    .line 20
    .line 21
    .line 22
    array-length v2, v0

    .line 23
    const/4 v3, 0x0

    .line 24
    if-gtz v2, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;->s()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ljava/util/Map$Entry;

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->I()Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-nez v2, :cond_0

    .line 76
    .line 77
    const/4 v2, -0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    sget-object v4, Landroidx/datastore/preferences/core/PreferencesFileSerializer$WhenMappings;->a:[I

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    aget v2, v4, v2

    .line 86
    .line 87
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 88
    .line 89
    .line 90
    :pswitch_0
    invoke-static {}, Lk8;->e()V

    .line 91
    .line 92
    .line 93
    return-object v3

    .line 94
    :pswitch_1
    new-instance p0, Landroidx/datastore/core/CorruptionException;

    .line 95
    .line 96
    const-string p1, "Value not set."

    .line 97
    .line 98
    invoke-direct {p0, p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :pswitch_2
    new-instance v2, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 103
    .line 104
    invoke-direct {v2, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->A()Landroidx/datastore/preferences/protobuf/ByteString;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_1

    .line 116
    .line 117
    sget-object p1, Landroidx/datastore/preferences/protobuf/Internal;->b:[B

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_1
    new-array v4, v0, [B

    .line 121
    .line 122
    invoke-virtual {p1, v0, v4}, Landroidx/datastore/preferences/protobuf/ByteString;->e(I[B)V

    .line 123
    .line 124
    .line 125
    move-object p1, v4

    .line 126
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :pswitch_3
    new-instance v2, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 134
    .line 135
    invoke-direct {v2, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->H()Landroidx/datastore/preferences/PreferencesProto$StringSet;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->t()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->a0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v1, v2, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :pswitch_4
    new-instance v2, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 158
    .line 159
    invoke-direct {v2, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->G()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :pswitch_5
    new-instance v2, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 175
    .line 176
    invoke-direct {v2, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->F()J

    .line 180
    .line 181
    .line 182
    move-result-wide v4

    .line 183
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {v1, v2, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :pswitch_6
    new-instance v2, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 193
    .line 194
    invoke-direct {v2, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->E()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {v1, v2, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :pswitch_7
    new-instance v2, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 211
    .line 212
    invoke-direct {v2, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->C()D

    .line 216
    .line 217
    .line 218
    move-result-wide v4

    .line 219
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {v1, v2, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :pswitch_8
    new-instance v2, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 229
    .line 230
    invoke-direct {v2, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->D()F

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {v1, v2, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :pswitch_9
    new-instance v2, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 247
    .line 248
    invoke-direct {v2, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->z()Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {v1, v2, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->d(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :pswitch_a
    new-instance p0, Landroidx/datastore/core/CorruptionException;

    .line 265
    .line 266
    const-string p1, "Value case is null."

    .line 267
    .line 268
    invoke-direct {p0, p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    .line 270
    .line 271
    throw p0

    .line 272
    :cond_2
    new-instance p0, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 273
    .line 274
    invoke-virtual {v1}, Landroidx/datastore/preferences/core/MutablePreferences;->a()Ljava/util/Map;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 279
    .line 280
    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 281
    .line 282
    .line 283
    const/4 p1, 0x1

    .line 284
    invoke-direct {p0, v0, p1}, Landroidx/datastore/preferences/core/MutablePreferences;-><init>(Ljava/util/LinkedHashMap;Z)V

    .line 285
    .line 286
    .line 287
    return-object p0

    .line 288
    :cond_3
    aget-object p0, v0, p1

    .line 289
    .line 290
    throw v3

    .line 291
    :catch_0
    move-exception p0

    .line 292
    new-instance p1, Landroidx/datastore/core/CorruptionException;

    .line 293
    .line 294
    const-string v0, "Unable to parse preferences proto."

    .line 295
    .line 296
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    .line 298
    .line 299
    throw p1

    .line 300
    nop

    .line 301
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Landroidx/datastore/core/UncloseableOutputStream;)V
    .locals 5

    .line 1
    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/datastore/preferences/core/Preferences;->a()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;->t()Landroidx/datastore/preferences/PreferencesProto$PreferenceMap$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_8

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, v1, Landroidx/datastore/preferences/core/Preferences$Key;->a:Ljava/lang/String;

    .line 42
    .line 43
    instance-of v2, v0, Ljava/lang/Boolean;

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->J()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v0, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->c()V

    .line 58
    .line 59
    .line 60
    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->k:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 61
    .line 62
    check-cast v3, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 63
    .line 64
    invoke-static {v3, v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->w(Landroidx/datastore/preferences/PreferencesProto$Value;Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->a()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_0
    instance-of v2, v0, Ljava/lang/Float;

    .line 76
    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->J()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v0, Ljava/lang/Number;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->c()V

    .line 90
    .line 91
    .line 92
    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->k:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 93
    .line 94
    check-cast v3, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 95
    .line 96
    invoke-static {v3, v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->x(Landroidx/datastore/preferences/PreferencesProto$Value;F)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->a()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 104
    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    :cond_1
    instance-of v2, v0, Ljava/lang/Double;

    .line 108
    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->J()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v0, Ljava/lang/Number;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->c()V

    .line 122
    .line 123
    .line 124
    iget-object v0, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->k:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 125
    .line 126
    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 127
    .line 128
    invoke-static {v0, v3, v4}, Landroidx/datastore/preferences/PreferencesProto$Value;->u(Landroidx/datastore/preferences/PreferencesProto$Value;D)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->a()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_2
    instance-of v2, v0, Ljava/lang/Integer;

    .line 140
    .line 141
    if-eqz v2, :cond_3

    .line 142
    .line 143
    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->J()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v0, Ljava/lang/Number;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->c()V

    .line 154
    .line 155
    .line 156
    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->k:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 157
    .line 158
    check-cast v3, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 159
    .line 160
    invoke-static {v3, v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->y(Landroidx/datastore/preferences/PreferencesProto$Value;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->a()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_3
    instance-of v2, v0, Ljava/lang/Long;

    .line 172
    .line 173
    if-eqz v2, :cond_4

    .line 174
    .line 175
    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->J()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    check-cast v0, Ljava/lang/Number;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 182
    .line 183
    .line 184
    move-result-wide v3

    .line 185
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->c()V

    .line 186
    .line 187
    .line 188
    iget-object v0, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->k:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 189
    .line 190
    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 191
    .line 192
    invoke-static {v0, v3, v4}, Landroidx/datastore/preferences/PreferencesProto$Value;->r(Landroidx/datastore/preferences/PreferencesProto$Value;J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->a()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_4
    instance-of v2, v0, Ljava/lang/String;

    .line 203
    .line 204
    if-eqz v2, :cond_5

    .line 205
    .line 206
    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->J()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    check-cast v0, Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->c()V

    .line 213
    .line 214
    .line 215
    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->k:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 216
    .line 217
    check-cast v3, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 218
    .line 219
    invoke-static {v3, v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->s(Landroidx/datastore/preferences/PreferencesProto$Value;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->a()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_5
    instance-of v2, v0, Ljava/util/Set;

    .line 230
    .line 231
    if-eqz v2, :cond_6

    .line 232
    .line 233
    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->J()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->u()Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    check-cast v0, Ljava/util/Set;

    .line 242
    .line 243
    check-cast v0, Ljava/lang/Iterable;

    .line 244
    .line 245
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->c()V

    .line 246
    .line 247
    .line 248
    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->k:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 249
    .line 250
    check-cast v4, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    .line 251
    .line 252
    invoke-static {v4, v0}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->r(Landroidx/datastore/preferences/PreferencesProto$StringSet;Ljava/lang/Iterable;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->c()V

    .line 256
    .line 257
    .line 258
    iget-object v0, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->k:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 259
    .line 260
    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 261
    .line 262
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->a()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    check-cast v3, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    .line 267
    .line 268
    invoke-static {v0, v3}, Landroidx/datastore/preferences/PreferencesProto$Value;->t(Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/PreferencesProto$StringSet;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->a()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_6
    instance-of v2, v0, [B

    .line 279
    .line 280
    if-eqz v2, :cond_7

    .line 281
    .line 282
    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->J()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    check-cast v0, [B

    .line 287
    .line 288
    const/4 v3, 0x0

    .line 289
    array-length v4, v0

    .line 290
    invoke-static {v0, v3, v4}, Landroidx/datastore/preferences/protobuf/ByteString;->d([BII)Landroidx/datastore/preferences/protobuf/ByteString;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->c()V

    .line 295
    .line 296
    .line 297
    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->k:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 298
    .line 299
    check-cast v3, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 300
    .line 301
    invoke-static {v3, v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->v(Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->a()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 309
    .line 310
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->c()V

    .line 317
    .line 318
    .line 319
    iget-object v2, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->k:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 320
    .line 321
    check-cast v2, Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;

    .line 322
    .line 323
    invoke-static {v2}, Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;->r(Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    const-string p1, "PreferencesSerializer does not support type: "

    .line 341
    .line 342
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    return-void

    .line 350
    :cond_8
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->a()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;

    .line 355
    .line 356
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->c(Landroidx/datastore/core/UncloseableOutputStream;)V

    .line 357
    .line 358
    .line 359
    return-void
.end method
