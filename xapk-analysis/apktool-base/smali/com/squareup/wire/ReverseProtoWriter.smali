.class public final Lcom/squareup/wire/ReverseProtoWriter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final g:[B


# instance fields
.field public a:Lokio/Buffer;

.field public b:Lokio/Buffer;

.field public final c:Lokio/Buffer$UnsafeCursor;

.field public d:[B

.field public e:I

.field public final f:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Lcom/squareup/wire/ReverseProtoWriter;->g:[B

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokio/Buffer;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    .line 10
    .line 11
    new-instance v0, Lokio/Buffer;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    .line 17
    .line 18
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    iput v1, v0, Lokio/Buffer$UnsafeCursor;->l:I

    .line 25
    .line 26
    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->c:Lokio/Buffer$UnsafeCursor;

    .line 27
    .line 28
    sget-object v0, Lcom/squareup/wire/ReverseProtoWriter;->g:[B

    .line 29
    .line 30
    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 31
    .line 32
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->k:Lkotlin/LazyThreadSafetyMode;

    .line 33
    .line 34
    new-instance v1, Lvc;

    .line 35
    .line 36
    const/16 v2, 0xb

    .line 37
    .line 38
    invoke-direct {v1, v2}, Lvc;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->f:Lkotlin/Lazy;

    .line 46
    .line 47
    new-instance v1, Lkb;

    .line 48
    .line 49
    const/16 v2, 0x9

    .line 50
    .line 51
    invoke-direct {v1, v2, p0}, Lkb;-><init>(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 2
    .line 3
    sget-object v1, Lcom/squareup/wire/ReverseProtoWriter;->g:[B

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->c:Lokio/Buffer$UnsafeCursor;

    .line 9
    .line 10
    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    .line 14
    .line 15
    iget v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lokio/Buffer;->a0(Lokio/Source;)J

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    .line 31
    .line 32
    iput-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 40
    .line 41
    return-void
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    .line 2
    .line 3
    iget-wide v0, v0, Lokio/Buffer;->k:J

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    iget-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    iget p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 10
    .line 11
    sub-int/2addr v1, p0

    .line 12
    add-int/2addr v1, v0

    .line 13
    return v1
.end method

.method public final c(I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 2
    .line 3
    if-lt v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/wire/ReverseProtoWriter;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->b:Lokio/Buffer;

    .line 10
    .line 11
    sget-object v1, Lokio/internal/-Buffer;->a:[B

    .line 12
    .line 13
    iget-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->c:Lokio/Buffer$UnsafeCursor;

    .line 14
    .line 15
    iget-object v2, v1, Lokio/Buffer$UnsafeCursor;->j:Lokio/Buffer;

    .line 16
    .line 17
    if-nez v2, :cond_4

    .line 18
    .line 19
    iput-object v0, v1, Lokio/Buffer$UnsafeCursor;->j:Lokio/Buffer;

    .line 20
    .line 21
    if-lez p1, :cond_3

    .line 22
    .line 23
    const/16 v2, 0x2000

    .line 24
    .line 25
    if-gt p1, v2, :cond_2

    .line 26
    .line 27
    iget-wide v3, v0, Lokio/Buffer;->k:J

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lokio/Buffer;->S(I)Lokio/Segment;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget v5, p1, Lokio/Segment;->c:I

    .line 34
    .line 35
    rsub-int v5, v5, 0x2000

    .line 36
    .line 37
    iput v2, p1, Lokio/Segment;->c:I

    .line 38
    .line 39
    int-to-long v5, v5

    .line 40
    add-long/2addr v5, v3

    .line 41
    iput-wide v5, v0, Lokio/Buffer;->k:J

    .line 42
    .line 43
    iget-object p1, p1, Lokio/Segment;->a:[B

    .line 44
    .line 45
    iput-object p1, v1, Lokio/Buffer$UnsafeCursor;->k:[B

    .line 46
    .line 47
    iput v2, v1, Lokio/Buffer$UnsafeCursor;->l:I

    .line 48
    .line 49
    const-wide/16 v5, 0x0

    .line 50
    .line 51
    cmp-long v0, v3, v5

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    array-length p1, p1

    .line 59
    if-ne v2, p1, :cond_1

    .line 60
    .line 61
    iget-object p1, v1, Lokio/Buffer$UnsafeCursor;->k:[B

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 67
    .line 68
    iget p1, v1, Lokio/Buffer$UnsafeCursor;->l:I

    .line 69
    .line 70
    iput p1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    const-string p0, "Check failed."

    .line 74
    .line 75
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    const-string p0, "minByteCount > Segment.SIZE: "

    .line 80
    .line 81
    invoke-static {p1, p0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    const-string p0, "minByteCount <= 0: "

    .line 90
    .line 91
    invoke-static {p1, p0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    const-string p0, "already attached to a buffer"

    .line 100
    .line 101
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final d(Lokio/ByteString;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lokio/ByteString;->e()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    :goto_0
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v1}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 21
    .line 22
    sub-int/2addr v2, v1

    .line 23
    iput v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 24
    .line 25
    sub-int/2addr v0, v1

    .line 26
    iget-object v3, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 27
    .line 28
    invoke-virtual {p1, v0, v2, v1, v3}, Lokio/ByteString;->c(III[B)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 6
    .line 7
    add-int/lit8 v1, v0, -0x4

    .line 8
    .line 9
    iput v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 12
    .line 13
    add-int/lit8 v2, v0, -0x3

    .line 14
    .line 15
    and-int/lit16 v3, p1, 0xff

    .line 16
    .line 17
    int-to-byte v3, v3

    .line 18
    aput-byte v3, p0, v1

    .line 19
    .line 20
    add-int/lit8 v1, v0, -0x2

    .line 21
    .line 22
    ushr-int/lit8 v3, p1, 0x8

    .line 23
    .line 24
    and-int/lit16 v3, v3, 0xff

    .line 25
    .line 26
    int-to-byte v3, v3

    .line 27
    aput-byte v3, p0, v2

    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    ushr-int/lit8 v2, p1, 0x10

    .line 32
    .line 33
    and-int/lit16 v2, v2, 0xff

    .line 34
    .line 35
    int-to-byte v2, v2

    .line 36
    aput-byte v2, p0, v1

    .line 37
    .line 38
    ushr-int/lit8 p1, p1, 0x18

    .line 39
    .line 40
    and-int/lit16 p1, p1, 0xff

    .line 41
    .line 42
    int-to-byte p1, p1

    .line 43
    aput-byte p1, p0, v0

    .line 44
    .line 45
    return-void
.end method

.method public final f(J)V
    .locals 8

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, -0x8

    .line 9
    .line 10
    iput v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 11
    .line 12
    iget-object p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 13
    .line 14
    add-int/lit8 v3, v1, -0x7

    .line 15
    .line 16
    const-wide/16 v4, 0xff

    .line 17
    .line 18
    and-long v6, p1, v4

    .line 19
    .line 20
    long-to-int v6, v6

    .line 21
    int-to-byte v6, v6

    .line 22
    aput-byte v6, p0, v2

    .line 23
    .line 24
    add-int/lit8 v2, v1, -0x6

    .line 25
    .line 26
    ushr-long v6, p1, v0

    .line 27
    .line 28
    and-long/2addr v6, v4

    .line 29
    long-to-int v0, v6

    .line 30
    int-to-byte v0, v0

    .line 31
    aput-byte v0, p0, v3

    .line 32
    .line 33
    add-int/lit8 v0, v1, -0x5

    .line 34
    .line 35
    const/16 v3, 0x10

    .line 36
    .line 37
    ushr-long v6, p1, v3

    .line 38
    .line 39
    and-long/2addr v6, v4

    .line 40
    long-to-int v3, v6

    .line 41
    int-to-byte v3, v3

    .line 42
    aput-byte v3, p0, v2

    .line 43
    .line 44
    add-int/lit8 v2, v1, -0x4

    .line 45
    .line 46
    const/16 v3, 0x18

    .line 47
    .line 48
    ushr-long v6, p1, v3

    .line 49
    .line 50
    and-long/2addr v6, v4

    .line 51
    long-to-int v3, v6

    .line 52
    int-to-byte v3, v3

    .line 53
    aput-byte v3, p0, v0

    .line 54
    .line 55
    add-int/lit8 v0, v1, -0x3

    .line 56
    .line 57
    const/16 v3, 0x20

    .line 58
    .line 59
    ushr-long v6, p1, v3

    .line 60
    .line 61
    and-long/2addr v6, v4

    .line 62
    long-to-int v3, v6

    .line 63
    int-to-byte v3, v3

    .line 64
    aput-byte v3, p0, v2

    .line 65
    .line 66
    add-int/lit8 v2, v1, -0x2

    .line 67
    .line 68
    const/16 v3, 0x28

    .line 69
    .line 70
    ushr-long v6, p1, v3

    .line 71
    .line 72
    and-long/2addr v6, v4

    .line 73
    long-to-int v3, v6

    .line 74
    int-to-byte v3, v3

    .line 75
    aput-byte v3, p0, v0

    .line 76
    .line 77
    add-int/lit8 v1, v1, -0x1

    .line 78
    .line 79
    const/16 v0, 0x30

    .line 80
    .line 81
    ushr-long v6, p1, v0

    .line 82
    .line 83
    and-long/2addr v6, v4

    .line 84
    long-to-int v0, v6

    .line 85
    int-to-byte v0, v0

    .line 86
    aput-byte v0, p0, v2

    .line 87
    .line 88
    const/16 v0, 0x38

    .line 89
    .line 90
    ushr-long/2addr p1, v0

    .line 91
    and-long/2addr p1, v4

    .line 92
    long-to-int p1, p1

    .line 93
    int-to-byte p1, p1

    .line 94
    aput-byte p1, p0, v1

    .line 95
    .line 96
    return-void
.end method

.method public final g(I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 9
    .line 10
    sub-int/2addr v1, v0

    .line 11
    iput v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 14
    .line 15
    iget-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    add-int/lit8 v0, v1, 0x1

    .line 20
    .line 21
    and-int/lit8 v3, p1, 0x7f

    .line 22
    .line 23
    or-int/lit16 v3, v3, 0x80

    .line 24
    .line 25
    int-to-byte v3, v3

    .line 26
    aput-byte v3, v2, v1

    .line 27
    .line 28
    ushr-int/lit8 p1, p1, 0x7

    .line 29
    .line 30
    move v1, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    int-to-byte p0, p1

    .line 33
    aput-byte p0, v2, v1

    .line 34
    .line 35
    return-void
.end method

.method public final h(J)V
    .locals 7

    .line 1
    invoke-static {p1, p2}, Lcom/squareup/wire/ProtoWriter$Companion;->b(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 9
    .line 10
    sub-int/2addr v1, v0

    .line 11
    iput v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 12
    .line 13
    :goto_0
    const-wide/16 v2, -0x80

    .line 14
    .line 15
    and-long/2addr v2, p1

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v0, v2, v4

    .line 19
    .line 20
    iget-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    add-int/lit8 v0, v1, 0x1

    .line 25
    .line 26
    const-wide/16 v3, 0x7f

    .line 27
    .line 28
    and-long/2addr v3, p1

    .line 29
    const-wide/16 v5, 0x80

    .line 30
    .line 31
    or-long/2addr v3, v5

    .line 32
    long-to-int v3, v3

    .line 33
    int-to-byte v3, v3

    .line 34
    aput-byte v3, v2, v1

    .line 35
    .line 36
    const/4 v1, 0x7

    .line 37
    ushr-long/2addr p1, v1

    .line 38
    move v1, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    long-to-int p0, p1

    .line 41
    int-to-byte p0, p0

    .line 42
    aput-byte p0, v2, v1

    .line 43
    .line 44
    return-void
.end method
