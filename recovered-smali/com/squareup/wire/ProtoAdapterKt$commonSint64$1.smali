.class public final Lcom/squareup/wire/ProtoAdapterKt$commonSint64$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/squareup/wire/ByteArrayProtoReader32;->p()J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    const/4 v0, 0x1

    .line 11
    ushr-long v0, p0, v0

    .line 12
    .line 13
    const-wide/16 v2, 0x1

    .line 14
    .line 15
    and-long/2addr p0, v2

    .line 16
    neg-long p0, p0

    .line 17
    xor-long/2addr p0, v0

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->q()J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    const/4 v0, 0x1

    .line 9
    ushr-long v0, p0, v0

    .line 10
    .line 11
    const-wide/16 v2, 0x1

    .line 12
    .line 13
    and-long/2addr p0, v2

    .line 14
    neg-long p0, p0

    .line 15
    xor-long/2addr p0, v0

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    shl-long v2, v0, p0

    .line 12
    .line 13
    const/16 p0, 0x3f

    .line 14
    .line 15
    shr-long/2addr v0, p0

    .line 16
    xor-long/2addr v0, v2

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoWriter;->c(J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    shl-long v2, v0, p0

    .line 12
    .line 13
    const/16 p0, 0x3f

    .line 14
    .line 15
    shr-long/2addr v0, p0

    .line 16
    xor-long/2addr v0, v2

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ReverseProtoWriter;->h(J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    const/4 v0, 0x1

    .line 8
    shl-long v0, p0, v0

    .line 9
    .line 10
    const/16 v2, 0x3f

    .line 11
    .line 12
    shr-long/2addr p0, v2

    .line 13
    xor-long/2addr p0, v0

    .line 14
    invoke-static {p0, p1}, Lcom/squareup/wire/ProtoWriter$Companion;->b(J)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method
