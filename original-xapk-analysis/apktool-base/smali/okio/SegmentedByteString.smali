.class public final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final transient n:[[B

.field public final transient o:[I


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1

    .line 1
    sget-object v0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 2
    .line 3
    iget-object v0, v0, Lokio/ByteString;->j:[B

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lokio/SegmentedByteString;->n:[[B

    .line 9
    .line 10
    iput-object p2, p0, Lokio/SegmentedByteString;->o:[I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->u()Lokio/ByteString;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lokio/ByteString;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final c(III[B)V
    .locals 11

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    int-to-long v1, v0

    .line 9
    int-to-long v3, p1

    .line 10
    int-to-long v5, p3

    .line 11
    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->b(JJJ)V

    .line 12
    .line 13
    .line 14
    array-length v0, p4

    .line 15
    int-to-long v0, v0

    .line 16
    int-to-long v7, p2

    .line 17
    move-wide v9, v5

    .line 18
    move-wide v5, v0

    .line 19
    invoke-static/range {v5 .. v10}, Lokio/-SegmentedByteString;->b(JJJ)V

    .line 20
    .line 21
    .line 22
    add-int/2addr p3, p1

    .line 23
    invoke-static {p0, p1}, Lokio/internal/-SegmentedByteString;->a(Lokio/SegmentedByteString;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_0
    if-ge p1, p3, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lokio/SegmentedByteString;->o:[I

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 36
    .line 37
    aget v2, v1, v2

    .line 38
    .line 39
    :goto_1
    aget v3, v1, v0

    .line 40
    .line 41
    sub-int/2addr v3, v2

    .line 42
    iget-object v4, p0, Lokio/SegmentedByteString;->n:[[B

    .line 43
    .line 44
    array-length v5, v4

    .line 45
    add-int/2addr v5, v0

    .line 46
    aget v1, v1, v5

    .line 47
    .line 48
    add-int/2addr v3, v2

    .line 49
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    sub-int/2addr v3, p1

    .line 54
    sub-int v2, p1, v2

    .line 55
    .line 56
    add-int/2addr v2, v1

    .line 57
    aget-object v1, v4, v0

    .line 58
    .line 59
    add-int v4, v2, v3

    .line 60
    .line 61
    invoke-static {p2, v2, v4, v1, p4}, Lkotlin/collections/ArraysKt;->e(III[B[B)V

    .line 62
    .line 63
    .line 64
    add-int/2addr p2, v3

    .line 65
    add-int/2addr p1, v3

    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/String;)Lokio/ByteString;
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lokio/SegmentedByteString;->n:[[B

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    add-int v4, v1, v2

    .line 13
    .line 14
    iget-object v5, p0, Lokio/SegmentedByteString;->o:[I

    .line 15
    .line 16
    aget v4, v5, v4

    .line 17
    .line 18
    aget v5, v5, v2

    .line 19
    .line 20
    aget-object v6, v0, v2

    .line 21
    .line 22
    sub-int v3, v5, v3

    .line 23
    .line 24
    invoke-virtual {p1, v6, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    move v3, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance p1, Lokio/ByteString;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p0}, Lokio/ByteString;-><init>([B)V

    .line 41
    .line 42
    .line 43
    return-object p1
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->n:[[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iget-object p0, p0, Lokio/SegmentedByteString;->o:[I

    .line 7
    .line 8
    aget p0, p0, v0

    .line 9
    .line 10
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lokio/ByteString;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lokio/ByteString;

    .line 10
    .line 11
    invoke-virtual {p1}, Lokio/ByteString;->e()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, v1, p1, v0}, Lokio/SegmentedByteString;->n(ILokio/ByteString;I)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    :goto_0
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_1
    return v1
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->u()Lokio/ByteString;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lokio/ByteString;->f()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final g(I[B)I
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lokio/SegmentedByteString;->u()Lokio/ByteString;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->g(I[B)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget v0, p0, Lokio/ByteString;->k:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lokio/SegmentedByteString;->n:[[B

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    move v4, v3

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    .line 15
    add-int v5, v1, v2

    .line 16
    .line 17
    iget-object v6, p0, Lokio/SegmentedByteString;->o:[I

    .line 18
    .line 19
    aget v5, v6, v5

    .line 20
    .line 21
    aget v6, v6, v2

    .line 22
    .line 23
    aget-object v7, v0, v2

    .line 24
    .line 25
    sub-int v3, v6, v3

    .line 26
    .line 27
    add-int/2addr v3, v5

    .line 28
    :goto_1
    if-ge v5, v3, :cond_1

    .line 29
    .line 30
    mul-int/lit8 v4, v4, 0x1f

    .line 31
    .line 32
    aget-byte v8, v7, v5

    .line 33
    .line 34
    add-int/2addr v4, v8

    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    move v3, v6

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iput v4, p0, Lokio/ByteString;->k:I

    .line 43
    .line 44
    return v4
.end method

.method public final i()[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->r()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final j(I)B
    .locals 9

    .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->n:[[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, -0x1

    .line 5
    .line 6
    iget-object v2, p0, Lokio/SegmentedByteString;->o:[I

    .line 7
    .line 8
    aget v1, v2, v1

    .line 9
    .line 10
    int-to-long v3, v1

    .line 11
    int-to-long v5, p1

    .line 12
    const-wide/16 v7, 0x1

    .line 13
    .line 14
    invoke-static/range {v3 .. v8}, Lokio/-SegmentedByteString;->b(JJJ)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Lokio/internal/-SegmentedByteString;->a(Lokio/SegmentedByteString;I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    add-int/lit8 v1, p0, -0x1

    .line 26
    .line 27
    aget v1, v2, v1

    .line 28
    .line 29
    :goto_0
    array-length v3, v0

    .line 30
    add-int/2addr v3, p0

    .line 31
    aget v2, v2, v3

    .line 32
    .line 33
    aget-object p0, v0, p0

    .line 34
    .line 35
    sub-int/2addr p1, v1

    .line 36
    add-int/2addr p1, v2

    .line 37
    aget-byte p0, p0, p1

    .line 38
    .line 39
    return p0
.end method

.method public final k(I[B)I
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lokio/SegmentedByteString;->u()Lokio/ByteString;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->k(I[B)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final m(III[B)Z
    .locals 7

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-ltz p1, :cond_4

    .line 6
    .line 7
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr v1, p3

    .line 12
    if-gt p1, v1, :cond_4

    .line 13
    .line 14
    if-ltz p2, :cond_4

    .line 15
    .line 16
    array-length v1, p4

    .line 17
    sub-int/2addr v1, p3

    .line 18
    if-le p2, v1, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    add-int/2addr p3, p1

    .line 22
    invoke-static {p0, p1}, Lokio/internal/-SegmentedByteString;->a(Lokio/SegmentedByteString;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :goto_0
    if-ge p1, p3, :cond_3

    .line 27
    .line 28
    iget-object v2, p0, Lokio/SegmentedByteString;->o:[I

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    move v3, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    add-int/lit8 v3, v1, -0x1

    .line 35
    .line 36
    aget v3, v2, v3

    .line 37
    .line 38
    :goto_1
    aget v4, v2, v1

    .line 39
    .line 40
    sub-int/2addr v4, v3

    .line 41
    iget-object v5, p0, Lokio/SegmentedByteString;->n:[[B

    .line 42
    .line 43
    array-length v6, v5

    .line 44
    add-int/2addr v6, v1

    .line 45
    aget v2, v2, v6

    .line 46
    .line 47
    add-int/2addr v4, v3

    .line 48
    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    sub-int/2addr v4, p1

    .line 53
    sub-int v3, p1, v3

    .line 54
    .line 55
    add-int/2addr v3, v2

    .line 56
    aget-object v2, v5, v1

    .line 57
    .line 58
    invoke-static {v3, p2, v4, v2, p4}, Lokio/-SegmentedByteString;->a(III[B[B)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    return v0

    .line 65
    :cond_2
    add-int/2addr p2, v4

    .line 66
    add-int/2addr p1, v4

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/4 p0, 0x1

    .line 71
    return p0

    .line 72
    :cond_4
    :goto_2
    return v0
.end method

.method public final n(ILokio/ByteString;I)Z
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-ltz p1, :cond_4

    .line 6
    .line 7
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr v1, p3

    .line 12
    if-le p1, v1, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    add-int/2addr p3, p1

    .line 16
    invoke-static {p0, p1}, Lokio/internal/-SegmentedByteString;->a(Lokio/SegmentedByteString;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    move v2, v0

    .line 21
    :goto_0
    if-ge p1, p3, :cond_3

    .line 22
    .line 23
    iget-object v3, p0, Lokio/SegmentedByteString;->o:[I

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    move v4, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    add-int/lit8 v4, v1, -0x1

    .line 30
    .line 31
    aget v4, v3, v4

    .line 32
    .line 33
    :goto_1
    aget v5, v3, v1

    .line 34
    .line 35
    sub-int/2addr v5, v4

    .line 36
    iget-object v6, p0, Lokio/SegmentedByteString;->n:[[B

    .line 37
    .line 38
    array-length v7, v6

    .line 39
    add-int/2addr v7, v1

    .line 40
    aget v3, v3, v7

    .line 41
    .line 42
    add-int/2addr v5, v4

    .line 43
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    sub-int/2addr v5, p1

    .line 48
    sub-int v4, p1, v4

    .line 49
    .line 50
    add-int/2addr v4, v3

    .line 51
    aget-object v3, v6, v1

    .line 52
    .line 53
    invoke-virtual {p2, v2, v4, v5, v3}, Lokio/ByteString;->m(III[B)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    add-int/2addr v2, v5

    .line 61
    add-int/2addr p1, v5

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/4 p0, 0x1

    .line 66
    return p0

    .line 67
    :cond_4
    :goto_2
    return v0
.end method

.method public final o(II)Lokio/ByteString;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_6

    .line 3
    .line 4
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const-string v2, "endIndex="

    .line 9
    .line 10
    if-gt p2, v1, :cond_5

    .line 11
    .line 12
    sub-int v1, p2, p1

    .line 13
    .line 14
    if-ltz v1, :cond_4

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne p2, v0, :cond_0

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    if-ne p1, p2, :cond_1

    .line 26
    .line 27
    sget-object p0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    invoke-static {p0, p1}, Lokio/internal/-SegmentedByteString;->a(Lokio/SegmentedByteString;I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/lit8 p2, p2, -0x1

    .line 35
    .line 36
    invoke-static {p0, p2}, Lokio/internal/-SegmentedByteString;->a(Lokio/SegmentedByteString;I)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    add-int/lit8 v2, p2, 0x1

    .line 41
    .line 42
    iget-object v3, p0, Lokio/SegmentedByteString;->n:[[B

    .line 43
    .line 44
    invoke-static {v3, v0, v2}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, [[B

    .line 49
    .line 50
    array-length v4, v2

    .line 51
    mul-int/lit8 v4, v4, 0x2

    .line 52
    .line 53
    new-array v4, v4, [I

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    iget-object p0, p0, Lokio/SegmentedByteString;->o:[I

    .line 57
    .line 58
    if-gt v0, p2, :cond_2

    .line 59
    .line 60
    move v7, v0

    .line 61
    move v6, v5

    .line 62
    :goto_0
    aget v8, p0, v7

    .line 63
    .line 64
    sub-int/2addr v8, p1

    .line 65
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    aput v8, v4, v6

    .line 70
    .line 71
    add-int/lit8 v8, v6, 0x1

    .line 72
    .line 73
    array-length v9, v2

    .line 74
    add-int/2addr v6, v9

    .line 75
    array-length v9, v3

    .line 76
    add-int/2addr v9, v7

    .line 77
    aget v9, p0, v9

    .line 78
    .line 79
    aput v9, v4, v6

    .line 80
    .line 81
    if-eq v7, p2, :cond_2

    .line 82
    .line 83
    add-int/lit8 v7, v7, 0x1

    .line 84
    .line 85
    move v6, v8

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    if-nez v0, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 91
    .line 92
    aget v5, p0, v0

    .line 93
    .line 94
    :goto_1
    array-length p0, v2

    .line 95
    aget p2, v4, p0

    .line 96
    .line 97
    sub-int/2addr p1, v5

    .line 98
    add-int/2addr p1, p2

    .line 99
    aput p1, v4, p0

    .line 100
    .line 101
    new-instance p0, Lokio/SegmentedByteString;

    .line 102
    .line 103
    invoke-direct {p0, v2, v4}, Lokio/SegmentedByteString;-><init>([[B[I)V

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_4
    const-string p0, " < beginIndex="

    .line 108
    .line 109
    invoke-static {p2, p1, v2, p0}, Lq;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_5
    const-string p1, " > length("

    .line 118
    .line 119
    invoke-static {v2, p2, p1}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const/16 p0, 0x29

    .line 131
    .line 132
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1

    .line 149
    :cond_6
    const-string p0, "beginIndex="

    .line 150
    .line 151
    const-string p2, " < 0"

    .line 152
    .line 153
    invoke-static {p0, p1, p2}, Ljb;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-object v0
.end method

.method public final q()Lokio/ByteString;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->u()Lokio/ByteString;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lokio/ByteString;->q()Lokio/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final r()[B
    .locals 10

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iget-object v1, p0, Lokio/SegmentedByteString;->n:[[B

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    move v5, v4

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    add-int v6, v2, v3

    .line 16
    .line 17
    iget-object v7, p0, Lokio/SegmentedByteString;->o:[I

    .line 18
    .line 19
    aget v6, v7, v6

    .line 20
    .line 21
    aget v7, v7, v3

    .line 22
    .line 23
    aget-object v8, v1, v3

    .line 24
    .line 25
    sub-int v4, v7, v4

    .line 26
    .line 27
    add-int v9, v6, v4

    .line 28
    .line 29
    invoke-static {v5, v6, v9, v8, v0}, Lkotlin/collections/ArraysKt;->e(III[B[B)V

    .line 30
    .line 31
    .line 32
    add-int/2addr v5, v4

    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    move v4, v7

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object v0
.end method

.method public final t(Lokio/Buffer;I)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lokio/internal/-SegmentedByteString;->a(Lokio/SegmentedByteString;I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    move v2, v0

    .line 7
    :goto_0
    if-ge v2, p2, :cond_2

    .line 8
    .line 9
    iget-object v3, p0, Lokio/SegmentedByteString;->o:[I

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move v4, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/lit8 v4, v1, -0x1

    .line 16
    .line 17
    aget v4, v3, v4

    .line 18
    .line 19
    :goto_1
    aget v5, v3, v1

    .line 20
    .line 21
    sub-int/2addr v5, v4

    .line 22
    iget-object v6, p0, Lokio/SegmentedByteString;->n:[[B

    .line 23
    .line 24
    array-length v7, v6

    .line 25
    add-int/2addr v7, v1

    .line 26
    aget v3, v3, v7

    .line 27
    .line 28
    add-int/2addr v5, v4

    .line 29
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    sub-int/2addr v5, v2

    .line 34
    sub-int v4, v2, v4

    .line 35
    .line 36
    add-int/2addr v4, v3

    .line 37
    aget-object v3, v6, v1

    .line 38
    .line 39
    new-instance v6, Lokio/Segment;

    .line 40
    .line 41
    add-int v7, v4, v5

    .line 42
    .line 43
    const/4 v8, 0x1

    .line 44
    invoke-direct {v6, v3, v4, v7, v8}, Lokio/Segment;-><init>([BIIZ)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p1, Lokio/Buffer;->j:Lokio/Segment;

    .line 48
    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    iput-object v6, v6, Lokio/Segment;->g:Lokio/Segment;

    .line 52
    .line 53
    iput-object v6, v6, Lokio/Segment;->f:Lokio/Segment;

    .line 54
    .line 55
    iput-object v6, p1, Lokio/Buffer;->j:Lokio/Segment;

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    iget-object v3, v3, Lokio/Segment;->g:Lokio/Segment;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v6}, Lokio/Segment;->b(Lokio/Segment;)V

    .line 64
    .line 65
    .line 66
    :goto_2
    add-int/2addr v2, v5

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-wide v0, p1, Lokio/Buffer;->k:J

    .line 71
    .line 72
    int-to-long v2, p2

    .line 73
    add-long/2addr v0, v2

    .line 74
    iput-wide v0, p1, Lokio/Buffer;->k:J

    .line 75
    .line 76
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->u()Lokio/ByteString;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lokio/ByteString;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final u()Lokio/ByteString;
    .locals 1

    .line 1
    new-instance v0, Lokio/ByteString;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokio/SegmentedByteString;->r()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
