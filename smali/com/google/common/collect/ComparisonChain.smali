.class public abstract Lcom/google/common/collect/ComparisonChain;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/ComparisonChain;

.field public static final b:Lcom/google/common/collect/ComparisonChain;

.field public static final c:Lcom/google/common/collect/ComparisonChain;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/ComparisonChain$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/collect/ComparisonChain;->a:Lcom/google/common/collect/ComparisonChain;

    .line 7
    .line 8
    new-instance v0, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-direct {v0, v1}, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/common/collect/ComparisonChain;->b:Lcom/google/common/collect/ComparisonChain;

    .line 15
    .line 16
    new-instance v0, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1}, Lcom/google/common/collect/ComparisonChain$InactiveComparisonChain;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/common/collect/ComparisonChain;->c:Lcom/google/common/collect/ComparisonChain;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public abstract a(II)Lcom/google/common/collect/ComparisonChain;
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;
.end method

.method public abstract c(ZZ)Lcom/google/common/collect/ComparisonChain;
.end method

.method public abstract d(ZZ)Lcom/google/common/collect/ComparisonChain;
.end method

.method public abstract e()I
.end method
