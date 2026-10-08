.class abstract Lcom/google/common/base/Splitter$SplittingIterator;
.super Lcom/google/common/base/AbstractIterator;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SplittingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/AbstractIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final l:Ljava/lang/CharSequence;

.field public final m:Lcom/google/common/base/CharMatcher;

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->k:Lcom/google/common/base/AbstractIterator$State;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->j:Lcom/google/common/base/AbstractIterator$State;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->n:I

    .line 10
    .line 11
    iget-object v0, p1, Lcom/google/common/base/Splitter;->a:Lcom/google/common/base/CharMatcher;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->m:Lcom/google/common/base/CharMatcher;

    .line 14
    .line 15
    iget p1, p1, Lcom/google/common/base/Splitter;->c:I

    .line 16
    .line 17
    iput p1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->o:I

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->l:Ljava/lang/CharSequence;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract b(I)I
.end method
