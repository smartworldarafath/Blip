.class public final Lnet/blip/libblip/frontend/Messaging;
.super Lcom/squareup/wire/Message;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final r:Lnet/blip/libblip/frontend/Messaging$Companion$ADAPTER$1;


# instance fields
.field public final m:Lnet/blip/libblip/frontend/MessagingStatus;

.field public final n:Z

.field public final o:Z

.field public final p:J

.field public final q:Lnet/blip/libblip/frontend/Err;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v1, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    const-class v0, Lnet/blip/libblip/frontend/Messaging;

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
    new-instance v0, Lnet/blip/libblip/frontend/Messaging$Companion$ADAPTER$1;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v3, "type.googleapis.com/frontend.Messaging"

    .line 16
    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lnet/blip/libblip/frontend/Messaging;->r:Lnet/blip/libblip/frontend/Messaging$Companion$ADAPTER$1;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lnet/blip/libblip/frontend/MessagingStatus;ZZJLnet/blip/libblip/frontend/Err;Lokio/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lnet/blip/libblip/frontend/Messaging;->r:Lnet/blip/libblip/frontend/Messaging$Companion$ADAPTER$1;

    .line 8
    .line 9
    invoke-direct {p0, v0, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lnet/blip/libblip/frontend/Messaging;->m:Lnet/blip/libblip/frontend/MessagingStatus;

    .line 13
    .line 14
    iput-boolean p2, p0, Lnet/blip/libblip/frontend/Messaging;->n:Z

    .line 15
    .line 16
    iput-boolean p3, p0, Lnet/blip/libblip/frontend/Messaging;->o:Z

    .line 17
    .line 18
    iput-wide p4, p0, Lnet/blip/libblip/frontend/Messaging;->p:J

    .line 19
    .line 20
    iput-object p6, p0, Lnet/blip/libblip/frontend/Messaging;->q:Lnet/blip/libblip/frontend/Err;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/blip/libblip/frontend/Messaging;

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
    check-cast p1, Lnet/blip/libblip/frontend/Messaging;

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
    iget-object v1, p0, Lnet/blip/libblip/frontend/Messaging;->m:Lnet/blip/libblip/frontend/MessagingStatus;

    .line 29
    .line 30
    iget-object v3, p1, Lnet/blip/libblip/frontend/Messaging;->m:Lnet/blip/libblip/frontend/MessagingStatus;

    .line 31
    .line 32
    if-eq v1, v3, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/Messaging;->n:Z

    .line 36
    .line 37
    iget-boolean v3, p1, Lnet/blip/libblip/frontend/Messaging;->n:Z

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/Messaging;->o:Z

    .line 43
    .line 44
    iget-boolean v3, p1, Lnet/blip/libblip/frontend/Messaging;->o:Z

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-wide v3, p0, Lnet/blip/libblip/frontend/Messaging;->p:J

    .line 50
    .line 51
    iget-wide v5, p1, Lnet/blip/libblip/frontend/Messaging;->p:J

    .line 52
    .line 53
    cmp-long v1, v3, v5

    .line 54
    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-object p0, p0, Lnet/blip/libblip/frontend/Messaging;->q:Lnet/blip/libblip/frontend/Err;

    .line 59
    .line 60
    iget-object p1, p1, Lnet/blip/libblip/frontend/Messaging;->q:Lnet/blip/libblip/frontend/Err;

    .line 61
    .line 62
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/squareup/wire/Message;->l:I

    .line 2
    .line 3
    if-nez v0, :cond_1

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
    iget-object v2, p0, Lnet/blip/libblip/frontend/Messaging;->m:Lnet/blip/libblip/frontend/MessagingStatus;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v0

    .line 23
    mul-int/2addr v2, v1

    .line 24
    iget-boolean v0, p0, Lnet/blip/libblip/frontend/Messaging;->n:Z

    .line 25
    .line 26
    invoke-static {v2, v1, v0}, Ljb;->b(IIZ)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-boolean v2, p0, Lnet/blip/libblip/frontend/Messaging;->o:Z

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-wide v2, p0, Lnet/blip/libblip/frontend/Messaging;->p:J

    .line 37
    .line 38
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Lnet/blip/libblip/frontend/Messaging;->q:Lnet/blip/libblip/frontend/Err;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Lnet/blip/libblip/frontend/Err;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 52
    :goto_0
    add-int/2addr v0, v1

    .line 53
    iput v0, p0, Lcom/squareup/wire/Message;->l:I

    .line 54
    .line 55
    :cond_1
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
    const-string v2, "status="

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lnet/blip/libblip/frontend/Messaging;->m:Lnet/blip/libblip/frontend/MessagingStatus;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/Messaging;->n:Z

    .line 26
    .line 27
    const-string v2, "prevent_reconnect="

    .line 28
    .line 29
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/Messaging;->o:Z

    .line 33
    .line 34
    const-string v2, "initial_sync_complete="

    .line 35
    .line 36
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "network_generation="

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-wide v2, p0, Lnet/blip/libblip/frontend/Messaging;->p:J

    .line 47
    .line 48
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lnet/blip/libblip/frontend/Messaging;->q:Lnet/blip/libblip/frontend/Err;

    .line 59
    .line 60
    if-eqz p0, :cond_0

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "error="

    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_0
    const/4 v4, 0x0

    .line 80
    const/16 v5, 0x38

    .line 81
    .line 82
    const-string v1, ", "

    .line 83
    .line 84
    const-string v2, "Messaging{"

    .line 85
    .line 86
    const-string v3, "}"

    .line 87
    .line 88
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method
