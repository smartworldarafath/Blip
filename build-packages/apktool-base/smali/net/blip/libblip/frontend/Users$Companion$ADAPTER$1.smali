.class public final Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/Users;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic x:I


# instance fields
.field public final v:Lkotlin/Lazy;

.field public final w:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/ClassReference;)V
    .locals 7

    .line 1
    sget-object v1, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    sget-object v4, Lcom/squareup/wire/Syntax;->l:Lcom/squareup/wire/Syntax;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x0

    .line 7
    const-string v3, "type.googleapis.com/frontend.Users"

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Lhh;

    .line 15
    .line 16
    const/4 p1, 0x4

    .line 17
    invoke-direct {p0, p1}, Lhh;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iput-object p0, v0, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance p0, Lhh;

    .line 27
    .line 28
    const/4 p1, 0x5

    .line 29
    invoke-direct {p0, p1}, Lhh;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iput-object p0, v0, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;->w:Lkotlin/Lazy;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, -0x1

    .line 28
    if-eq v5, v6, :cond_3

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    if-eq v5, v6, :cond_2

    .line 32
    .line 33
    const/4 v6, 0x3

    .line 34
    if-eq v5, v6, :cond_1

    .line 35
    .line 36
    const/4 v6, 0x4

    .line 37
    if-eq v5, v6, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1, v5}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-object v5, Lnet/blip/libblip/frontend/PeerInteraction;->p:Lnet/blip/libblip/frontend/PeerInteraction$Companion$ADAPTER$1;

    .line 44
    .line 45
    invoke-virtual {v5, p1}, Lnet/blip/libblip/frontend/PeerInteraction$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v5, p0, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;->w:Lkotlin/Lazy;

    .line 54
    .line 55
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Lcom/squareup/wire/ProtoAdapter;

    .line 60
    .line 61
    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {v1, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object v5, p0, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 72
    .line 73
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Lcom/squareup/wire/ProtoAdapter;

    .line 78
    .line 79
    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Ljava/util/Map;

    .line 84
    .line 85
    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p1, v3, v4}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    new-instance p1, Lnet/blip/libblip/frontend/Users;

    .line 94
    .line 95
    invoke-direct {p1, v0, v1, v2, p0}, Lnet/blip/libblip/frontend/Users;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lokio/ByteString;)V

    .line 96
    .line 97
    .line 98
    return-object p1
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/Users;

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
    iget-object v0, p0, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 10
    .line 11
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iget-object v2, p2, Lnet/blip/libblip/frontend/Users;->m:Ljava/util/Map;

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;->w:Lkotlin/Lazy;

    .line 24
    .line 25
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/squareup/wire/ProtoAdapter;

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    iget-object v1, p2, Lnet/blip/libblip/frontend/Users;->n:Ljava/util/Map;

    .line 33
    .line 34
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lnet/blip/libblip/frontend/PeerInteraction;->p:Lnet/blip/libblip/frontend/PeerInteraction$Companion$ADAPTER$1;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const/4 v0, 0x4

    .line 44
    iget-object v1, p2, Lnet/blip/libblip/frontend/Users;->o:Ljava/util/List;

    .line 45
    .line 46
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/RepeatedProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/Users;

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
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lnet/blip/libblip/frontend/PeerInteraction;->p:Lnet/blip/libblip/frontend/PeerInteraction$Companion$ADAPTER$1;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x4

    .line 23
    iget-object v2, p2, Lnet/blip/libblip/frontend/Users;->o:Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/RepeatedProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;->w:Lkotlin/Lazy;

    .line 29
    .line 30
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    iget-object v2, p2, Lnet/blip/libblip/frontend/Users;->n:Ljava/util/Map;

    .line 38
    .line 39
    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 43
    .line 44
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lcom/squareup/wire/ProtoAdapter;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    iget-object p2, p2, Lnet/blip/libblip/frontend/Users;->m:Ljava/util/Map;

    .line 52
    .line 53
    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/Users;

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
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lokio/ByteString;->e()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 15
    .line 16
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/squareup/wire/ProtoAdapter;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    iget-object v3, p1, Lnet/blip/libblip/frontend/Users;->m:Ljava/util/Map;

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v1, v0

    .line 30
    iget-object p0, p0, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;->w:Lkotlin/Lazy;

    .line 31
    .line 32
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/squareup/wire/ProtoAdapter;

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    iget-object v2, p1, Lnet/blip/libblip/frontend/Users;->n:Ljava/util/Map;

    .line 40
    .line 41
    invoke-virtual {p0, v0, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    add-int/2addr p0, v1

    .line 46
    sget-object v0, Lnet/blip/libblip/frontend/PeerInteraction;->p:Lnet/blip/libblip/frontend/PeerInteraction$Companion$ADAPTER$1;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->a()Lcom/squareup/wire/RepeatedProtoAdapter;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x4

    .line 53
    iget-object p1, p1, Lnet/blip/libblip/frontend/Users;->o:Ljava/util/List;

    .line 54
    .line 55
    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/RepeatedProtoAdapter;->i(ILjava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    add-int/2addr p1, p0

    .line 60
    return p1
.end method
