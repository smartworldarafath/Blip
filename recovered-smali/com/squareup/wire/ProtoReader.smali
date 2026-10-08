.class public Lcom/squareup/wire/ProtoReader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lokio/BufferedSource;

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:Lcom/squareup/wire/FieldEncoding;

.field public final i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    .line 5
    .line 6
    const-wide v0, 0x7fffffffffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    iput p1, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/squareup/wire/ProtoReader;->f:I

    .line 18
    .line 19
    const-wide/16 v0, -0x1

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->g:J

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/squareup/wire/ProtoReader;->i:Ljava/util/ArrayList;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/squareup/wire/ProtoWriter;

    .line 2
    .line 3
    iget v1, p0, Lcom/squareup/wire/ProtoReader;->d:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->i:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lokio/BufferedSink;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/squareup/wire/ProtoWriter;-><init>(Lokio/BufferedSink;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->a()Lcom/squareup/wire/ProtoAdapter;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final b(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 10
    .line 11
    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 12
    .line 13
    cmp-long p1, v2, v4

    .line 14
    .line 15
    if-gtz p1, :cond_2

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->g:J

    .line 20
    .line 21
    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 22
    .line 23
    const-wide/16 v2, -0x1

    .line 24
    .line 25
    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->g:J

    .line 26
    .line 27
    iput v1, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/4 p1, 0x7

    .line 31
    iput p1, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 35
    .line 36
    const-string v3, " but was "

    .line 37
    .line 38
    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 39
    .line 40
    const-string v0, "Expected to end at "

    .line 41
    .line 42
    invoke-static/range {v0 .. v5}, Lk8;->l(Ljava/lang/String;JLjava/lang/Object;J)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final c()J
    .locals 5

    .line 1
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gtz v4, :cond_0

    .line 13
    .line 14
    sub-long/2addr v2, v0

    .line 15
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    .line 16
    .line 17
    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->W0(J)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x6

    .line 21
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 22
    .line 23
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 26
    .line 27
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->g:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 30
    .line 31
    const-wide/16 v0, -0x1

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->g:J

    .line 34
    .line 35
    return-wide v2

    .line 36
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 37
    .line 38
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "Expected LENGTH_DELIMITED but was "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, ". Reader position: "

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 62
    .line 63
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ". Last read tag: "

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    .line 72
    .line 73
    const/16 v2, 0x2e

    .line 74
    .line 75
    invoke-static {v1, p0, v2}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public d()J
    .locals 4

    .line 1
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    .line 11
    .line 12
    const/16 v1, 0x64

    .line 13
    .line 14
    if-gt v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/squareup/wire/ProtoReader;->i:Ljava/util/ArrayList;

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
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->g:J

    .line 33
    .line 34
    const-wide/16 v2, -0x1

    .line 35
    .line 36
    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->g:J

    .line 37
    .line 38
    const/4 v2, 0x6

    .line 39
    iput v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 40
    .line 41
    return-wide v0

    .line 42
    :cond_1
    const-string p0, "Wire recursion limit exceeded"

    .line 43
    .line 44
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v0, 0x0

    .line 48
    .line 49
    return-wide v0

    .line 50
    :cond_2
    const-string p0, "Unexpected call to beginMessage()"

    .line 51
    .line 52
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-wide/16 v0, 0x0

    .line 56
    .line 57
    return-wide v0
.end method

.method public final e(J)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 10
    .line 11
    cmp-long p0, v0, v2

    .line 12
    .line 13
    if-gtz p0, :cond_0

    .line 14
    .line 15
    sub-long/2addr v2, v0

    .line 16
    cmp-long p0, p1, v2

    .line 17
    .line 18
    if-gtz p0, :cond_1

    .line 19
    .line 20
    add-long/2addr v0, p1

    .line 21
    return-wide v0

    .line 22
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public f(J)Lokio/ByteString;
    .locals 9

    .line 1
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_4

    .line 6
    .line 7
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    .line 12
    .line 13
    if-ltz v0, :cond_3

    .line 14
    .line 15
    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->g:J

    .line 16
    .line 17
    const-wide/16 v5, -0x1

    .line 18
    .line 19
    cmp-long v1, v3, v5

    .line 20
    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 24
    .line 25
    iget-wide v5, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 26
    .line 27
    cmp-long v1, v3, v5

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 35
    .line 36
    const-string v6, " but was "

    .line 37
    .line 38
    iget-wide v7, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 39
    .line 40
    const-string v3, "Expected to end at "

    .line 41
    .line 42
    invoke-static/range {v3 .. v8}, Lk8;->l(Ljava/lang/String;JLjava/lang/Object;J)V

    .line 43
    .line 44
    .line 45
    return-object v2

    .line 46
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 47
    .line 48
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->i:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lokio/Buffer;

    .line 55
    .line 56
    iget-wide p1, p0, Lokio/Buffer;->k:J

    .line 57
    .line 58
    const-wide/16 v0, 0x0

    .line 59
    .line 60
    cmp-long v0, p1, v0

    .line 61
    .line 62
    if-lez v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->s(J)Lokio/ByteString;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_2
    sget-object p0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_3
    const-string p0, "No corresponding call to beginMessage()"

    .line 73
    .line 74
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_4
    const-string p0, "Unexpected call to endMessage()"

    .line 79
    .line 80
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v2
.end method

.method public final g()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->j()B

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
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->j()B

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
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->j()B

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
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->j()B

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
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->j()B

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
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->j()B

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
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 86
    .line 87
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

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

.method public h()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iput v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 8
    .line 9
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

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
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 17
    .line 18
    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 19
    .line 20
    cmp-long v0, v0, v4

    .line 21
    .line 22
    if-gez v0, :cond_9

    .line 23
    .line 24
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    .line 25
    .line 26
    invoke-interface {v0}, Lokio/BufferedSource;->J()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_9

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->g()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/16 v1, 0x2e

    .line 37
    .line 38
    const-string v4, ". Last read tag: "

    .line 39
    .line 40
    if-eqz v0, :cond_8

    .line 41
    .line 42
    ushr-int/lit8 v5, v0, 0x3

    .line 43
    .line 44
    iput v5, p0, Lcom/squareup/wire/ProtoReader;->f:I

    .line 45
    .line 46
    and-int/lit8 v0, v0, 0x7

    .line 47
    .line 48
    if-eqz v0, :cond_7

    .line 49
    .line 50
    const/4 v6, 0x1

    .line 51
    if-eq v0, v6, :cond_6

    .line 52
    .line 53
    if-eq v0, v2, :cond_4

    .line 54
    .line 55
    const/4 v6, 0x3

    .line 56
    if-eq v0, v6, :cond_3

    .line 57
    .line 58
    const/4 v2, 0x4

    .line 59
    if-eq v0, v2, :cond_2

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    if-ne v0, v2, :cond_1

    .line 63
    .line 64
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->n:Lcom/squareup/wire/FieldEncoding;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->h:Lcom/squareup/wire/FieldEncoding;

    .line 67
    .line 68
    iput v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 69
    .line 70
    return v5

    .line 71
    :cond_1
    new-instance v2, Ljava/net/ProtocolException;

    .line 72
    .line 73
    const-string v3, "Unexpected field encoding: "

    .line 74
    .line 75
    const-string v5, ". Reader position: "

    .line 76
    .line 77
    invoke-static {v3, v0, v5}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-wide v5, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 82
    .line 83
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    .line 90
    .line 91
    invoke-static {v0, p0, v1}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-direct {v2, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v2

    .line 99
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    .line 100
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v3, "Unexpected end group. Reader position: "

    .line 104
    .line 105
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-wide v5, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 109
    .line 110
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    .line 117
    .line 118
    invoke-static {v2, p0, v1}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_3
    invoke-virtual {p0, v5}, Lcom/squareup/wire/ProtoReader;->t(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_4
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->h:Lcom/squareup/wire/FieldEncoding;

    .line 133
    .line 134
    iput v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->g()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iget v1, p0, Lcom/squareup/wire/ProtoReader;->f:I

    .line 141
    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/ProtoReader;->r(II)V

    .line 143
    .line 144
    .line 145
    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->g:J

    .line 146
    .line 147
    const-wide/16 v4, -0x1

    .line 148
    .line 149
    cmp-long v1, v1, v4

    .line 150
    .line 151
    if-nez v1, :cond_5

    .line 152
    .line 153
    int-to-long v0, v0

    .line 154
    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/ProtoReader;->e(J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 159
    .line 160
    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->g:J

    .line 161
    .line 162
    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 163
    .line 164
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    .line 165
    .line 166
    return p0

    .line 167
    :cond_5
    invoke-static {}, Lio/sentry/d;->d()V

    .line 168
    .line 169
    .line 170
    return v3

    .line 171
    :cond_6
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->l:Lcom/squareup/wire/FieldEncoding;

    .line 172
    .line 173
    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->h:Lcom/squareup/wire/FieldEncoding;

    .line 174
    .line 175
    iput v6, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 176
    .line 177
    return v5

    .line 178
    :cond_7
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 179
    .line 180
    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->h:Lcom/squareup/wire/FieldEncoding;

    .line 181
    .line 182
    iput v3, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 183
    .line 184
    return v5

    .line 185
    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    .line 186
    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v3, "Unexpected tag 0. Reader position: "

    .line 190
    .line 191
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-wide v5, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 195
    .line 196
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    .line 203
    .line 204
    invoke-static {v2, p0, v1}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    :cond_9
    const/4 p0, -0x1

    .line 213
    return p0

    .line 214
    :cond_a
    const-string p0, "Unexpected call to nextTag()"

    .line 215
    .line 216
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return v3
.end method

.method public i()Lcom/squareup/wire/FieldEncoding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->h:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    return-object p0
.end method

.method public final j()B
    .locals 5

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/ProtoReader;->e(J)J

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    .line 7
    .line 8
    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->W0(J)V

    .line 9
    .line 10
    .line 11
    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 12
    .line 13
    add-long/2addr v3, v0

    .line 14
    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 15
    .line 16
    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public k()Lokio/ByteString;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->c()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    .line 6
    .line 7
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->W0(J)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->s(J)Lokio/ByteString;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public l()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

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
    iget v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

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
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 30
    .line 31
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

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
    const-wide/16 v2, 0x4

    .line 52
    .line 53
    invoke-virtual {p0, v2, v3}, Lcom/squareup/wire/ProtoReader;->e(J)J

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    .line 57
    .line 58
    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->W0(J)V

    .line 59
    .line 60
    .line 61
    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 62
    .line 63
    add-long/2addr v4, v2

    .line 64
    iput-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 65
    .line 66
    invoke-interface {v0}, Lokio/BufferedSource;->D0()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p0, v1}, Lcom/squareup/wire/ProtoReader;->b(I)V

    .line 71
    .line 72
    .line 73
    return v0
.end method

.method public m()J
    .locals 6

    .line 1
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

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
    iget v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

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
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 30
    .line 31
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

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
    const-wide/16 v2, 0x8

    .line 52
    .line 53
    invoke-virtual {p0, v2, v3}, Lcom/squareup/wire/ProtoReader;->e(J)J

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    .line 57
    .line 58
    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->W0(J)V

    .line 59
    .line 60
    .line 61
    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 62
    .line 63
    add-long/2addr v4, v2

    .line 64
    iput-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 65
    .line 66
    invoke-interface {v0}, Lokio/BufferedSource;->O0()J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    invoke-virtual {p0, v1}, Lcom/squareup/wire/ProtoReader;->b(I)V

    .line 71
    .line 72
    .line 73
    return-wide v2
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->c()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    .line 6
    .line 7
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->W0(J)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->p(J)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public o(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->i()Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/squareup/wire/FieldEncoding;->a()Lcom/squareup/wire/ProtoAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p0}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public p()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

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
    iget v2, p0, Lcom/squareup/wire/ProtoReader;->e:I

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
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

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
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->g()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v1}, Lcom/squareup/wire/ProtoReader;->b(I)V

    .line 56
    .line 57
    .line 58
    return v0
.end method

.method public q()J
    .locals 9

    .line 1
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

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
    iget v4, p0, Lcom/squareup/wire/ProtoReader;->e:I

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
    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 33
    .line 34
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

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
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->j()B

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
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ProtoReader;->b(I)V

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
    const-string v4, "Malformed VARINT. Reader position: "

    .line 83
    .line 84
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 88
    .line 89
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

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

.method public final r(II)V
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
    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 15
    .line 16
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

.method public s()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

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
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->l()I

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
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->c()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    .line 29
    .line 30
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->m()J

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->q()J

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final t(I)V
    .locals 7

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->c:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gez v0, :cond_9

    .line 8
    .line 9
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->a:Lokio/BufferedSource;

    .line 10
    .line 11
    invoke-interface {v0}, Lokio/BufferedSource;->J()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_9

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->g()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x2e

    .line 22
    .line 23
    const-string v3, ". Last read tag: "

    .line 24
    .line 25
    if-eqz v1, :cond_8

    .line 26
    .line 27
    ushr-int/lit8 v4, v1, 0x3

    .line 28
    .line 29
    and-int/lit8 v1, v1, 0x7

    .line 30
    .line 31
    if-eqz v1, :cond_7

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    if-eq v1, v5, :cond_6

    .line 35
    .line 36
    const/4 v6, 0x2

    .line 37
    if-eq v1, v6, :cond_5

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    if-eq v1, v0, :cond_3

    .line 41
    .line 42
    const/4 v0, 0x4

    .line 43
    if-eq v1, v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x5

    .line 46
    if-ne v1, v0, :cond_0

    .line 47
    .line 48
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->l()I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    .line 55
    .line 56
    const-string v0, "Unexpected field encoding: "

    .line 57
    .line 58
    const-string v5, ". Reader position: "

    .line 59
    .line 60
    invoke-static {v0, v1, v5}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-wide v5, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 65
    .line 66
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_1
    if-ne v4, p1, :cond_2

    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    .line 90
    .line 91
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 92
    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v5, "Unexpected end group. Reader position: "

    .line 96
    .line 97
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_3
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    .line 121
    .line 122
    add-int/2addr v0, v5

    .line 123
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    .line 124
    .line 125
    const/16 v1, 0x64

    .line 126
    .line 127
    if-gt v0, v1, :cond_4

    .line 128
    .line 129
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/squareup/wire/ProtoReader;->t(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    .line 133
    .line 134
    add-int/lit8 v0, v0, -0x1

    .line 135
    .line 136
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :catchall_0
    move-exception p1

    .line 141
    goto :goto_1

    .line 142
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 143
    .line 144
    const-string v0, "Wire recursion limit exceeded"

    .line 145
    .line 146
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :goto_1
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    .line 151
    .line 152
    add-int/lit8 v0, v0, -0x1

    .line 153
    .line 154
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->d:I

    .line 155
    .line 156
    throw p1

    .line 157
    :cond_5
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->g()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-virtual {p0, v1, v4}, Lcom/squareup/wire/ProtoReader;->r(II)V

    .line 162
    .line 163
    .line 164
    int-to-long v1, v1

    .line 165
    invoke-virtual {p0, v1, v2}, Lcom/squareup/wire/ProtoReader;->e(J)J

    .line 166
    .line 167
    .line 168
    move-result-wide v3

    .line 169
    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->skip(J)V

    .line 170
    .line 171
    .line 172
    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_6
    iput v5, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->m()J

    .line 179
    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_7
    const/4 v0, 0x0

    .line 184
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->e:I

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->q()J

    .line 187
    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :cond_8
    new-instance p1, Ljava/net/ProtocolException;

    .line 192
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v1, "Unexpected tag 0. Reader position: "

    .line 196
    .line 197
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->b:J

    .line 201
    .line 202
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->f:I

    .line 209
    .line 210
    invoke-static {v0, p0, v2}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p1

    .line 218
    :cond_9
    new-instance p0, Ljava/io/EOFException;

    .line 219
    .line 220
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 221
    .line 222
    .line 223
    throw p0
.end method
