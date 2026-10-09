.class Lcom/google/common/base/Splitter$1$1;
.super Lcom/google/common/base/Splitter$SplittingIterator;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic p:Lcom/google/common/base/Splitter$1;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$1;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/base/Splitter$1$1;->p:Lcom/google/common/base/Splitter$1;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    return p1
.end method

.method public final b(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/base/Splitter$1$1;->p:Lcom/google/common/base/Splitter$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/base/Splitter$1;->a:Lcom/google/common/base/CharMatcher;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->l:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/google/common/base/CharMatcher;->a(Ljava/lang/CharSequence;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
