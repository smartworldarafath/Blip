.class public final Lnet/blip/libblip/UserAgent;
.super Lcom/squareup/wire/Message;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final v:Lnet/blip/libblip/UserAgent$Companion$ADAPTER$1;


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Lnet/blip/libblip/DeviceKind;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v1, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    const-class v0, Lnet/blip/libblip/UserAgent;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v4, Lcom/squareup/wire/Syntax;->l:Lcom/squareup/wire/Syntax;

    .line 10
    .line 11
    new-instance v0, Lnet/blip/libblip/UserAgent$Companion$ADAPTER$1;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v3, "type.googleapis.com/blip.UserAgent"

    .line 16
    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lnet/blip/libblip/UserAgent;->v:Lnet/blip/libblip/UserAgent$Companion$ADAPTER$1;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnet/blip/libblip/DeviceKind;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
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
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object v0, Lnet/blip/libblip/UserAgent;->v:Lnet/blip/libblip/UserAgent$Companion$ADAPTER$1;

    .line 32
    .line 33
    invoke-direct {p0, v0, p10}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lnet/blip/libblip/UserAgent;->m:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p2, p0, Lnet/blip/libblip/UserAgent;->n:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p3, p0, Lnet/blip/libblip/UserAgent;->o:Lnet/blip/libblip/DeviceKind;

    .line 41
    .line 42
    iput-object p4, p0, Lnet/blip/libblip/UserAgent;->p:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p5, p0, Lnet/blip/libblip/UserAgent;->q:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p6, p0, Lnet/blip/libblip/UserAgent;->r:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p7, p0, Lnet/blip/libblip/UserAgent;->s:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p8, p0, Lnet/blip/libblip/UserAgent;->t:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p9, p0, Lnet/blip/libblip/UserAgent;->u:Ljava/lang/String;

    .line 53
    .line 54
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
    instance-of v1, p1, Lnet/blip/libblip/UserAgent;

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
    check-cast p1, Lnet/blip/libblip/UserAgent;

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
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->m:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p1, Lnet/blip/libblip/UserAgent;->m:Ljava/lang/String;

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
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->n:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v3, p1, Lnet/blip/libblip/UserAgent;->n:Ljava/lang/String;

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
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->o:Lnet/blip/libblip/DeviceKind;

    .line 51
    .line 52
    iget-object v3, p1, Lnet/blip/libblip/UserAgent;->o:Lnet/blip/libblip/DeviceKind;

    .line 53
    .line 54
    if-eq v1, v3, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->p:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lnet/blip/libblip/UserAgent;->p:Ljava/lang/String;

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
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->q:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lnet/blip/libblip/UserAgent;->q:Ljava/lang/String;

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
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->r:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lnet/blip/libblip/UserAgent;->r:Ljava/lang/String;

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
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->s:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lnet/blip/libblip/UserAgent;->s:Ljava/lang/String;

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
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->t:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lnet/blip/libblip/UserAgent;->t:Ljava/lang/String;

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
    iget-object p0, p0, Lnet/blip/libblip/UserAgent;->u:Ljava/lang/String;

    .line 113
    .line 114
    iget-object p1, p1, Lnet/blip/libblip/UserAgent;->u:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-nez p0, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/wire/Message;->l:I

    .line 2
    .line 3
    if-nez v0, :cond_0

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
    iget-object v2, p0, Lnet/blip/libblip/UserAgent;->m:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lnet/blip/libblip/UserAgent;->n:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lnet/blip/libblip/UserAgent;->o:Lnet/blip/libblip/DeviceKind;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/2addr v2, v0

    .line 35
    mul-int/2addr v2, v1

    .line 36
    iget-object v0, p0, Lnet/blip/libblip/UserAgent;->p:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, v2, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v2, p0, Lnet/blip/libblip/UserAgent;->q:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v2, v0, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v2, p0, Lnet/blip/libblip/UserAgent;->r:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v2, v0, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v2, p0, Lnet/blip/libblip/UserAgent;->s:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v2, v0, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v2, p0, Lnet/blip/libblip/UserAgent;->t:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v2, v0, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->u:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    add-int/2addr v1, v0

    .line 73
    iput v1, p0, Lcom/squareup/wire/Message;->l:I

    .line 74
    .line 75
    return v1

    .line 76
    :cond_0
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
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->m:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "device_make="

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->n:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "device_model="

    .line 16
    .line 17
    invoke-static {v1, v2, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "device_kind="

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lnet/blip/libblip/UserAgent;->o:Lnet/blip/libblip/DeviceKind;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->p:Ljava/lang/String;

    .line 40
    .line 41
    const-string v2, "os_name="

    .line 42
    .line 43
    invoke-static {v1, v2, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->q:Ljava/lang/String;

    .line 47
    .line 48
    const-string v2, "os_version="

    .line 49
    .line 50
    invoke-static {v1, v2, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->r:Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "app_id="

    .line 56
    .line 57
    invoke-static {v1, v2, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->s:Ljava/lang/String;

    .line 61
    .line 62
    const-string v2, "app_name="

    .line 63
    .line 64
    invoke-static {v1, v2, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lnet/blip/libblip/UserAgent;->t:Ljava/lang/String;

    .line 68
    .line 69
    const-string v2, "app_version="

    .line 70
    .line 71
    invoke-static {v1, v2, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lnet/blip/libblip/UserAgent;->u:Ljava/lang/String;

    .line 75
    .line 76
    const-string v1, "app_build="

    .line 77
    .line 78
    invoke-static {p0, v1, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 79
    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    const/16 v5, 0x38

    .line 83
    .line 84
    const-string v1, ", "

    .line 85
    .line 86
    const-string v2, "UserAgent{"

    .line 87
    .line 88
    const-string v3, "}"

    .line 89
    .line 90
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method
