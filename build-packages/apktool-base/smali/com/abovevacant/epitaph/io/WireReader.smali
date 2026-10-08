.class public final Lcom/abovevacant/epitaph/io/WireReader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:[B

.field public b:I

.field public final c:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/abovevacant/epitaph/io/WireReader;->a:[B

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/abovevacant/epitaph/io/WireReader;->b:I

    .line 9
    .line 10
    iput v0, p0, Lcom/abovevacant/epitaph/io/WireReader;->c:I

    .line 11
    .line 12
    return-void
.end method

.method public static a(III)V
    .locals 10

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 5
    .line 6
    const-string v1, "Field "

    .line 7
    .line 8
    const-string v2, ": expected "

    .line 9
    .line 10
    invoke-static {v1, p0, v2}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "varint"

    .line 15
    .line 16
    const-string v2, "fixed64"

    .line 17
    .line 18
    const-string v3, "length-delimited"

    .line 19
    .line 20
    const-string v4, "fixed32"

    .line 21
    .line 22
    const-string v5, "unknown"

    .line 23
    .line 24
    const/4 v6, 0x5

    .line 25
    const/4 v7, 0x2

    .line 26
    const/4 v8, 0x1

    .line 27
    if-eqz p1, :cond_4

    .line 28
    .line 29
    if-eq p1, v8, :cond_3

    .line 30
    .line 31
    if-eq p1, v7, :cond_2

    .line 32
    .line 33
    if-eq p1, v6, :cond_1

    .line 34
    .line 35
    move-object v9, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v9, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object v9, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    move-object v9, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_4
    move-object v9, v1

    .line 44
    :goto_0
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v9, " (wire type "

    .line 48
    .line 49
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, ") but got "

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    if-eqz p2, :cond_8

    .line 61
    .line 62
    if-eq p2, v8, :cond_7

    .line 63
    .line 64
    if-eq p2, v7, :cond_6

    .line 65
    .line 66
    if-eq p2, v6, :cond_5

    .line 67
    .line 68
    move-object v1, v5

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    move-object v1, v4

    .line 71
    goto :goto_1

    .line 72
    :cond_6
    move-object v1, v3

    .line 73
    goto :goto_1

    .line 74
    :cond_7
    move-object v1, v2

    .line 75
    :cond_8
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p1, ")"

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0
.end method


# virtual methods
.method public final b()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p0, v0, v2

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final c()[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-int v0, v0

    .line 6
    if-ltz v0, :cond_1

    .line 7
    .line 8
    iget v1, p0, Lcom/abovevacant/epitaph/io/WireReader;->b:I

    .line 9
    .line 10
    iget v2, p0, Lcom/abovevacant/epitaph/io/WireReader;->c:I

    .line 11
    .line 12
    sub-int/2addr v2, v1

    .line 13
    if-lt v2, v0, :cond_0

    .line 14
    .line 15
    new-array v2, v0, [B

    .line 16
    .line 17
    iget-object v3, p0, Lcom/abovevacant/epitaph/io/WireReader;->a:[B

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lcom/abovevacant/epitaph/io/WireReader;->b:I

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    iput v1, p0, Lcom/abovevacant/epitaph/io/WireReader;->b:I

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 30
    .line 31
    const-string v0, "Not enough bytes for length-delimited field"

    .line 32
    .line 33
    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    const-string p0, "Negative length: "

    .line 38
    .line 39
    invoke-static {v0, p0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method public final d()Lcom/abovevacant/epitaph/io/WireReader;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->c()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/abovevacant/epitaph/io/WireReader;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/abovevacant/epitaph/io/WireReader;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->c()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final f()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/abovevacant/epitaph/io/WireReader;->b:I

    .line 2
    .line 3
    iget v1, p0, Lcom/abovevacant/epitaph/io/WireReader;->c:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    long-to-int p0, v0

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final g()J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0x40

    .line 5
    .line 6
    if-ge v2, v3, :cond_2

    .line 7
    .line 8
    iget v3, p0, Lcom/abovevacant/epitaph/io/WireReader;->b:I

    .line 9
    .line 10
    iget v4, p0, Lcom/abovevacant/epitaph/io/WireReader;->c:I

    .line 11
    .line 12
    if-ge v3, v4, :cond_1

    .line 13
    .line 14
    add-int/lit8 v4, v3, 0x1

    .line 15
    .line 16
    iput v4, p0, Lcom/abovevacant/epitaph/io/WireReader;->b:I

    .line 17
    .line 18
    iget-object v4, p0, Lcom/abovevacant/epitaph/io/WireReader;->a:[B

    .line 19
    .line 20
    aget-byte v3, v4, v3

    .line 21
    .line 22
    and-int/lit8 v4, v3, 0x7f

    .line 23
    .line 24
    int-to-long v4, v4

    .line 25
    shl-long/2addr v4, v2

    .line 26
    or-long/2addr v0, v4

    .line 27
    and-int/lit16 v3, v3, 0x80

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    return-wide v0

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 36
    .line 37
    const-string v0, "Truncated varint"

    .line 38
    .line 39
    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_2
    const-string p0, "Malformed varint"

    .line 44
    .line 45
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v0, 0x0

    .line 49
    .line 50
    return-wide v0
.end method

.method public final h(I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget v1, p0, Lcom/abovevacant/epitaph/io/WireReader;->c:I

    .line 5
    .line 6
    if-eq p1, v0, :cond_4

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    iget p1, p0, Lcom/abovevacant/epitaph/io/WireReader;->b:I

    .line 15
    .line 16
    sub-int/2addr v1, p1

    .line 17
    const/4 v0, 0x4

    .line 18
    if-lt v1, v0, :cond_0

    .line 19
    .line 20
    add-int/2addr p1, v0

    .line 21
    iput p1, p0, Lcom/abovevacant/epitaph/io/WireReader;->b:I

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 25
    .line 26
    const-string p1, "Not enough bytes to skip fixed32"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    const-string p0, "Unknown wire type: "

    .line 33
    .line 34
    invoke-static {p1, p0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    long-to-int p1, v2

    .line 47
    iget v0, p0, Lcom/abovevacant/epitaph/io/WireReader;->b:I

    .line 48
    .line 49
    sub-int/2addr v1, v0

    .line 50
    if-lt v1, p1, :cond_3

    .line 51
    .line 52
    add-int/2addr v0, p1

    .line 53
    iput v0, p0, Lcom/abovevacant/epitaph/io/WireReader;->b:I

    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    new-instance p0, Ljava/io/EOFException;

    .line 57
    .line 58
    const-string p1, "Not enough bytes to skip length-delimited"

    .line 59
    .line 60
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_4
    iget p1, p0, Lcom/abovevacant/epitaph/io/WireReader;->b:I

    .line 65
    .line 66
    sub-int/2addr v1, p1

    .line 67
    const/16 v0, 0x8

    .line 68
    .line 69
    if-lt v1, v0, :cond_5

    .line 70
    .line 71
    add-int/2addr p1, v0

    .line 72
    iput p1, p0, Lcom/abovevacant/epitaph/io/WireReader;->b:I

    .line 73
    .line 74
    return-void

    .line 75
    :cond_5
    new-instance p0, Ljava/io/EOFException;

    .line 76
    .line 77
    const-string p1, "Not enough bytes to skip fixed64"

    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_6
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 84
    .line 85
    .line 86
    return-void
.end method
