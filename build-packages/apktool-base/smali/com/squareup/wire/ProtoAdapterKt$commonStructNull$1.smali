.class public final Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public final b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/squareup/wire/ByteArrayProtoReader32;->o()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 p1, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const-string v0, "expected 0 but was "

    .line 15
    .line 16
    invoke-static {p0, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->p()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 p1, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const-string v0, "expected 0 but was "

    .line 13
    .line 14
    invoke-static {p0, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->b(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->g(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/squareup/wire/ProtoAdapter;->a:Lcom/squareup/wire/FieldEncoding;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    shl-int/lit8 p2, p2, 0x3

    .line 12
    .line 13
    iget p0, p0, Lcom/squareup/wire/FieldEncoding;->j:I

    .line 14
    .line 15
    or-int/2addr p0, p2

    .line 16
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->b(I)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->b(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-virtual {p1, p3}, Lcom/squareup/wire/ReverseProtoWriter;->g(I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/squareup/wire/ProtoAdapter;->a:Lcom/squareup/wire/FieldEncoding;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    shl-int/lit8 p2, p2, 0x3

    .line 16
    .line 17
    iget p0, p0, Lcom/squareup/wire/FieldEncoding;->j:I

    .line 18
    .line 19
    or-int/2addr p0, p2

    .line 20
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->g(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    invoke-static {p0}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final i(ILjava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    invoke-static {p0}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    sget-object p2, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 9
    .line 10
    shl-int/lit8 p1, p1, 0x3

    .line 11
    .line 12
    invoke-static {p1}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p0}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    add-int/2addr p0, p1

    .line 21
    return p0
.end method
