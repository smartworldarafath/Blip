.class public final Lnet/blip/libblip/frontend/State;
.super Lcom/squareup/wire/Message;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final E:Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/util/Map;

.field public final C:Ljava/util/Map;

.field public final D:Ljava/util/Map;

.field public final m:I

.field public final n:Lnet/blip/libblip/UserAgent;

.field public final o:Ljava/lang/String;

.field public final p:Lnet/blip/libblip/frontend/Config;

.field public final q:Lnet/blip/libblip/frontend/Registration;

.field public final r:Lnet/blip/libblip/frontend/Auth;

.field public final s:Lnet/blip/libblip/frontend/Onboarding;

.field public final t:Lnet/blip/libblip/frontend/Messaging;

.field public final u:Lnet/blip/libblip/frontend/Users;

.field public final v:Lnet/blip/libblip/frontend/PushNotifications;

.field public final w:Lnet/blip/libblip/Plan;

.field public final x:Lnet/blip/libblip/frontend/SystemInfo;

.field public final y:Ljava/time/Instant;

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    const-class v0, Lnet/blip/libblip/frontend/State;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/squareup/wire/Syntax;->k:Lcom/squareup/wire/Syntax;

    .line 10
    .line 11
    new-instance v1, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lnet/blip/libblip/frontend/State;->E:Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(ILnet/blip/libblip/UserAgent;Ljava/lang/String;Lnet/blip/libblip/frontend/Config;Lnet/blip/libblip/frontend/Registration;Lnet/blip/libblip/frontend/Auth;Lnet/blip/libblip/frontend/Onboarding;Lnet/blip/libblip/frontend/Messaging;Lnet/blip/libblip/frontend/Users;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lnet/blip/libblip/frontend/PushNotifications;Lnet/blip/libblip/Plan;Lnet/blip/libblip/frontend/SystemInfo;Ljava/time/Instant;ZLjava/lang/String;Lokio/ByteString;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lnet/blip/libblip/frontend/State;->E:Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;

    .line 11
    .line 12
    move-object/from16 v1, p19

    .line 13
    .line 14
    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 15
    .line 16
    .line 17
    iput p1, p0, Lnet/blip/libblip/frontend/State;->m:I

    .line 18
    .line 19
    iput-object p2, p0, Lnet/blip/libblip/frontend/State;->n:Lnet/blip/libblip/UserAgent;

    .line 20
    .line 21
    iput-object p3, p0, Lnet/blip/libblip/frontend/State;->o:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p4, p0, Lnet/blip/libblip/frontend/State;->p:Lnet/blip/libblip/frontend/Config;

    .line 24
    .line 25
    iput-object p5, p0, Lnet/blip/libblip/frontend/State;->q:Lnet/blip/libblip/frontend/Registration;

    .line 26
    .line 27
    iput-object p6, p0, Lnet/blip/libblip/frontend/State;->r:Lnet/blip/libblip/frontend/Auth;

    .line 28
    .line 29
    iput-object p7, p0, Lnet/blip/libblip/frontend/State;->s:Lnet/blip/libblip/frontend/Onboarding;

    .line 30
    .line 31
    iput-object p8, p0, Lnet/blip/libblip/frontend/State;->t:Lnet/blip/libblip/frontend/Messaging;

    .line 32
    .line 33
    iput-object p9, p0, Lnet/blip/libblip/frontend/State;->u:Lnet/blip/libblip/frontend/Users;

    .line 34
    .line 35
    iput-object p13, p0, Lnet/blip/libblip/frontend/State;->v:Lnet/blip/libblip/frontend/PushNotifications;

    .line 36
    .line 37
    move-object/from16 p1, p14

    .line 38
    .line 39
    iput-object p1, p0, Lnet/blip/libblip/frontend/State;->w:Lnet/blip/libblip/Plan;

    .line 40
    .line 41
    move-object/from16 p1, p15

    .line 42
    .line 43
    iput-object p1, p0, Lnet/blip/libblip/frontend/State;->x:Lnet/blip/libblip/frontend/SystemInfo;

    .line 44
    .line 45
    move-object/from16 p1, p16

    .line 46
    .line 47
    iput-object p1, p0, Lnet/blip/libblip/frontend/State;->y:Ljava/time/Instant;

    .line 48
    .line 49
    move/from16 p1, p17

    .line 50
    .line 51
    iput-boolean p1, p0, Lnet/blip/libblip/frontend/State;->z:Z

    .line 52
    .line 53
    move-object/from16 p1, p18

    .line 54
    .line 55
    iput-object p1, p0, Lnet/blip/libblip/frontend/State;->A:Ljava/lang/String;

    .line 56
    .line 57
    const-string p1, "transfers"

    .line 58
    .line 59
    invoke-static {p1, p10}, Lcom/squareup/wire/internal/Internal;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 64
    .line 65
    const-string p1, "transfer_notification_responses"

    .line 66
    .line 67
    invoke-static {p1, p11}, Lcom/squareup/wire/internal/Internal;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lnet/blip/libblip/frontend/State;->C:Ljava/util/Map;

    .line 72
    .line 73
    const-string p1, "searches"

    .line 74
    .line 75
    invoke-static {p1, p12}, Lcom/squareup/wire/internal/Internal;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lnet/blip/libblip/frontend/State;->D:Ljava/util/Map;

    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    const/4 p1, 0x1

    .line 83
    if-eqz p5, :cond_0

    .line 84
    .line 85
    move p2, p1

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    move p2, p0

    .line 88
    :goto_0
    if-eqz p6, :cond_1

    .line 89
    .line 90
    move p0, p1

    .line 91
    :cond_1
    add-int/2addr p2, p0

    .line 92
    if-gt p2, p1, :cond_2

    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    const-string p0, "At most one of registration, auth may be non-null"

    .line 96
    .line 97
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/4 p0, 0x0

    .line 101
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/blip/libblip/frontend/State;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast p1, Lnet/blip/libblip/frontend/State;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    return v2

    .line 28
    :cond_2
    iget v1, p0, Lnet/blip/libblip/frontend/State;->m:I

    .line 29
    .line 30
    iget v3, p1, Lnet/blip/libblip/frontend/State;->m:I

    .line 31
    .line 32
    if-eq v1, v3, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->n:Lnet/blip/libblip/UserAgent;

    .line 36
    .line 37
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->n:Lnet/blip/libblip/UserAgent;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->o:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->o:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->p:Lnet/blip/libblip/frontend/Config;

    .line 58
    .line 59
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->p:Lnet/blip/libblip/frontend/Config;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->q:Lnet/blip/libblip/frontend/Registration;

    .line 69
    .line 70
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->q:Lnet/blip/libblip/frontend/Registration;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->r:Lnet/blip/libblip/frontend/Auth;

    .line 80
    .line 81
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->r:Lnet/blip/libblip/frontend/Auth;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->s:Lnet/blip/libblip/frontend/Onboarding;

    .line 91
    .line 92
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->s:Lnet/blip/libblip/frontend/Onboarding;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->t:Lnet/blip/libblip/frontend/Messaging;

    .line 102
    .line 103
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->t:Lnet/blip/libblip/frontend/Messaging;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->u:Lnet/blip/libblip/frontend/Users;

    .line 113
    .line 114
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->u:Lnet/blip/libblip/frontend/Users;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 124
    .line 125
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->C:Ljava/util/Map;

    .line 135
    .line 136
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->C:Ljava/util/Map;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->D:Ljava/util/Map;

    .line 146
    .line 147
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->D:Ljava/util/Map;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->v:Lnet/blip/libblip/frontend/PushNotifications;

    .line 157
    .line 158
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->v:Lnet/blip/libblip/frontend/PushNotifications;

    .line 159
    .line 160
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->w:Lnet/blip/libblip/Plan;

    .line 168
    .line 169
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->w:Lnet/blip/libblip/Plan;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->x:Lnet/blip/libblip/frontend/SystemInfo;

    .line 179
    .line 180
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->x:Lnet/blip/libblip/frontend/SystemInfo;

    .line 181
    .line 182
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_11

    .line 187
    .line 188
    return v2

    .line 189
    :cond_11
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->y:Ljava/time/Instant;

    .line 190
    .line 191
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->y:Ljava/time/Instant;

    .line 192
    .line 193
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_12

    .line 198
    .line 199
    return v2

    .line 200
    :cond_12
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/State;->z:Z

    .line 201
    .line 202
    iget-boolean v3, p1, Lnet/blip/libblip/frontend/State;->z:Z

    .line 203
    .line 204
    if-eq v1, v3, :cond_13

    .line 205
    .line 206
    return v2

    .line 207
    :cond_13
    iget-object p0, p0, Lnet/blip/libblip/frontend/State;->A:Ljava/lang/String;

    .line 208
    .line 209
    iget-object p1, p1, Lnet/blip/libblip/frontend/State;->A:Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    if-nez p0, :cond_14

    .line 216
    .line 217
    return v2

    .line 218
    :cond_14
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/squareup/wire/Message;->l:I

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x25

    .line 14
    .line 15
    mul-int/2addr v0, v1

    .line 16
    iget v2, p0, Lnet/blip/libblip/frontend/State;->m:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Lq;->b(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x0

    .line 23
    iget-object v3, p0, Lnet/blip/libblip/frontend/State;->n:Lnet/blip/libblip/UserAgent;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3}, Lnet/blip/libblip/UserAgent;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v3, v2

    .line 33
    :goto_0
    add-int/2addr v0, v3

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget-object v3, p0, Lnet/blip/libblip/frontend/State;->o:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v3, v0, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v3, p0, Lnet/blip/libblip/frontend/State;->p:Lnet/blip/libblip/frontend/Config;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3}, Lnet/blip/libblip/frontend/Config;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v3, v2

    .line 51
    :goto_1
    add-int/2addr v0, v3

    .line 52
    mul-int/2addr v0, v1

    .line 53
    iget-object v3, p0, Lnet/blip/libblip/frontend/State;->q:Lnet/blip/libblip/frontend/Registration;

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-virtual {v3}, Lnet/blip/libblip/frontend/Registration;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move v3, v2

    .line 63
    :goto_2
    add-int/2addr v0, v3

    .line 64
    mul-int/2addr v0, v1

    .line 65
    iget-object v3, p0, Lnet/blip/libblip/frontend/State;->r:Lnet/blip/libblip/frontend/Auth;

    .line 66
    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    invoke-virtual {v3}, Lnet/blip/libblip/frontend/Auth;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    move v3, v2

    .line 75
    :goto_3
    add-int/2addr v0, v3

    .line 76
    mul-int/2addr v0, v1

    .line 77
    iget-object v3, p0, Lnet/blip/libblip/frontend/State;->s:Lnet/blip/libblip/frontend/Onboarding;

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    invoke-virtual {v3}, Lnet/blip/libblip/frontend/Onboarding;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    goto :goto_4

    .line 86
    :cond_4
    move v3, v2

    .line 87
    :goto_4
    add-int/2addr v0, v3

    .line 88
    mul-int/2addr v0, v1

    .line 89
    iget-object v3, p0, Lnet/blip/libblip/frontend/State;->t:Lnet/blip/libblip/frontend/Messaging;

    .line 90
    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    invoke-virtual {v3}, Lnet/blip/libblip/frontend/Messaging;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    goto :goto_5

    .line 98
    :cond_5
    move v3, v2

    .line 99
    :goto_5
    add-int/2addr v0, v3

    .line 100
    mul-int/2addr v0, v1

    .line 101
    iget-object v3, p0, Lnet/blip/libblip/frontend/State;->u:Lnet/blip/libblip/frontend/Users;

    .line 102
    .line 103
    if-eqz v3, :cond_6

    .line 104
    .line 105
    invoke-virtual {v3}, Lnet/blip/libblip/frontend/Users;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    goto :goto_6

    .line 110
    :cond_6
    move v3, v2

    .line 111
    :goto_6
    add-int/2addr v0, v3

    .line 112
    mul-int/2addr v0, v1

    .line 113
    iget-object v3, p0, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    add-int/2addr v3, v0

    .line 120
    mul-int/2addr v3, v1

    .line 121
    iget-object v0, p0, Lnet/blip/libblip/frontend/State;->C:Ljava/util/Map;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    add-int/2addr v0, v3

    .line 128
    mul-int/2addr v0, v1

    .line 129
    iget-object v3, p0, Lnet/blip/libblip/frontend/State;->D:Ljava/util/Map;

    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    add-int/2addr v3, v0

    .line 136
    mul-int/2addr v3, v1

    .line 137
    iget-object v0, p0, Lnet/blip/libblip/frontend/State;->v:Lnet/blip/libblip/frontend/PushNotifications;

    .line 138
    .line 139
    if-eqz v0, :cond_7

    .line 140
    .line 141
    invoke-virtual {v0}, Lnet/blip/libblip/frontend/PushNotifications;->hashCode()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    goto :goto_7

    .line 146
    :cond_7
    move v0, v2

    .line 147
    :goto_7
    add-int/2addr v3, v0

    .line 148
    mul-int/2addr v3, v1

    .line 149
    iget-object v0, p0, Lnet/blip/libblip/frontend/State;->w:Lnet/blip/libblip/Plan;

    .line 150
    .line 151
    if-eqz v0, :cond_8

    .line 152
    .line 153
    invoke-virtual {v0}, Lnet/blip/libblip/Plan;->hashCode()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    goto :goto_8

    .line 158
    :cond_8
    move v0, v2

    .line 159
    :goto_8
    add-int/2addr v3, v0

    .line 160
    mul-int/2addr v3, v1

    .line 161
    iget-object v0, p0, Lnet/blip/libblip/frontend/State;->x:Lnet/blip/libblip/frontend/SystemInfo;

    .line 162
    .line 163
    if-eqz v0, :cond_9

    .line 164
    .line 165
    invoke-virtual {v0}, Lnet/blip/libblip/frontend/SystemInfo;->hashCode()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    goto :goto_9

    .line 170
    :cond_9
    move v0, v2

    .line 171
    :goto_9
    add-int/2addr v3, v0

    .line 172
    mul-int/2addr v3, v1

    .line 173
    iget-object v0, p0, Lnet/blip/libblip/frontend/State;->y:Ljava/time/Instant;

    .line 174
    .line 175
    if-eqz v0, :cond_a

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/time/Instant;->hashCode()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    :cond_a
    add-int/2addr v3, v2

    .line 182
    mul-int/2addr v3, v1

    .line 183
    iget-boolean v0, p0, Lnet/blip/libblip/frontend/State;->z:Z

    .line 184
    .line 185
    invoke-static {v3, v1, v0}, Ljb;->b(IIZ)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->A:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    add-int/2addr v1, v0

    .line 196
    iput v1, p0, Lcom/squareup/wire/Message;->l:I

    .line 197
    .line 198
    return v1

    .line 199
    :cond_b
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "version="

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v2, p0, Lnet/blip/libblip/frontend/State;->m:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->n:Lnet/blip/libblip/UserAgent;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "user_agent="

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->o:Ljava/lang/String;

    .line 47
    .line 48
    const-string v2, "locale="

    .line 49
    .line 50
    invoke-static {v1, v2, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->p:Lnet/blip/libblip/frontend/Config;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v3, "config="

    .line 60
    .line 61
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->q:Lnet/blip/libblip/frontend/Registration;

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v3, "registration="

    .line 81
    .line 82
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_2
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->r:Lnet/blip/libblip/frontend/Auth;

    .line 96
    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v3, "auth="

    .line 102
    .line 103
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :cond_3
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->s:Lnet/blip/libblip/frontend/Onboarding;

    .line 117
    .line 118
    if-eqz v1, :cond_4

    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v3, "onboarding="

    .line 123
    .line 124
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_4
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->t:Lnet/blip/libblip/frontend/Messaging;

    .line 138
    .line 139
    if-eqz v1, :cond_5

    .line 140
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v3, "messaging="

    .line 144
    .line 145
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    :cond_5
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->u:Lnet/blip/libblip/frontend/Users;

    .line 159
    .line 160
    if-eqz v1, :cond_6

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v3, "users="

    .line 165
    .line 166
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    :cond_6
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 180
    .line 181
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-nez v2, :cond_7

    .line 186
    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v3, "transfers="

    .line 190
    .line 191
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    :cond_7
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->C:Ljava/util/Map;

    .line 205
    .line 206
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_8

    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v3, "transfer_notification_responses="

    .line 215
    .line 216
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    :cond_8
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->D:Ljava/util/Map;

    .line 230
    .line 231
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-nez v2, :cond_9

    .line 236
    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v3, "searches="

    .line 240
    .line 241
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    :cond_9
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->v:Lnet/blip/libblip/frontend/PushNotifications;

    .line 255
    .line 256
    if-eqz v1, :cond_a

    .line 257
    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string v3, "notifications="

    .line 261
    .line 262
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    :cond_a
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->w:Lnet/blip/libblip/Plan;

    .line 276
    .line 277
    if-eqz v1, :cond_b

    .line 278
    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    const-string v3, "plan="

    .line 282
    .line 283
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    :cond_b
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->x:Lnet/blip/libblip/frontend/SystemInfo;

    .line 297
    .line 298
    if-eqz v1, :cond_c

    .line 299
    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string v3, "system_info="

    .line 303
    .line 304
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    :cond_c
    iget-object v1, p0, Lnet/blip/libblip/frontend/State;->y:Ljava/time/Instant;

    .line 318
    .line 319
    if-eqz v1, :cond_d

    .line 320
    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string v3, "launch_time="

    .line 324
    .line 325
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    :cond_d
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/State;->z:Z

    .line 339
    .line 340
    const-string v2, "shutting_down="

    .line 341
    .line 342
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 343
    .line 344
    .line 345
    iget-object p0, p0, Lnet/blip/libblip/frontend/State;->A:Ljava/lang/String;

    .line 346
    .line 347
    const-string v1, "test_plain_text="

    .line 348
    .line 349
    invoke-static {p0, v1, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 350
    .line 351
    .line 352
    const/4 v4, 0x0

    .line 353
    const/16 v5, 0x38

    .line 354
    .line 355
    const-string v1, ", "

    .line 356
    .line 357
    const-string v2, "State{"

    .line 358
    .line 359
    const-string v3, "}"

    .line 360
    .line 361
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    return-object p0
.end method
