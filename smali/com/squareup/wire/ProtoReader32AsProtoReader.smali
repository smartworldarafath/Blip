.class public final Lcom/squareup/wire/ProtoReader32AsProtoReader;
.super Lcom/squareup/wire/ProtoReader;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final j:Lcom/squareup/wire/ProtoReader32;


# direct methods
.method public constructor <init>(Lcom/squareup/wire/ProtoReader32;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokio/Buffer;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/squareup/wire/ProtoReader;-><init>(Lokio/BufferedSource;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    .line 2
    .line 3
    check-cast p0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/wire/ByteArrayProtoReader32;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    .line 2
    .line 3
    check-cast p0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->d()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    int-to-long v0, p0

    .line 10
    return-wide v0
.end method

.method public final f(J)Lokio/ByteString;
    .locals 0

    .line 1
    long-to-int p1, p1

    .line 2
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    .line 3
    .line 4
    check-cast p0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ByteArrayProtoReader32;->f(I)Lokio/ByteString;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final h()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    .line 2
    .line 3
    check-cast p0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->h()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final i()Lcom/squareup/wire/FieldEncoding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    .line 2
    .line 3
    check-cast p0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->h:Lcom/squareup/wire/FieldEncoding;

    .line 6
    .line 7
    return-object p0
.end method

.method public final k()Lokio/ByteString;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    .line 2
    .line 3
    check-cast p0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->j()Lokio/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final l()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    .line 2
    .line 3
    check-cast p0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->k()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final m()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    .line 2
    .line 3
    check-cast p0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->l()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    .line 2
    .line 3
    check-cast p0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->m()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final o(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    .line 2
    .line 3
    check-cast p0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ByteArrayProtoReader32;->n(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final p()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    .line 2
    .line 3
    check-cast p0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->o()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final q()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    .line 2
    .line 3
    check-cast p0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->p()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final s()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader32AsProtoReader;->j:Lcom/squareup/wire/ProtoReader32;

    .line 2
    .line 3
    check-cast p0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->r()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
