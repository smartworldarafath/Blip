.class public final Lcom/squareup/wire/ProtoAdapterKt$commonSint32$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;
    .locals 0

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
    ushr-int/lit8 p1, p0, 0x1

    .line 11
    .line 12
    and-int/lit8 p0, p0, 0x1

    .line 13
    .line 14
    neg-int p0, p0

    .line 15
    xor-int/2addr p0, p1

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

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
    ushr-int/lit8 p1, p0, 0x1

    .line 9
    .line 10
    and-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    neg-int p0, p0

    .line 13
    xor-int/2addr p0, p1

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    shl-int/lit8 p2, p0, 0x1

    .line 11
    .line 12
    shr-int/lit8 p0, p0, 0x1f

    .line 13
    .line 14
    xor-int/2addr p0, p2

    .line 15
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->b(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    shl-int/lit8 p2, p0, 0x1

    .line 11
    .line 12
    shr-int/lit8 p0, p0, 0x1f

    .line 13
    .line 14
    xor-int/2addr p0, p2

    .line 15
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->g(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    shl-int/lit8 p1, p0, 0x1

    .line 8
    .line 9
    shr-int/lit8 p0, p0, 0x1f

    .line 10
    .line 11
    xor-int/2addr p0, p1

    .line 12
    invoke-static {p0}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method
