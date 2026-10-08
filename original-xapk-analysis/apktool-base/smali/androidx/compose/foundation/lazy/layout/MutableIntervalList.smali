.class public final Landroidx/compose/foundation/lazy/layout/MutableIntervalList;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/compose/runtime/collection/MutableVector;

.field public b:I

.field public c:Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    new-array v1, v1, [Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "size should be >=0"

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 13
    .line 14
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b:I

    .line 15
    .line 16
    invoke-direct {v0, v1, p1, p2}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;-><init>(IILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    .line 17
    .line 18
    .line 19
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b:I

    .line 20
    .line 21
    add-int/2addr p2, p1

    .line 22
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b:I

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final b(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b:I

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Index "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ", size "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->e(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->c:Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget v1, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->a:I

    .line 40
    .line 41
    iget v2, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->b:I

    .line 42
    .line 43
    add-int/2addr v2, v1

    .line 44
    if-ge p1, v2, :cond_1

    .line 45
    .line 46
    if-gt v1, p1, :cond_1

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 50
    .line 51
    invoke-static {p1, v0}, Landroidx/compose/foundation/lazy/layout/IntervalListKt;->a(ILandroidx/compose/runtime/collection/MutableVector;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 56
    .line 57
    aget-object p1, v0, p1

    .line 58
    .line 59
    check-cast p1, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 60
    .line 61
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->c:Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 62
    .line 63
    return-object p1
.end method
