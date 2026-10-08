.class public final Landroidx/media3/common/util/LongArray;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:I

.field public b:[J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array p1, p1, [J

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/common/util/LongArray;->b:[J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/common/util/LongArray;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/util/LongArray;->b:[J

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroidx/media3/common/util/LongArray;->b:[J

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/LongArray;->b:[J

    .line 17
    .line 18
    iget v1, p0, Landroidx/media3/common/util/LongArray;->a:I

    .line 19
    .line 20
    add-int/lit8 v2, v1, 0x1

    .line 21
    .line 22
    iput v2, p0, Landroidx/media3/common/util/LongArray;->a:I

    .line 23
    .line 24
    aput-wide p1, v0, v1

    .line 25
    .line 26
    return-void
.end method

.method public final b([J)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/common/util/LongArray;->a:I

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Landroidx/media3/common/util/LongArray;->b:[J

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-le v0, v2, :cond_0

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    mul-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Landroidx/media3/common/util/LongArray;->b:[J

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/util/LongArray;->b:[J

    .line 24
    .line 25
    iget v2, p0, Landroidx/media3/common/util/LongArray;->a:I

    .line 26
    .line 27
    array-length v3, p1

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    iput v0, p0, Landroidx/media3/common/util/LongArray;->a:I

    .line 33
    .line 34
    return-void
.end method

.method public final c(I)J
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroidx/media3/common/util/LongArray;->a:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/common/util/LongArray;->b:[J

    .line 8
    .line 9
    aget-wide p0, p0, p1

    .line 10
    .line 11
    return-wide p0

    .line 12
    :cond_0
    const-string v0, "Invalid index "

    .line 13
    .line 14
    const-string v1, ", size is "

    .line 15
    .line 16
    invoke-static {v0, p1, v1}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget p0, p0, Landroidx/media3/common/util/LongArray;->a:I

    .line 21
    .line 22
    invoke-static {p0, p1}, Lfe;->k(ILjava/lang/StringBuilder;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 p0, 0x0

    .line 26
    .line 27
    return-wide p0
.end method
