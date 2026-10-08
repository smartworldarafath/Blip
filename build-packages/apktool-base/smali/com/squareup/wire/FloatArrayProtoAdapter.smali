.class public final Lcom/squareup/wire/FloatArrayProtoAdapter;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "[F>;"
    }
.end annotation


# instance fields
.field public final v:Lcom/squareup/wire/FloatProtoAdapter;


# direct methods
.method public constructor <init>(Lcom/squareup/wire/FloatProtoAdapter;)V
    .locals 8

    .line 1
    sget-object v1, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    const-class v0, [F

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v4, p1, Lcom/squareup/wire/ProtoAdapter;->d:Lcom/squareup/wire/Syntax;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v5, v0, [F

    .line 13
    .line 14
    const/16 v6, 0x20

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    move-object v0, p0

    .line 19
    invoke-direct/range {v0 .. v7}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iput-object p1, v0, Lcom/squareup/wire/FloatArrayProtoAdapter;->v:Lcom/squareup/wire/FloatProtoAdapter;

    .line 23
    .line 24
    return-void
.end method


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
    invoke-virtual {p1}, Lcom/squareup/wire/ByteArrayProtoReader32;->k()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 p1, 0x1

    .line 15
    new-array p1, p1, [F

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    aput p0, p1, v0

    .line 19
    .line 20
    return-object p1
.end method

.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->l()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 p1, 0x1

    .line 13
    new-array p1, p1, [F

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    aput p0, p1, v0

    .line 17
    .line 18
    return-object p1
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, [F

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
    array-length v0, p2

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    aget v2, p2, v1

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/squareup/wire/FloatArrayProtoAdapter;->v:Lcom/squareup/wire/FloatProtoAdapter;

    .line 20
    .line 21
    invoke-virtual {v3, p1, v2}, Lcom/squareup/wire/FloatProtoAdapter;->d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, [F

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
    array-length p0, p2

    .line 10
    add-int/lit8 p0, p0, -0x1

    .line 11
    .line 12
    :goto_0
    const/4 v0, -0x1

    .line 13
    if-ge v0, p0, :cond_0

    .line 14
    .line 15
    aget v0, p2, p0

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->e(I)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 p0, p0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p3, [F

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    array-length v0, p3

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p3, [F

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    array-length v0, p3

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, [F

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    aget v3, p1, v1

    .line 12
    .line 13
    iget-object v3, p0, Lcom/squareup/wire/FloatArrayProtoAdapter;->v:Lcom/squareup/wire/FloatProtoAdapter;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    add-int/2addr v2, v3

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return v2
.end method

.method public final i(ILjava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p2, [F

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    array-length v0, p2

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method
