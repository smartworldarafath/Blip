.class public final Landroidx/collection/MutableLongList;
.super Landroidx/collection/LongList;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 14
    invoke-direct {p0, v0}, Landroidx/collection/MutableLongList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Landroidx/collection/LongSetKt;->a:[J

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-array p1, p1, [J

    .line 10
    .line 11
    :goto_0
    iput-object p1, p0, Landroidx/collection/LongList;->a:[J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/collection/LongList;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/collection/LongList;->a:[J

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    mul-int/lit8 v2, v2, 0x3

    .line 12
    .line 13
    div-int/lit8 v2, v2, 0x2

    .line 14
    .line 15
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Landroidx/collection/LongList;->a:[J

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/collection/LongList;->a:[J

    .line 26
    .line 27
    iget v1, p0, Landroidx/collection/LongList;->b:I

    .line 28
    .line 29
    aput-wide p1, v0, v1

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    iput v1, p0, Landroidx/collection/LongList;->b:I

    .line 34
    .line 35
    return-void
.end method
