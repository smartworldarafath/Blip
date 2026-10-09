.class final Landroidx/datastore/preferences/protobuf/Protobuf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final c:Landroidx/datastore/preferences/protobuf/Protobuf;


# instance fields
.field public final a:Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/Protobuf;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Protobuf;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/datastore/preferences/protobuf/Protobuf;->c:Landroidx/datastore/preferences/protobuf/Protobuf;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Protobuf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Protobuf;->a:Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;
    .locals 12

    .line 1
    const-string v0, "messageType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Protobuf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/datastore/preferences/protobuf/Schema;

    .line 13
    .line 14
    if-nez v1, :cond_d

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/Protobuf;->a:Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v1, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 22
    .line 23
    const-class v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    sget-object v2, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 44
    .line 45
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->a:Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/MessageInfo;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    move-object v2, p0

    .line 56
    check-cast v2, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    .line 57
    .line 58
    iget v2, v2, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->d:I

    .line 59
    .line 60
    const/4 v4, 0x2

    .line 61
    and-int/2addr v2, v4

    .line 62
    const/4 v5, 0x1

    .line 63
    if-ne v2, v4, :cond_2

    .line 64
    .line 65
    move v2, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 v2, 0x0

    .line 68
    :goto_1
    const-string v4, "Protobuf runtime is not correctly loaded."

    .line 69
    .line 70
    if-eqz v2, :cond_5

    .line 71
    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    sget-object v1, Landroidx/datastore/preferences/protobuf/SchemaUtil;->c:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 79
    .line 80
    sget-object v2, Landroidx/datastore/preferences/protobuf/ExtensionSchemas;->a:Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    .line 81
    .line 82
    check-cast p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    .line 83
    .line 84
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->a:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 85
    .line 86
    new-instance v3, Landroidx/datastore/preferences/protobuf/MessageSetSchema;

    .line 87
    .line 88
    invoke-direct {v3, v1, v2, p0}, Landroidx/datastore/preferences/protobuf/MessageSetSchema;-><init>(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MessageLite;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :cond_3
    sget-object v1, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 94
    .line 95
    sget-object v2, Landroidx/datastore/preferences/protobuf/ExtensionSchemas;->b:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    check-cast p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    .line 100
    .line 101
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->a:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 102
    .line 103
    new-instance v3, Landroidx/datastore/preferences/protobuf/MessageSetSchema;

    .line 104
    .line 105
    invoke-direct {v3, v1, v2, p0}, Landroidx/datastore/preferences/protobuf/MessageSetSchema;-><init>(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MessageLite;)V

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_4
    invoke-static {v4}, Lu2;->l(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v3

    .line 113
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_8

    .line 118
    .line 119
    sget-object v7, Landroidx/datastore/preferences/protobuf/NewInstanceSchemas;->b:Landroidx/datastore/preferences/protobuf/NewInstanceSchemaLite;

    .line 120
    .line 121
    sget-object v8, Landroidx/datastore/preferences/protobuf/ListFieldSchemas;->b:Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;

    .line 122
    .line 123
    sget-object v9, Landroidx/datastore/preferences/protobuf/SchemaUtil;->c:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 124
    .line 125
    move-object v1, p0

    .line 126
    check-cast v1, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    .line 127
    .line 128
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->a()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eq v1, v5, :cond_6

    .line 137
    .line 138
    sget-object v1, Landroidx/datastore/preferences/protobuf/ExtensionSchemas;->a:Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    .line 139
    .line 140
    move-object v10, v1

    .line 141
    goto :goto_2

    .line 142
    :cond_6
    move-object v10, v3

    .line 143
    :goto_2
    sget-object v11, Landroidx/datastore/preferences/protobuf/MapFieldSchemas;->b:Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 144
    .line 145
    instance-of v1, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    .line 146
    .line 147
    if-eqz v1, :cond_7

    .line 148
    .line 149
    move-object v6, p0

    .line 150
    check-cast v6, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    .line 151
    .line 152
    invoke-static/range {v6 .. v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->w(Landroidx/datastore/preferences/protobuf/RawMessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    goto :goto_4

    .line 157
    :cond_7
    sget-object p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->n:[I

    .line 158
    .line 159
    invoke-static {}, Lio/sentry/d;->i()V

    .line 160
    .line 161
    .line 162
    return-object v3

    .line 163
    :cond_8
    move v1, v5

    .line 164
    sget-object v5, Landroidx/datastore/preferences/protobuf/NewInstanceSchemas;->a:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    .line 165
    .line 166
    sget-object v6, Landroidx/datastore/preferences/protobuf/ListFieldSchemas;->a:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 167
    .line 168
    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 169
    .line 170
    move-object v2, p0

    .line 171
    check-cast v2, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    .line 172
    .line 173
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->a()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eq v2, v1, :cond_a

    .line 182
    .line 183
    sget-object v1, Landroidx/datastore/preferences/protobuf/ExtensionSchemas;->b:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 184
    .line 185
    if-eqz v1, :cond_9

    .line 186
    .line 187
    move-object v8, v1

    .line 188
    goto :goto_3

    .line 189
    :cond_9
    invoke-static {v4}, Lu2;->l(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return-object v3

    .line 193
    :cond_a
    move-object v8, v3

    .line 194
    :goto_3
    sget-object v9, Landroidx/datastore/preferences/protobuf/MapFieldSchemas;->a:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    .line 195
    .line 196
    instance-of v1, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    .line 197
    .line 198
    if-eqz v1, :cond_c

    .line 199
    .line 200
    move-object v4, p0

    .line 201
    check-cast v4, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    .line 202
    .line 203
    invoke-static/range {v4 .. v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->w(Landroidx/datastore/preferences/protobuf/RawMessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    :goto_4
    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    check-cast p0, Landroidx/datastore/preferences/protobuf/Schema;

    .line 212
    .line 213
    if-eqz p0, :cond_b

    .line 214
    .line 215
    return-object p0

    .line 216
    :cond_b
    return-object v3

    .line 217
    :cond_c
    sget-object p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->n:[I

    .line 218
    .line 219
    invoke-static {}, Lio/sentry/d;->i()V

    .line 220
    .line 221
    .line 222
    return-object v3

    .line 223
    :cond_d
    return-object v1
.end method
