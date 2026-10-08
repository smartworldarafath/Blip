.class public final Lcom/google/common/primitives/ImmutableLongArray$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:[J

.field public b:I


# virtual methods
.method public final a(J)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->b:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->a:[J

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    if-le v1, v3, :cond_3

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-ltz v1, :cond_2

    .line 12
    .line 13
    shr-int/lit8 v4, v3, 0x1

    .line 14
    .line 15
    add-int/2addr v3, v4

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    if-ge v3, v1, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    shl-int/lit8 v3, v0, 0x1

    .line 25
    .line 26
    :cond_0
    if-gez v3, :cond_1

    .line 27
    .line 28
    const v3, 0x7fffffff

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->a:[J

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 39
    .line 40
    const-string p1, "cannot store more than MAX_VALUE elements"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->a:[J

    .line 47
    .line 48
    iget v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->b:I

    .line 49
    .line 50
    aput-wide p1, v0, v1

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    iput v1, p0, Lcom/google/common/primitives/ImmutableLongArray$Builder;->b:I

    .line 55
    .line 56
    return-void
.end method
