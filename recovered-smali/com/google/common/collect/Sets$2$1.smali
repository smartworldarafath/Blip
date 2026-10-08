.class Lcom/google/common/collect/Sets$2$1;
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
.field public final l:Ljava/util/Iterator;

.field public final synthetic m:Lcom/google/common/collect/Sets$2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Sets$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Sets$2$1;->m:Lcom/google/common/collect/Sets$2;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/google/common/collect/Sets$2;->j:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/common/collect/Sets$2$1;->l:Ljava/util/Iterator;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$2$1;->l:Ljava/util/Iterator;

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
    iget-object v1, p0, Lcom/google/common/collect/Sets$2$1;->m:Lcom/google/common/collect/Sets$2;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/google/common/collect/Sets$2;->k:Ljava/util/Set;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->l:Lcom/google/common/collect/AbstractIterator$State;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->j:Lcom/google/common/collect/AbstractIterator$State;

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method
