.class public final Landroidx/media3/common/util/LongArrayQueue;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[J

.field public e:I


# virtual methods
.method public final a()J
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/common/util/LongArrayQueue;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/common/util/LongArrayQueue;->d:[J

    .line 6
    .line 7
    iget v2, p0, Landroidx/media3/common/util/LongArrayQueue;->a:I

    .line 8
    .line 9
    aget-wide v3, v1, v2

    .line 10
    .line 11
    add-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    iget v1, p0, Landroidx/media3/common/util/LongArrayQueue;->e:I

    .line 14
    .line 15
    and-int/2addr v1, v2

    .line 16
    iput v1, p0, Landroidx/media3/common/util/LongArrayQueue;->a:I

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    iput v0, p0, Landroidx/media3/common/util/LongArrayQueue;->c:I

    .line 21
    .line 22
    return-wide v3

    .line 23
    :cond_0
    invoke-static {}, Lk8;->o()V

    .line 24
    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    return-wide v0
.end method
