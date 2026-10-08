.class public final Landroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/collection/MutableLongList;


# direct methods
.method public constructor <init>([J)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Landroidx/collection/MutableLongList;

    .line 12
    .line 13
    array-length v1, p1

    .line 14
    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iget v1, v0, Landroidx/collection/LongList;->b:I

    .line 18
    .line 19
    if-ltz v1, :cond_3

    .line 20
    .line 21
    array-length v2, p1

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    array-length v2, p1

    .line 26
    add-int/2addr v2, v1

    .line 27
    iget-object v3, v0, Landroidx/collection/LongList;->a:[J

    .line 28
    .line 29
    array-length v4, v3

    .line 30
    if-ge v4, v2, :cond_1

    .line 31
    .line 32
    array-length v4, v3

    .line 33
    mul-int/lit8 v4, v4, 0x3

    .line 34
    .line 35
    div-int/lit8 v4, v4, 0x2

    .line 36
    .line 37
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iput-object v2, v0, Landroidx/collection/LongList;->a:[J

    .line 46
    .line 47
    :cond_1
    iget-object v2, v0, Landroidx/collection/LongList;->a:[J

    .line 48
    .line 49
    iget v3, v0, Landroidx/collection/LongList;->b:I

    .line 50
    .line 51
    if-eq v1, v3, :cond_2

    .line 52
    .line 53
    array-length v4, p1

    .line 54
    add-int/2addr v4, v1

    .line 55
    invoke-static {v2, v2, v4, v1, v3}, Lkotlin/collections/ArraysKt;->h([J[JIII)V

    .line 56
    .line 57
    .line 58
    :cond_2
    const/4 v3, 0x0

    .line 59
    array-length v4, p1

    .line 60
    invoke-static {p1, v2, v1, v3, v4}, Lkotlin/collections/ArraysKt;->h([J[JIII)V

    .line 61
    .line 62
    .line 63
    iget v1, v0, Landroidx/collection/LongList;->b:I

    .line 64
    .line 65
    array-length p1, p1

    .line 66
    add-int/2addr v1, p1

    .line 67
    iput v1, v0, Landroidx/collection/LongList;->b:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const-string p0, ""

    .line 71
    .line 72
    invoke-static {p0}, Lu2;->o(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    throw p0

    .line 77
    :cond_4
    new-instance v0, Landroidx/collection/MutableLongList;

    .line 78
    .line 79
    invoke-direct {v0}, Landroidx/collection/MutableLongList;-><init>()V

    .line 80
    .line 81
    .line 82
    :goto_0
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder;->a:Landroidx/collection/MutableLongList;

    .line 83
    .line 84
    return-void
.end method
