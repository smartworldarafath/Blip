.class Lcom/google/common/collect/Lists$TransformingSequentialList$1;
.super Lcom/google/common/collect/TransformedListIterator;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedListIterator<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Lcom/google/common/collect/Lists$TransformingSequentialList;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->k:Lcom/google/common/collect/Lists$TransformingSequentialList;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList$1;->k:Lcom/google/common/collect/Lists$TransformingSequentialList;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->k:Lcom/google/common/base/Function;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
