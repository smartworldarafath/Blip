.class public final Lnet/blip/libblip/frontend/Search$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/Search;",
        ">;"
    }
.end annotation


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lnet/blip/libblip/frontend/Search$Status;->m:Lnet/blip/libblip/frontend/Search$Status;

    .line 5
    .line 6
    new-instance v3, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v4, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const-string v0, ""

    .line 21
    .line 22
    move-wide v5, v1

    .line 23
    :goto_0
    move-object v1, v0

    .line 24
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v0, -0x1

    .line 29
    if-eq v2, v0, :cond_4

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    if-eq v2, v0, :cond_3

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    if-eq v2, v0, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    if-eq v2, v0, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    if-eq v2, v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    sget-object v0, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    sget-object v0, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :try_start_0
    sget-object v0, Lnet/blip/libblip/frontend/Search$Status;->l:Lnet/blip/libblip/frontend/Search$Status$Companion$ADAPTER$1;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/squareup/wire/EnumAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    sget-object v7, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 76
    .line 77
    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->j:I

    .line 78
    .line 79
    int-to-long v8, v0

    .line 80
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v2, v7, v0}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {p1, v5, v6}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    new-instance v0, Lnet/blip/libblip/frontend/Search;

    .line 103
    .line 104
    move-object v2, p0

    .line 105
    check-cast v2, Lnet/blip/libblip/frontend/Search$Status;

    .line 106
    .line 107
    invoke-direct/range {v0 .. v5}, Lnet/blip/libblip/frontend/Search;-><init>(Ljava/lang/String;Lnet/blip/libblip/frontend/Search$Status;Ljava/util/ArrayList;Ljava/util/ArrayList;Lokio/ByteString;)V

    .line 108
    .line 109
    .line 110
    return-object v0
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/Search;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/Search;->m:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p0, p2, Lnet/blip/libblip/frontend/Search;->n:Lnet/blip/libblip/frontend/Search$Status;

    .line 26
    .line 27
    sget-object v0, Lnet/blip/libblip/frontend/Search$Status;->m:Lnet/blip/libblip/frontend/Search$Status;

    .line 28
    .line 29
    if-eq p0, v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lnet/blip/libblip/frontend/Search$Status;->l:Lnet/blip/libblip/frontend/Search$Status$Companion$ADAPTER$1;

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    sget-object p0, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x3

    .line 44
    iget-object v2, p2, Lnet/blip/libblip/frontend/Search;->o:Ljava/util/List;

    .line 45
    .line 46
    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const/4 v0, 0x4

    .line 54
    iget-object v1, p2, Lnet/blip/libblip/frontend/Search;->p:Ljava/util/List;

    .line 55
    .line 56
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/Search;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/Search;->m:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x4

    .line 25
    iget-object v3, p2, Lnet/blip/libblip/frontend/Search;->p:Ljava/util/List;

    .line 26
    .line 27
    invoke-virtual {v1, p1, v2, v3}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x3

    .line 35
    iget-object v2, p2, Lnet/blip/libblip/frontend/Search;->o:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p2, Lnet/blip/libblip/frontend/Search;->n:Lnet/blip/libblip/frontend/Search$Status;

    .line 41
    .line 42
    sget-object v0, Lnet/blip/libblip/frontend/Search$Status;->m:Lnet/blip/libblip/frontend/Search$Status;

    .line 43
    .line 44
    if-eq p2, v0, :cond_0

    .line 45
    .line 46
    sget-object v0, Lnet/blip/libblip/frontend/Search$Status;->l:Lnet/blip/libblip/frontend/Search$Status$Companion$ADAPTER$1;

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    const-string p2, ""

    .line 53
    .line 54
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_1

    .line 59
    .line 60
    sget-object p2, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/Search;

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
    iget-object v0, p1, Lnet/blip/libblip/frontend/Search;->m:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr p0, v0

    .line 32
    :cond_0
    iget-object v0, p1, Lnet/blip/libblip/frontend/Search;->n:Lnet/blip/libblip/frontend/Search$Status;

    .line 33
    .line 34
    sget-object v1, Lnet/blip/libblip/frontend/Search$Status;->m:Lnet/blip/libblip/frontend/Search$Status;

    .line 35
    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    .line 38
    sget-object v1, Lnet/blip/libblip/frontend/Search$Status;->l:Lnet/blip/libblip/frontend/Search$Status$Companion$ADAPTER$1;

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    invoke-virtual {v1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/2addr p0, v0

    .line 46
    :cond_1
    sget-object v0, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x3

    .line 53
    iget-object v3, p1, Lnet/blip/libblip/frontend/Search;->o:Ljava/util/List;

    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    add-int/2addr v1, p0

    .line 60
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const/4 v0, 0x4

    .line 65
    iget-object p1, p1, Lnet/blip/libblip/frontend/Search;->p:Ljava/util/List;

    .line 66
    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    add-int/2addr p0, v1

    .line 72
    return p0
.end method
