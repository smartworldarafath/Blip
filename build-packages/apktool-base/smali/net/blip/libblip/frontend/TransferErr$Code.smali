.class public final enum Lnet/blip/libblip/frontend/TransferErr$Code;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/TransferErr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/blip/libblip/frontend/TransferErr$Code$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/blip/libblip/frontend/TransferErr$Code;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field public static final enum A:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum B:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum C:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final synthetic D:[Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final k:Lnet/blip/libblip/frontend/TransferErr$Code$Companion;

.field public static final l:Lnet/blip/libblip/frontend/TransferErr$Code$Companion$ADAPTER$1;

.field public static final enum m:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum n:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum o:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum p:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum q:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum r:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum s:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum t:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum u:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum v:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum w:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum x:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum y:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public static final enum z:Lnet/blip/libblip/frontend/TransferErr$Code;


# instance fields
.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v1, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 2
    .line 3
    const-string v0, "Unknown"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v0, v2, v2}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v1, Lnet/blip/libblip/frontend/TransferErr$Code;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 10
    .line 11
    new-instance v2, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    const/16 v3, 0x64

    .line 15
    .line 16
    const-string v4, "UnpackNoSpace"

    .line 17
    .line 18
    invoke-direct {v2, v4, v0, v3}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v2, Lnet/blip/libblip/frontend/TransferErr$Code;->n:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 22
    .line 23
    new-instance v3, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    const/16 v4, 0x65

    .line 27
    .line 28
    const-string v5, "UnpackNoPermission"

    .line 29
    .line 30
    invoke-direct {v3, v5, v0, v4}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v3, Lnet/blip/libblip/frontend/TransferErr$Code;->o:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 34
    .line 35
    new-instance v4, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    const/16 v5, 0x66

    .line 39
    .line 40
    const-string v6, "UnpackNotExist"

    .line 41
    .line 42
    invoke-direct {v4, v6, v0, v5}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    sput-object v4, Lnet/blip/libblip/frontend/TransferErr$Code;->p:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 46
    .line 47
    new-instance v5, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 48
    .line 49
    const/4 v0, 0x4

    .line 50
    const/16 v6, 0x69

    .line 51
    .line 52
    const-string v7, "UnpackNoFolder"

    .line 53
    .line 54
    invoke-direct {v5, v7, v0, v6}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    sput-object v5, Lnet/blip/libblip/frontend/TransferErr$Code;->q:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 58
    .line 59
    new-instance v6, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 60
    .line 61
    const/4 v0, 0x5

    .line 62
    const/16 v7, 0x67

    .line 63
    .line 64
    const-string v8, "UnpackNoVolume"

    .line 65
    .line 66
    invoke-direct {v6, v8, v0, v7}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lnet/blip/libblip/frontend/TransferErr$Code;->r:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 70
    .line 71
    new-instance v7, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 72
    .line 73
    const/4 v0, 0x6

    .line 74
    const/16 v8, 0x68

    .line 75
    .line 76
    const-string v9, "UnpackIntegrity"

    .line 77
    .line 78
    invoke-direct {v7, v9, v0, v8}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v7, Lnet/blip/libblip/frontend/TransferErr$Code;->s:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 82
    .line 83
    new-instance v8, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 84
    .line 85
    const/4 v0, 0x7

    .line 86
    const/16 v9, 0xc9

    .line 87
    .line 88
    const-string v10, "PackNoPermission"

    .line 89
    .line 90
    invoke-direct {v8, v10, v0, v9}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    sput-object v8, Lnet/blip/libblip/frontend/TransferErr$Code;->t:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 94
    .line 95
    new-instance v9, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 96
    .line 97
    const/16 v0, 0x8

    .line 98
    .line 99
    const/16 v10, 0xca

    .line 100
    .line 101
    const-string v11, "PackNotExist"

    .line 102
    .line 103
    invoke-direct {v9, v11, v0, v10}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 104
    .line 105
    .line 106
    sput-object v9, Lnet/blip/libblip/frontend/TransferErr$Code;->u:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 107
    .line 108
    new-instance v10, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 109
    .line 110
    const/16 v0, 0x9

    .line 111
    .line 112
    const/16 v11, 0xcb

    .line 113
    .line 114
    const-string v12, "PackNoVolume"

    .line 115
    .line 116
    invoke-direct {v10, v12, v0, v11}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 117
    .line 118
    .line 119
    sput-object v10, Lnet/blip/libblip/frontend/TransferErr$Code;->v:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 120
    .line 121
    new-instance v11, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 122
    .line 123
    const/16 v0, 0xa

    .line 124
    .line 125
    const/16 v12, 0xcc

    .line 126
    .line 127
    const-string v13, "PackIntegrity"

    .line 128
    .line 129
    invoke-direct {v11, v13, v0, v12}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 130
    .line 131
    .line 132
    sput-object v11, Lnet/blip/libblip/frontend/TransferErr$Code;->w:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 133
    .line 134
    new-instance v12, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 135
    .line 136
    const/16 v0, 0xb

    .line 137
    .line 138
    const/16 v13, 0x12c

    .line 139
    .line 140
    const-string v14, "Connection"

    .line 141
    .line 142
    invoke-direct {v12, v14, v0, v13}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    sput-object v12, Lnet/blip/libblip/frontend/TransferErr$Code;->x:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 146
    .line 147
    new-instance v13, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 148
    .line 149
    const/16 v0, 0xc

    .line 150
    .line 151
    const/16 v14, 0x12d

    .line 152
    .line 153
    const-string v15, "ConnectionNoRoute"

    .line 154
    .line 155
    invoke-direct {v13, v15, v0, v14}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 156
    .line 157
    .line 158
    sput-object v13, Lnet/blip/libblip/frontend/TransferErr$Code;->y:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 159
    .line 160
    new-instance v14, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 161
    .line 162
    const/16 v0, 0xd

    .line 163
    .line 164
    const/16 v15, 0x190

    .line 165
    .line 166
    move-object/from16 v16, v1

    .line 167
    .line 168
    const-string v1, "UserCancel"

    .line 169
    .line 170
    invoke-direct {v14, v1, v0, v15}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 171
    .line 172
    .line 173
    sput-object v14, Lnet/blip/libblip/frontend/TransferErr$Code;->z:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 174
    .line 175
    new-instance v15, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 176
    .line 177
    const/16 v0, 0xe

    .line 178
    .line 179
    const/16 v1, 0x191

    .line 180
    .line 181
    move-object/from16 v17, v2

    .line 182
    .line 183
    const-string v2, "UserDecline"

    .line 184
    .line 185
    invoke-direct {v15, v2, v0, v1}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 186
    .line 187
    .line 188
    sput-object v15, Lnet/blip/libblip/frontend/TransferErr$Code;->A:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 189
    .line 190
    new-instance v0, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 191
    .line 192
    const/16 v1, 0xf

    .line 193
    .line 194
    const/16 v2, 0x192

    .line 195
    .line 196
    move-object/from16 v18, v3

    .line 197
    .line 198
    const-string v3, "UserRevokeInvite"

    .line 199
    .line 200
    invoke-direct {v0, v3, v1, v2}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 201
    .line 202
    .line 203
    sput-object v0, Lnet/blip/libblip/frontend/TransferErr$Code;->B:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 204
    .line 205
    new-instance v1, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 206
    .line 207
    const/16 v2, 0x10

    .line 208
    .line 209
    const/16 v3, 0x193

    .line 210
    .line 211
    move-object/from16 v19, v0

    .line 212
    .line 213
    const-string v0, "UserPause"

    .line 214
    .line 215
    invoke-direct {v1, v0, v2, v3}, Lnet/blip/libblip/frontend/TransferErr$Code;-><init>(Ljava/lang/String;II)V

    .line 216
    .line 217
    .line 218
    sput-object v1, Lnet/blip/libblip/frontend/TransferErr$Code;->C:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 219
    .line 220
    move-object/from16 v2, v17

    .line 221
    .line 222
    move-object/from16 v3, v18

    .line 223
    .line 224
    move-object/from16 v17, v1

    .line 225
    .line 226
    move-object/from16 v1, v16

    .line 227
    .line 228
    move-object/from16 v16, v19

    .line 229
    .line 230
    filled-new-array/range {v1 .. v17}, [Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    sput-object v0, Lnet/blip/libblip/frontend/TransferErr$Code;->D:[Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 235
    .line 236
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 237
    .line 238
    .line 239
    new-instance v0, Lnet/blip/libblip/frontend/TransferErr$Code$Companion;

    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 242
    .line 243
    .line 244
    sput-object v0, Lnet/blip/libblip/frontend/TransferErr$Code;->k:Lnet/blip/libblip/frontend/TransferErr$Code$Companion;

    .line 245
    .line 246
    const-class v0, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 247
    .line 248
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    sget-object v2, Lcom/squareup/wire/Syntax;->l:Lcom/squareup/wire/Syntax;

    .line 253
    .line 254
    new-instance v3, Lnet/blip/libblip/frontend/TransferErr$Code$Companion$ADAPTER$1;

    .line 255
    .line 256
    invoke-direct {v3, v0, v2, v1}, Lcom/squareup/wire/EnumAdapter;-><init>(Lkotlin/jvm/internal/ClassReference;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/WireEnum;)V

    .line 257
    .line 258
    .line 259
    sput-object v3, Lnet/blip/libblip/frontend/TransferErr$Code;->l:Lnet/blip/libblip/frontend/TransferErr$Code$Companion$ADAPTER$1;

    .line 260
    .line 261
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lnet/blip/libblip/frontend/TransferErr$Code;->j:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/blip/libblip/frontend/TransferErr$Code;
    .locals 1

    .line 1
    const-class v0, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/blip/libblip/frontend/TransferErr$Code;
    .locals 1

    .line 1
    sget-object v0, Lnet/blip/libblip/frontend/TransferErr$Code;->D:[Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/blip/libblip/frontend/TransferErr$Code;->j:I

    .line 2
    .line 3
    return p0
.end method
