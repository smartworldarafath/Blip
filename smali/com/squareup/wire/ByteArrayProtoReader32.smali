.class public final Lcom/squareup/wire/ByteArrayProtoReader32;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/squareup/wire/ProtoReader32;


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lcom/squareup/wire/FieldEncoding;

.field public final i:Ljava/util/ArrayList;

.field public j:Lcom/squareup/wire/ProtoReader32AsProtoReader;


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->a:[B

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 11
    .line 12
    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 13
    .line 14
    array-length v0, p2

    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    array-length v0, p2

    .line 18
    if-ltz p1, :cond_0

    .line 19
    .line 20
    if-gt p1, v0, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x2

    .line 23
    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 27
    .line 28
    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    .line 29
    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->i:Ljava/util/ArrayList;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 39
    .line 40
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 41
    .line 42
    array-length p2, p2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "limit="

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " must be between pos="

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, " and source size "

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_1
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 84
    .line 85
    const-string p1, " must be between 0 and source size "

    .line 86
    .line 87
    array-length p2, p2

    .line 88
    const-string v0, "pos="

    .line 89
    .line 90
    invoke-static {p0, p2, p1, v0}, Lk8;->h(IILjava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    throw p0
.end method


# virtual methods
.method public final a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/squareup/wire/ProtoWriter;

    .line 5
    .line 6
    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->i:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lokio/BufferedSink;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/squareup/wire/ProtoWriter;-><init>(Lokio/BufferedSink;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->a()Lcom/squareup/wire/ProtoAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 10
    .line 11
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 12
    .line 13
    if-gt p1, v0, :cond_2

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    .line 18
    .line 19
    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 20
    .line 21
    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    .line 23
    .line 24
    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const/4 p1, 0x7

    .line 28
    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 32
    .line 33
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 34
    .line 35
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Expected to end at "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, " but was "

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public final c()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 7
    .line 8
    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 9
    .line 10
    if-gt v0, v1, :cond_0

    .line 11
    .line 12
    sub-int/2addr v1, v0

    .line 13
    const/4 v0, 0x6

    .line 14
    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 15
    .line 16
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    .line 17
    .line 18
    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "Expected LENGTH_DELIMITED but was "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ". Reader position: "

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ". Last read tag: "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 60
    .line 61
    const/16 v2, 0x2e

    .line 62
    .line 63
    invoke-static {v1, p0, v2}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public final d()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    .line 11
    .line 12
    const/16 v1, 0x64

    .line 13
    .line 14
    if-gt v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->i:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-le v0, v2, :cond_0

    .line 23
    .line 24
    new-instance v0, Lokio/Buffer;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    .line 36
    .line 37
    const/4 v1, 0x6

    .line 38
    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 39
    .line 40
    return v0

    .line 41
    :cond_1
    const-string p0, "Wire recursion limit exceeded"

    .line 42
    .line 43
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    const/4 p0, 0x0

    .line 47
    return p0

    .line 48
    :cond_2
    const-string p0, "Unexpected call to beginMessage()"

    .line 49
    .line 50
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0
.end method

.method public final e(I)I
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 4
    .line 5
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 6
    .line 7
    if-gt v0, p0, :cond_0

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    if-gt p1, p0, :cond_1

    .line 11
    .line 12
    add-int/2addr v0, p1

    .line 13
    return v0

    .line 14
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final f(I)Lokio/ByteString;
    .locals 4

    .line 1
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_4

    .line 6
    .line 7
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    .line 12
    .line 13
    if-ltz v0, :cond_3

    .line 14
    .line 15
    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    .line 16
    .line 17
    if-ne v3, v1, :cond_3

    .line 18
    .line 19
    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 20
    .line 21
    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 29
    .line 30
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 31
    .line 32
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Expected to end at "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, " but was "

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_1
    :goto_0
    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 61
    .line 62
    iget-object p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->i:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Lokio/Buffer;

    .line 69
    .line 70
    iget-wide v0, p0, Lokio/Buffer;->k:J

    .line 71
    .line 72
    const-wide/16 v2, 0x0

    .line 73
    .line 74
    cmp-long p1, v0, v2

    .line 75
    .line 76
    if-lez p1, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->s(J)Lokio/ByteString;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_2
    sget-object p0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_3
    const-string p0, "No corresponding call to beginMessage()"

    .line 87
    .line 88
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v2

    .line 92
    :cond_4
    const-string p0, "Unexpected call to endMessage()"

    .line 93
    .line 94
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object v2
.end method

.method public final g()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->i()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->i()B

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ltz v1, :cond_1

    .line 15
    .line 16
    shl-int/lit8 p0, v1, 0x7

    .line 17
    .line 18
    :goto_0
    or-int/2addr p0, v0

    .line 19
    return p0

    .line 20
    :cond_1
    and-int/lit8 v1, v1, 0x7f

    .line 21
    .line 22
    shl-int/lit8 v1, v1, 0x7

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->i()B

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ltz v1, :cond_2

    .line 30
    .line 31
    shl-int/lit8 p0, v1, 0xe

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    and-int/lit8 v1, v1, 0x7f

    .line 35
    .line 36
    shl-int/lit8 v1, v1, 0xe

    .line 37
    .line 38
    or-int/2addr v0, v1

    .line 39
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->i()B

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ltz v1, :cond_3

    .line 44
    .line 45
    shl-int/lit8 p0, v1, 0x15

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    and-int/lit8 v1, v1, 0x7f

    .line 49
    .line 50
    shl-int/lit8 v1, v1, 0x15

    .line 51
    .line 52
    or-int/2addr v0, v1

    .line 53
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->i()B

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    shl-int/lit8 v2, v1, 0x1c

    .line 58
    .line 59
    or-int/2addr v0, v2

    .line 60
    if-gez v1, :cond_6

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    :goto_1
    const/4 v2, 0x5

    .line 64
    if-ge v1, v2, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->i()B

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-ltz v2, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v2, "Malformed VARINT. Reader position: "

    .line 81
    .line 82
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, ". Last read tag: "

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 96
    .line 97
    const/16 v2, 0x2e

    .line 98
    .line 99
    invoke-static {v1, p0, v2}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_6
    :goto_2
    return v0
.end method

.method public final h()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iput v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 8
    .line 9
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const/4 v1, 0x6

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v0, v1, :cond_a

    .line 15
    .line 16
    :goto_0
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 17
    .line 18
    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 19
    .line 20
    const/4 v4, -0x1

    .line 21
    if-ge v0, v1, :cond_9

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->g()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0x2e

    .line 28
    .line 29
    const-string v5, ". Last read tag: "

    .line 30
    .line 31
    if-eqz v0, :cond_8

    .line 32
    .line 33
    ushr-int/lit8 v6, v0, 0x3

    .line 34
    .line 35
    iput v6, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 36
    .line 37
    and-int/lit8 v0, v0, 0x7

    .line 38
    .line 39
    if-eqz v0, :cond_7

    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    if-eq v0, v7, :cond_6

    .line 43
    .line 44
    if-eq v0, v2, :cond_4

    .line 45
    .line 46
    const/4 v4, 0x3

    .line 47
    if-eq v0, v4, :cond_3

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    if-eq v0, v2, :cond_2

    .line 51
    .line 52
    const/4 v2, 0x5

    .line 53
    if-ne v0, v2, :cond_1

    .line 54
    .line 55
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->n:Lcom/squareup/wire/FieldEncoding;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->h:Lcom/squareup/wire/FieldEncoding;

    .line 58
    .line 59
    iput v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 60
    .line 61
    return v6

    .line 62
    :cond_1
    new-instance v2, Ljava/net/ProtocolException;

    .line 63
    .line 64
    const-string v3, "Unexpected field encoding: "

    .line 65
    .line 66
    const-string v4, ". Reader position: "

    .line 67
    .line 68
    invoke-static {v3, v0, v4}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 81
    .line 82
    invoke-static {v0, p0, v1}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {v2, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v2

    .line 90
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    .line 91
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v3, "Unexpected end group. Reader position: "

    .line 95
    .line 96
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 108
    .line 109
    invoke-static {v2, p0, v1}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_3
    invoke-virtual {p0, v6}, Lcom/squareup/wire/ByteArrayProtoReader32;->s(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 122
    .line 123
    iput-object v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->h:Lcom/squareup/wire/FieldEncoding;

    .line 124
    .line 125
    iput v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->g()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 132
    .line 133
    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/ByteArrayProtoReader32;->q(II)V

    .line 134
    .line 135
    .line 136
    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    .line 137
    .line 138
    if-ne v1, v4, :cond_5

    .line 139
    .line 140
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ByteArrayProtoReader32;->e(I)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 145
    .line 146
    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    .line 147
    .line 148
    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 149
    .line 150
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 151
    .line 152
    return p0

    .line 153
    :cond_5
    invoke-static {}, Lio/sentry/d;->d()V

    .line 154
    .line 155
    .line 156
    return v3

    .line 157
    :cond_6
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->l:Lcom/squareup/wire/FieldEncoding;

    .line 158
    .line 159
    iput-object v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->h:Lcom/squareup/wire/FieldEncoding;

    .line 160
    .line 161
    iput v7, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 162
    .line 163
    return v6

    .line 164
    :cond_7
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 165
    .line 166
    iput-object v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->h:Lcom/squareup/wire/FieldEncoding;

    .line 167
    .line 168
    iput v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 169
    .line 170
    return v6

    .line 171
    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    .line 172
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v3, "Unexpected tag 0. Reader position: "

    .line 176
    .line 177
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 181
    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 189
    .line 190
    invoke-static {v2, p0, v1}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw v0

    .line 198
    :cond_9
    return v4

    .line 199
    :cond_a
    const-string p0, "Unexpected call to nextTag()"

    .line 200
    .line 201
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return v3
.end method

.method public final i()B
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ByteArrayProtoReader32;->e(I)I

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 6
    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->a:[B

    .line 12
    .line 13
    aget-byte p0, p0, v0

    .line 14
    .line 15
    return p0
.end method

.method public final j()Lokio/ByteString;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ByteArrayProtoReader32;->e(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, Lokio/ByteString;->m:Lokio/ByteString;

    .line 10
    .line 11
    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 12
    .line 13
    iget-object v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->a:[B

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    array-length v4, v3

    .line 19
    int-to-long v5, v4

    .line 20
    int-to-long v7, v2

    .line 21
    int-to-long v9, v0

    .line 22
    invoke-static/range {v5 .. v10}, Lokio/-SegmentedByteString;->b(JJJ)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Lokio/ByteString;

    .line 26
    .line 27
    add-int/2addr v0, v2

    .line 28
    invoke-static {v3, v2, v0}, Lkotlin/collections/ArraysKt;->k([BII)[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {v4, v0}, Lokio/ByteString;-><init>([B)V

    .line 33
    .line 34
    .line 35
    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 36
    .line 37
    return-object v4
.end method

.method public final k()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Expected FIXED32 or LENGTH_DELIMITED but was "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ". Reader position: "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ". Last read tag: "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 40
    .line 41
    const/16 v2, 0x2e

    .line 42
    .line 43
    invoke-static {v1, p0, v2}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    :goto_0
    const/4 v0, 0x4

    .line 52
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ByteArrayProtoReader32;->e(I)I

    .line 53
    .line 54
    .line 55
    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 56
    .line 57
    add-int/lit8 v3, v2, 0x1

    .line 58
    .line 59
    iput v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 60
    .line 61
    iget-object v4, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->a:[B

    .line 62
    .line 63
    aget-byte v5, v4, v2

    .line 64
    .line 65
    and-int/lit16 v5, v5, 0xff

    .line 66
    .line 67
    add-int/lit8 v6, v2, 0x2

    .line 68
    .line 69
    iput v6, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 70
    .line 71
    aget-byte v3, v4, v3

    .line 72
    .line 73
    and-int/lit16 v3, v3, 0xff

    .line 74
    .line 75
    shl-int/lit8 v3, v3, 0x8

    .line 76
    .line 77
    or-int/2addr v3, v5

    .line 78
    add-int/lit8 v5, v2, 0x3

    .line 79
    .line 80
    iput v5, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 81
    .line 82
    aget-byte v6, v4, v6

    .line 83
    .line 84
    and-int/lit16 v6, v6, 0xff

    .line 85
    .line 86
    shl-int/lit8 v6, v6, 0x10

    .line 87
    .line 88
    or-int/2addr v3, v6

    .line 89
    add-int/2addr v2, v0

    .line 90
    iput v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 91
    .line 92
    aget-byte v0, v4, v5

    .line 93
    .line 94
    and-int/lit16 v0, v0, 0xff

    .line 95
    .line 96
    shl-int/lit8 v0, v0, 0x18

    .line 97
    .line 98
    or-int/2addr v0, v3

    .line 99
    invoke-virtual {p0, v1}, Lcom/squareup/wire/ByteArrayProtoReader32;->b(I)V

    .line 100
    .line 101
    .line 102
    return v0
.end method

.method public final l()J
    .locals 12

    .line 1
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Expected FIXED64 or LENGTH_DELIMITED but was "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ". Reader position: "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ". Last read tag: "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 40
    .line 41
    const/16 v2, 0x2e

    .line 42
    .line 43
    invoke-static {v1, p0, v2}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ByteArrayProtoReader32;->e(I)I

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 57
    .line 58
    add-int/lit8 v3, v2, 0x1

    .line 59
    .line 60
    iput v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 61
    .line 62
    iget-object v4, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->a:[B

    .line 63
    .line 64
    aget-byte v5, v4, v2

    .line 65
    .line 66
    int-to-long v5, v5

    .line 67
    const-wide/16 v7, 0xff

    .line 68
    .line 69
    and-long/2addr v5, v7

    .line 70
    add-int/lit8 v9, v2, 0x2

    .line 71
    .line 72
    iput v9, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 73
    .line 74
    aget-byte v3, v4, v3

    .line 75
    .line 76
    int-to-long v10, v3

    .line 77
    and-long/2addr v10, v7

    .line 78
    shl-long/2addr v10, v0

    .line 79
    or-long/2addr v5, v10

    .line 80
    add-int/lit8 v3, v2, 0x3

    .line 81
    .line 82
    iput v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 83
    .line 84
    aget-byte v9, v4, v9

    .line 85
    .line 86
    int-to-long v9, v9

    .line 87
    and-long/2addr v9, v7

    .line 88
    const/16 v11, 0x10

    .line 89
    .line 90
    shl-long/2addr v9, v11

    .line 91
    or-long/2addr v5, v9

    .line 92
    add-int/lit8 v9, v2, 0x4

    .line 93
    .line 94
    iput v9, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 95
    .line 96
    aget-byte v3, v4, v3

    .line 97
    .line 98
    int-to-long v10, v3

    .line 99
    and-long/2addr v10, v7

    .line 100
    const/16 v3, 0x18

    .line 101
    .line 102
    shl-long/2addr v10, v3

    .line 103
    or-long/2addr v5, v10

    .line 104
    add-int/lit8 v3, v2, 0x5

    .line 105
    .line 106
    iput v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 107
    .line 108
    aget-byte v9, v4, v9

    .line 109
    .line 110
    int-to-long v9, v9

    .line 111
    and-long/2addr v9, v7

    .line 112
    const/16 v11, 0x20

    .line 113
    .line 114
    shl-long/2addr v9, v11

    .line 115
    or-long/2addr v5, v9

    .line 116
    add-int/lit8 v9, v2, 0x6

    .line 117
    .line 118
    iput v9, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 119
    .line 120
    aget-byte v3, v4, v3

    .line 121
    .line 122
    int-to-long v10, v3

    .line 123
    and-long/2addr v10, v7

    .line 124
    const/16 v3, 0x28

    .line 125
    .line 126
    shl-long/2addr v10, v3

    .line 127
    or-long/2addr v5, v10

    .line 128
    add-int/lit8 v3, v2, 0x7

    .line 129
    .line 130
    iput v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 131
    .line 132
    aget-byte v9, v4, v9

    .line 133
    .line 134
    int-to-long v9, v9

    .line 135
    and-long/2addr v9, v7

    .line 136
    const/16 v11, 0x30

    .line 137
    .line 138
    shl-long/2addr v9, v11

    .line 139
    or-long/2addr v5, v9

    .line 140
    add-int/2addr v2, v0

    .line 141
    iput v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 142
    .line 143
    aget-byte v0, v4, v3

    .line 144
    .line 145
    int-to-long v2, v0

    .line 146
    and-long/2addr v2, v7

    .line 147
    const/16 v0, 0x38

    .line 148
    .line 149
    shl-long/2addr v2, v0

    .line 150
    or-long/2addr v2, v5

    .line 151
    invoke-virtual {p0, v1}, Lcom/squareup/wire/ByteArrayProtoReader32;->b(I)V

    .line 152
    .line 153
    .line 154
    return-wide v2
.end method

.method public final m()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ByteArrayProtoReader32;->e(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    iget-object v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->a:[B

    .line 13
    .line 14
    invoke-static {v1, v0, v2, v3}, Lkotlin/text/StringsKt;->k(III[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 19
    .line 20
    return-object v1
.end method

.method public final n(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->h:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/squareup/wire/FieldEncoding;->a()Lcom/squareup/wire/ProtoAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p0}, Lcom/squareup/wire/ProtoAdapter;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ByteArrayProtoReader32;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final o()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ". Reader position: "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ". Last read tag: "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 39
    .line 40
    const/16 v2, 0x2e

    .line 41
    .line 42
    invoke-static {v1, p0, v2}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->g()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v1}, Lcom/squareup/wire/ByteArrayProtoReader32;->b(I)V

    .line 56
    .line 57
    .line 58
    return v0
.end method

.method public final p()J
    .locals 9

    .line 1
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 2
    .line 3
    const/16 v1, 0x2e

    .line 4
    .line 5
    const-string v2, ". Last read tag: "

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v0, v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "Expected VARINT or LENGTH_DELIMITED but was "

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v4, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v4, ". Reader position: "

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v4, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 41
    .line 42
    invoke-static {v3, p0, v1}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 51
    const-wide/16 v3, 0x0

    .line 52
    .line 53
    move v5, v0

    .line 54
    :goto_1
    const/16 v6, 0x40

    .line 55
    .line 56
    if-ge v5, v6, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->i()B

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    and-int/lit8 v7, v6, 0x7f

    .line 63
    .line 64
    int-to-long v7, v7

    .line 65
    shl-long/2addr v7, v5

    .line 66
    or-long/2addr v3, v7

    .line 67
    and-int/lit16 v6, v6, 0x80

    .line 68
    .line 69
    if-nez v6, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ByteArrayProtoReader32;->b(I)V

    .line 72
    .line 73
    .line 74
    return-wide v3

    .line 75
    :cond_2
    add-int/lit8 v5, v5, 0x7

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    .line 79
    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v4, "WireInput encountered a malformed varint. Reader position: "

    .line 83
    .line 84
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget v4, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 88
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 96
    .line 97
    invoke-static {v3, p0, v1}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.method public final q(II)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 5
    .line 6
    const-string v1, "Negative length: "

    .line 7
    .line 8
    const-string v2, ". Reader position: "

    .line 9
    .line 10
    invoke-static {v1, p1, v2}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, ". Last read tag: "

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 p0, 0x2e

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public final r()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->k()I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string p0, "Unexpected call to skip()"

    .line 19
    .line 20
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->c()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ByteArrayProtoReader32;->e(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->l()J

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->p()J

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final s(I)V
    .locals 6

    .line 1
    :goto_0
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 2
    .line 3
    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->g()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x2e

    .line 12
    .line 13
    const-string v2, ". Last read tag: "

    .line 14
    .line 15
    if-eqz v0, :cond_8

    .line 16
    .line 17
    ushr-int/lit8 v3, v0, 0x3

    .line 18
    .line 19
    and-int/lit8 v0, v0, 0x7

    .line 20
    .line 21
    if-eqz v0, :cond_7

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v0, v4, :cond_6

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    if-eq v0, v5, :cond_5

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    if-eq v0, v5, :cond_3

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    if-eq v0, v4, :cond_1

    .line 34
    .line 35
    const/4 v4, 0x5

    .line 36
    if-ne v0, v4, :cond_0

    .line 37
    .line 38
    iput v4, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->k()I

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    .line 45
    .line 46
    const-string v4, "Unexpected field encoding: "

    .line 47
    .line 48
    const-string v5, ". Reader position: "

    .line 49
    .line 50
    invoke-static {v4, v0, v5}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_1
    if-ne v3, p1, :cond_2

    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    .line 80
    .line 81
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v4, "Unexpected end group. Reader position: "

    .line 86
    .line 87
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_3
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    .line 111
    .line 112
    add-int/2addr v0, v4

    .line 113
    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    .line 114
    .line 115
    const/16 v1, 0x64

    .line 116
    .line 117
    if-gt v0, v1, :cond_4

    .line 118
    .line 119
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/squareup/wire/ByteArrayProtoReader32;->s(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    .line 123
    .line 124
    add-int/lit8 v0, v0, -0x1

    .line 125
    .line 126
    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 132
    .line 133
    const-string v0, "Wire recursion limit exceeded"

    .line 134
    .line 135
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :goto_1
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    .line 140
    .line 141
    add-int/lit8 v0, v0, -0x1

    .line 142
    .line 143
    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    .line 144
    .line 145
    throw p1

    .line 146
    :cond_5
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->g()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {p0, v0, v3}, Lcom/squareup/wire/ByteArrayProtoReader32;->q(II)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ByteArrayProtoReader32;->e(I)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_6
    iput v4, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->l()J

    .line 164
    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_7
    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->p()J

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_8
    new-instance p1, Ljava/net/ProtocolException;

    .line 177
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v3, "Unexpected tag 0. Reader position: "

    .line 181
    .line 182
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    .line 186
    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    .line 194
    .line 195
    invoke-static {v0, p0, v1}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw p1

    .line 203
    :cond_9
    new-instance p0, Ljava/io/EOFException;

    .line 204
    .line 205
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 206
    .line 207
    .line 208
    throw p0
.end method
