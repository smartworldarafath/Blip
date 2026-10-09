.class Lcom/google/common/collect/Iterators$5;
.super Lcom/google/common/collect/AbstractIterator;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic l:Ljava/util/Iterator;

.field public final synthetic m:Lcom/google/common/base/Predicate;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Iterators$5;->l:Ljava/util/Iterator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/common/collect/Iterators$5;->m:Lcom/google/common/base/Predicate;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$5;->l:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/common/collect/Iterators$5;->m:Lcom/google/common/base/Predicate;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->l:Lcom/google/common/collect/AbstractIterator$State;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->j:Lcom/google/common/collect/AbstractIterator$State;

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method
