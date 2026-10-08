.class public final Lbsarchive/Folder$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsarchive/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lbsarchive/Folder;",
        ">;"
    }
.end annotation


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v2, -0x1

    .line 13
    if-eq p0, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance p1, Lbsarchive/Folder;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lbsarchive/Folder;->m:Lbsarchive/Folder$Companion$ADAPTER$1;

    .line 29
    .line 30
    invoke-direct {p1, v0, p0}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lbsarchive/Folder;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lbsarchive/Folder;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lbsarchive/Folder;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lokio/ByteString;->e()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method
