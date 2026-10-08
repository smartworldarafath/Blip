.class public final Lnet/blip/libblip/frontend/Users;
.super Lcom/squareup/wire/Message;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final p:Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;


# instance fields
.field public final m:Ljava/util/Map;

.field public final n:Ljava/util/Map;

.field public final o:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    const-class v0, Lnet/blip/libblip/frontend/Users;

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
    new-instance v1, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lnet/blip/libblip/frontend/Users;->p:Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lokio/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lnet/blip/libblip/frontend/Users;->p:Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;

    .line 8
    .line 9
    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 10
    .line 11
    .line 12
    const-string p4, "discovered"

    .line 13
    .line 14
    invoke-static {p4, p1}, Lcom/squareup/wire/internal/Internal;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lnet/blip/libblip/frontend/Users;->m:Ljava/util/Map;

    .line 19
    .line 20
    const-string p1, "contacts"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/squareup/wire/internal/Internal;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lnet/blip/libblip/frontend/Users;->n:Ljava/util/Map;

    .line 27
    .line 28
    const-string p1, "recent_interactions"

    .line 29
    .line 30
    invoke-static {p1, p3}, Lcom/squareup/wire/internal/Internal;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lnet/blip/libblip/frontend/Users;->o:Ljava/util/List;

    .line 35
    .line 36
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
    instance-of v1, p1, Lnet/blip/libblip/frontend/Users;

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
    check-cast p1, Lnet/blip/libblip/frontend/Users;

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
    iget-object v1, p0, Lnet/blip/libblip/frontend/Users;->m:Ljava/util/Map;

    .line 29
    .line 30
    iget-object v3, p1, Lnet/blip/libblip/frontend/Users;->m:Ljava/util/Map;

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
    iget-object v1, p0, Lnet/blip/libblip/frontend/Users;->n:Ljava/util/Map;

    .line 40
    .line 41
    iget-object v3, p1, Lnet/blip/libblip/frontend/Users;->n:Ljava/util/Map;

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
    iget-object p0, p0, Lnet/blip/libblip/frontend/Users;->o:Ljava/util/List;

    .line 51
    .line 52
    iget-object p1, p1, Lnet/blip/libblip/frontend/Users;->o:Ljava/util/List;

    .line 53
    .line 54
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_5

    .line 59
    .line 60
    return v2

    .line 61
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

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
    mul-int/lit8 v0, v0, 0x25

    .line 14
    .line 15
    iget-object v1, p0, Lnet/blip/libblip/frontend/Users;->m:Ljava/util/Map;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v1, v0

    .line 22
    mul-int/lit8 v1, v1, 0x25

    .line 23
    .line 24
    iget-object v0, p0, Lnet/blip/libblip/frontend/Users;->n:Ljava/util/Map;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x25

    .line 32
    .line 33
    iget-object v1, p0, Lnet/blip/libblip/frontend/Users;->o:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v1, v0

    .line 40
    iput v1, p0, Lcom/squareup/wire/Message;->l:I

    .line 41
    .line 42
    return v1

    .line 43
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
    iget-object v1, p0, Lnet/blip/libblip/frontend/Users;->m:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "discovered="

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lnet/blip/libblip/frontend/Users;->n:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "contacts="

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object p0, p0, Lnet/blip/libblip/frontend/Users;->o:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, "recent_interactions="

    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_2
    const/4 v4, 0x0

    .line 82
    const/16 v5, 0x38

    .line 83
    .line 84
    const-string v1, ", "

    .line 85
    .line 86
    const-string v2, "Users{"

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
