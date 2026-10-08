.class public final Lcom/squareup/wire/AnyMessage;
.super Lcom/squareup/wire/Message;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final o:Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    sget-object v1, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    const-class v0, Lcom/squareup/wire/AnyMessage;

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
    new-instance v0, Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;

    .line 12
    .line 13
    const/16 v6, 0x30

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v3, "type.googleapis.com/google.protobuf.Any"

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-direct/range {v0 .. v7}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/squareup/wire/AnyMessage;->o:Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lokio/ByteString;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/squareup/wire/AnyMessage;->o:Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;

    .line 8
    .line 9
    sget-object v1, Lokio/ByteString;->m:Lokio/ByteString;

    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/squareup/wire/AnyMessage;->m:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/squareup/wire/AnyMessage;->n:Lokio/ByteString;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b(Lcom/squareup/wire/ProtoAdapter;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/squareup/wire/ProtoAdapter;->c:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/squareup/wire/AnyMessage;->m:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/squareup/wire/AnyMessage;->n:Lokio/ByteString;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lokio/ByteString;->e()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    new-instance v1, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 24
    .line 25
    invoke-virtual {p0}, Lokio/ByteString;->r()[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v1, v0, p0}, Lcom/squareup/wire/ByteArrayProtoReader32;-><init>(I[B)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/squareup/wire/ProtoAdapter;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_0
    const-string p0, "type mismatch: "

    .line 38
    .line 39
    const-string p1, " != "

    .line 40
    .line 41
    invoke-static {p0, v1, p1, v0}, Lu2;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

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
    instance-of v1, p1, Lcom/squareup/wire/AnyMessage;

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
    check-cast p1, Lcom/squareup/wire/AnyMessage;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/squareup/wire/AnyMessage;->m:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/squareup/wire/AnyMessage;->m:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Lcom/squareup/wire/AnyMessage;->n:Lokio/ByteString;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/squareup/wire/AnyMessage;->n:Lokio/ByteString;

    .line 26
    .line 27
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    return v2
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
    const/16 v1, 0x25

    .line 6
    .line 7
    mul-int/2addr v0, v1

    .line 8
    iget-object v2, p0, Lcom/squareup/wire/AnyMessage;->m:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v2, v0, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/squareup/wire/AnyMessage;->n:Lokio/ByteString;

    .line 15
    .line 16
    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v1, v0

    .line 21
    iput v1, p0, Lcom/squareup/wire/Message;->l:I

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Any{type_url="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/squareup/wire/AnyMessage;->m:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", value="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/squareup/wire/AnyMessage;->n:Lokio/ByteString;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
