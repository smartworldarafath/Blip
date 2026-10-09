.class public final Lcom/squareup/wire/ProtoAdapterKt$commonWrapper$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic v:Lcom/squareup/wire/ProtoAdapter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/squareup/wire/ProtoAdapter;Lkotlin/reflect/KClass;Ljava/lang/Object;)V
    .locals 8

    .line 1
    sget-object v1, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    sget-object v4, Lcom/squareup/wire/Syntax;->l:Lcom/squareup/wire/Syntax;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/squareup/wire/ProtoAdapterKt$commonWrapper$1;->v:Lcom/squareup/wire/ProtoAdapter;

    .line 6
    .line 7
    const/16 v6, 0x20

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move-object v3, p1

    .line 12
    move-object v2, p3

    .line 13
    move-object v5, p4

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/squareup/wire/ProtoAdapterKt$commonWrapper$1;->v:Lcom/squareup/wire/ProtoAdapter;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->e:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v1, p1

    .line 9
    check-cast v1, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/squareup/wire/ByteArrayProtoReader32;->d()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ByteArrayProtoReader32;->h()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, -0x1

    .line 20
    if-eq v3, v4, :cond_1

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1, v3}, Lcom/squareup/wire/ByteArrayProtoReader32;->n(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v1, v2}, Lcom/squareup/wire/ByteArrayProtoReader32;->f(I)Lokio/ByteString;

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/squareup/wire/ProtoAdapterKt$commonWrapper$1;->v:Lcom/squareup/wire/ProtoAdapter;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->e:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, -0x1

    .line 17
    if-eq v3, v4, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1, v3}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/squareup/wire/ProtoAdapterKt$commonWrapper$1;->v:Lcom/squareup/wire/ProtoAdapter;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->e:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/squareup/wire/ProtoAdapterKt$commonWrapper$1;->v:Lcom/squareup/wire/ProtoAdapter;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->e:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/squareup/wire/ProtoAdapterKt$commonWrapper$1;->v:Lcom/squareup/wire/ProtoAdapter;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->e:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method
