.class public abstract Lcom/google/common/collect/Ordering;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(Lv1;)Lcom/google/common/collect/Ordering;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/ComparatorOrdering;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/collect/ComparatorOrdering;-><init>(Lv1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c()Lcom/google/common/collect/Ordering;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/NaturalOrdering;->j:Lcom/google/common/collect/NaturalOrdering;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/CompoundOrdering;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CompoundOrdering;-><init>(Lcom/google/common/collect/Ordering;Ljava/util/Comparator;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final d(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/ByFunctionOrdering;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/ByFunctionOrdering;-><init>(Lcom/google/common/base/Function;Lcom/google/common/collect/Ordering;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public e()Lcom/google/common/collect/Ordering;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/ReverseOrdering;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/common/collect/ReverseOrdering;-><init>(Lcom/google/common/collect/Ordering;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
