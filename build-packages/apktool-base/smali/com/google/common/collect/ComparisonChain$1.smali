.class Lcom/google/common/collect/ComparisonChain$1;
.super Lcom/google/common/collect/ComparisonChain;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComparisonChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public static f(I)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 1
    if-gez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/google/common/collect/ComparisonChain;->b:Lcom/google/common/collect/ComparisonChain;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-lez p0, :cond_1

    .line 7
    .line 8
    sget-object p0, Lcom/google/common/collect/ComparisonChain;->c:Lcom/google/common/collect/ComparisonChain;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_1
    sget-object p0, Lcom/google/common/collect/ComparisonChain;->a:Lcom/google/common/collect/ComparisonChain;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public final a(II)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/google/common/collect/ComparisonChain$1;->f(I)Lcom/google/common/collect/ComparisonChain;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 1
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/google/common/collect/ComparisonChain$1;->f(I)Lcom/google/common/collect/ComparisonChain;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final c(ZZ)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/google/common/collect/ComparisonChain$1;->f(I)Lcom/google/common/collect/ComparisonChain;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final d(ZZ)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 1
    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/google/common/collect/ComparisonChain$1;->f(I)Lcom/google/common/collect/ComparisonChain;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final e()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
