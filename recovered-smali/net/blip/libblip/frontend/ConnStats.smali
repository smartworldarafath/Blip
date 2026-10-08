.class public final Lnet/blip/libblip/frontend/ConnStats;
.super Lcom/squareup/wire/Message;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final s:Lnet/blip/libblip/frontend/ConnStats$Companion$ADAPTER$1;


# instance fields
.field public final m:D

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v1, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    const-class v0, Lnet/blip/libblip/frontend/ConnStats;

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
    new-instance v0, Lnet/blip/libblip/frontend/ConnStats$Companion$ADAPTER$1;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v3, "type.googleapis.com/frontend.ConnStats"

    .line 16
    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lnet/blip/libblip/frontend/ConnStats;->s:Lnet/blip/libblip/frontend/ConnStats$Companion$ADAPTER$1;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(DZZZZILokio/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/blip/libblip/frontend/ConnStats;->s:Lnet/blip/libblip/frontend/ConnStats$Companion$ADAPTER$1;

    .line 5
    .line 6
    invoke-direct {p0, v0, p8}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Lnet/blip/libblip/frontend/ConnStats;->m:D

    .line 10
    .line 11
    iput-boolean p3, p0, Lnet/blip/libblip/frontend/ConnStats;->n:Z

    .line 12
    .line 13
    iput-boolean p4, p0, Lnet/blip/libblip/frontend/ConnStats;->o:Z

    .line 14
    .line 15
    iput-boolean p5, p0, Lnet/blip/libblip/frontend/ConnStats;->p:Z

    .line 16
    .line 17
    iput-boolean p6, p0, Lnet/blip/libblip/frontend/ConnStats;->q:Z

    .line 18
    .line 19
    iput p7, p0, Lnet/blip/libblip/frontend/ConnStats;->r:I

    .line 20
    .line 21
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
    instance-of v1, p1, Lnet/blip/libblip/frontend/ConnStats;

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
    check-cast p1, Lnet/blip/libblip/frontend/ConnStats;

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
    iget-wide v3, p0, Lnet/blip/libblip/frontend/ConnStats;->m:D

    .line 29
    .line 30
    iget-wide v5, p1, Lnet/blip/libblip/frontend/ConnStats;->m:D

    .line 31
    .line 32
    cmpg-double v1, v3, v5

    .line 33
    .line 34
    if-nez v1, :cond_8

    .line 35
    .line 36
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/ConnStats;->n:Z

    .line 37
    .line 38
    iget-boolean v3, p1, Lnet/blip/libblip/frontend/ConnStats;->n:Z

    .line 39
    .line 40
    if-eq v1, v3, :cond_3

    .line 41
    .line 42
    return v2

    .line 43
    :cond_3
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/ConnStats;->o:Z

    .line 44
    .line 45
    iget-boolean v3, p1, Lnet/blip/libblip/frontend/ConnStats;->o:Z

    .line 46
    .line 47
    if-eq v1, v3, :cond_4

    .line 48
    .line 49
    return v2

    .line 50
    :cond_4
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/ConnStats;->p:Z

    .line 51
    .line 52
    iget-boolean v3, p1, Lnet/blip/libblip/frontend/ConnStats;->p:Z

    .line 53
    .line 54
    if-eq v1, v3, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/ConnStats;->q:Z

    .line 58
    .line 59
    iget-boolean v3, p1, Lnet/blip/libblip/frontend/ConnStats;->q:Z

    .line 60
    .line 61
    if-eq v1, v3, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget p0, p0, Lnet/blip/libblip/frontend/ConnStats;->r:I

    .line 65
    .line 66
    iget p1, p1, Lnet/blip/libblip/frontend/ConnStats;->r:I

    .line 67
    .line 68
    if-eq p0, p1, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    return v0

    .line 72
    :cond_8
    return v2
.end method

.method public final hashCode()I
    .locals 4

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
    iget-wide v2, p0, Lnet/blip/libblip/frontend/ConnStats;->m:D

    .line 17
    .line 18
    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v0

    .line 23
    mul-int/2addr v2, v1

    .line 24
    iget-boolean v0, p0, Lnet/blip/libblip/frontend/ConnStats;->n:Z

    .line 25
    .line 26
    invoke-static {v2, v1, v0}, Ljb;->b(IIZ)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-boolean v2, p0, Lnet/blip/libblip/frontend/ConnStats;->o:Z

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-boolean v2, p0, Lnet/blip/libblip/frontend/ConnStats;->p:Z

    .line 37
    .line 38
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-boolean v2, p0, Lnet/blip/libblip/frontend/ConnStats;->q:Z

    .line 43
    .line 44
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget v1, p0, Lnet/blip/libblip/frontend/ConnStats;->r:I

    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v1, v0

    .line 55
    iput v1, p0, Lcom/squareup/wire/Message;->l:I

    .line 56
    .line 57
    return v1

    .line 58
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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "kbps="

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-wide v2, p0, Lnet/blip/libblip/frontend/ConnStats;->m:D

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

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
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/ConnStats;->n:Z

    .line 26
    .line 27
    const-string v2, "is_relayed="

    .line 28
    .line 29
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/ConnStats;->o:Z

    .line 33
    .line 34
    const-string v2, "is_wan="

    .line 35
    .line 36
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/ConnStats;->p:Z

    .line 40
    .line 41
    const-string v2, "is_end_to_end_encrypted="

    .line 42
    .line 43
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/ConnStats;->q:Z

    .line 47
    .line 48
    const-string v2, "is_starved="

    .line 49
    .line 50
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "stripes="

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget p0, p0, Lnet/blip/libblip/frontend/ConnStats;->r:I

    .line 61
    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    const/16 v5, 0x38

    .line 74
    .line 75
    const-string v1, ", "

    .line 76
    .line 77
    const-string v2, "ConnStats{"

    .line 78
    .line 79
    const-string v3, "}"

    .line 80
    .line 81
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method
