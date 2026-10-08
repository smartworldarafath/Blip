.class public final Lnet/blip/libblip/User;
.super Lcom/squareup/wire/Message;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final y:Lnet/blip/libblip/User$Companion$ADAPTER$1;


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Lokio/ByteString;

.field public final q:Lokio/ByteString;

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Lnet/blip/libblip/PlanKind;

.field public final v:Ljava/time/Instant;

.field public final w:Ljava/time/Instant;

.field public final x:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    const-class v0, Lnet/blip/libblip/User;

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
    new-instance v1, Lnet/blip/libblip/User$Companion$ADAPTER$1;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lnet/blip/libblip/User$Companion$ADAPTER$1;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lnet/blip/libblip/User;->y:Lnet/blip/libblip/User$Companion$ADAPTER$1;

    .line 17
    .line 18
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 15

    and-int/lit8 v0, p2, 0x4

    .line 61
    const-string v2, ""

    if-eqz v0, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    .line 62
    :goto_0
    sget-object v5, Lokio/ByteString;->m:Lokio/ByteString;

    .line 63
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    move-result-object v7

    const/4 v10, 0x0

    .line 64
    sget-object v11, Lnet/blip/libblip/PlanKind;->m:Lnet/blip/libblip/PlanKind;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v2

    move-object v6, v5

    move-object v14, v5

    move-object v1, p0

    .line 65
    invoke-direct/range {v1 .. v14}, Lnet/blip/libblip/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;Ljava/util/Map;ZZZLnet/blip/libblip/PlanKind;Ljava/time/Instant;Ljava/time/Instant;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;Ljava/util/Map;ZZZLnet/blip/libblip/PlanKind;Ljava/time/Instant;Ljava/time/Instant;Lokio/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-object v0, Lnet/blip/libblip/User;->y:Lnet/blip/libblip/User$Companion$ADAPTER$1;

    .line 26
    .line 27
    invoke-direct {p0, v0, p13}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p2, p0, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p3, p0, Lnet/blip/libblip/User;->o:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p4, p0, Lnet/blip/libblip/User;->p:Lokio/ByteString;

    .line 37
    .line 38
    iput-object p5, p0, Lnet/blip/libblip/User;->q:Lokio/ByteString;

    .line 39
    .line 40
    iput-boolean p7, p0, Lnet/blip/libblip/User;->r:Z

    .line 41
    .line 42
    iput-boolean p8, p0, Lnet/blip/libblip/User;->s:Z

    .line 43
    .line 44
    iput-boolean p9, p0, Lnet/blip/libblip/User;->t:Z

    .line 45
    .line 46
    iput-object p10, p0, Lnet/blip/libblip/User;->u:Lnet/blip/libblip/PlanKind;

    .line 47
    .line 48
    iput-object p11, p0, Lnet/blip/libblip/User;->v:Ljava/time/Instant;

    .line 49
    .line 50
    iput-object p12, p0, Lnet/blip/libblip/User;->w:Ljava/time/Instant;

    .line 51
    .line 52
    const-string p1, "devices"

    .line 53
    .line 54
    invoke-static {p1, p6}, Lcom/squareup/wire/internal/Internal;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 59
    .line 60
    return-void
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
    instance-of v1, p1, Lnet/blip/libblip/User;

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
    check-cast p1, Lnet/blip/libblip/User;

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
    iget-object v1, p0, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p1, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    return v2

    .line 39
    :cond_3
    iget-object v1, p0, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v3, p1, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_4

    .line 48
    .line 49
    return v2

    .line 50
    :cond_4
    iget-object v1, p0, Lnet/blip/libblip/User;->o:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, p1, Lnet/blip/libblip/User;->o:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    return v2

    .line 61
    :cond_5
    iget-object v1, p0, Lnet/blip/libblip/User;->p:Lokio/ByteString;

    .line 62
    .line 63
    iget-object v3, p1, Lnet/blip/libblip/User;->p:Lokio/ByteString;

    .line 64
    .line 65
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_6

    .line 70
    .line 71
    return v2

    .line 72
    :cond_6
    iget-object v1, p0, Lnet/blip/libblip/User;->q:Lokio/ByteString;

    .line 73
    .line 74
    iget-object v3, p1, Lnet/blip/libblip/User;->q:Lokio/ByteString;

    .line 75
    .line 76
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_7

    .line 81
    .line 82
    return v2

    .line 83
    :cond_7
    iget-object v1, p0, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 84
    .line 85
    iget-object v3, p1, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 86
    .line 87
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_8

    .line 92
    .line 93
    return v2

    .line 94
    :cond_8
    iget-boolean v1, p0, Lnet/blip/libblip/User;->r:Z

    .line 95
    .line 96
    iget-boolean v3, p1, Lnet/blip/libblip/User;->r:Z

    .line 97
    .line 98
    if-eq v1, v3, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-boolean v1, p0, Lnet/blip/libblip/User;->s:Z

    .line 102
    .line 103
    iget-boolean v3, p1, Lnet/blip/libblip/User;->s:Z

    .line 104
    .line 105
    if-eq v1, v3, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-boolean v1, p0, Lnet/blip/libblip/User;->t:Z

    .line 109
    .line 110
    iget-boolean v3, p1, Lnet/blip/libblip/User;->t:Z

    .line 111
    .line 112
    if-eq v1, v3, :cond_b

    .line 113
    .line 114
    return v2

    .line 115
    :cond_b
    iget-object v1, p0, Lnet/blip/libblip/User;->u:Lnet/blip/libblip/PlanKind;

    .line 116
    .line 117
    iget-object v3, p1, Lnet/blip/libblip/User;->u:Lnet/blip/libblip/PlanKind;

    .line 118
    .line 119
    if-eq v1, v3, :cond_c

    .line 120
    .line 121
    return v2

    .line 122
    :cond_c
    iget-object v1, p0, Lnet/blip/libblip/User;->v:Ljava/time/Instant;

    .line 123
    .line 124
    iget-object v3, p1, Lnet/blip/libblip/User;->v:Ljava/time/Instant;

    .line 125
    .line 126
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_d

    .line 131
    .line 132
    return v2

    .line 133
    :cond_d
    iget-object p0, p0, Lnet/blip/libblip/User;->w:Ljava/time/Instant;

    .line 134
    .line 135
    iget-object p1, p1, Lnet/blip/libblip/User;->w:Ljava/time/Instant;

    .line 136
    .line 137
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-nez p0, :cond_e

    .line 142
    .line 143
    return v2

    .line 144
    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/squareup/wire/Message;->l:I

    .line 2
    .line 3
    if-nez v0, :cond_2

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
    iget-object v2, p0, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lnet/blip/libblip/User;->o:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v2, v0, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v2, p0, Lnet/blip/libblip/User;->p:Lokio/ByteString;

    .line 35
    .line 36
    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, v0

    .line 41
    mul-int/2addr v2, v1

    .line 42
    iget-object v0, p0, Lnet/blip/libblip/User;->q:Lokio/ByteString;

    .line 43
    .line 44
    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    add-int/2addr v0, v2

    .line 49
    mul-int/2addr v0, v1

    .line 50
    iget-object v2, p0, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    add-int/2addr v2, v0

    .line 57
    mul-int/2addr v2, v1

    .line 58
    iget-boolean v0, p0, Lnet/blip/libblip/User;->r:Z

    .line 59
    .line 60
    invoke-static {v2, v1, v0}, Ljb;->b(IIZ)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-boolean v2, p0, Lnet/blip/libblip/User;->s:Z

    .line 65
    .line 66
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-boolean v2, p0, Lnet/blip/libblip/User;->t:Z

    .line 71
    .line 72
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-object v2, p0, Lnet/blip/libblip/User;->u:Lnet/blip/libblip/PlanKind;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    add-int/2addr v2, v0

    .line 83
    mul-int/2addr v2, v1

    .line 84
    const/4 v0, 0x0

    .line 85
    iget-object v3, p0, Lnet/blip/libblip/User;->v:Ljava/time/Instant;

    .line 86
    .line 87
    if-eqz v3, :cond_0

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/time/Instant;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    move v3, v0

    .line 95
    :goto_0
    add-int/2addr v2, v3

    .line 96
    mul-int/2addr v2, v1

    .line 97
    iget-object v1, p0, Lnet/blip/libblip/User;->w:Ljava/time/Instant;

    .line 98
    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/time/Instant;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    :cond_1
    add-int/2addr v2, v0

    .line 106
    iput v2, p0, Lcom/squareup/wire/Message;->l:I

    .line 107
    .line 108
    return v2

    .line 109
    :cond_2
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
    iget-object v1, p0, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "user_id="

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "email="

    .line 16
    .line 17
    invoke-static {v1, v2, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lnet/blip/libblip/User;->o:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "name="

    .line 23
    .line 24
    invoke-static {v1, v2, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "avatar_uuid="

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lnet/blip/libblip/User;->p:Lokio/ByteString;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "avatar_micro_rep="

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lnet/blip/libblip/User;->q:Lokio/ByteString;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_0

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, "devices="

    .line 76
    .line 77
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_0
    iget-boolean v1, p0, Lnet/blip/libblip/User;->r:Z

    .line 91
    .line 92
    const-string v2, "is_contact="

    .line 93
    .line 94
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 95
    .line 96
    .line 97
    iget-boolean v1, p0, Lnet/blip/libblip/User;->s:Z

    .line 98
    .line 99
    const-string v2, "is_self="

    .line 100
    .line 101
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 102
    .line 103
    .line 104
    iget-boolean v1, p0, Lnet/blip/libblip/User;->t:Z

    .line 105
    .line 106
    const-string v2, "is_searchable="

    .line 107
    .line 108
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v2, "plan_kind="

    .line 114
    .line 115
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, Lnet/blip/libblip/User;->u:Lnet/blip/libblip/PlanKind;

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lnet/blip/libblip/User;->v:Ljava/time/Instant;

    .line 131
    .line 132
    if-eqz v1, :cond_1

    .line 133
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v3, "created_at="

    .line 137
    .line 138
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    :cond_1
    iget-object p0, p0, Lnet/blip/libblip/User;->w:Ljava/time/Instant;

    .line 152
    .line 153
    if-eqz p0, :cond_2

    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v2, "enriched_at="

    .line 158
    .line 159
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :cond_2
    const/4 v4, 0x0

    .line 173
    const/16 v5, 0x38

    .line 174
    .line 175
    const-string v1, ", "

    .line 176
    .line 177
    const-string v2, "User{"

    .line 178
    .line 179
    const-string v3, "}"

    .line 180
    .line 181
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    return-object p0
.end method
