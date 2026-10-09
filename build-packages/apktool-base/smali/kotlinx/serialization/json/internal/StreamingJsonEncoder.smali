.class public final Lkotlinx/serialization/json/internal/StreamingJsonEncoder;
.super Lkotlinx/serialization/encoding/AbstractEncoder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/serialization/json/JsonEncoder;


# instance fields
.field public final a:Lkotlinx/serialization/json/internal/Composer;

.field public final b:Lkotlinx/serialization/json/Json;

.field public final c:Lkotlinx/serialization/json/internal/WriteMode;

.field public final d:[Lkotlinx/serialization/json/JsonEncoder;

.field public final e:Lkotlinx/serialization/modules/SerializersModule;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->a:Lkotlinx/serialization/json/internal/Composer;

    .line 11
    .line 12
    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->b:Lkotlinx/serialization/json/Json;

    .line 13
    .line 14
    iput-object p3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->c:Lkotlinx/serialization/json/internal/WriteMode;

    .line 15
    .line 16
    iput-object p4, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->d:[Lkotlinx/serialization/json/JsonEncoder;

    .line 17
    .line 18
    iget-object p1, p2, Lkotlinx/serialization/json/Json;->b:Lkotlinx/serialization/modules/SerializersModule;

    .line 19
    .line 20
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->e:Lkotlinx/serialization/modules/SerializersModule;

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    aget-object p2, p4, p1

    .line 29
    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    if-eq p2, p0, :cond_1

    .line 33
    .line 34
    :cond_0
    aput-object p0, p4, p1

    .line 35
    .line 36
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->a:Lkotlinx/serialization/json/internal/Composer;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p1, Lkotlinx/serialization/json/internal/Composer;->b:Z

    .line 11
    .line 12
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->c:Lkotlinx/serialization/json/internal/WriteMode;

    .line 13
    .line 14
    iget-char p0, p0, Lkotlinx/serialization/json/internal/WriteMode;->k:C

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/Composer;->c(C)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final b()Lkotlinx/serialization/modules/SerializersModule;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->e:Lkotlinx/serialization/modules/SerializersModule;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->b:Lkotlinx/serialization/json/Json;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/WriteMode;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-char v2, v1, Lkotlinx/serialization/json/internal/WriteMode;->j:C

    .line 11
    .line 12
    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->a:Lkotlinx/serialization/json/internal/Composer;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Lkotlinx/serialization/json/internal/Composer;->c(C)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    iput-boolean v2, v3, Lkotlinx/serialization/json/internal/Composer;->b:Z

    .line 19
    .line 20
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->g:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->h:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :cond_0
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/Composer;->a()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Lkotlinx/serialization/json/internal/Composer;->h(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 p1, 0x3a

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Lkotlinx/serialization/json/internal/Composer;->c(C)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v4}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->o(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->g:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->h:Ljava/lang/String;

    .line 50
    .line 51
    :cond_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->c:Lkotlinx/serialization/json/internal/WriteMode;

    .line 52
    .line 53
    if-ne p1, v1, :cond_2

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_2
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->d:[Lkotlinx/serialization/json/JsonEncoder;

    .line 57
    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    aget-object p1, p0, p1

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_3
    new-instance p1, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    .line 70
    .line 71
    invoke-direct {p1, v3, v0, v1, p0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V

    .line 72
    .line 73
    .line 74
    return-object p1
.end method

.method public final d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->b:Lkotlinx/serialization/json/Json;

    .line 5
    .line 6
    iget-object v1, v0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 7
    .line 8
    instance-of v2, p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 9
    .line 10
    iget-object v1, v1, Lkotlinx/serialization/json/JsonConfiguration;->e:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    sget-object v4, Lkotlinx/serialization/json/ClassDiscriminatorMode;->j:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 16
    .line 17
    if-eq v1, v4, :cond_4

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    if-eq v1, v4, :cond_2

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    if-ne v1, v4, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-static {}, Lk8;->e()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-interface {p1}, Lkotlinx/serialization/SerializationStrategy;->c()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()Lkotlinx/serialization/descriptors/SerialKind;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v4, Lkotlinx/serialization/descriptors/StructureKind$CLASS;->a:Lkotlinx/serialization/descriptors/StructureKind$CLASS;

    .line 46
    .line 47
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    sget-object v4, Lkotlinx/serialization/descriptors/StructureKind$OBJECT;->a:Lkotlinx/serialization/descriptors/StructureKind$OBJECT;

    .line 54
    .line 55
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    :cond_3
    :goto_0
    invoke-interface {p1}, Lkotlinx/serialization/SerializationStrategy;->c()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1, v0}, Lkotlinx/serialization/json/internal/PolymorphicKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    :goto_1
    move-object v1, v3

    .line 71
    :goto_2
    if-eqz v2, :cond_6

    .line 72
    .line 73
    check-cast p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 74
    .line 75
    if-nez p2, :cond_5

    .line 76
    .line 77
    check-cast p1, Lkotlinx/serialization/PolymorphicSerializer;

    .line 78
    .line 79
    invoke-interface {p1}, Lkotlinx/serialization/SerializationStrategy;->c()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string p1, " should always be non-null. Please report issue to the kotlinx.serialization tracker."

    .line 84
    .line 85
    const-string p2, "Value for serializer "

    .line 86
    .line 87
    invoke-static {p2, p0, p1}, Lfe;->u(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-interface {p0}, Lkotlinx/serialization/encoding/Encoder;->b()Lkotlinx/serialization/modules/SerializersModule;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    throw v3

    .line 107
    :cond_6
    if-eqz v1, :cond_e

    .line 108
    .line 109
    invoke-interface {p1}, Lkotlinx/serialization/SerializationStrategy;->c()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {v2, v0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    instance-of v3, v2, Lkotlinx/serialization/internal/CachedNames;

    .line 123
    .line 124
    if-eqz v3, :cond_7

    .line 125
    .line 126
    check-cast v2, Lkotlinx/serialization/internal/CachedNames;

    .line 127
    .line 128
    invoke-interface {v2}, Lkotlinx/serialization/internal/CachedNames;->b()Ljava/util/Set;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    goto :goto_4

    .line 133
    :cond_7
    new-instance v3, Ljava/util/HashSet;

    .line 134
    .line 135
    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    const/4 v5, 0x0

    .line 147
    :goto_3
    if-ge v5, v4, :cond_8

    .line 148
    .line 149
    invoke-interface {v2, v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    add-int/lit8 v5, v5, 0x1

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_8
    move-object v2, v3

    .line 160
    :goto_4
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_a

    .line 165
    .line 166
    invoke-interface {p1}, Lkotlinx/serialization/SerializationStrategy;->c()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-interface {p1}, Lkotlinx/serialization/SerializationStrategy;->c()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object p2, v0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 183
    .line 184
    iget-object p2, p2, Lkotlinx/serialization/json/JsonConfiguration;->e:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 185
    .line 186
    sget-object v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;->k:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 187
    .line 188
    if-ne p2, v0, :cond_9

    .line 189
    .line 190
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    if-eqz p2, :cond_9

    .line 195
    .line 196
    const-string p0, "in ALL_JSON_OBJECTS class discriminator mode"

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v0, "as base class \'"

    .line 202
    .line 203
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const/16 p0, 0x27

    .line 210
    .line 211
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    :goto_5
    const-string p2, "\' cannot be serialized "

    .line 219
    .line 220
    const-string v0, " because it has property name that conflicts with JSON class discriminator \'"

    .line 221
    .line 222
    const-string v2, "Class \'"

    .line 223
    .line 224
    invoke-static {v2, p1, p2, p0, v0}, Lq;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    const-string p1, "\'."

    .line 229
    .line 230
    invoke-static {p0, v1, p1}, Lq;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    new-instance p1, Lkotlinx/serialization/json/JsonEncodingException;

    .line 235
    .line 236
    const-string p2, "You can either change class discriminator in JsonConfiguration, or rename property with @SerialName annotation."

    .line 237
    .line 238
    invoke-direct {p1, p0, p2}, Lkotlinx/serialization/json/JsonEncodingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw p1

    .line 242
    :cond_a
    invoke-interface {p1}, Lkotlinx/serialization/SerializationStrategy;->c()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()Lkotlinx/serialization/descriptors/SerialKind;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    instance-of v2, v0, Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    .line 254
    .line 255
    if-nez v2, :cond_d

    .line 256
    .line 257
    instance-of v2, v0, Lkotlinx/serialization/descriptors/PrimitiveKind;

    .line 258
    .line 259
    if-nez v2, :cond_c

    .line 260
    .line 261
    instance-of v0, v0, Lkotlinx/serialization/descriptors/PolymorphicKind;

    .line 262
    .line 263
    if-nez v0, :cond_b

    .line 264
    .line 265
    invoke-interface {p1}, Lkotlinx/serialization/SerializationStrategy;->c()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    iput-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->g:Ljava/lang/String;

    .line 274
    .line 275
    iput-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->h:Ljava/lang/String;

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_b
    const-string p0, "Actual serializer for polymorphic cannot be polymorphic itself"

    .line 279
    .line 280
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :cond_c
    const-string p0, "Primitives cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    .line 285
    .line 286
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :cond_d
    const-string p0, "Enums cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    .line 291
    .line 292
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_e
    :goto_6
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/SerializationStrategy;->b(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->a:Lkotlinx/serialization/json/internal/Composer;

    .line 2
    .line 3
    const-string v0, "null"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/Composer;->f(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f(D)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->o(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->a:Lkotlinx/serialization/json/internal/Composer;

    .line 14
    .line 15
    iget-object p0, p0, Lkotlinx/serialization/json/internal/Composer;->a:Lkotlinx/serialization/json/internal/JsonToStringWriter;

    .line 16
    .line 17
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->c(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    cmpg-double p0, v0, v2

    .line 34
    .line 35
    if-gtz p0, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance p1, Lkotlinx/serialization/json/JsonEncodingException;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-static {p0, p2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->e(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p2, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    .line 50
    .line 51
    invoke-direct {p1, p0, p2}, Lkotlinx/serialization/json/JsonEncodingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public final g(S)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->o(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->a:Lkotlinx/serialization/json/internal/Composer;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->g(S)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final h(B)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->o(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->a:Lkotlinx/serialization/json/internal/Composer;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->b(B)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final i(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->o(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->a:Lkotlinx/serialization/json/internal/Composer;

    .line 14
    .line 15
    iget-object p0, p0, Lkotlinx/serialization/json/internal/Composer;->a:Lkotlinx/serialization/json/internal/JsonToStringWriter;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->c(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final j(F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->o(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->a:Lkotlinx/serialization/json/internal/Composer;

    .line 14
    .line 15
    iget-object p0, p0, Lkotlinx/serialization/json/internal/Composer;->a:Lkotlinx/serialization/json/internal/JsonToStringWriter;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->c(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 29
    .line 30
    .line 31
    cmpg-float p0, p0, v0

    .line 32
    .line 33
    if-gtz p0, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance p1, Lkotlinx/serialization/json/JsonEncodingException;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-static {p0, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->e(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string v0, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    .line 48
    .line 49
    invoke-direct {p1, p0, v0}, Lkotlinx/serialization/json/JsonEncodingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public final k(C)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->o(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->o(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->a:Lkotlinx/serialization/json/internal/Composer;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->d(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final m(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoderKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->c:Lkotlinx/serialization/json/internal/WriteMode;

    .line 10
    .line 11
    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->b:Lkotlinx/serialization/json/Json;

    .line 12
    .line 13
    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->a:Lkotlinx/serialization/json/internal/Composer;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    instance-of p1, v4, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, v4, Lkotlinx/serialization/json/internal/Composer;->a:Lkotlinx/serialization/json/internal/JsonToStringWriter;

    .line 23
    .line 24
    iget-boolean p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->f:Z

    .line 25
    .line 26
    new-instance v4, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;

    .line 27
    .line 28
    invoke-direct {v4, p1, p0}, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;-><init>(Lkotlinx/serialization/json/internal/JsonToStringWriter;Z)V

    .line 29
    .line 30
    .line 31
    :goto_0
    new-instance p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    .line 32
    .line 33
    invoke-direct {p0, v4, v3, v2, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    sget-object v0, Lkotlinx/serialization/json/JsonElementKt;->a:Lkotlinx/serialization/internal/InlineClassDescriptor;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    instance-of p1, v4, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object p1, v4, Lkotlinx/serialization/json/internal/Composer;->a:Lkotlinx/serialization/json/internal/JsonToStringWriter;

    .line 57
    .line 58
    iget-boolean p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->f:Z

    .line 59
    .line 60
    new-instance v4, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;

    .line 61
    .line 62
    invoke-direct {v4, p1, p0}, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;-><init>(Lkotlinx/serialization/json/internal/JsonToStringWriter;Z)V

    .line 63
    .line 64
    .line 65
    :goto_1
    new-instance p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    .line 66
    .line 67
    invoke-direct {p0, v4, v3, v2, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_3
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->g:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->h:Ljava/lang/String;

    .line 80
    .line 81
    :cond_4
    return-object p0
.end method

.method public final n(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->o(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->a:Lkotlinx/serialization/json/internal/Composer;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/Composer;->e(J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->a:Lkotlinx/serialization/json/internal/Composer;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->h(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final p(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->c:Lkotlinx/serialization/json/internal/WriteMode;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x2c

    .line 11
    .line 12
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->a:Lkotlinx/serialization/json/internal/Composer;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v0, v3, :cond_7

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/16 v5, 0x3a

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    if-eq v0, v6, :cond_4

    .line 22
    .line 23
    const/4 v6, 0x3

    .line 24
    if-eq v0, v6, :cond_1

    .line 25
    .line 26
    iget-boolean v0, v2, Lkotlinx/serialization/json/internal/Composer;->b:Z

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lkotlinx/serialization/json/internal/Composer;->c(C)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/Composer;->a()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->b:Lkotlinx/serialization/json/Json;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->o(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v5}, Lkotlinx/serialization/json/internal/Composer;->c(C)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/Composer;->i()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    if-nez p2, :cond_2

    .line 59
    .line 60
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->f:Z

    .line 61
    .line 62
    :cond_2
    if-ne p2, v3, :cond_3

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Lkotlinx/serialization/json/internal/Composer;->c(C)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/Composer;->i()V

    .line 68
    .line 69
    .line 70
    iput-boolean v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->f:Z

    .line 71
    .line 72
    :cond_3
    return-void

    .line 73
    :cond_4
    iget-boolean p1, v2, Lkotlinx/serialization/json/internal/Composer;->b:Z

    .line 74
    .line 75
    if-nez p1, :cond_6

    .line 76
    .line 77
    rem-int/2addr p2, v6

    .line 78
    if-nez p2, :cond_5

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Lkotlinx/serialization/json/internal/Composer;->c(C)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/Composer;->a()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    invoke-virtual {v2, v5}, Lkotlinx/serialization/json/internal/Composer;->c(C)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/Composer;->i()V

    .line 91
    .line 92
    .line 93
    move v3, v4

    .line 94
    :goto_0
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->f:Z

    .line 95
    .line 96
    return-void

    .line 97
    :cond_6
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->f:Z

    .line 98
    .line 99
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/Composer;->a()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_7
    iget-boolean p0, v2, Lkotlinx/serialization/json/internal/Composer;->b:Z

    .line 104
    .line 105
    if-nez p0, :cond_8

    .line 106
    .line 107
    invoke-virtual {v2, v1}, Lkotlinx/serialization/json/internal/Composer;->c(C)V

    .line 108
    .line 109
    .line 110
    :cond_8
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/Composer;->a()V

    .line 111
    .line 112
    .line 113
    return-void
.end method
